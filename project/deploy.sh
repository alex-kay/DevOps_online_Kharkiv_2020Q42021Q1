#!/bin/bash
source .env
cd terraform
terraform init -input=false
terraform apply -input=false -auto-approve
# terraform output -raw j_m_public_ip >> hosts
cat << EOF > ../ansible/hosts.txt
$(terraform output -raw j_m_name) ansible_host=$(terraform output -raw j_m_public_ip) ansible_user=ec2-user ansible_ssh_private_key=$HOME/.ssh/deployer.pem
$(terraform output -raw j_b_name) ansible_host=$(terraform output -raw j_b_public_ip) ansible_user=ec2-user ansible_ssh_private_key=$HOME/.ssh/deployer.pem
$(terraform output -raw w_s_name) ansible_host=$(terraform output -raw w_s_public_ip) ansible_user=ec2-user ansible_ssh_private_key=$HOME/.ssh/deployer.pem
EOF
