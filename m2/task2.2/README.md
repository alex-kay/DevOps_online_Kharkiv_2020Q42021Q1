# Module 2 Virtualization and Cloud Basic

## Task 2.2. AWS

* Reviewed the 10-minute example Launch a Linux Virtual Machine with Amazon Lightsail.
Repeated, created own VM in the AWS cloud and connect to it. Attached a static IP to it.
![Screenshot 1](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m2%2Ftask2.2%2FScreenshots%2FScreenshot%202020-12-19%20at%2001.26.22.png)
* Launched another Linux Virtual Machine without Amazon Lightsail. Used Amazon Linux 2 on EC2 t2.micro.
* Attached an EBS volume to it , formatted and mounted. Generated a random file on volume.
![Screenshot 2](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m2%2Ftask2.2%2FScreenshots%2FScreenshot%202020-12-19%20at%2002.08.19.png)
* Created a third instance from backup image made from the second one.
![Screenshot 3](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m2%2Ftask2.2%2FScreenshots%2FScreenshot%202020-12-19%20at%2002.14.57.png)
* Detached EBS volume from 2nd instance and attached to 3rd. Terminated the instances.
* Launched a Wordpress instance on Lightsail
![Screenshot 4](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m2%2Ftask2.2%2FScreenshots%2FScreenshot%202020-12-19%20at%2006.44.51.png)
* Reviewed the example Store and Retrieve a File. Created own bucket. Batch uploaded files to S3 using
the AWS CLI sync command.
![Screenshot 5](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m2%2Ftask2.2%2FScreenshots%2FScreenshot%202020-12-19%20at%2006.53.36.png)

## TODO:

13.  Review the 10-minute example. Explore the possibilities of creating your own domain
and domain name for your site.
14. Review the 10-minute example Deploy Docker Containers on Amazon Elastic
Container Service (Amazon ECS). Repeat, create a cluster, and run the online demo
application or better other application with custom settings.
15. Create a static website on Amazon S3, publicly available (link1 or link2 - using a custom
domain registered with Route 53). Post on the page your own photo, the name of the educational program (EPAM DevOps online Winter 2020/2021), the list of AWS services with which the student worked within the educational program or earlier and the full list with links of completed labs (based on tutorials or qwiklabs or re:Invent 2020). Provide the link to the website in your report.