# CI/CD project

## Based on Jenkins task (module 8)

## Below is a draft, to be updated

Terraform creates 4 virtual machines on EC2 : jenkins-master, jenkins-builder, web-server-dev, web-server-prod
Terraform puts a ssh-key for Ansible on created machines.done
Then, Ansible installs needed software..done

todo:

- ~~dockerize something (like jenkins)~~
- ~~ansible make cfg~~
- ~~deploy dev and master branches to respective servers~~
