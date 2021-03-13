# CI/CD project

## Based on Jenkins task (module 8)

## Below is a draft, to be updated:

Terraform creates 4 virtual machines on EC2 : jenkins-master, jenkins-builder, web-server-dev, web-server-prod: _(blue-green server?)_
Terraform puts a ssh-key for Ansible on created machines.done
Then, Ansible installs needed software..done

todo:
- dockerize something
- ansible vault sensitive data
- ansible make roles
- make jenkinsfile
- jenkins automate master-slave
- jenkins build artifacts (to s3?)
- blue-green deployment ?
- docker to ECS ?
- domain ?
