output "j_m_name" {
  description = "Name of the Jenkins Main EC2 instance"
  value       = aws_instance.jenkins-main.tags.Name
}
output "j_m_public_ip" {
  description = "Public IP address of the Jenkins Main EC2 instance 2"
  value       = aws_instance.jenkins-main.public_ip
}
output "j_b_name" {
  description = "Name of the Jenkins Builder EC2 instance"
  value       = aws_instance.jenkins-builder.tags.Name
}
output "j_b_public_ip" {
  description = "Public IP address of the Jenkins Builder EC2 instance 2"
  value       = aws_instance.jenkins-builder.public_ip
}
output "w_s_dev_name" {
  description = "Name of the Dev Web Server EC2 instance"
  value       = aws_instance.web-server-dev.tags.Name
}
output "w_s_dev_public_ip" {
  description = "Public IP address of the Dev Web Server EC2 instance 2"
  value       = aws_instance.web-server-dev.public_ip
}
output "w_s_prod_name" {
  description = "Name of the Prod Web Server EC2 instance"
  value       = aws_instance.web-server-prod.tags.Name
}
output "w_s_prod_public_ip" {
  description = "Public IP address of the Prod Web Server EC2 instance 2"
  value       = aws_instance.web-server-prod.public_ip
}