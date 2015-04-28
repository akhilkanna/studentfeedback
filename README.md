# Feedback

## Introduction:
This is a web based application which takes feedback from students about teacher and college. Use it as per your convenience. This repository is no longer maintained so please don't expect for updates or support from my end. That doesn't mean it will never get updated, but it has low possibility.

## Setting up Server

This is a PHP application so we should have apache server with MySQL installed.

for installing LAMP stack, please consult your System Administrator.

If you're a PHP developer, you pretty much know what and how to do!

To install LAMP server, use the following command

```
sudo pacman -S lamp-server^ #for Arch Linux users
sudo apt-get install lamp-server^ #for Debian or Ubuntu users
```

## For Windows?

### Are you kidding me? See the LICENCE.md file, you can't run this in on any operating system made by Microsoft Inc.

If you want to deploy this and ask anyone's help for deployment, that's a shame, install it yourself and please don't come to me crying like a baby :D

Now you should have lamp server running, open your browser and point to ```localhost``` which will show you information about the server.

Now find the root of the Apache server, usually it's on ```/srv/http``` on arch linux, please figure out this yourself.

```cd``` into the root directory like so: ```cd /srv/http``` then clone this repository.

```
git clone git@github.com:cyberhck/studentFeedback.git .
```
If this command gives you access right error, that's a shame again, you don't have ssh-keys configured for github.com, you could configure that again, but as seen your condition, you might not be able to do that, so use this command instead.

```
git clone https://github.com/cyberhck/studentFeedback.git .
```
If this fails, please contact some expert.

Till this point, you have codes ready, lamp server running, now MySQL should be configured. While installation, you may have prompted for root password, please have root password with you else there is nothing we can do.

Now, open MySQL like so:
```
mysql -u root -p
```
It will ask you for MySQL root password, when you do you'll be logged in, when you do, create a database for studentFeedback. To do so, ask system administrator, or use the following command:

```
CREATE DATABASE feedback;
```
This will create a database on your server, now exit MySQL and open config.php and set

```
$db_host="localhost";
$db_user="root";
$db_pass="<your password>";
$db_name="feedback";//Assuming you created database named feedback
$salt="nishchal11"; //this is for security. Please don't change it
```
Now, we need to populate the database with tables, so ```cd``` into root of server, most likely you are there now, else ```cd /srv/http``` in Arch Linux or ```cd /var/www/``` in Ubuntu to MySQL like so:

```
mysql -u root -p < sql.sql
```
This will populate the data with junk values, now we need to clear the useless data which might be there. To do so:
```
mysql -u root -p
```
Login to MySQL, then execute the following SQL queries.
```
DELETE FROM collegeRating;
DELETE FROM feedbackStudents;
DELETE FROM students;
DELETE FROM faculty;
DELETE FROM teacherRating;
DELETE FROM tracker;
DELETE FROM usns;
INSERT INTO admin (`username`,`password`) VALUES("admin","nifrmzlnBNZMw");
```
Now go to localhost from in your browser, should show a home page, you can go to admin and login using ```admin``` as username and ```admin``` as password and make sure you change the password.

When you login, you can see a page with the text boxes, you can add faculties from there, and you can add students from ```Add Students``` link

### This is it! Get the feedback from results page.

### This application is made with love by @cyberHck (Github) or @nishchalCoder (Twitter) +NishchalGautam (Google Plus) contributions welcome,

#### Please read the license file before using this product.

### Final Step:

Now that you have student's comments and feedback, please see the problems, just taking feedback is not ideal. If you're not gonna act on the comments, you don't deserve to take feedback at all

# Happy Hacking!!!
