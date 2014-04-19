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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collegeRating`
--

LOCK TABLES `collegeRating` WRITE;
/*!40000 ALTER TABLE `collegeRating` DISABLE KEYS */;
INSERT INTO `collegeRating` VALUES (11,'ventillation','2'),(12,'powerSupply','3'),(13,'backup','2'),(14,'classroom','3'),(15,'corridors','3'),(16,'toilets','3'),(17,'watersupply','4'),(18,'environment','3'),(19,'medical','4'),(20,'transport','3'),(21,'ventillation','5'),(22,'powerSupply','4'),(23,'backup','4'),(24,'classroom','5'),(25,'corridors','5'),(26,'toilets','5'),(27,'watersupply','3'),(28,'environment','4'),(29,'medical','1'),(30,'transport','2');
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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (147,'ASHA A','10MAT41','Egg. Mathematics-IV','4','A','CSE'),(148,'ARATHI','10CS42','Graph Theory & combinatorics','4','A','CSE'),(149,'BALAJI','10CS43','Design & analysis of algorithms ','4','A','CSE'),(150,'NAPA LAKSHMI','10CS44','Unix & shell programming','4','A','CSE'),(151,'ASHA M L','10CS45','Microprocessors','4','A','CSE'),(152,'LOKESH','10CS46','Computer organization','4','A','CSE'),(153,'BALAJI','10CSL47','Design & analysis of algorithms LAB','4','A','CSE'),(154,'ASHA','10CSL48','Microprocessors LAB','4','A','CSE'),(155,'KAVITHA','10MAT41','Egg. Mathematics-IV','4','B','CSE'),(156,'BIJULA','10CS42','Graph Theory & combinatorics','4','B','CSE'),(157,'KSHAMA','10CS43','Design & analysis of algorithms ','4','B','CSE'),(158,'RAMESH','10CS44','Unix & shell programming','4','B','CSE'),(159,'VENKATAGIRI','10CS45','Microprocessors','4','B','CSE'),(160,'BALAJI','10CS46','Computer organization','4','B','CSE'),(161,'KSHAMA/PANKAJA','10CSL47','Design & analysis of algorithms LAB','4','B','CSE'),(162,'VENKATAGIRI/PRAKASH','10CSL48','Microprocessors LAB','4','B','CSE'),(163,'LAKSHMI','10MAT41','Egg. Mathematics-IV','4','A','ISE'),(164,'RENUKA','10CS42','Graph Theory & combinatorics','4','A','ISE'),(165,'SANDHYA','10CS43','Design & analysis of algorithms ','4','A','ISE'),(166,'ARCHANA','10CS44','Unix & shell programming','4','A','ISE'),(167,'SARVESH','10CS45','Microprocessors','4','A','ISE'),(168,'PANKAJA','10CS46','Computer organization','4','A','ISE'),(169,'SANDHYA','10CSL47','Design & analysis of algorithms LAB','4','A','ISE'),(170,'SARVESH','10CSL48','Microprocessors LAB','4','A','ISE'),(171,'DEEPA','10IS81','Software Architecture ','8','A','ISE'),(172,'NAGARAJ','10CS82','System Modeling and Simulation','8','A','ISE'),(173,'PANKAJA','10IS841','Ad-hoc Networks','8','A','ISE'),(174,'BHARATHI','10IS835','Information Network Security','8','A','ISE'),(175,'VENKATGIRI','10IS81','Software Architectures','8','B','CSE'),(176,'SRIDEVI','10CS82','System Modeling and Simulation','8','B','CSE'),(177,'Dr SURESHA','10CS835','Information & Network Security','8','B','CSE'),(178,'PRAKASHA','10CS841','Ad-hoc networks','8','B','CSE'),(179,'MAHESH','10IS81','Software Architectures','8','A','CSE'),(180,'VARSHA','10CS82','System Modeling and Simulation','8','A','CSE'),(181,'SURESH P','10CS835','Information & Network Security','8','A','CSE'),(182,'SHONA','10CS841','Ad-hoc networks','8','A','CSE'),(183,'SRINIVAS','10AL61','Management and Enterpreneurship','6','A','CSE'),(184,'RAVIKUMAR','10CS62','Unix System Programming','6','A','CSE'),(185,'MARIA NAVIN','10CS63','Compiler Design','6','A','CSE'),(186,'SHONA','10CS64','Computer Network-II','6','A','CSE'),(187,'SOWMYA SHREE','10CS65','Computer Grapics and Visualization','6','A','CSE'),(188,'LOKESH','10CS661','Operations Research','6','A','CSE'),(189,'SOWMYA SHREE','10CSL67','Computer Grapics and Visualization Lab','6','A','CSE'),(190,'MARIA NAVIN','10CSL68','Unix System Programming &CD Lab','6','A','CSE'),(191,'DEEPA K','10AL61','Management and Enterpreneurship','6','B','CSE'),(192,'RAMESH','10CS62','Unix System Programming','6','B','CSE'),(193,'YERRY SWAMY','10CS63','Compiler Design','6','B','CSE'),(194,'PRAKASHA G','10CS64','Computer Network-II','6','B','CSE'),(195,'SUSHMA.B','10CS65','Computer Grapics and Visualization','6','B','CSE'),(196,'VARSHA','10CS661','Operations Research','6','B','CSE'),(197,'SUSHMA/VARSHA','10CSL67','Computer Grapics and Visualization Lab','6','B','CSE'),(198,'RAMESH/YERRYSWAMY','10CSL68','Unix System Programming &CD Lab','6','B','CSE'),(199,'MARIA NAVIN','10AL61','Management and Enterpreneurship','6','A','ISE'),(200,'SANDHYA','10CS62','Unix System Programming','6','A','ISE'),(201,'VINAY T R','10IS63','File Structures','6','A','ISE'),(202,'MAHESH','10CS64','Computer Network-II','6','A','ISE'),(203,'SHOBHA','10IS65','Software Testing','6','A','ISE'),(204,'SUSHMA','10IS665','Computer Grapics and Visualization','6','A','ISE'),(205,'VINAY/MAHESH','10ISL67','File Structures Lab','6','A','ISE'),(206,'SHOBHA/LOKESH','10ISL68','Software Testing Lab','6','A','ISE');
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
  `usn` varchar(50) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usn` (`usn`),
  UNIQUE KEY `usn_2` (`usn`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbackStudents`
--

LOCK TABLES `feedbackStudents` WRITE;
/*!40000 ALTER TABLE `feedbackStudents` DISABLE KEYS */;
INSERT INTO `feedbackStudents` VALUES (2,'05c35df16598cca3b29a36e84c8377e2','Feedback message from bus'),(3,'0a11d1804c331279fdb6220471b5735c','Honest feedback here, must not contain hate speech, if i use \"fuck\", I\'m screwed!');
/*!40000 ALTER TABLE `feedbackStudents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `usn` varchar(12) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `department` enum('ISE','CSE','CIV','EEE','ECE','ME') DEFAULT NULL,
  `semester` enum('2','4','6','8') DEFAULT NULL,
  `section` enum('A','B') DEFAULT 'A',
  `enabled` enum('true','false') DEFAULT 'true',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=468 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (2,'1VE10IS018','JAWED ALAM','ISE','4','A','true'),(3,'1VE11IS009','CHAITHRA M.N','ISE','4','A','true'),(4,'1VE11IS012','DEVEN SIHAG','ISE','4','A','true'),(5,'1VE11IS035','SHAILANDHRA KUMAR','ISE','4','A','true'),(6,'1VE11IS049','VIKRAM M H','ISE','4','A','true'),(7,'1VE12IS001','AAKASH JHA','ISE','4','A','true'),(8,'1VE12IS002','ABHISHEK M','ISE','4','A','true'),(9,'1VE12IS004','ARISHA A','ISE','4','A','true'),(10,'1VE12IS006','BASKOTA CHAITANYA  SHARMA','ISE','4','A','true'),(11,'1VE12IS007','BHAGYA S','ISE','4','A','true'),(12,'1VE12IS008','BHAGYALAKSHMI P','ISE','4','A','true'),(13,'1VE12IS009','BHANUPRIYA K V','ISE','4','A','true'),(14,'1VE12IS010','BHANUSHRI K R','ISE','4','A','true'),(15,'1VE12IS011','BHAVYA R','ISE','4','A','true'),(16,'1VE12IS012','BINDIYA P','ISE','4','A','true'),(17,'1VE12IS013','BINDU K N','ISE','4','A','true'),(18,'1VE12IS014','CHAITRA SHREE N','ISE','4','A','true'),(19,'1VE12IS016','DEEKSHA K','ISE','4','A','true'),(20,'1VE12IS017','JYESH RANJAN','ISE','4','A','true'),(21,'1VE12IS018','MADHURIYA P','ISE','4','A','true'),(22,'1VE12IS019','MANOHARA A R','ISE','4','A','true'),(23,'1VE12IS020','MARUTHESH B R','ISE','4','A','true'),(24,'1VE12IS023','NAVYASHREE V','ISE','4','A','true'),(25,'1VE12IS025','NISHCHAL GAUTAM','ISE','4','A','true'),(26,'1VE12IS026','NIVEDHA J','ISE','4','A','true'),(27,'1VE12IS028','PREETHI S','ISE','4','A','true'),(28,'1VE12IS029','PUNITHA K B','ISE','4','A','true'),(29,'1VE12IS031','RAJESWARI R','ISE','4','A','true'),(30,'1VE12IS032','RAMYA B S','ISE','4','A','true'),(31,'1VE12IS033','SABIN RIJAL','ISE','4','A','true'),(32,'1VE12IS034','SATHVIK J','ISE','4','A','true'),(33,'1VE12IS035','SHIVANI A T','ISE','4','A','true'),(34,'1VE12IS036','SHRUTI S MAHADEEK','ISE','4','A','true'),(35,'1VE12IS037','SOUJANYA P','ISE','4','A','true'),(36,'1VE12IS038','SOWMYA V','ISE','4','A','true'),(37,'1VE12IS039','SRINIVAS Y L','ISE','4','A','true'),(38,'1VE12IS040','VARSHA B M','ISE','4','A','true'),(39,'1VE12IS041','VARSHA K','ISE','4','A','true'),(40,'1VE12IS042','VASANTH G BHAT','ISE','4','A','true'),(95,'1VE12CS003','ABDUL NAJEEB KHAN','CSE','4','A','true'),(96,'1VE12CS004','ABHISHEK KUMAR ','CSE','4','A','true'),(97,'1VE12CS005','ACHAL RAMAN','CSE','4','A','true'),(98,'1VE12CS006','ADARSH M N','CSE','4','A','true'),(99,'1VE12CS007','AISHWARYA M','CSE','4','A','true'),(100,'1VE12CS008','AJITH KUMAR SHETTY','CSE','4','A','true'),(101,'1VE12CS009','AKSHAY BHAN','CSE','4','A','true'),(102,'1VE12CS010','AKSHAY L N','CSE','4','A','true'),(103,'1VE12CS011','AMIT KUMAR TIWARI','CSE','4','A','true'),(104,'1VE12CS012','ANISH ROILA','CSE','4','A','true'),(105,'1VE12CS013','ASHWINI S A','CSE','4','A','true'),(106,'1VE12CS014','ATISH GUPTA','CSE','4','A','true'),(107,'1VE12CS016','BHAVANA C','CSE','4','A','true'),(108,'1VE12CS017','BIVEK SINGH','CSE','4','A','true'),(109,'1VE12CS018','C R SHRUTHI','CSE','4','A','true'),(110,'1VE12CS019','CHAITRA','CSE','4','A','true'),(111,'1VE12CS021','CHAITRA S','CSE','4','A','true'),(112,'1VE12CS023','CHANDRA BAHADUR  GURUNG','CSE','4','A','true'),(113,'1VE12CS024','CHARU','CSE','4','A','true'),(114,'1VE12CS025','D L THULASI RAM REDDY','CSE','4','A','true'),(115,'1VE12CS026','DARSHAN  KANBARGI','CSE','4','A','true'),(116,'1VE12CS027','DEEPASHREE C GUNDAGI','CSE','4','A','true'),(117,'1VE12CS028','DIKSHA  ','CSE','4','A','true'),(118,'1VE12CS029','DIKSHA SINGH','CSE','4','A','true'),(119,'1VE12CS030','DIPTI SAHAY','CSE','4','A','true'),(120,'1VE12CS031','DIVYASHREE R','CSE','4','A','true'),(121,'1VE12CS032','DRISHTY KUMARI','CSE','4','A','true'),(122,'1VE12CS033','GAUTHAM KRISHNA V','CSE','4','A','true'),(123,'1VE12CS034','J ARULAMMA','CSE','4','A','true'),(124,'1VE12CS035','JITESH GUPTA','CSE','4','A','true'),(125,'1VE12CS036','JEEVITHA H R','CSE','4','A','true'),(126,'1VE12CS037','K ASHWINI','CSE','4','A','true'),(127,'1VE12CS038','KALPA V ','CSE','4','A','true'),(128,'1VE12CS039','KATTA JAYANTHKUMAR','CSE','4','A','true'),(129,'1VE12CS040','KEERTHANA SURENDRAN','CSE','4','A','true'),(130,'1VE12CS042','KISHORA M','CSE','4','A','true'),(131,'1VE12CS043','LAKSHMIDEVI R V','CSE','4','A','true'),(132,'1VE12CS044','LIKITA G','CSE','4','A','true'),(133,'1VE12CS045','M V NAVEEN YADAV','CSE','4','A','true'),(134,'1VE12CS046','MADHURYA N A','CSE','4','A','true'),(135,'1VE12CS047','MADHUSHREE M','CSE','4','A','true'),(136,'1VE12CS048','MAKA DINESH REDDY','CSE','4','A','true'),(137,'1VE12CS049','MALINDER SINGH','CSE','4','A','true'),(138,'1VE12CS050','MEGHANA J','CSE','4','A','true'),(139,'1VE12CS051','MEHKAR','CSE','4','A','true'),(140,'1VE12CS052','MILANA S','CSE','4','A','true'),(141,'1VE12CS053','MONICA C','CSE','4','A','true'),(142,'1VE12CS054','MUNNANGI ANUSHA','CSE','4','A','true'),(143,'1VE12CS055','NAYANA V','CSE','4','A','true'),(144,'1VE12CS110','CHAITRA.C','CSE','4','A','true'),(145,'1VE13CS400','AMIT KUMAR','CSE','4','A','true'),(146,'1VE13CS401','KULDIP PODDAR','CSE','4','A','true'),(147,'1VE13CS404','SUMANA.P','CSE','4','A','true'),(148,'1VE11CS093','SHREYAMS S','CSE','4','B','true'),(149,'1VE12CS056','NIKHIL TEOTIA','CSE','4','B','true'),(150,'1VE12CS057','NONGTHOBAM SANAKHOMBA SINGH','CSE','4','B','true'),(151,'1VE12CS058','NUTAN D H','CSE','4','B','true'),(152,'1VE12CS059','PALLAVI VERMA','CSE','4','B','true'),(153,'1VE12CS060','PAWAN KUMAR THAKUR','CSE','4','B','true'),(154,'1VE12CS061','POLAREDDY SAI PRIYANKA','CSE','4','B','true'),(155,'1VE12CS062','POOJA N','CSE','4','B','true'),(156,'1VE12CS063','PRAJOTH PRAMOD BHAT','CSE','4','B','true'),(157,'1VE12CS064','PRASHANTAGOUD','CSE','4','B','true'),(158,'1VE12CS065','PRERNA','CSE','4','B','true'),(159,'1VE12CS066','PRERNA CHAUHAN','CSE','4','B','true'),(160,'1VE12CS067','PRIYANKA B K','CSE','4','B','true'),(161,'1VE12CS068','R CHITHRA RAIKAR','CSE','4','B','true'),(162,'1VE12CS069','RAKESH V R','CSE','4','B','true'),(163,'1VE12CS070','RICHA KUMARI ','CSE','4','B','true'),(164,'1VE12CS071','RINKU SAH','CSE','4','B','true'),(165,'1VE12CS072','RUCHIR DHIMAN','CSE','4','B','true'),(166,'1VE12CS073','SHRUTHI S','CSE','4','B','true'),(167,'1VE12CS074','SACHIN M S','CSE','4','B','true'),(168,'1VE12CS075','SAGAR R','CSE','4','B','true'),(169,'1VE12CS076','SAHANA N','CSE','4','B','true'),(170,'1VE12CS077','SAHANA R SHETTY','CSE','4','B','true'),(171,'1VE12CS078','SAURABH SRIVASTAVA','CSE','4','B','true'),(172,'1VE12CS079','SAVITHA S','CSE','4','B','true'),(173,'1VE12CS080','SHABISTAN QUAMAR','CSE','4','B','true'),(174,'1VE12CS081','SHAIK RESHMA PARVEEN','CSE','4','B','true'),(175,'1VE12CS082','SHARATH H A','CSE','4','B','true'),(176,'1VE12CS083','SHEKHAR SAURABH','CSE','4','B','true'),(177,'1VE12CS084','SHIKA YADAV','CSE','4','B','true'),(178,'1VE12CS085','SHIRISHA P S','CSE','4','B','true'),(179,'1VE12CS086','SHIVANI R','CSE','4','B','true'),(180,'1VE12CS087','G SHRUTHI','CSE','4','B','true'),(181,'1VE12CS088','SHWETHA B V','CSE','4','B','true'),(182,'1VE12CS089','SINDHU J','CSE','4','B','true'),(183,'1VE12CS090','SIRI P S','CSE','4','B','true'),(184,'1VE12CS092','SNEHA D','CSE','4','B','true'),(185,'1VE12CS093','SNEHA KUMARI','CSE','4','B','true'),(186,'1VE12CS094','SOWMYASHREE Y K','CSE','4','B','true'),(187,'1VE12CS095','STALIN DHANARAJ S','CSE','4','B','true'),(188,'1VE12CS097','SUSHMA M H ','CSE','4','B','true'),(189,'1VE12CS098','SUSHMITHA S','CSE','4','B','true'),(190,'1VE12CS099','SUVARNA AGNIHOTRI','CSE','4','B','true'),(191,'1VE12CS100','TANNU PRIYA','CSE','4','B','true'),(192,'1VE12CS101','THARA S','CSE','4','B','true'),(193,'1VE12CS102','THILAK KUMAR M','CSE','4','B','true'),(194,'1VE12CS103','VIDYASHREE P','CSE','4','B','true'),(195,'1VE12CS104','VIJAY A H','CSE','4','B','true'),(196,'1VE12CS105','VIKAS KUMAR','CSE','4','B','true'),(197,'1VE12CS106','VINAY M','CSE','4','B','true'),(198,'1VE12CS107','VINEET KUMAR DEEPAK','CSE','4','B','true'),(199,'1VE12CS108','VINEET V KABADI','CSE','4','B','true'),(200,'1VE12CS109','YUBRAJ RAI','CSE','4','B','true'),(201,'1VE13CS402','LAVANYA D R','CSE','4','B','true'),(202,'1VE13CS403','SANTHOSH KUMAR D S','CSE','4','B','true'),(203,'1VE07CS057','PRAVEEN P','CSE','6','A','true'),(204,'1VE10CS010','BHARGAVI A G','CSE','6','A','true'),(205,'1VE10CS026','KANISHKA SINGH','CSE','6','A','true'),(206,'1VE11CS001','ABHISHEK KUMAR','CSE','6','A','true'),(207,'1VE11CS003','ABHISHEK P HUDDAR','CSE','6','A','true'),(208,'1VE11CS004','AISHWARYA KATALE','CSE','6','A','true'),(209,'1VE11CS006','AKASH G ','CSE','6','A','true'),(210,'1VE11CS007','AKSHATHA J','CSE','6','A','true'),(211,'1VE11CS008','ALEEM PASHA','CSE','6','A','true'),(212,'1VE11CS009','ANKUSH JAIN','CSE','6','A','true'),(213,'1VE11CS010','ANUBHAV TYAGI','CSE','6','A','true'),(214,'1VE11CS011','ARSHIYA BANU','CSE','6','A','true'),(215,'1VE11CS013','ASHISH MAITHANI','CSE','6','A','true'),(216,'1VE11CS014','BEERAM SASIDHER REDDY ','CSE','6','A','true'),(217,'1VE11CS015','BINDUSHRI A','CSE','6','A','true'),(218,'1VE11CS016','DHANESHWAR YASHWANT NAIK','CSE','6','A','true'),(219,'1VE11CS017','SHREYAS G S','CSE','6','A','true'),(220,'1VE11CS019','HIMABINDU S','CSE','6','A','true'),(221,'1VE11CS020','JAYANTH M','CSE','6','A','true'),(222,'1VE11CS021','JINAL V FOFLIA','CSE','6','A','true'),(223,'1VE11CS022','BHARATH GOWDA. K','CSE','6','A','true'),(224,'1VE11CS023','K NAGAVARUN REDDY','CSE','6','A','true'),(225,'1VE11CS024','K NAVEEN KUMAR','CSE','6','A','true'),(226,'1VE11CS026','KAMYA','CSE','6','A','true'),(227,'1VE11CS028','KASVI MANORANJAN','CSE','6','A','true'),(228,'1VE11CS030','KRUTHI RAJ R','CSE','6','A','true'),(229,'1VE11CS032','LAVANYA A','CSE','6','A','true'),(230,'1VE11CS033','M N LIKHIT','CSE','6','A','true'),(231,'1VE11CS034','M PAVANA SINDHU','CSE','6','A','true'),(232,'1VE11CS035','MAHESH T','CSE','6','A','true'),(233,'1VE11CS036','MAIMBAM KARANJIT SINGH','CSE','6','A','true'),(234,'1VE11CS037','MALLIKA N','CSE','6','A','true'),(235,'1VE11CS039','C V MANJESH','CSE','6','A','true'),(236,'1VE11CS041','MONIKA V','CSE','6','A','true'),(237,'1VE11CS042','NAGARAJ M BHAT','CSE','6','A','true'),(238,'1VE11CS044','NAMAN KULSHRESHTHA','CSE','6','A','true'),(239,'1VE11CS048','NISARGA N','CSE','6','A','true'),(240,'1VE11CS410','RAVI KUMAR B S','CSE','6','A','true'),(241,'1VE12CS401','DEEPA N','CSE','6','A','true'),(242,'1VE12CS402','GEETHANJALI T N','CSE','6','A','true'),(243,'1VE12CS403','KAVITHA','CSE','6','A','true'),(244,'1VE12CS405','MEGHANA V','CSE','6','A','true'),(245,'1VE12CS407','PREETHI S M','CSE','6','A','true'),(246,'1VE12CS409','S B SHILPA','CSE','6','A','true'),(247,'1VE12CS410','SRILAKSHMI N','CSE','6','A','true'),(248,'1VE12CS412','VATHSALA','CSE','6','A','true'),(249,'1VE12CS413','VINODA D','CSE','6','A','true'),(250,'1VE12CS414','SANDHYA ','CSE','6','A','true'),(251,'1VE10CS410','VENKATESH','CSE','6','A','true'),(252,'1VE10CS064','SAHANA','CSE','6','B','true'),(253,'1VE10CS095','MALLIKA','CSE','6','B','true'),(254,'1VE11CS038','MAMATHA MURTHY','CSE','6','B','true'),(255,'1VE11CS046','NANDISH S K','CSE','6','B','true'),(256,'1VE11CS047','NIKHIL B','CSE','6','B','true'),(257,'1VE11CS050','POOJA KUMARI','CSE','6','B','true'),(258,'1VE11CS051','PRADEEP GOWDA B','CSE','6','B','true'),(259,'1VE11CS052','PRAJWAL M K','CSE','6','B','true'),(260,'1VE11CS053','PRASHANTH A R','CSE','6','B','true'),(261,'1VE11CS054','PRASHANT ROY GHATAK','CSE','6','B','true'),(262,'1VE11CS056','PREETI ANAND','CSE','6','B','true'),(263,'1VE11CS057','PRIYA SHARMA','CSE','6','B','true'),(264,'1VE11CS058','PUNEETH KUMAR D N','CSE','6','B','true'),(265,'1VE11CS059','RAGHAVENDRA K R','CSE','6','B','true'),(266,'1VE11CS061','RAVITEJA G','CSE','6','B','true'),(267,'1VE11CS062','ROHINI KULKARNI','CSE','6','B','true'),(268,'1VE11CS064','SAHANA U A','CSE','6','B','true'),(269,'1VE11CS065','SANGEETA GHOSH','CSE','6','B','true'),(270,'1VE11CS067','SANJESH PRASAD SHRESTHA','CSE','6','B','true'),(271,'1VE11CS068','SAURABH M RANE','CSE','6','B','true'),(272,'1VE11CS069','SEEMA J','CSE','6','B','true'),(273,'1VE11CS070','SHALINI M','CSE','6','B','true'),(274,'1VE11CS071','SHIVA KUMAR P','CSE','6','B','true'),(275,'1VE11CS072','SHREYA','CSE','6','B','true'),(276,'1VE11CS073','SHRUTHI TIWARI','CSE','6','B','true'),(277,'1VE11CS074','SHWETHA R','CSE','6','B','true'),(278,'1VE11CS075','SIJAN SHRESTHA','CSE','6','B','true'),(279,'1VE11CS076','SIKANDAR SINGH','CSE','6','B','true'),(280,'1VE11CS081','SUPRIYA C M','CSE','6','B','true'),(281,'1VE11CS082','SUSMITHA B','CSE','6','B','true'),(282,'1VE11CS084','SWATHI  KUMAR A','CSE','6','B','true'),(283,'1VE11CS086','TABASSUM S','CSE','6','B','true'),(284,'1VE11CS087','TARANNUM KHAN','CSE','6','B','true'),(285,'1VE11CS088','TERWAD KEDAR SATISH ','CSE','6','B','true'),(286,'1VE11CS089','VAIBHAV VIVEK BHASIN','CSE','6','B','true'),(287,'1VE11CS090','VISHNU H R ','CSE','6','B','true'),(288,'1VE11CS091','VIVEK KUMAR KRISHNA','CSE','6','B','true'),(289,'1VE11CS092','ANANYA DAS','CSE','6','B','true'),(290,'1VE11CS411','RESHMA N','CSE','6','B','true'),(291,'1VE12CS400','AMANDEEP KAUR','CSE','6','B','true'),(292,'1VE12CS406','PAYEL BARMAN','CSE','6','B','true'),(293,'1VE12CS411','VARUN N','CSE','6','B','true'),(294,'1VE10IS014','GURU PRASAD','ISE','6','A','true'),(295,'1VE10IS028','MANOJ','ISE','6','A','true'),(296,'1VE10IS055','PRAVEEN','ISE','6','A','true'),(297,'1VE11IS002','ANKITA MUKHERJEE','ISE','6','A','true'),(298,'1VE11IS003','AREEFA BANU','ISE','6','A','true'),(299,'1VE11IS004',' ARPITHA S','ISE','6','A','true'),(300,'1VE11IS005','ASHIM G C','ISE','6','A','true'),(301,'1VE11IS006','AYUSHI SONNET','ISE','6','A','true'),(302,'1VE11IS007','BHANUPRIYA B N','ISE','6','A','true'),(303,'1VE11IS008','BHARGAV R PANTH','ISE','6','A','true'),(304,'1VE11IS010','CHANDINI M','ISE','6','A','true'),(305,'1VE11IS013','DIVYA G N','ISE','6','A','true'),(306,'1VE11IS014','GEETHA SRIKRISHNA ','ISE','6','A','true'),(307,'1VE11IS015','HEMANTH KUMAR M','ISE','6','A','true'),(308,'1VE11IS016','K S DEEPAK','ISE','6','A','true'),(309,'1VE11IS017','MAYANK SAURAV','ISE','6','A','true'),(310,'1VE11IS018','MEGHA N M','ISE','6','A','true'),(311,'1VE11IS019','MEENAKSHI N','ISE','6','A','true'),(312,'1VE11IS020','NAVYA A','ISE','6','A','true'),(313,'1VE11IS021','NETHRA S N ','ISE','6','A','true'),(314,'1VE11IS022','NETHRAVATHI S','ISE','6','A','true'),(315,'1VE11IS023','NIRVISHEK AWASTHI','ISE','6','A','true'),(316,'1VE11IS026','PRATHIBA V','ISE','6','A','true'),(317,'1VE11IS028','RAHUL KUMAR','ISE','6','A','true'),(318,'1VE11IS029','RAHUL KUMAR MISHRA','ISE','6','A','true'),(319,'1VE11IS030','RAJINI G','ISE','6','A','true'),(320,'1VE11IS031','RAJPUROHIT','ISE','6','A','true'),(321,'1VE11IS032','RANJITH KUMAR S','ISE','6','A','true'),(322,'1VE11IS033','RUHANI KAKROTRA','ISE','6','A','true'),(323,'1VE11IS034','SAHANA N ','ISE','6','A','true'),(324,'1VE11IS036','SANTHOSH RAJ','ISE','6','A','true'),(325,'1VE11IS037','SHANU SINGH','ISE','6','A','true'),(326,'1VE11IS041','SUKREETI RAJ','ISE','6','A','true'),(327,'1VE11IS044','SWETHA','ISE','6','A','true'),(328,'1VE11IS045','TANYA SINGH','ISE','6','A','true'),(329,'1VE11IS047','VARUN K','ISE','6','A','true'),(330,'1VE11IS048','VENNELA N','ISE','6','A','true'),(331,'1VE11IS050','VINUTHA P','ISE','6','A','true'),(332,'1VE11IS051','ZEHRA FATHIMA','ISE','6','A','true'),(333,'1VE09IS023','N VARSHA','ISE','8','A','true'),(334,'IVE09IS029','RAJANKUMAR','ISE','8','A','true'),(335,'1VE09IS039','SUHAS ','ISE','8','A','true'),(336,'1VE10IS001','ADHARSH R K','ISE','8','A','true'),(337,'1VE10IS002','ANIRUDH R MORAB','ISE','8','A','true'),(338,'1VE10IS005','ANUSHA. S','ISE','8','A','true'),(339,'1VE10IS006','ASHWIN KUMAR K S ','ISE','8','A','true'),(340,'1VE10IS011','CHANDRODAY KUMAR','ISE','8','A','true'),(341,'1VE10IS012','DEEPIKA B V','ISE','8','A','true'),(342,'1VE10IS013','DHANUSH SHARMA G','ISE','8','A','true'),(343,'1VE10IS015','HARSHITHA K','ISE','8','A','true'),(344,'1VE10IS016','HONAVAR JYOTI MOHAN','ISE','8','A','true'),(345,'1VE10IS017','ISHWARYA G','ISE','8','A','true'),(346,'1VE10IS020','KARTHIK RAGHUVEER','ISE','8','A','true'),(347,'1VE10IS021','KAVITHA C','ISE','8','A','true'),(348,'1VE10IS022','KAVYA M','ISE','8','A','true'),(349,'1VE10IS023','M ASHWINI','ISE','8','A','true'),(350,'1VE10IS025','MANASA R ','ISE','8','A','true'),(351,'1VE10IS027','MANOJ KUMAR R','ISE','8','A','true'),(352,'1VE10IS030','NAINSI KUMARI','ISE','8','A','true'),(353,'1VE10IS031','NARESH REDDY K H','ISE','8','A','true'),(354,'1VE10IS033','NIKHIL ROHAN D SOUZA','ISE','8','A','true'),(355,'1VE10IS035','PRIYANKA KRISHNA MURTHY','ISE','8','A','true'),(356,'1VE10IS036','PUJA KANDHAWAY','ISE','8','A','true'),(357,'1VE10IS039','RASHMI R','ISE','8','A','true'),(358,'1VE10IS041','ROOPA K R','ISE','8','A','true'),(359,'1VE10IS044','SANDHYA B N','ISE','8','A','true'),(360,'1VE10IS046','SHAMBHAVI T S','ISE','8','A','true'),(361,'1VE10IS047','SHARJEL AHMED','ISE','8','A','true'),(362,'1VE10IS048','SHETTY RASHMI ','ISE','8','A','true'),(363,'1VE10IS049','SMITHA T K','ISE','8','A','true'),(364,'1VE10IS050','SRIVATSA   YERGOL','ISE','8','A','true'),(365,'1VE10IS052','SUNIL R','ISE','8','A','true'),(366,'1VE10IS053','SUSHMA  K  B','ISE','8','A','true'),(367,'1VE10IS057','HITESH KUMAR','ISE','8','A','true'),(368,'1VE10IS059','RAKSHITH    D','ISE','8','A','true'),(369,'1VE08IS013','GAURAVKUMAR','ISE','8','A','true'),(370,'1VE04CS052','SMITHA R H','CSE','8','A','true'),(371,'1VE08CS085','VADIRAJ KATTI','CSE','8','A','true'),(372,'1VE09CS046','PUSHPENDRA SINGH','CSE','8','A','true'),(373,'1VE10CS001','ABINAV MISHRA','CSE','8','A','true'),(374,'1VE10CS003','ADITYA L PRABHU','CSE','8','A','true'),(375,'1VE10CS004','AISHWARYA U','CSE','8','A','true'),(376,'1VE10CS005','AKHIL S','CSE','8','A','true'),(377,'1VE10CS006','AMRAPALLI SRIVASTAVA','CSE','8','A','true'),(378,'1VE10CS007','ASHISH A','CSE','8','A','true'),(379,'1VE10CS008','BHAGYASHREE K','CSE','8','A','true'),(380,'1VE10CS009','BHAGYASHREE R','CSE','8','A','true'),(381,'1VE10CS011','CHAITRA PRADEEP','CSE','8','A','true'),(382,'1VE10CS012','CHITRA MP','CSE','8','A','true'),(383,'1VE10CS013','DEEPAK JOY','CSE','8','A','true'),(384,'1VE10CS014','ERANNA SN','CSE','8','A','true'),(385,'1VE10CS015','ESHNA SACHAR','CSE','8','A','true'),(386,'1VE10CS016','GAURAV RAJ','CSE','8','A','true'),(387,'1VE10CS017','GEETHA S','CSE','8','A','true'),(388,'1VE10CS018','GHAZIYA PARVEEN','CSE','8','A','true'),(389,'1VE10CS019','GIRIJA MC','CSE','8','A','true'),(390,'1VE10CS020','HARIN KUMAR G','CSE','8','A','true'),(391,'1VE10CS021','HARISH GOWDA HK','CSE','8','A','true'),(392,'1VE10CS022','G C  HARSHAVARDINI ','CSE','8','A','true'),(393,'1VE10CS023','IRAM FATNA','CSE','8','A','true'),(394,'1VE10CS024','JITENDRA KUMAR','CSE','8','A','true'),(395,'1VE10CS025','K CHETAN','CSE','8','A','true'),(396,'1VE10CS027','KASHIF SHARIF','CSE','8','A','true'),(397,'1VE10CS029','KISHORE M','CSE','8','A','true'),(398,'1VE10CS030','MADHU K A','CSE','8','A','true'),(399,'1VE10CS031','MADHURI GOPAL R','CSE','8','A','true'),(400,'1VE10CS032','MAMUDUR SAI ABHIRAM','CSE','8','A','true'),(401,'1VE10CS033','MANJUNATH S','CSE','8','A','true'),(402,'1VE10CS035','MOHAMMED ATEEQ UR  RAHMAN','CSE','8','A','true'),(403,'1VE10CS036','MONICA G','CSE','8','A','true'),(404,'1VE10CS037','MRINAL KUMAR','CSE','8','A','true'),(405,'1VE10CS038','N R VIDYASHREE','CSE','8','A','true'),(406,'1VE10CS039','NAGESH M ','CSE','8','A','true'),(407,'1VE10CS040','NAMAN DUBEY','CSE','8','A','true'),(408,'1VE10CS041','NAVEEN S','CSE','8','A','true'),(409,'1VE10CS042','NAZIAPARVEEZ','CSE','8','A','true'),(410,'1VE10CS043','NEHA M','CSE','8','A','true'),(411,'1VE10CS090','ADITH KIRAN','CSE','8','A','true'),(412,'1VE10CS093','ARCHANA B','CSE','8','A','true'),(413,'1VE10CS094','SAURABH SINGH','CSE','8','A','true'),(414,'1VE11CS400','ABHISHEK  K L','CSE','8','A','true'),(415,'1VE11CS402','H V ASHWATH','CSE','8','A','true'),(416,'1VE11CS403','JAGADEESH BN','CSE','8','A','true'),(417,'1VE11CS404','KISHORE A','CSE','8','A','true'),(418,'1VE11CS405','POORNIMA S','CSE','8','A','true'),(419,'1VE09CS023','KUNDAN','CSE','8','B','true'),(420,'1VE09CS012','BIBHU KUMAR PANDEY','CSE','8','B','true'),(421,'1VE10CS408','SHUBA G','CSE','8','B','true'),(422,'1VE10CS409','SPOORTHY C V','CSE','8','B','true'),(423,'1VE10CS045','NIDHI NIKETA','CSE','8','B','true'),(424,'1VE10CS047 ','NIMMAGADDA  SRI AMULYA','CSE','8','B','true'),(425,'1VE10CS048','NITESH KUMAR','CSE','8','B','true'),(426,'1VE10CS049','NUPOOR KUMARI ','CSE','8','B','true'),(427,'1VE10CS050','PALAK DUBEY','CSE','8','B','true'),(428,'1VE10CS051','PAVITHRA','CSE','8','B','true'),(429,'1VE10CS052','POTUGANAM VISHNU VARDHAN','CSE','8','B','true'),(430,'1VE10CS053','PRABHAT KUMAR RAUNIYAR','CSE','8','B','true'),(431,'1VE10CS054','PRANAMYA P JAIN','CSE','8','B','true'),(432,'1VE10CS055','PRAVEEN KUMAR N Y','CSE','8','B','true'),(433,'1VE10CS056','R PRAJWAL','CSE','8','B','true'),(434,'1VE10CS059','RANJU KUMARI','CSE','8','B','true'),(435,'1VE10CS060','RAVI SHANKAR','CSE','8','B','true'),(436,'1VE10CS061','RITESH G','CSE','8','B','true'),(437,'1VE10CS062','RITESH P SANGURMATH','CSE','8','B','true'),(438,'1VE10CS065','SAHITI REDDY','CSE','8','B','true'),(439,'1VE10CS066','SAIF KANKUDTI','CSE','8','B','true'),(440,'1VE10CS067','SANJANA C GOWDA','CSE','8','B','true'),(441,'1VE10CS068','SETHU RAMYA','CSE','8','B','true'),(442,'1VE10CS069','SHALINI CS','CSE','8','B','true'),(443,'1VE10CS070','SHAMILY VARGHESE E','CSE','8','B','true'),(444,'1VE10CS072','SHRUTI NATHWANI','CSE','8','B','true'),(445,'1VE10CS073','SPOORTHY HN','CSE','8','B','true'),(446,'1VE10CS074','SRIJIT  GHATAK','CSE','8','B','true'),(447,'1VE10CS075','SUJAN MG','CSE','8','B','true'),(448,'1VE10CS076','SUJITH KUMAR P','CSE','8','B','true'),(449,'1VE10CS077','SUNIL','CSE','8','B','true'),(450,'1VE10CS078','SUPRIYA M','CSE','8','B','true'),(451,'1VE10CS080','THAVAMANI M','CSE','8','B','true'),(452,'1VE10CS081','V YASHSWANI','CSE','8','B','true'),(453,'1VE10CS082','VAIBHAV KRISHNA KULKARNI','CSE','8','B','true'),(454,'1VE10CS083','VIDYA M','CSE','8','B','true'),(455,'1VE10CS084','VIDYA SHREE M JEENAKERI','CSE','8','B','true'),(456,'1VE10CS085','VINISHA ','CSE','8','B','true'),(457,'1VE10CS087','VITTA RAGINI ','CSE','8','B','true'),(458,'1VE10CS088','RITESH DUBEY','CSE','8','B','true'),(459,'1VE10CS089','THANUSHREE A','CSE','8','B','true'),(460,'1VE10CS091','SACHIN PANDEY','CSE','8','B','true'),(461,'1VE10CS092','SUBHANKAR GUPTA','CSE','8','B','true'),(462,'1VE10CS405','SUNIL S','CSE','8','B','true'),(463,'1VE11CS407','PRATAP H A','CSE','8','B','true'),(464,'1VE11CS408','POOJA','CSE','8','B','true'),(465,'1VE11CS409','BHAVYA R','CSE','8','B','true'),(466,'1VE11CS413','ROOPASHREE','CSE','8','B','true'),(467,'1VE11CS414','VITESH BABU','CSE','8','B','true');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacherRating`
--

LOCK TABLES `teacherRating` WRITE;
/*!40000 ALTER TABLE `teacherRating` DISABLE KEYS */;
INSERT INTO `teacherRating` VALUES (21,147,'cos','2'),(22,148,'cos','3'),(23,149,'cos','2'),(24,150,'cos','3'),(25,151,'cos','2'),(26,152,'cos','2'),(27,153,'cos','1'),(28,154,'cos','2'),(29,147,'tc','3'),(30,148,'tc','2'),(31,149,'tc','2'),(32,150,'tc','3'),(33,151,'tc','3'),(34,152,'tc','3'),(35,153,'tc','2'),(36,154,'tc','3'),(37,147,'qps','2'),(38,148,'qps','2'),(39,149,'qps','2'),(40,150,'qps','4'),(41,151,'qps','3'),(42,152,'qps','4'),(43,153,'qps','2'),(44,154,'qps','4'),(45,147,'sspe','3'),(46,148,'sspe','2'),(47,149,'sspe','3'),(48,150,'sspe','4'),(49,151,'sspe','3'),(50,152,'sspe','4'),(51,153,'sspe','1'),(52,154,'sspe','3'),(53,147,'caws','2'),(54,148,'caws','5'),(55,149,'caws','4'),(56,150,'caws','3'),(57,151,'caws','2'),(58,152,'caws','5'),(59,153,'caws','3'),(60,154,'caws','2'),(61,163,'cos','4'),(62,164,'cos','4'),(63,165,'cos','4'),(64,166,'cos','3'),(65,167,'cos','5'),(66,168,'cos','5'),(67,169,'cos','3'),(68,170,'cos','4'),(69,163,'tc','1'),(70,164,'tc','1'),(71,165,'tc','1'),(72,166,'tc','2'),(73,167,'tc','1'),(74,168,'tc','3'),(75,169,'tc','1'),(76,170,'tc','1'),(77,163,'qps','2'),(78,164,'qps','3'),(79,165,'qps','2'),(80,166,'qps','2'),(81,167,'qps','3'),(82,168,'qps','3'),(83,169,'qps','2'),(84,170,'qps','2'),(85,163,'sspe','1'),(86,164,'sspe','1'),(87,165,'sspe','1'),(88,166,'sspe','1'),(89,167,'sspe','4'),(90,168,'sspe','5'),(91,169,'sspe','1'),(92,170,'sspe','2'),(93,163,'caws','5'),(94,164,'caws','4'),(95,165,'caws','1'),(96,166,'caws','2'),(97,167,'caws','4'),(98,168,'caws','5'),(99,169,'caws','1'),(100,170,'caws','4');
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
INSERT INTO `tracker` VALUES (2,'1VE12CS035','c'),(3,'1VE12IS025','c');
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usns`
--

LOCK TABLES `usns` WRITE;
/*!40000 ALTER TABLE `usns` DISABLE KEYS */;
INSERT INTO `usns` VALUES (46,'1VE12CS012'),(49,'1VE12CS014'),(34,'1VE12CS035'),(45,'1VE12IS020'),(44,'1VE12IS023'),(32,'1VE12IS025');
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

-- Dump completed on 2014-04-19 13:18:18
