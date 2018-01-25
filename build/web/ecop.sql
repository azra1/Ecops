/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.7.10-log : Database - ecops
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ecops` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ecops`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`name`,`password`) values ('richa','cms'),('ria','cms');

/*Table structure for table `caseformtable` */

DROP TABLE IF EXISTS `caseformtable`;

CREATE TABLE `caseformtable` (
  `case_Id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `Remark` varchar(150) DEFAULT NULL,
  `Case_Status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`case_Id`),
  KEY `id` (`id`),
  CONSTRAINT `caseformtable_ibfk_1` FOREIGN KEY (`id`) REFERENCES `complainttable` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `caseformtable` */

insert  into `caseformtable`(`case_Id`,`id`,`Remark`,`Case_Status`) values (1,1,'theif arrested','Resolved'),(2,3,'not resolved bcz file is closed','UnResolved');

/*Table structure for table `complainttable` */

DROP TABLE IF EXISTS `complainttable`;

CREATE TABLE `complainttable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(30) DEFAULT NULL,
  `PsName` varchar(30) DEFAULT NULL,
  `Sub` varchar(20) DEFAULT NULL,
  `Descrptn` varchar(30) DEFAULT NULL,
  `Date` datetime DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(20) DEFAULT 'Pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `complainttable` */

insert  into `complainttable`(`id`,`Email`,`PsName`,`Sub`,`Descrptn`,`Date`,`Status`) values (1,'richarana@gmail.com','New Delhi DPS','lost','watch','2016-03-09 14:26:46','Success'),(3,'richa','New Delhi DPS','ghj','jsi','2016-03-09 14:27:33','Success'),(6,'ruhi@gmail.com','North East Delhi DPS','physicaly abused','dear sir,\r\nabhhv\r\nxcgjh\r\nvgjxy','2016-03-15 16:46:37','Pending'),(7,'ruchika12@yahoo.com','East Delhi DPS','late night parties','abcefghh','2016-03-28 11:14:54','Pending'),(8,'Sunny123@gmail.com','New Delhi DPS','Snatching case','ddudgwdgywudwdvwe','2016-03-28 11:16:50','Pending'),(9,'rahul@yahoo.in','North East Delhi DPS','adbd','cbsccbicdcbk','2016-03-28 11:18:35','Pending');

/*Table structure for table `contacttable` */

DROP TABLE IF EXISTS `contacttable`;

CREATE TABLE `contacttable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `Subject` varchar(30) DEFAULT NULL,
  `Message` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `contacttable` */

insert  into `contacttable`(`id`,`Name`,`Email`,`Subject`,`Message`) values (1,'richa','richarana@gmail.com','feedback','nice !'),(3,'richa','richa@gmail.com','abc','sgdvu');

/*Table structure for table `criminaltable` */

DROP TABLE IF EXISTS `criminaltable`;

CREATE TABLE `criminaltable` (
  `CriminalId` int(11) NOT NULL AUTO_INCREMENT,
  `Image_name` varchar(100) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Height` varchar(50) DEFAULT NULL,
  `Weight` varchar(30) DEFAULT NULL,
  `Policestation` varchar(50) DEFAULT NULL,
  `Crimelevel` varchar(40) DEFAULT NULL,
  `Crime` varchar(200) DEFAULT NULL,
  `Status` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`CriminalId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `criminaltable` */

insert  into `criminaltable`(`CriminalId`,`Image_name`,`Name`,`Gender`,`Height`,`Weight`,`Policestation`,`Crimelevel`,`Crime`,`Status`) values (1,'Shikaalia-bhatt-44a.jpg','Shika','FEMALE','5\'4','50','Central Delhi DPS','Very High','dsd','Arrested'),(3,'rahul1413035211_free-download-varun-dhawan-hd-image.jpg','rahul','MALE','6','70','North East Delhi DPS','Medium','robbery','NotArrested'),(4,'riimg2.jpg','ri','FEMALE','7','34','Central Delhi DPS','Very High','chori','Arrested');

/*Table structure for table `missingpersontable` */

DROP TABLE IF EXISTS `missingpersontable`;

CREATE TABLE `missingpersontable` (
  `PersonId` int(11) NOT NULL AUTO_INCREMENT,
  `Missingdate` varchar(20) DEFAULT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `FatherName` varchar(40) DEFAULT NULL,
  `Age` varchar(20) DEFAULT NULL,
  `Height` varchar(10) DEFAULT NULL,
  `Religion` varchar(20) DEFAULT NULL,
  `Gender` varchar(15) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Image_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PersonId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `missingpersontable` */

insert  into `missingpersontable`(`PersonId`,`Missingdate`,`Name`,`FatherName`,`Age`,`Height`,`Religion`,`Gender`,`State`,`Image_name`) values (2,'15/03/2016','Rozli','Joseph Masih','25','5\'6','Christin','Female','Delhi','Rozlialia-bhatt-45a.jpg');

/*Table structure for table `policestationtable` */

DROP TABLE IF EXISTS `policestationtable`;

CREATE TABLE `policestationtable` (
  `PS_Id` int(11) NOT NULL AUTO_INCREMENT,
  `PS_Name` varchar(40) DEFAULT NULL,
  `PS_Address` varchar(100) DEFAULT NULL,
  `Phone` varchar(12) DEFAULT NULL,
  `PS_Head` varchar(40) DEFAULT NULL,
  `Pwd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PS_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `policestationtable` */

insert  into `policestationtable`(`PS_Id`,`PS_Name`,`PS_Address`,`Phone`,`PS_Head`,`Pwd`) values (2,'North Delhi DPS','near padimin enclave\r\nstno=130/1                                      ','262728299','Harish Kumar','cms');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
