resource "local_file" "AnsibleInventory" {
  content = templatefile("inventory.tmpl",
  {
    j_m_name = aws_instance.jenkins-main.tags.Name,
    j_m_eip = aws_eip.j-main-eip.public_ip,
    j_m_id = aws_instance.jenkins-main.id,
    j_b_name = aws_instance.jenkins-builder.tags.Name,
    j_b_eip = aws_eip.j-builder-eip.public_ip,
    j_b_id = aws_instance.jenkins-builder.id,
    w_s_dev_name = aws_instance.web-server-dev.tags.Name,
    w_s_dev_eip = aws_eip.web-dev-eip.public_ip,
    w_s_dev_id = aws_instance.web-server-dev.id,
    w_s_prod_name = aws_instance.web-server-prod.tags.Name,
    w_s_prod_eip = aws_eip.web-prod-eip.public_ip,
    w_s_prod_id = aws_instance.web-server-prod.id,
    ec2_key_file = var.KEY_ANSIBLE
  }
  )
  filename = "hosts"
}