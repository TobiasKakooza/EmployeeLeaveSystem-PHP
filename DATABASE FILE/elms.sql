-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: employeeleavedb
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','d00f5d5217896fb7fd601412cb890830','Lopia Denis','admin@mail.com','2024-01-31 19:48:13'),(4,'Serusa','6dd97607df025943d9c30a24db2df850','Serusa','tobiaskakoza@gmail.com','2024-01-31 19:04:28'),(5,'Jaffa','202cb962ac59075b964b07152d234b70','Jaffa ','jaffa@gmail.com','2024-02-11 18:36:38');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldepartments`
--

DROP TABLE IF EXISTS `tbldepartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldepartments`
--

LOCK TABLES `tbldepartments` WRITE;
/*!40000 ALTER TABLE `tbldepartments` DISABLE KEYS */;
INSERT INTO `tbldepartments` VALUES (1,'Human Resource','HR','HR160','2024-01-31 19:46:20'),(2,'Information Technology','IT','IT807','2024-01-31 19:46:20'),(3,'Operations','OP','OP640','2024-01-31 19:46:20'),(4,'Volunteer','VL','VL9696','2024-01-31 19:46:21'),(5,'Marketing','MK','MK369','2024-01-31 19:46:21'),(6,'Finance','FI','FI123','2024-01-31 19:46:21'),(7,'Sales','SS','SS469','2024-01-31 19:46:21'),(8,'Research','RS','RS666','2024-01-31 19:46:21'),(9,'Economics','DEcon','DISBAT001','2024-02-11 18:07:40');
/*!40000 ALTER TABLE `tbldepartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblemployees`
--

DROP TABLE IF EXISTS `tblemployees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblemployees`
--

LOCK TABLES `tblemployees` WRITE;
/*!40000 ALTER TABLE `tblemployees` DISABLE KEYS */;
INSERT INTO `tblemployees` VALUES (1,'ISBAT001245','Mugisha','Ampumuza','mugisha@isbat.com','5f4dcc3b5aa765d61d8327deb882cf99','Male','1996-06-12','Information Technology','Mbarara Road','Kampala','Uganda','0754123456',1,'2024-01-31 19:44:33'),(2,'ISBAT001369','Nabwire','Oloya','nabwire@isbat.com','f925916e2754e5e03f75dd58a5733251','Male','1990-02-02','Operations','Jinja Street','Kampala','Uganda','0785223456',1,'2024-01-31 19:44:33'),(3,'ISBAT004699','Bazanye','Okello','bazanye@isbat.com','3b87c97d15e8eb11e51aa25e9a5770e9','Male','1995-03-22','Human Resource','Lugazi Lane','Kampala','Uganda','0756333456',1,'2024-01-31 19:44:34'),(4,'ISBAT002996','Nalubega','Otema','nalubega@isbat.com','723e1489a45d2cbaefec82eee410abd5','Female','1989-03-23','Volunteer','Mukono Avenue','Kampala','Uganda','0787443456',1,'2024-01-31 19:44:34'),(5,'ISBAT001439','Ochen','Omara','ochen@isbat.com','b7bee6b36bd35b773132d4e3a74c2bb5','Male','1986-03-12','Research','Masaka Road','Kampala','Uganda','0758553456',1,'2024-01-31 19:44:34'),(6,'ISBAT006946','Kwesiga','Okello','kwesiga@isbat.com','a3cceba83235dc95f750108d22c14731','Male','1992-08-28','Finance','Mbale Street','Kampala','Uganda','0789663456',1,'2024-01-31 19:44:34'),(7,'ISBAT000084','Nakato','Akena','nakato@isbat.com','5f4dcc3b5aa765d61d8327deb882cf99','Female','1992-12-11','Marketing','Gulu Lane','Kampala','Uganda','0751773456',1,'2024-01-31 19:44:34'),(8,'ISBAT012447','Lwanga','Ogwal','lwanga@isbat.com','5f4dcc3b5aa765d61d8327deb882cf99','Male','1992-02-15','Research','Fort Portal Avenue','Kampala','Uganda','0782883456',1,'2024-01-31 19:44:34'),(9,'ISBAT0001','SERUSA','MARVIN','seru@isbat.com','8e00b25798d92ec58c1b0a09dbd55570','Male','2005-01-20','Information Technology','KAMPALA','Kampala','Uganda','0758477651',1,'2024-01-31 17:46:47'),(10,'ISBAT002','Katungi','Moses','katungi@isbat.com','0d0dabd62fbfa57870606b0475f2326d','Male','2006-02-22','Volunteer','Kambuusi','FortPortal','Nairobi','0778748983',1,'2024-01-31 17:49:29'),(11,'ISBAT0090','Mutebe','Kalori','kalori@isbat.com','202cb962ac59075b964b07152d234b70','Male','2004-06-17','Operations','KAMPALA','Kamwokya','Uganda','0789475848',1,'2024-02-11 17:59:35');
/*!40000 ALTER TABLE `tblemployees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblleaves`
--

DROP TABLE IF EXISTS `tblleaves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UserEmail` (`empid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblleaves`
--

LOCK TABLES `tblleaves` WRITE;
/*!40000 ALTER TABLE `tblleaves` DISABLE KEYS */;
INSERT INTO `tblleaves` VALUES (7,'Casual Leave','2024-01-31 22:26:04','2024-01-31 22:26:04','ISBAT LEAVE','2024-01-31 19:26:04','Remarks from ISBAT Administration','2020-12-02 23:26:27 ',2,1,1),(8,'Medical Leave','2024-01-31 22:26:04','2024-01-31 22:26:04','ISBAT LEAVE','2024-01-31 19:26:04','Remarks from ISBAT Administration','2020-12-02 23:24:39 ',1,1,1),(9,'Medical Leave','2024-01-31 22:26:04','2024-01-31 22:26:04','ISBAT LEAVE','2024-01-31 19:26:04','All good make your time and hope you\'ll be fine and get back to work asap! Best Regards, Admin.','2021-03-03 11:19:29 ',1,1,2),(10,'Restricted Holiday','2024-01-31 22:26:04','2024-01-31 22:26:04','ISBAT LEAVE','2024-01-31 19:26:04','Remarks from ISBAT Administration','2020-12-03 14:06:12 ',1,1,1),(11,'Medical Leave','2024-01-31 22:26:04','2024-01-31 22:26:04','ISBAT LEAVE','2024-01-31 19:26:04','Remarks from ISBAT Administration','2020-04-29 20:33:21 ',1,1,1),(12,'Casual Leave','2024-01-31 22:26:04','2024-01-31 22:26:04','ISBAT LEAVE','2024-01-31 19:26:04','Remarks from ISBAT Administration','2020-07-03 13:42:05 ',1,1,1),(14,'Medical Leave','2024-01-31 22:26:04','2024-01-31 22:26:04','ISBAT LEAVE','2024-01-31 19:26:04',NULL,NULL,0,1,2),(15,'Casual Leave','2024-01-31 22:26:04','2024-01-31 22:26:04','None, Testing','2024-01-31 19:26:04','casual leave not allowed for a week, the company\'s gotta huge project which should be completed within this week.','2021-03-03 11:47:33 ',2,1,1),(17,'Paternity Leave','2024-01-31 22:26:04','2024-01-31 22:26:04','Being a father i\'ve got to look after my new borns and spend some time with my families too!','2024-01-31 19:26:04',NULL,NULL,0,1,3),(18,'Medical Leave','2024-01-31 22:26:04','2024-01-31 22:26:04','i\'ve to go for my body checkup. got an appointment for tommorow','2024-01-31 19:26:04','No comments on it.','2021-03-04 22:56:24 ',1,1,4),(19,'Compensatory Leave','2024-01-31 22:26:04','2024-01-31 22:26:04','been working over time since last night, so i\'d like a day off','2024-01-31 19:26:04',NULL,NULL,0,1,1),(21,'Self-Quarantine Leave','2024-01-31 22:26:04','2024-01-31 22:26:04','This is just a demo condition for testing purpose!!','2024-01-31 19:26:04','No comments!!','2022-02-10 21:37:15 ',1,1,8),(22,'Medical Leave','2024-06-05','2024-03-06','Very Sick man','2024-01-31 17:51:38',NULL,NULL,0,1,9),(23,'Medical Leave','2024-02-05','2024-02-06','Very Sick','2024-01-31 17:52:30','Leave Approved','2024-02-01 0:25:50 ',1,1,9),(24,'Compensatory Leave','2024-02-13','2024-02-26','I want to compensate','2024-02-11 18:50:14',NULL,NULL,0,0,9);
/*!40000 ALTER TABLE `tblleaves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblleavetype`
--

DROP TABLE IF EXISTS `tblleavetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblleavetype`
--

LOCK TABLES `tblleavetype` WRITE;
/*!40000 ALTER TABLE `tblleavetype` DISABLE KEYS */;
INSERT INTO `tblleavetype` VALUES (1,'Casual Leave','Provided for urgent or unforeseen matters to the employees.','2024-01-31 19:49:09'),(2,'Medical Leave','Related to Health Problems of Employee','2024-01-31 19:49:09'),(3,'Restricted Holiday','Holiday that is optional','2024-01-31 19:49:09'),(5,'Paternity Leave','To take care of newborns','2024-01-31 19:49:09'),(6,'Bereavement Leave','Grieve their loss of losing loved ones','2024-01-31 19:49:09'),(7,'Compensatory Leave','For Overtime workers','2024-01-31 19:49:09'),(8,'Maternity Leave','Taking care of newborn ,recoveries','2024-01-31 19:49:09'),(9,'Religious Holidays','Based on employee\'s followed religion','2024-01-31 19:49:09'),(10,'Adverse Weather Leave','In terms of extreme weather conditions','2024-01-31 19:49:09'),(11,'Voting Leave','For official election day','2024-01-31 19:49:09'),(12,'Self-Quarantine Leave','Related to COVID-19 issues','2024-01-31 19:49:09'),(13,'Personal Time Off','To manage some private matters','2024-01-31 19:49:09'),(14,'Uknown','Emergencies','2024-02-11 18:14:55');
/*!40000 ALTER TABLE `tblleavetype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-20 21:55:26
