output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.jenkins-main.id
}
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance 2"
  value       = aws_instance.jenkins-main.public_ip
}
output "instance_id2" {
  description = "ID of the EC2 instance"
  value       = aws_instance.jenkins-builder.id
}
output "instance_public_ip2" {
  description = "Public IP address of the EC2 instance 2"
  value       = aws_instance.jenkins-builder.public_ip
}