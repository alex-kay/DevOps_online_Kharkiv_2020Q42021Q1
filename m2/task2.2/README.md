# Module 2 Virtualization and Cloud Basic

## Task 2.2

* Reviewed the 10-minute example Launch a Linux Virtual Machine with Amazon Lightsail.
Repeated, created own VM in the AWS cloud and connect to it. Attached a static IP to it.
![Screenshot 1](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.2/Screenshots/Screenshot%202020-12-19%20at%2001.26.22.jpg)
* Launched another Linux Virtual Machine without Amazon Lightsail. Used Amazon Linux 2 on EC2 t2.micro.
* Attached an EBS volume to it , formatted and mounted. Generated a random file on volume.
![Screenshot 2](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.2/Screenshots/Screenshot%202020-12-19%20at%2002.08.19.jpg)
* Created a third instance from backup image made from the second one.
![Screenshot 3](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.2/Screenshots/Screenshot%202020-12-19%20at%2002.14.57.jpg)
* Detached EBS volume from 2nd instance and attached to 3rd. Terminated the instances.
* Launched a Wordpress instance on Lightsail
![Screenshot 4](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.2/Screenshots/Screenshot%202020-12-19%20at%2006.44.51.jpg)
* Reviewed the example Store and Retrieve a File. Created own bucket. Batch uploaded files to S3 using the AWS CLI sync command.
![Screenshot 5](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.2/Screenshots/Screenshot%202020-12-19%20at%2006.53.36.jpg)
* Reviewed the 10-minute [example](https://aws.amazon.com/getting-started/hands-on/get-a-domain/). Registered own domain name on Route 53.
![Screenshot 6](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.2/Screenshots/Screenshot%202020-12-23%20at%2000.12.15.jpg)
* Reviewed the 10-minute example Deploy Docker Containers on Amazon Elastic
Container Service (Amazon ECS). Repeated, created a cluster, and ran the online demo
application (Apache web server) with custom settings.
![Screenshot 7](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/52f7eac1741bfdbfe404307e0c2934c9149015d7/m2/task2.2/Screenshots/Screenshot%202020-12-23%20at%2013.23.28.jpg)
* Created a static website on Amazon S3, publicly available. [S3 STATIC SITE LINK](http://alexkurylo.name.s3-website-us-east-1.amazonaws.com/)
