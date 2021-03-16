#!/bin/bash
source .env

terraform init -input=false
terraform plan -input=false -out=plan.tfplan
terraform apply -input=false -auto-approve

sleep 10

ansible -m ping all -i hosts

sleep 5

ansible-playbook -i hosts -l servers server.yml
ansible-playbook -i hosts -l JenkinsMain jenkins-main.yml
ansible-playbook -i hosts -l JenkinsBuilder jenkins-builder.yml

#show Jenkins Admin Password
ansible -i hosts -m shell -a "docker container exec myjenkins sh -c 'cat /var/jenkins_home/secrets/initialAdminPassword'" JenkinsMain

# Destroy infrastructure after all

# terraform destroy -auto-approve