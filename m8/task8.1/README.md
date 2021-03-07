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
* Added SSH public key from jenkins-master to jenkins-build. Installed java on jenkins-build.
![Screenshot 1.2](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2000.13.01.jpg)
* Added jenkins-build as a build node for jenkins-master.
![Screenshot 1.3](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2000.17.12.jpg)
* Build node jenkins-build succesfully added.
![Screenshot 1.4](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2000.18.24.jpg)

## Step 2: Preparing for a job

* Created a test job to be sure it's building on build node.
![Screenshot 2.1](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2001.04.40.jpg)
* Added SSH key to jenkins .ssh directory on jenkins-master. Copied this master node key also to web-server.
![Screenshot 2.2](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2001.14.04.jpg)
* Installed nodejs and npm on jenkins-build, apache2 on web-server. Added ssh key from jenkins to Github, authenticated on Github.
![Screenshot 2.3](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2001.24.04.jpg)

## Step 3: Creating job

* Creating job, added Git repository and key. Set Jenkins to poll Github every minute.
![Screenshot 3.1](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2001.31.44.jpg)
* Added build actions: install npm packages, run build task and copy built dist directory over SSH to web-server.
![Screenshot 3.2](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2001.57.19.jpg)

## Step 4: watching changes

* Build finally successed after i changed rights for apache /var/www directory.
![Screenshot 4.1](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2002.06.10.jpg)
* Built webpage can be seen on web-server 80 port.
![Screenshot 4.2](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2002.10.29.jpg)
* Changed text in src/index.html file and commited changes to github.
![Screenshot 4.3](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2002.17.26.jpg)
* Jenkins polled github and initiated build job in a minute.
![Screenshot 4.4](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2002.18.35.jpg)
* Done; webpage changed on web-server instance.
![Screenshot 4.5](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m8/task8.1/Screenshots/Screenshot%202021-02-25%20at%2002.18.49.jpg)
