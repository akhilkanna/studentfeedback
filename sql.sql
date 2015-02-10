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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','niPjWjlX/1/C.'),(2,'nishchal','nifrmzInBNZMw'),(3,'sspatil','niYYotLGcudOI'),(4,'patil','niYYotLGcudOI');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collegeRating`
--

LOCK TABLES `collegeRating` WRITE;
/*!40000 ALTER TABLE `collegeRating` DISABLE KEYS */;
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
  `name` varchar(100) NOT NULL,
  `subCode` varchar(10) NOT NULL,
  `subName` varchar(100) DEFAULT NULL,
  `semester` enum('1','3','5','7') NOT NULL DEFAULT '1',
  `sec` enum('A','B','C','D','E','F','G','H') CHARACTER SET latin1 COLLATE latin1_german1_ci DEFAULT 'H',
  `department` enum('ISE','CSE','CIV','EEE','ECE','ME','BS','MTME','MTEC','MTCS','MTCV') DEFAULT 'BS',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=640 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (608,'Ms. H V AMBIKA','10MAT41','ENGINEERING MATHEMATICS - IV','3','A','ECE'),(609,'Mr. MAHAVEER PENMA','10ES42','MICROCONTROLLERS','3','A','ECE'),(610,'Mrs. C H SWAPNA','10ES43','CONTROL SYSTEMS','3','A','ECE'),(611,'Mr. DANKAN V GOWDA','10EC44','SIGNALS & SYSTEMS','3','A','ECE'),(612,'Mr.RAJENDRA PRASAD P','10EC45','FUNDAMENTALS OF HDL','3','A','ECE'),(613,'Mrs. REKHA N','10EC46','LINEAR IC\'s & APPLICATIONS','3','A','ECE'),(614,'SUNIL KUMAR KN/DILEEP REDDY BOLLA/SATHYASRIKANTH P/ARPITHA KULAKARNI / MOHAN K S/VIJAYASHEKAR SS','10ESL47','MICROCONTROLLERS LAB','3','A','ECE'),(615,'RAJENDRA PRASAD P / REKHA N / RAJESHWARI N PATIL / PRAMOD MS/ SUHAS N S','10ECL48','HDL LAB','3','A','ECE'),(616,'Mrs. M H INDRAMMA ','10MAT41','ENGINEERING MATHEMATICS - IV','3','B','ECE'),(617,'Mrs. G R POORNIMA ','10ES42','MICROCONTROLLERS','3','B','ECE'),(618,'Mrs. VANI B P','10ES43','CONTROL SYSTEMS','3','B','ECE'),(619,'Mr. DANKAN V GOWDA','10EC44','SIGNALS & SYSTEMS','3','B','ECE'),(620,'Mr.RAJENDRA PRASAD P','10EC45','FUNDAMENTALS OF HDL','3','B','ECE'),(621,'Mrs. REKHA N','10EC46','LINEAR IC\'s & APPLICATIONS','3','B','ECE'),(622,'G R POORNIMA/SATHYASRIKANTH P/ARPITHA KULAKARNI / MOHAN K S','10ESL47','MICROCONTROLLERS LAB','3','B','ECE'),(623,'REKHA N /SUNIL K N/PRAMOD M S/ RAJESHWARI N PATIL / DANKAN V GOWDA/ SUHAS N S','10ECL48','HDL LAB','3','B','ECE'),(624,'Mr. MAHAVEER PENMA','10EC81','WIRELESS  COMMUNICATION','7','A','ECE'),(625,'Mr.SATYA SRIKANTH PALLE ','10EC82','DIGITAL SWITCHING SYSTEMS','7','A','ECE'),(626,'Mr.DILEEP REDDY BOLLA','10EC832','NETWORK SECURITY','7','A','ECE'),(627,'Mr.PRAMOD MS','10EC844','AdHOC NETWORKS','7','A','ECE'),(628,'Mrs. RAJESHWARI N PATIL','10EC81','WIRELESS  COMMUNICATION','7','B','ECE'),(629,'Mr.SATYA SRIKANTH PALLE ','10EC82','DIGITAL SWITCHING SYSTEMS','7','B','ECE'),(630,'Mr.DILEEP REDDY BOLLA','10EC832','NETWORK SECURITY','7','B','ECE'),(631,'Mr. MOHAN KS','10EC844','AdHOC NETWORKS','7','B','ECE'),(632,'Ms. SHALINI T P/ Dr. DEEPAK G','14MAT21','ENGINEERING MATHEMATICS-II','1','H','BS'),(633,'Mrs.RAMANIKRISHNAN/ UMAMAHESHWARI','14PHY22','ENGINEERING PHYSICS','1','H','BS'),(634,'Mrs. D M SUMAN','14CIV23','ELEMENTS OF CIVIL ENGG. & MECHANICS','1','H','BS'),(635,'Mrs. H s PAVITHRA','14EME24','ELEMENTS OF MECHANICAL ENGINEERING','1','H','BS'),(636,'ESWARAN C/Dr. B MURALIDHARA','14ELE25','BASIC ELECTRICAL ENGINEERING','1','H','BS'),(637,'PUNEETH KUMAR M V/ BHARATH H V','14WSL26','WORKSHOP PRACTICE','1','H','BS'),(638,'Mrs.RAMANIKRISHNAN/ UMAMAHESHWARI/ ASMA FATIMA','14PHYL27','ENGG. PHYSICS LAB','1','H','BS'),(639,'Mr. PRASHANTH','14CIP28','CONSTITUTION OF INDIA & PROFESSIONAL ETHICS','1','H','BS');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbackStudents`
--

LOCK TABLES `feedbackStudents` WRITE;
/*!40000 ALTER TABLE `feedbackStudents` DISABLE KEYS */;
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
  `department` enum('ISE','CSE','CIV','EEE','ECE','ME','BS','MTCS','MTEC','MTCV','MTME') DEFAULT 'ECE',
  `semester` enum('1','3','5','7') DEFAULT '7',
  `section` enum('A','B','C','D','E','F','G') DEFAULT 'B',
  `enabled` enum('true','false') DEFAULT 'true',
  PRIMARY KEY (`id`),
  UNIQUE KEY `usn` (`usn`)
) ENGINE=InnoDB AUTO_INCREMENT=1876 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1586,'1VE11EC001','ABHISHEK MISHRA','ECE','7','A','true'),(1587,'1VE11EC002','ADARSH Y R','ECE','7','A','true'),(1588,'1VE11EC004','AKANKSHA KUMARI','ECE','7','A','true'),(1589,'1VE11EC006','AKSHAY KUMAR RASTOGI','ECE','7','A','true'),(1590,'1VE11EC007','AMAN KUMAR','ECE','7','A','true'),(1591,'1VE11EC008','AMRIN TAJ','ECE','7','A','true'),(1592,'1VE11EC012','ANKITA SINGH','ECE','7','A','true'),(1593,'1VE11EC013','ARUN RAMA REDDY','ECE','7','A','true'),(1594,'1VE11EC014','ASHA RANI V A','ECE','7','A','true'),(1595,'1VE11EC015','ASHWINI L','ECE','7','A','true'),(1596,'1VE11EC016','BALAJI D T','ECE','7','A','true'),(1597,'1VE11EC017','BHUVANA S','ECE','7','A','true'),(1598,'1VE11EC018','BINDU B','ECE','7','A','true'),(1599,'1VE11EC019','C V R SUCHITH REDDY','ECE','7','A','true'),(1600,'1VE11EC020','CHALLA HIMAKAR REDDY','ECE','7','A','true'),(1601,'1VE11EC022','CHINDANURU SAI PHANINDRA','ECE','7','A','true'),(1602,'1VE11EC023','GADDAM CHAITHANYA KRISHNA REDD','ECE','7','A','true'),(1603,'1VE11EC024','GANGADHAR R','ECE','7','A','true'),(1604,'1VE11EC025','GIRIJA S','ECE','7','A','true'),(1605,'1VE11EC027','HEMASHREE V P','ECE','7','A','true'),(1606,'1VE11EC028','HEMAVATHY Y G','ECE','7','A','true'),(1607,'1VE11EC029','INDRA KUMARI','ECE','7','A','true'),(1608,'1VE11EC030','JAGPREET KOUR','ECE','7','A','true'),(1609,'1VE11EC033','JITENDER KUMAR SHARMA','ECE','7','A','true'),(1610,'1VE11EC034','K T MANJULA','ECE','7','A','true'),(1611,'1VE11EC035','KARTHIK GOWDA B M','ECE','7','A','true'),(1612,'1VE11EC036','KARTHIK R','ECE','7','A','true'),(1613,'1VE11EC037','KAUSHIK H C','ECE','7','A','true'),(1614,'1VE11EC038','KAVYA SHREE V','ECE','7','A','true'),(1615,'1VE11EC039','KUMAR B N','ECE','7','A','true'),(1616,'1VE11EC040','MADHUSUDAN G S','ECE','7','A','true'),(1617,'1VE11EC042','MANISHA GHATUARY','ECE','7','A','true'),(1618,'1VE11EC043','MANJUNATH V','ECE','7','A','true'),(1619,'1VE11EC044','MANASA N','ECE','7','A','true'),(1620,'1VE11EC046','MAYANK R TOTLOOR','ECE','7','A','true'),(1621,'1VE11EC047','MD ZAHID IQBAL','ECE','7','A','true'),(1622,'1VE11EC048','NAGESH G M','ECE','7','A','true'),(1623,'1VE11EC049','NARASIMHAMURTHY B N','ECE','7','A','true'),(1624,'1VE11EC050','NIKHIL DASAN','ECE','7','A','true'),(1625,'1VE11EC051','NIKHILESH B','ECE','7','A','true'),(1626,'1VE11EC053','NUTAKKI HARSH KUMAR','ECE','7','A','true'),(1627,'1VE11EC054','P SUCHARITHA','ECE','7','A','true'),(1628,'1VE11EC055','P VIVEK KUMAR','ECE','7','A','true'),(1629,'1VE11EC056','PADMASHREE M','ECE','7','A','true'),(1630,'1VE11EC057','PALLAVI C','ECE','7','A','true'),(1631,'1VE10EC003','ABHISHEK K M','ECE','7','A','true'),(1632,'1VE10EC015','SAI SWAROOP','ECE','7','A','true'),(1633,'1VE10EC026','AVDHESH KUMAR SINGH','ECE','7','A','true'),(1634,'1VE10EC045','H S PRAJWAL','ECE','7','A','true'),(1635,'1VE10EC055','KARTHIK A','ECE','7','A','true'),(1636,'1VE10EC073','NITISH','ECE','7','A','true'),(1637,'1VE10EC127','PAVITHRA','ECE','7','A','true'),(1638,'1VE09EC038','GRIOSHA DAS','ECE','7','A','true'),(1639,'1VE08EC065','NIKET  NAYAN','ECE','7','A','true'),(1640,'1VE11EC401','ANUSHA V','ECE','7','A','true'),(1641,'1VE11EC409','MANOJ KUMAR K B','ECE','7','A','true'),(1642,'1VE11EC410','NAMRATHA  U','ECE','7','A','true'),(1643,'1VE11EC420','VIJAY SINGH ','ECE','7','A','true'),(1644,'1VE13EC001','AISHWARYA P','ECE','3','A','true'),(1645,'1VE13EC002','AMRUTHA R K','ECE','3','A','true'),(1646,'1VE13EC003','ANAGHA G RAGHUVEER','ECE','3','A','true'),(1647,'1VE13EC004','ANANDA M N','ECE','3','A','true'),(1648,'1VE13EC005','ANUPAMRAG K K','ECE','3','A','true'),(1649,'1VE13EC006','ANUSHA S K','ECE','3','A','true'),(1650,'1VE13EC007','ARJUN B','ECE','3','A','true'),(1651,'1VE13EC008','ARPETA MOHANTY','ECE','3','A','true'),(1652,'1VE13EC009','ASHIKA R','ECE','3','A','true'),(1653,'1VE13EC010','ASHITHA REDDY T S','ECE','3','A','true'),(1654,'1VE13EC011','ASHWINI N M','ECE','3','A','true'),(1655,'1VE13EC012','BHASKAR ANAND A','ECE','3','A','true'),(1656,'1VE13EC013','BHAVYA V','ECE','3','A','true'),(1657,'1VE13EC014','BHAVYATH C K','ECE','3','A','true'),(1658,'1VE13EC015','BRUNGESH H V','ECE','3','A','true'),(1659,'1VE13EC016','CHAITHRA N R','ECE','3','A','true'),(1660,'1VE13EC017','DARSHAN R','ECE','3','A','true'),(1661,'1VE13EC018','GAYATHRI C','ECE','3','A','true'),(1662,'1VE13EC019','GOUTHAM K R','ECE','3','A','true'),(1663,'1VE13EC020','GOWTHAM M V','ECE','3','A','true'),(1664,'1VE13EC021','GUNA K M','ECE','3','A','true'),(1665,'1VE13EC022','HAMSA C','ECE','3','A','true'),(1666,'1VE13EC023','HIMA SWETHA J','ECE','3','A','true'),(1667,'1VE13EC024','JYOTHI PATIL','ECE','3','A','true'),(1668,'1VE13EC025',' K M SPANDANA','ECE','3','A','true'),(1669,'1VE13EC026','K NAGA PUSHKAR','ECE','3','A','true'),(1670,'1VE13EC027','KARANAM SUPRAJA','ECE','3','A','true'),(1671,'1VE13EC028','KAVYA V','ECE','3','A','true'),(1672,'1VE13EC029','LOHITH N MADHAW','ECE','3','A','true'),(1673,'1VE13EC030','M SUSMITHA','ECE','3','A','true'),(1674,'1VE13EC031','MANJULA N','ECE','3','A','true'),(1675,'1VE13EC032','MEDHINI Y A','ECE','3','A','true'),(1676,'1VE13EC033','MEGHANA K R','ECE','3','A','true'),(1677,'1VE13EC034','MITHUN S','ECE','3','A','true'),(1678,'1VE13EC036','NAGENDRAREDDY S','ECE','3','A','true'),(1679,'1VE13EC037','NALINA V','ECE','3','A','true'),(1680,'1VE13EC038','NARASIMHA H G','ECE','3','A','true'),(1681,'1VE13EC039','NARESH GOWDA D','ECE','3','A','true'),(1682,'1VE13EC040','NIDHEESH R JOSHI','ECE','3','A','true'),(1683,'1VE13EC041','NISAR PASHA S B','ECE','3','A','true'),(1684,'1VE13EC042','NITHIN B N','ECE','3','A','true'),(1685,'1VE13EC086','BHAVANA D','ECE','3','A','true'),(1686,'1VE13EC087','BHANU M','ECE','3','A','true'),(1687,'1VE14EC401','ASHOK M','ECE','3','A','true'),(1688,'1VE14EC402','CHETHAN KUMAR K','ECE','3','A','true'),(1689,'1VE14EC403','HEMANTH KUMAR V','ECE','3','A','true'),(1690,'1VE14EC405','MAHESH KUMAR  M','ECE','3','A','true'),(1691,'1VE14EC408','NAVEEN  P N','ECE','3','A','true'),(1692,'1VE14EC409','NAVEEN KULKARNI','ECE','3','A','true'),(1693,'1VE14EC411','NITHYA SHREE M','ECE','3','A','true'),(1694,'1VE14EC413','PRAMOD N','ECE','3','A','true'),(1695,'1VE14EC416','RANJITH K','ECE','3','A','true'),(1696,'1VE14EC419','SANJAY KUMAR G','ECE','3','A','true'),(1697,'1VE14EC421','VIKAS GOWDA H S','ECE','3','A','true'),(1698,'1VE14EC423','YOGEESH B K','ECE','3','A','true'),(1699,'1VE12EC064','NEHA PRATIK','ECE','3','A','true'),(1700,'1VE12EC087','SOUJANYA M','ECE','3','A','true'),(1701,'1VE12EC095','VARUN KUMAR N S','ECE','3','A','true'),(1702,'1VE13EC044','PAVANKUMAR S R','ECE','3','B','true'),(1703,'1VE13EC045','POORNIMA  C','ECE','3','B','true'),(1704,'1VE13EC046','POORNIMA  N','ECE','3','B','true'),(1705,'1VE13EC047','PRAPTI UMESH BORKAR','ECE','3','B','true'),(1706,'1VE13EC048','RAKESH B V','ECE','3','B','true'),(1707,'1VE13EC049','RAKSHA UDAYA KUMAR','ECE','3','B','true'),(1708,'1VE13EC050','ROOPESH N','ECE','3','B','true'),(1709,'1VE13EC051','SAGAR T U','ECE','3','B','true'),(1710,'1VE13EC052','SAHANA M','ECE','3','B','true'),(1711,'1VE13EC053','SANGEETA','ECE','3','B','true'),(1712,'1VE13EC054','SANGITA SIHMAR','ECE','3','B','true'),(1713,'1VE13EC055','SAQUIB AHMED ','ECE','3','B','true'),(1714,'1VE13EC056','SAURAV RAY','ECE','3','B','true'),(1715,'1VE13EC057','SHARATH M R','ECE','3','B','true'),(1716,'1VE13EC058','SHASHANK N S','ECE','3','B','true'),(1717,'1VE13EC059','SHIVA KUMAR B S','ECE','3','B','true'),(1718,'1VE13EC060','SHRADDHA SANJEEV MIRJI','ECE','3','B','true'),(1719,'1VE13EC061','SINDHU K V','ECE','3','B','true'),(1720,'1VE13EC062','SOUNDARYA G','ECE','3','B','true'),(1721,'1VE13EC063','SOWMYASHREE V','ECE','3','B','true'),(1722,'1VE13EC064','SRINIDHI B S','ECE','3','B','true'),(1723,'1VE13EC065','SRIPRIYA N','ECE','3','B','true'),(1724,'1VE13EC066','SUGANYA R','ECE','3','B','true'),(1725,'1VE13EC067','SUPRITHA S','ECE','3','B','true'),(1726,'1VE13EC068','SUSHMA H V','ECE','3','B','true'),(1727,'1VE13EC069','SUSHMA M','ECE','3','B','true'),(1728,'1VE13EC070','SWAPNA S R','ECE','3','B','true'),(1729,'1VE13EC071','SWATHI N','ECE','3','B','true'),(1730,'1VE13EC072','SWATHI SHIVA NANDA','ECE','3','B','true'),(1731,'1VE13EC074','TANNERU RAJESH','ECE','3','B','true'),(1732,'1VE13EC075','TEJASWINI M','ECE','3','B','true'),(1733,'1VE13EC076','TULASI K','ECE','3','B','true'),(1734,'1VE13EC077','VANI G','ECE','3','B','true'),(1735,'1VE13EC078','VARSHA J','ECE','3','B','true'),(1736,'1VE13EC079','VARUN C A','ECE','3','B','true'),(1737,'1VE13EC080','VARUN REDDY S','ECE','3','B','true'),(1738,'1VE13EC081','VIDYA A','ECE','3','B','true'),(1739,'1VE13EC082','VINAY KUMAR K','ECE','3','B','true'),(1740,'1VE13EC083','YASHASWINI N','ECE','3','B','true'),(1741,'1VE13EC084','BITTU SHAH','ECE','3','B','true'),(1742,'1VE13EC085','PALLAVI','ECE','3','B','true'),(1743,'1VE14EC400','ARUL','ECE','3','B','true'),(1744,'1VE14EC404','MADHUSUDAN G','ECE','3','B','true'),(1745,'1VE14EC406','MANISHA KUMARI','ECE','3','B','true'),(1746,'1VE14EC407','NAVIN KUMAR H.S','ECE','3','B','true'),(1747,'1VE14EC410','NAVIN KUMAR TYAGI','ECE','3','B','true'),(1748,'1VE14EC412','POOJITHA P','ECE','3','B','true'),(1749,'1VE14EC414','PURUSHOTTAM KUMAR SHARMA','ECE','3','B','true'),(1750,'1VE14EC415','RAJESHKUMAR SINGH','ECE','3','B','true'),(1751,'1VE14EC417','RAVI THEJ','ECE','3','B','true'),(1752,'1VE14EC418','SANGEETH A','ECE','3','B','true'),(1753,'1VE14EC420','SURYAKIRAN CHILKURI','ECE','3','B','true'),(1754,'1VE14EC422','WATAN AHLAWAT','ECE','3','B','true'),(1755,'1VE11EC065','PURUSHOTHAM R','ECE','3','B','true'),(1814,'1VE11EC058','PARESH MOHAN','ECE','7','B','true'),(1815,'1VE11EC059','POOJA CHOPRA','ECE','7','B','true'),(1816,'1VE11EC060','POOJA KUMARI','ECE','7','B','true'),(1817,'1VE11EC061','POOJA SHREE PRASAD','ECE','7','B','true'),(1818,'1VE11EC062','PRAVEEN KUMAR PATHAK','ECE','7','B','true'),(1819,'1VE11EC063','PRITHVI T B','ECE','7','B','true'),(1820,'1VE11EC064','PULAGAM TEJA REDDY','ECE','7','B','true'),(1821,'1VE11EC066','R BHAVANA','ECE','7','B','true'),(1822,'1VE11EC068','RAGHAVARAJU RAMARAJU','ECE','7','B','true'),(1823,'1VE11EC069','RAGHAVENDRA B','ECE','7','B','true'),(1824,'1VE11EC070','RAJU KUMAR SAH','ECE','7','B','true'),(1825,'1VE11EC071','RAKESH B N','ECE','7','B','true'),(1826,'1VE11EC072','RAKESH SARKAR','ECE','7','B','true'),(1827,'1VE11EC073','RAVI KIRAN B SANNAPPANAWAR','ECE','7','B','true'),(1828,'1VE11EC074','REDDYVARI RAVICHANDRA  REDDY','ECE','7','B','true'),(1829,'1VE11EC075','ROHIT KUMAR SINGH','ECE','7','B','true'),(1830,'1VE11EC076','ROSHANI KUMARI','ECE','7','B','true'),(1831,'1VE11EC077','SAHANA C SINDHE','ECE','7','B','true'),(1832,'1VE11EC079','SAMPRITHA UDAIKUMAR','ECE','7','B','true'),(1833,'1VE11EC080','SANJAY H J','ECE','7','B','true'),(1834,'1VE11EC081','SANJEEVA REDDY NAVYA JYOTHI','ECE','7','B','true'),(1835,'1VE11EC082','SANTHOSH KUMAR','ECE','7','B','true'),(1836,'1VE11EC083','SHALINI V','ECE','7','B','true'),(1837,'1VE11EC084','SHUBHA A','ECE','7','B','true'),(1838,'1VE11EC085','SHUBHAM SHRESTHA','ECE','7','B','true'),(1839,'1VE11EC086','SHYAM SUNDER R','ECE','7','B','true'),(1840,'1VE11EC088','SOWMYA S','ECE','7','B','true'),(1841,'1VE11EC089','SUDARSHAN K S','ECE','7','B','true'),(1842,'1VE11EC090','SUMA N S','ECE','7','B','true'),(1843,'1VE11EC092','SUNDARESHA S','ECE','7','B','true'),(1844,'1VE11EC093','SUPRIYA A BALULAD','ECE','7','B','true'),(1845,'1VE11EC094','SWATHI KRISHNA','ECE','7','B','true'),(1846,'1VE11EC095','SWETHA S','ECE','7','B','true'),(1847,'1VE11EC097','TARUN KUMAR R','ECE','7','B','true'),(1848,'1VE11EC098','TEJAS N','ECE','7','B','true'),(1849,'1VE11EC099','TEJASWINI B M','ECE','7','B','true'),(1850,'1VE11EC100','TEJASWITA DHEER','ECE','7','B','true'),(1851,'1VE11EC101','UMA MANOGNYA K','ECE','7','B','true'),(1852,'1VE11EC102','V A ARCHANA','ECE','7','B','true'),(1853,'1VE11EC104','V SARIKA','ECE','7','B','true'),(1854,'1VE11EC105','VASANTH KUMAR Y B','ECE','7','B','true'),(1855,'1VE11EC106','VASANTHA M C','ECE','7','B','true'),(1856,'1VE11EC107','VIJAY KUMAR B R','ECE','7','B','true'),(1857,'1VE11EC108','VINAY B M','ECE','7','B','true'),(1858,'1VE11EC109','VINAY KUMAR C','ECE','7','B','true'),(1859,'1VE11EC110','VINAY  KUMAR K S','ECE','7','B','true'),(1860,'1VE11EC111','VINOD KUMAR G','ECE','7','B','true'),(1861,'1VE11EC112','WANGKHEIRAKPAM VANDANA DEVI','ECE','7','B','true'),(1862,'1VE11EC113','WASEEM FATHIMA Z','ECE','7','B','true'),(1863,'1VE11EC114','KHUSHBU YADAV','ECE','7','B','true'),(1864,'1VE10EC071','NIKHIL B V','ECE','7','B','true'),(1865,'1VE10EC091','SAUMIK MUKHERJEE','ECE','7','B','true'),(1866,'1VE10EC100','SIMA KUMARI','ECE','7','B','true'),(1867,'1VE12EC412','P TEJASWINI','ECE','7','B','true'),(1868,'1VE12EC415','PAVITRA C S','ECE','7','B','true'),(1869,'1VE12EC416','RAJESHWARI.B','ECE','7','B','true'),(1870,'1VE12EC417','RAKESH K C','ECE','7','B','true'),(1871,'1VE12EC418','RAKESH M S','ECE','7','B','true'),(1872,'1VE12EC420','SHRIDHAR','ECE','7','B','true'),(1873,'1VE12EC422','SREEDEVI S.V','ECE','7','B','true'),(1874,'1VE11EC404','DEVARAJ MAHANTESH','ECE','7','B','true'),(1875,'1VE11EC421','VINAY PRASAD','ECE','7','B','true');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacherRating`
--

LOCK TABLES `teacherRating` WRITE;
/*!40000 ALTER TABLE `teacherRating` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4376 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usns`
--

LOCK TABLES `usns` WRITE;
/*!40000 ALTER TABLE `usns` DISABLE KEYS */;
INSERT INTO `usns` VALUES (4375,'1VE11EC001');
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

-- Dump completed on 2015-02-10 13:13:58
