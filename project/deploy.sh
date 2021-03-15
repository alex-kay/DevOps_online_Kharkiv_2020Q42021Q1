#!/bin/bash
source .env

terraform init -input=false
terraform plan -input=false
terraform apply -input=false -auto-approve

sleep 10

ansible -m ping all -i hosts

sleep 5

ansible-playbook -i hosts -l servers server.yml
ansible-playbook -i hosts -l JenkinsMain jenkins-main.yml
ansible-playbook -i hosts -l JenkinsBuilder jenkins-builder.yml

# Destroy infrastructure after all

# terraform destroy -auto-approve