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
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `RouteId` varchar(5) NOT NULL,
  `distance` int DEFAULT (0),
  `origin` varchar(30) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL,
  `AirplaneId` varchar(10) NOT NULL,
  KEY `AirplaneId` (`AirplaneId`),
  CONSTRAINT `route_ibfk_1` FOREIGN KEY (`AirplaneId`) REFERENCES `airport` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES ('YUS8Q',8213,'Golspie','Dover','Z6T4'),('GLE5I',6251,'Canberra','Clovenfords','Z6P2'),('NRJ5G',6592,'Walsall','Cincinnati','Z5E3'),('MGP8E',7067,'Kinross','Bozeman','Z4P7'),('DNN2K',8244,'Georgia','San Antonio','Y8Y5'),('IET3D',1669,'Houston','Columbus','Y8O2'),('SLA9I',4472,'Castle Douglas','Pocatello','Y5A5'),('QQV5E',2462,'Llanwrtwd Wells','Maryborough','X4M6'),('EXQ9M',8272,'Mobile','Honolulu','X2W8'),('IXD6B',1291,'Aurora','Bairnsdale','W4E4'),('HTE2I',3228,'Sromness','Windsor','W2Y8'),('JPG6I',5464,'Tulsa','Wichita','W2Y7'),('RMM3R',5550,'Broken Hill','Melville','W1L1'),('DOO8S',8003,'Henderson','Fairbanks','V6V4'),('JLM4M',7694,'Falkirk','Dalkeith','V2S5'),('XAC4Y',7772,'Canning','Clarksville','V2M6'),('KYJ6J',7579,'Columbia','Wigtown','V2C6'),('TQL8K',7236,'Lochgilphead','Oakham','U8T5'),('BYV2X',8193,'Jonesboro','Hillsboro','U7K7'),('YUV4F',2230,'Bundaberg','Stroud','U5Y6'),('VYP3X',1729,'Kingussie','Saint Paul','U2F4'),('KJZ6U',1515,'Darwin','Exeter','T4C6'),('TQV1I',5642,'Evansville','Missoula','S3I7'),('CBS4E',6609,'Mildura','Darwin','S2K9'),('MYB7T',8536,'Murray Bridge','Bloomington','R6Y8'),('RHL7C',8892,'Milton Keynes','Eugene','R5Y6'),('PDW6Z',1858,'Tallahassee','Burnie','Q9W3'),('MDG2Q',7126,'Hilo','Kansas City','Q8Z7'),('VFG6M',6795,'Bathurst','Talgarth','Q6Y6'),('WDY8Q',4801,'Canberra','Kapolei','Q6G5'),('NON2X',6078,'Palmerston','Fort William','P8X7'),('OJF7V',8836,'Mackay','Tillicoultry','P7A5'),('FVS8V',5925,'Henderson','Blackwood','P3J7'),('STB5F',4746,'Los Angeles','Sioux City','P2P7'),('VQI1A',2142,'Lewiston','Gulfport','O8F4'),('OCH6C',5167,'St. Asaph','Cowdenbeath','O4Q4'),('DNX4V',1076,'Gold Coast','San Jose','O4B6'),('RIG4L',3763,'Grand Island','Stamford','O3T2'),('JEG6Q',6043,'Adelaide','Lewiston','O1N1'),('TAT3U',3990,'Canberra','Uppingham. Cottesmore','N8E1'),('IPU7U',5704,'Whitby','Nuneaton','N7C5'),('FCV7E',7045,'Clydebank','Castle Douglas','N4T3'),('MPA9U',2622,'Greater Hobart','Columbus','N2M1'),('BCV3P',6443,'Colorado Springs','Stevenage','M4S2'),('HJG5B',7611,'Davenport','Beaumaris','M3L6'),('QPU3J',1598,'Bowling Green','Palmerston','M1K3'),('ECL4E',7136,'Reno','Des Moines','K9J4'),('WAQ3E',5959,'Cumnock','Norfolk','K7T2'),('EJY5Q',6545,'Abergele','Blue Mountains','K7D4'),('AWX6H',3294,'Metairie','Geelong','K5U3'),('GWO4G',7119,'Green Bay','Baltasound','K5B3'),('KFU9B',2497,'Annapolis','Port Pirie','K3A8'),('OGK5A',4166,'Darwin','Atlanta','K2P4'),('PBQ2P',4491,'Canberra','Canberra','J8J6'),('TPT8D',8135,'Henderson','Dumbarton','J7Y8'),('QRD6Y',8000,'Cairns','Witney','J1R5'),('CWN3O',5438,'Whyalla','Denny','I9E6'),('HIH5K',6119,'Bloxham','Mount Gambier','I6T1'),('EOP6P',8711,'Biloxi','Dolgellau','I4Z2'),('SCS2O',6020,'Lancaster','Chesterfield','I4J4'),('ZQQ6T',5936,'Melton','Fairbanks','H8B7'),('PTL6F',4470,'Minneapolis','Coventry','H7I2'),('ZGR3L',7930,'Inverness','Greater Hobart','H7B4'),('DPM2T',6424,'Omaha','Joondalup','H5L3'),('OKN4B',4642,'Newtonmore','Knighton','H5L1'),('HZS1I',1447,'Rock Springs','Bellevue','H3X2'),('YLY8J',6128,'Huntsville','Langholm','H3R9'),('GUI8H',5718,'Canberra','Tenby','H3D7'),('QKO7J',5641,'Kilmalcolm','Brisbane','G7X9'),('BJX4D',8577,'Market Drayton','Athens','G7G4'),('OJM8G',7839,'Athens','Rockingham','G2V3'),('LEM8X',6332,'Luton','Burlington','G2S2'),('CMR3I',1661,'Broken Arrow','Penrith','F8Q5'),('IAW4Z',6755,'Fayetteville','Fairbanks','F8L8'),('YQB8L',1137,'New Orleans','Omaha','F7B6'),('NRX8D',5502,'Pocatello','Brisbane','F4R3'),('VND7N',6474,'Eastbourne','Bathgate','F4N3'),('WHC9S',2642,'Salt Lake City','Armidale','F3N4'),('HVO6N',7595,'Palmerston','Canberra','F3L3'),('FGO2F',1438,'Sromness','Burnie','F2J3'),('DFJ9T',2594,'Annapolis','Inverness','E8P3'),('UDC7B',2741,'Fremantle','Bloomington','E8E3'),('DJD2J',6779,'Palmerston','Sydney','E8B7'),('VTY8P',1645,'Abergele','Chesterfield','E3S8'),('HXD2T',2197,'Lockerbie','Newport','D9N9'),('IZC2I',8734,'Dunoon','St. Asaph','D8L8'),('XRV6S',1392,'Grafton','Boise','D8E5'),('NOM1U',6477,'Dingwall','Canberra','D8C9'),('HCU5F',5672,'Eastbourne','Uppingham. Cottesmore','D7M3'),('FFT9Q',7855,'Kircudbright','Inveraray','D2N9'),('EAH5A',5511,'Tulsa','Selkirk','C8D2'),('NTL5S',7352,'Chicago','Llanidloes','C4E2'),('VWQ6U',6540,'Melton','Wodonga','C2P4'),('GDQ3L',3809,'Canberra','Sydney','C1B7'),('LQL1D',2397,'Sandy','Peterborough','B7C6'),('COB6F',8254,'Murray Bridge','Pocatello','B4O3'),('XOG7J',8113,'Detroit','St. Petersburg','B4G1'),('QCO8N',8384,'Missoula','Cawdor','B3A6'),('HFN8Y',4088,'Guildford','Victor Harbor','B1X2'),('UGU8A',6953,'Port Lincoln','Rockford','A1N9');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-01 11:12:56
