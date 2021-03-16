terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "jenkins-main" {
  ami           = var.ami
  instance_type = "t2.micro"
  key_name      = "ec2key1"
  security_groups = ["${aws_security_group.in-8080.name}"]
  # user_data = <<-EOF
  #   #!/bin/bash
  #   echo ${var.KEY_ANSIBLE} >> /home/ec2-user/.ssh/authorized_keys
  #   EOF
  tags = {
    Name = "JenkinsMain"
  }
}

resource "aws_instance" "jenkins-builder" {
  ami           = var.ami
  instance_type = "t2.micro"
  key_name      = "ec2key1"
  security_groups = ["${aws_security_group.in-ssh.name}"]
  # user_data = <<-EOF
  #   #!/bin/bash
  #   echo ${var.KEY_ANSIBLE} >> /home/ec2-user/.ssh/authorized_keys
  #   EOF
  tags = {
    Name = "JenkinsBuilder"
  }
  root_block_device {
    volume_size = 28
  }
}

resource "aws_instance" "web-server-dev" {
  ami           = var.ami
  instance_type = "t2.micro"
  key_name      = "ec2key1"
  security_groups = ["${aws_security_group.in-server.name}"]
  # user_data = <<-EOF
  #   #!/bin/bash
  #   echo ${var.KEY_ANSIBLE} >> /home/ec2-user/.ssh/authorized_keys
  #   EOF
  tags = {
    Name = "WebServerDev"
  }
}
resource "aws_instance" "web-server-prod" {
  ami           = var.ami
  instance_type = "t2.micro"
  key_name      = "ec2key1"
  security_groups = ["${aws_security_group.in-server.name}"]
  # user_data = <<-EOF
  #   #!/bin/bash
  #   echo ${var.KEY_ANSIBLE} >> /home/ec2-user/.ssh/authorized_keys
  #   EOF
  tags = {
    Name = "WebServerProd"
  }
}

resource "aws_security_group" "in-8080" {
  name = "allow-8080-sg"
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "in-ssh" {
  name = "allow-22-sg"
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "in-server" {
  name = "allow-http-sg"
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 80
    to_port = 80
    protocol = "tcp"
  }
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 443
    to_port = 443
    protocol = "tcp"
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_route53_record" "dev" {
  zone_id = var.zone53
  name    = "dev.alexkurylo.name"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web-server-dev.public_ip]
}
resource "aws_route53_record" "prod" {
  zone_id = var.zone53
  name    = "prod.alexkurylo.name"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web-server-prod.public_ip]
}
resource "aws_route53_record" "jenkins" {
  zone_id = var.zone53
  name    = "jenkins.alexkurylo.name"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.jenkins-main.public_ip]
}