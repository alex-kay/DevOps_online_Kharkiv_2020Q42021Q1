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
  ami           = "ami-038f1ca1bd58a5790"
  instance_type = "t2.micro"
  key_name      = "deployer"
  security_groups = ["${aws_security_group.ingress-main.name}"]
  user_data = <<-EOF
    #!/bin/bash
    echo ${var.KEY_ANSIBLE} >> /home/ec2-user/.ssh/authorized_keys
    sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat/jenkins.repo
    sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
    sudo yum upgrade
    sudo yum install jenkins java-1.8.0-openjdk-devel git -y
    sudo systemctl daemon-reload
    sudo systemctl start jenkins
    EOF
  tags = {
    Name = "JenkinsMain"
  }
}

resource "aws_instance" "jenkins-builder" {
  ami           = "ami-038f1ca1bd58a5790"
  instance_type = "t2.micro"
  key_name      = "deployer"
  security_groups = ["${aws_security_group.ingress-builder.name}"]
  user_data = <<-EOF
    #!/bin/bash
    echo ${var.KEY_ANSIBLE} >> /home/ec2-user/.ssh/authorized_keys
    curl -fsSL https://rpm.nodesource.com/setup_15.x | sudo bash -
    sudo yum update -y
    sudo yum install java-1.8.0-openjdk-devel nodejs npm -y
    EOF
  tags = {
    Name = "JenkinsBuilder"
  }
}

resource "aws_instance" "web-server" {
  ami           = "ami-038f1ca1bd58a5790"
  instance_type = "t2.micro"
  key_name      = "deployer"
  security_groups = ["${aws_security_group.ingress-server.name}"]
  user_data = <<-EOF
    #!/bin/bash
    echo ${var.KEY_ANSIBLE} >> /home/ec2-user/.ssh/authorized_keys
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    sudo chmod go+w -R /var/www/html
    EOF
  tags = {
    Name = "WebServer"
  }
}

# resource "aws_key_pair" "deployer" {
#   key_name   = "deployer"
#   public_key = "${var.KEYPUB}"
# }
resource "aws_security_group" "ingress-main" {
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
// Terraform removes the default rule
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "ingress-builder" {
  name = "allow-22-sg"
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
// Terraform removes the default rule
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "ingress-server" {
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
// Terraform removes the default rule
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}