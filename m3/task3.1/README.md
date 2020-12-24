# Module 3 Database Administration

## TASK 3.1 PART 1

* Installed MySQL server on Ubuntu VM.
* Selected the following database subject: discography of my fav music, like it would have been seen in a music library software, like iTunes. Tables are: Artists, Albums, Songs. Songs: name, length, artist and album. Albums: name, year, artist. Artists: name, genre.
* Created database and tables in mysql console:
![Screenshot 1](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m3%2Ftask3.1%2FScreenshots%2FScreenshot%202020-12-24%20at%2007.57.09.jpg)
* Filled in tables from a prepared CSV file, executed different queries:
![Screenshot 2](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m3%2Ftask3.1%2FScreenshots%2FScreenshot%202020-12-24%20at%2008.16.22.jpg)
* Created a new user. Connected to the database as a new user and verified that the privileges allow or deny certain actions.
![Screenshot 3](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m3%2Ftask3.1%2FScreenshots%2FScreenshot%202020-12-24%20at%2009.00.11.jpg)

## PART 2

* Made a backup of database. Deleted database, then restored it from *.sql dump.
![Screenshot 4](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m3%2Ftask3.1%2FScreenshots%2FScreenshot%202020-12-24%20at%2011.05.16.jpg)
* Created Mysql instance on AWS RDS. Connected and imported sql dump into RDS database.
![Screenshot 5](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m3%2Ftask3.1%2FScreenshots%2FScreenshot%202020-12-24%20at%2011.34.08.jpg)

## PART 3

* Created an Amazon DynamoDB table. Entered random generated users data into table. Performed scan on users with phone number:
![Screenshot 6](https://github.com/alex-kay/DevOps_online_Kharkiv_2020Q42021Q1/blob/master/m3%2Ftask3.1%2FScreenshots%2FScreenshot%202020-12-24%20at%2012.17.22.jpg)
