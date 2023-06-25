CREATE DATABASE  IF NOT EXISTS `airline_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `airline_db`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: airline_db
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agent`
--

DROP TABLE IF EXISTS `agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agent` (
  `AgentNo` int NOT NULL,
  `Markup` int DEFAULT NULL,
  `CompanyName` varchar(100) DEFAULT NULL,
  `RegistrationNo` varchar(100) DEFAULT NULL,
  `CustId` int NOT NULL,
  PRIMARY KEY (`AgentNo`),
  KEY `CustId` (`CustId`),
  CONSTRAINT `agent_ibfk_1` FOREIGN KEY (`CustId`) REFERENCES `customer` (`CustId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agent`
--

LOCK TABLES `agent` WRITE;
/*!40000 ALTER TABLE `agent` DISABLE KEYS */;
INSERT INTO `agent` VALUES (200,9,'Faucibus Orci Luctus Inc.','FFX52DNW7KE',1),(201,5,'Dui In Associates','VNA86GOT0GN',2),(202,10,'Facilisis Facilisis LLC','HTE36VFC9XP',3),(203,7,'Ante Dictum Ltd','FCY54EDN1IH',4),(204,5,'Eu Erat Semper Inc.','NZT66MHK5IU',5),(205,3,'Ligula Inc.','ACX24MYU7BL',6),(206,8,'Sem Inc.','LUF39HUX1PG',7),(207,8,'Phasellus Consulting','PZU85HYQ8QY',8),(208,6,'Arcu Eu PC','LWC38RFD3EK',9),(209,10,'Et Libero Ltd','DBF77YOE4LO',10),(210,8,'Hendrerit Neque In LLP','HQD12SRY2LC',11),(211,8,'Condimentum Incorporated','LGT39JHU6QY',12),(212,9,'Enim Commodo Associates','TDW81DJR1TR',13),(213,5,'Cras Lorem Corp.','DTZ79IAU6WI',14),(214,4,'Et PC','EDL06XOJ8FL',15),(215,4,'Vestibulum Ut Corporation','ZSS91AIP6CI',16),(216,4,'Placerat Cras Corporation','LIY38SGV4SR',17),(217,6,'Nonummy Ultricies Industries','JLQ87OCQ5WP',18),(218,8,'Mauris Quis Foundation','SHI58UOH6JC',19),(219,7,'Erat Corporation','YRJ13IVS1RW',20),(220,6,'Placerat Augue Incorporated','LIP87PSV2IH',21),(221,7,'Curae Donec Associates','MSZ54XDO6BY',22),(222,10,'Sed Id Company','DHJ57MYU7YE',23),(223,8,'Metus Vitae Associates','NCI57JXE2HM',24),(224,7,'Orci In Limited','NVG77PRJ3JM',25),(225,6,'Placerat Eget Institute','YQN88GDU8OT',26),(226,3,'Non LLP','GDX53WTI0WH',27),(227,5,'Enim Sit Corporation','JPN70NIO0HZ',28),(228,4,'Curabitur Corporation','ODC51OWP3KR',29),(229,4,'Aenean Massa Integer Limited','MUA11OHS7EJ',30),(230,6,'Ante LLC','HYN13FWQ1FF',31),(231,4,'Justo Eu Company','LHN16GWV3MS',32),(232,8,'Velit Company','DUX12XQO7NM',33),(233,6,'Dis Parturient Inc.','PYY86JDZ8RT',34),(234,7,'Enim Mi PC','CEF68GNM1QZ',35),(235,9,'Ipsum Ltd','VXM95UBO1KD',36),(236,3,'Nulla Ante Corp.','LDJ97TWY5QS',37),(237,5,'Neque Sed Dictum LLC','WRT17TDV4SH',38),(238,6,'Eleifend LLP','LPV72NIQ8YP',39),(239,9,'Non Dui Nec Industries','FMA12WEL8EV',40),(240,7,'Mi Pede Nonummy Limited','FWX62PXW5CS',41),(241,4,'Tristique Associates','IUE64IPF1QY',42),(242,6,'Lobortis Augue Corp.','CVD55JVY5SG',43),(243,4,'Diam Duis PC','JXD25CNS9VS',44),(244,5,'Urna Et Industries','HMO85NQN4HO',45),(245,9,'Elit Foundation','EBI61GEH4PK',46),(246,8,'Sed Orci Limited','JLX77HIH1HK',47),(247,4,'Risus Quisque Consulting','OJK11MNU9TU',48),(248,8,'Odio Sagittis Semper Foundation','FUE63JOX5SG',49),(249,6,'Ac Urna Associates','XEL33DPD6XD',50),(250,4,'Accumsan LLC','JEE88XFG5MS',51),(251,6,'Vel Arcu Consulting','OMC85GGC3FL',52),(252,4,'Eget Massa Suspendisse Ltd','OQB11TKD3BY',53),(253,9,'Purus Ac Associates','HLS61UWT6GF',54),(254,6,'Ipsum Porta Corp.','FLF79RKF2QX',55),(255,5,'Aliquam Iaculis Lacus Foundation','ONQ23HJQ7PS',56),(256,4,'Imperdiet Foundation','ESW89JJJ1GC',57),(257,8,'Non Corporation','JJQ42URB9NC',58),(258,8,'A Corp.','HZT88VCX3SY',59),(259,9,'Quisque Ac Company','WUO62RJE3VY',60),(260,4,'Pede Corporation','JSQ33EWE4GJ',61),(261,4,'Tincidunt Aliquam Arcu Associates','YNK72WHQ3SD',62),(262,4,'Enim Etiam Industries','YHZ94UDF6KI',63),(263,5,'Mauris LLP','NSF54LXD2CM',64),(264,8,'Senectus Et Institute','VVF90FDD4TK',65),(265,8,'Mattis Incorporated','EKH51HVG4FJ',66),(266,7,'Congue In Associates','NFW67MTO8DR',67),(267,5,'Duis Sit Corporation','POJ38UJK2SI',68),(268,6,'Scelerisque Mollis Foundation','TRG39YMT2JK',69),(269,7,'Sapien Aenean Foundation','RDL43JQT0ZG',70),(270,8,'Ipsum Dolor Sit Institute','THM23BDF3LN',71),(271,6,'Amet Consectetuer Institute','YDG07VQS9HV',72),(272,10,'Arcu Iaculis PC','HBG43GQQ1JE',73),(273,4,'Gravida Sit Amet LLC','OGX97MRV1DC',74),(274,9,'Tristique Senectus Associates','RDS21UUH8SU',75),(275,7,'Vel Est Corporation','UPN65CRS5CX',76),(276,7,'Eu Euismod LLP','ODJ54HLD5HY',77),(277,4,'Non Lacinia Limited','IXC22PVM2QW',78),(278,8,'Nunc Mauris Elit PC','NYW11SPS2JS',79),(279,7,'Ac Feugiat Non Foundation','GWG48FJW0OK',80),(280,3,'Vitae Erat Ltd','TKK98VWI0TI',81),(281,8,'Hendrerit Donec Institute','XHF62LKO7PS',82),(282,3,'Turpis In LLC','WGG43BXS7BO',83),(283,8,'Quisque Fringilla Industries','SKD85CNV6HJ',84),(284,6,'Urna Et LLC','JWU45EPD2MD',85),(285,6,'Libero Lacus Corp.','THN47XRZ2SS',86),(286,8,'Ornare PC','FLI62PCS6SC',87),(287,7,'Nullam Lobortis LLP','KQZ27BJS1UL',88),(288,9,'Neque Foundation','MUJ51WUL8RJ',89),(289,4,'Arcu LLP','OHI41MWR1VK',90),(290,4,'Sed Pede Company','KSE93TFV6NH',91),(291,7,'Purus PC','SSP72JBZ4RB',92),(292,10,'Eget Massa Suspendisse Company','SID61NVG1HV',93),(293,7,'Eleifend Vitae LLP','LDZ04XDQ3ME',94),(294,6,'Vestibulum Institute','DOU37XFZ7HR',95),(295,6,'Penatibus Incorporated','WKT84GMR8IL',96),(296,9,'Ut Nisi A Industries','LVM72BLW6ZR',97),(297,9,'Lorem Incorporated','APB11ODS4HT',98),(298,8,'Non Incorporated','XJF08ETM4HP',99),(299,9,'At Sem LLC','HNG42IPM3UG',100);
/*!40000 ALTER TABLE `agent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-01 11:12:57
