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
output "w_s_name" {
  description = "Name of the Web Server EC2 instance"
  value       = aws_instance.web-server.tags.Name
}
output "w_s_public_ip" {
  description = "Public IP address of the Web Server EC2 instance 2"
  value       = aws_instance.web-server.public_ip
}