# Module 8: Jenkins

## Create some templates using lection materials about Jenkins according your final task

## More detailed: choose the content part for your final task (simple web page, web application, etc) and programming language (java, js, python, etc), and type of delivery/deployment mechanism

* As an example , I create three virtual machines on EC2: jenkins-master, jenkins-build, web-server:
* _jenkins-master_ runs a Jenkins master node;
* _jenkins-build_ runs a jenkins build node;
* _web-server_ runs an _apache2_ server serving a simple static web page, my fork of ["Create HTML5 Boilerplate"](https://github.com/alex-kay/html5-boilerplate) repository on Github.
* Jenkins job is the following: it builds this static webpage using NPM task and copies built `dist/` folder to apache2 `/var/www/html` directory on web-server via SSH.

## Step 1: Creating Instances on AWS

* Created three EC2 instances: jenkins-master, jenkins-build agent, web-server. AMI used is ubuntu 16.04 on all 3 machines.
* Installed java and jenkins on jenkins-master, installed recommended plugins.
![Screenshot 1.1](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2000.08.33.jpg)
* Added SSH public key from jenkins-master to jenkins-build.
![Screenshot 1.2](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2000.13.01.jpg)
* Added jenkins-build as a build node for jenkins-master.
![Screenshot 1.3](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2000.17.12.jpg)
* Build node jenkins-build succesfully added.
![Screenshot 1.4](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2000.18.24.jpg)

## Step 2: Creating Job

* Created a test job to be sure it's building on build node.
![Screenshot 2.1](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2001.04.40.jpg)
