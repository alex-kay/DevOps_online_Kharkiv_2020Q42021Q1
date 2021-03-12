#!/bin/bash
source .env

# Terraform stage:

cd terraform
terraform init -input=false
terraform apply -input=false -auto-approve
# terraform output -raw j_m_public_ip >> hosts
cat << EOF > ../ansible/hosts.txt
[jenkins]
$(terraform output -raw j_m_name) ansible_host=$(terraform output -raw j_m_public_ip) ansible_user=ec2-user ansible_ssh_private_key=$HOME/.ssh/deployer.pem  ansible_become=yes
$(terraform output -raw j_b_name) ansible_host=$(terraform output -raw j_b_public_ip) ansible_user=ec2-user ansible_ssh_private_key=$HOME/.ssh/deployer.pem  ansible_become=yes
[servers]
$(terraform output -raw w_s_dev_name) ansible_host=$(terraform output -raw w_s_dev_public_ip) ansible_user=ec2-user ansible_ssh_private_key=$HOME/.ssh/deployer.pem  ansible_become=yes
$(terraform output -raw w_s_prod_name) ansible_host=$(terraform output -raw w_s_prod_public_ip) ansible_user=ec2-user ansible_ssh_private_key=$HOME/.ssh/deployer.pem  ansible_become=yes
EOF

# Ansible stage:

cd ../ansible

ansible -m ping all -i hosts.txt
ansible-playbook -i hosts.txt -l servers server.yml
ansible-playbook -i hosts.txt -l jenkins jenkins.yml


# Destroy infrastructure after all

cd ../terraform
terraform destroy -auto-approve