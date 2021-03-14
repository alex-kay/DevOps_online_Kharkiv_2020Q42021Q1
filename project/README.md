# CI/CD project

## Based on Jenkins task (module 8)

## Below is a draft, to be updated:

Terraform creates 4 virtual machines on EC2 : jenkins-master, jenkins-builder, web-server-dev, web-server-prod: _(blue-green server?)_
Terraform puts a ssh-key for Ansible on created machines.done
Then, Ansible installs needed software..done


todo:
- dockerize something (like jenkins)
- ansible make roles
- ansible make cfg
- jenkins build artifacts (to s3?)
- deploy dev and master branches to respective servers
