#!/bin/bash
source .env

# Terraform stage:

terraform init -input=false
terraform apply -input=false -auto-approve
# cat << EOF > ../ansible/hosts.txt
# [jenkins]
# $(terraform output -raw j_b_name) ansible_host=$(terraform output -raw j_b_public_ip) ansible_user=ec2-user ansible_ssh_private_key=$HOME/ec2key1.pem  ansible_become=yes
# $(terraform output -raw j_m_name) ansible_host=$(terraform output -raw j_m_public_ip) ansible_user=ec2-user ansible_ssh_private_key=$HOME/ec2key1.pem  ansible_become=yes
# [servers]
# $(terraform output -raw w_s_dev_name) ansible_host=$(terraform output -raw w_s_dev_public_ip) ansible_user=ec2-user ansible_ssh_private_key=$HOME/ec2key1.pem  ansible_become=yes
# $(terraform output -raw w_s_prod_name) ansible_host=$(terraform output -raw w_s_prod_public_ip) ansible_user=ec2-user ansible_ssh_private_key=$HOME/ec2key1.pem  ansible_become=yes
# EOF

# Ansible stage:

sleep 10

ansible -m ping all -i hosts

sleep 5

ansible-playbook -i hosts -l servers server.yml
ansible-playbook -i hosts -l JenkinsMain jenkins-main.yml
ansible-playbook -i hosts -l JenkinsBuilder jenkins-builder.yml


# Destroy infrastructure after all

# cd ../terraform
# terraform destroy -auto-approve