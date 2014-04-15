-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: feedback
-- ------------------------------------------------------
-- Server version	5.5.35-0ubuntu0.13.10.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','nip7XpZfx6bIE'),(2,'nishchal','nifrmzInBNZMw');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collegeRating`
--

DROP TABLE IF EXISTS `collegeRating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collegeRating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parameter` varchar(80) NOT NULL,
  `value` enum('1','2','3','4','5','6') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collegeRating`
--

LOCK TABLES `collegeRating` WRITE;
/*!40000 ALTER TABLE `collegeRating` DISABLE KEYS */;
INSERT INTO `collegeRating` VALUES (51,'ventillation','3'),(52,'powerSupply','4'),(53,'backup','3'),(54,'classroom','4'),(55,'corridors','3'),(56,'toilets','5'),(57,'watersupply','3'),(58,'environment','1'),(59,'medical','2'),(60,'transport','1');
/*!40000 ALTER TABLE `collegeRating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `subCode` varchar(10) NOT NULL,
  `subName` varchar(100) DEFAULT NULL,
  `semester` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `sec` enum('A','B') DEFAULT NULL,
  `department` enum('ISE','CSE','CIV','EEE','ECE','ME') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (21,'Varsha Kulkarni','10CS661','Operation resarch','6','B','CSE'),(22,'Yerry Swamy','10CS63','Compiler Design','6','B','CSE'),(24,'Pankaja R.','10CS46','Computer Organization','4','A','ISE'),(25,'Ramesh','10CS42','Unix System Programming','6','B','CSE'),(26,'Sushma B','10CS45','Computer Grahpic And Visualization','6','B','CSE'),(27,'Deepa K','10AL61','Management And Entrepreneurship','6','B','CSE'),(28,'Sarwesh','10CS45','Microprocessors','4','A','ISE'),(29,'Prakash G','10CS64','Computer Network 2','6','B','CSE'),(30,'Ramesh','10CSL48','UNIX programming and CD LAB','6','B','CSE'),(31,'Sushma B','10CSL67','Computer Graphic And Visualization LAb ','6','B','CSE'),(32,'Sandhya','10CS43','Design and Analysis of Algorithm','4','A','ISE'),(38,'Harinath S','10CV51','Environmental Engineering 1','6','A','CIV'),(39,'Rajani Shurpali','10CV62','Design And Drawing Of RC Structures','6','A','CIV'),(40,'Nagendra B S','10CV63','Transportation Engineering 2','6','A','CIV'),(41,'Madhusudhan B N','10CV64','Geo Technical Engineering ','6','A','CIV'),(42,'Srinath K A','10CV65','Hydralic Structures And Irrigation Design And Drawing','6','A','CIV'),(43,'Monica M S','10CV667','Traffic Engineering ','6','A','CIV'),(44,'Madhusudan B N','10CVL67','Geothechnical Engineering LAB','6','A','CIV'),(45,'Bhavan Kumar','10CVL68','Extensive Survey Viva Voce','6','A','CIV'),(46,'Renuka','10CS42','Graph Theory','4','A','ISE'),(47,'Archana','10CS44','Unix and Shell Programming','4','A','ISE'),(51,'Laxmi','10MAT41','Engineering Mathematics IV','4','A','ISE'),(52,'Sarwesh','10CSL48','Microprocessors Lab','4','A','ISE'),(53,'Sandhya','10CSL47','Design and Analysis of Algorithm Laboratory','4','A','ISE');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbackStudents`
--

DROP TABLE IF EXISTS `feedbackStudents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbackStudents` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `usn` varchar(12) NOT NULL,
  `message` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usn` (`usn`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbackStudents`
--

LOCK TABLES `feedbackStudents` WRITE;
/*!40000 ALTER TABLE `feedbackStudents` DISABLE KEYS */;
INSERT INTO `feedbackStudents` VALUES (2,'d41d8cd98f00','College is not as good as it claims to be. College doesn\'t have a good environment, there are no any discussions or any of workshop that really want to teach us something. College conducts workshop just to make some money.');
/*!40000 ALTER TABLE `feedbackStudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacherRating`
--

DROP TABLE IF EXISTS `teacherRating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacherRating` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `teacher` int(5) DEFAULT NULL,
  `parameter` enum('cos','tc','qps','sspe','caws') DEFAULT NULL,
  `value` enum('1','2','3','4','5') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher` (`teacher`),
  CONSTRAINT `teacherRating_ibfk_1` FOREIGN KEY (`teacher`) REFERENCES `faculty` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacherRating`
--

LOCK TABLES `teacherRating` WRITE;
/*!40000 ALTER TABLE `teacherRating` DISABLE KEYS */;
INSERT INTO `teacherRating` VALUES (171,24,'cos','4'),(172,28,'cos','4'),(173,32,'cos','4'),(174,46,'cos','4'),(175,47,'cos','4'),(176,51,'cos','4'),(177,52,'cos','4'),(178,53,'cos','5'),(179,24,'tc','5'),(180,28,'tc','5'),(181,32,'tc','5'),(182,46,'tc','5'),(183,47,'tc','4'),(184,51,'tc','3'),(185,52,'tc','5'),(186,53,'tc','2'),(187,24,'qps','4'),(188,28,'qps','4'),(189,32,'qps','4'),(190,46,'qps','3'),(191,47,'qps','4'),(192,51,'qps','5'),(193,52,'qps','4'),(194,53,'qps','3'),(195,24,'sspe','3'),(196,28,'sspe','3'),(197,32,'sspe','3'),(198,46,'sspe','5'),(199,47,'sspe','5'),(200,51,'sspe','4'),(201,52,'sspe','3'),(202,53,'sspe','1'),(203,24,'caws','4'),(204,28,'caws','5'),(205,32,'caws','4'),(206,46,'caws','3'),(207,47,'caws','3'),(208,51,'caws','5'),(209,52,'caws','3'),(210,53,'caws','3');
/*!40000 ALTER TABLE `teacherRating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `usn` varchar(12) NOT NULL,
  `formSub` enum('a','b','c') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usn` (`usn`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
INSERT INTO `tracker` VALUES (3,'1ve12is025','c');
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usns`
--

DROP TABLE IF EXISTS `usns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usns` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `usn` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usn` (`usn`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usns`
--

LOCK TABLES `usns` WRITE;
/*!40000 ALTER TABLE `usns` DISABLE KEYS */;
INSERT INTO `usns` VALUES (15,'1ve12is025');
/*!40000 ALTER TABLE `usns` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-15 11:05:40
