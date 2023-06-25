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
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airport` (
  `Code` varchar(4) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES ('A1N9','Lacy Airport','Darwin','Australia'),('B1X2','Finn Airport','Grand Rapids','United States'),('B3A6','Ora Airport','Adelaide','Australia'),('B4G1','Devin Airport','Liverpool','Australia'),('B4O3','Maxwell Airport','Lakewood','United States'),('B7C6','Walter Airport','Darwin','United States'),('C1B7','Stuart Airport','Whyalla','United Kingdom'),('C2P4','Mariam Airport','Monmouth','Australia'),('C4E2','Brock Airport','Warwick','United States'),('C8D2','Knox Airport','Llandovery','United States'),('D2N9','Maris Airport','Launceston','United States'),('D7M3','Stone Airport','Newcastle','United States'),('D8C9','Breanna Airport','Moe','United Kingdom'),('D8E5','Brynne Airport','Port Pirie','Australia'),('D8L8','Orson Airport','Boise','Australia'),('D9N9','Kibo Airport','Barry','United Kingdom'),('E3S8','Amelia Airport','Chippenham','United Kingdom'),('E8B7','Amy Airport','Inverbervie','Australia'),('E8E3','Brielle Airport','Flint','United States'),('E8P3','Owen Airport','Greenlaw','Australia'),('F2J3','Abigail Airport','Cambridge','Australia'),('F3L3','Blossom Airport','Gladstone','Australia'),('F3N4','Ronan Airport','Aberystwyth','Australia'),('F4N3','Iona Airport','Laurencekirk','United Kingdom'),('F4R3','Hamish Airport','Hartford','United Kingdom'),('F7B6','Shad Airport','Kenosha','United States'),('F8L8','Philip Airport','Biloxi','United States'),('F8Q5','Justina Airport','Belgrave','United Kingdom'),('G2S2','Remedios Airport','Taunton','United Kingdom'),('G2V3','Richard Airport','Bathurst','Australia'),('G7G4','Marvin Airport','Canberra','United Kingdom'),('G7X9','Mannix Airport','Launceston','United Kingdom'),('H3D7','Savannah Airport','Ramsey','United Kingdom'),('H3R9','Ila Airport','Bonnyrigg','Australia'),('H3X2','Burke Airport','Canberra','United States'),('H5L1','Griffin Airport','Barrhead','United States'),('H5L3','Levi Airport','Wick','United States'),('H7B4','Wayne Airport','Darwin','Australia'),('H7I2','Jonah Airport','Denver','Australia'),('H8B7','Damon Airport','Taunton','Australia'),('I4J4','Eric Airport','Mesa','United States'),('I4Z2','Jana Airport','South Burlington','United States'),('I6T1','Garth Airport','Bendigo','United Kingdom'),('I9E6','Ariel Airport','Shrewsbury','Australia'),('J1R5','Natalie Airport','Nairn','United States'),('J7Y8','Ian Airport','Millport','United States'),('J8J6','Rana Airport','Newtown','United Kingdom'),('K2P4','Todd Airport','Palmerston','United States'),('K3A8','Kelly Airport','St. David\'s','United Kingdom'),('K5B3','August Airport','Thame','United Kingdom'),('K5U3','Aline Airport','Harlech','United Kingdom'),('K7D4','Jackson Airport','Annapolis','United States'),('K7T2','Hammett Airport','Dubbo','Australia'),('K9J4','Simone Airport','South Perth','Australia'),('M1K3','Jasper Airport','Chester','United Kingdom'),('M3L6','Rajah Airport','Machynlleth','United Kingdom'),('M4S2','Jerome Airport','Coalville','United States'),('N2M1','Jarrod Airport','Motherwell','United States'),('N4T3','Hedy Airport','Warrnambool','United Kingdom'),('N7C5','Kibo Airport','Orlando','Australia'),('N8E1','Colorado Airport','Tampa','United Kingdom'),('O1N1','Vernon Airport','Canberra','United States'),('O3T2','Gretchen Airport','Swindon','United States'),('O4B6','Freya Airport','Georgia','United States'),('O4Q4','Molly Airport','Biloxi','Australia'),('O8F4','Desiree Airport','Balfour','United States'),('P2P7','Isabella Airport','Cawdor','United States'),('P3J7','Joelle Airport','Canberra','Australia'),('P7A5','Marsden Airport','Olympia','United States'),('P8X7','Lev Airport','Augusta','Australia'),('Q6G5','Wade Airport','Lochgilphead','Australia'),('Q6Y6','Whoopi Airport','Belmont','Australia'),('Q8Z7','Shaeleigh Airport','Cockburn','Australia'),('Q9W3','Alana Airport','Mildura','Australia'),('R5Y6','Martin Airport','Cambridge','United States'),('R6Y8','Briar Airport','Belmont','United States'),('S2K9','Ariana Airport','Bangor','United Kingdom'),('S3I7','Patrick Airport','Gresham','United Kingdom'),('T4C6','Cheyenne Airport','Hartford','United States'),('U2F4','Noelani Airport','Spokane','United Kingdom'),('U5Y6','Ila Airport','Lakewood','Australia'),('U7K7','Jameson Airport','Charters Towers','Australia'),('U8T5','Brennan Airport','North Las Vegas','United States'),('V2C6','Sopoline Airport','Austin','United Kingdom'),('V2M6','Vladimir Airport','Gold Coast','United States'),('V2S5','Baker Airport','Port Lincoln','Australia'),('V6V4','Clayton Airport','Nottingham','United States'),('W1L1','Abigail Airport','Saint Louis','United Kingdom'),('W2Y7','Luke Airport','Canberra','United Kingdom'),('W2Y8','Madeson Airport','Perth','United States'),('W4E4','Chelsea Airport','Horsham','United States'),('X2W8','Shea Airport','Belgrave','Australia'),('X4M6','Marsden Airport','Baltimore','Australia'),('Y5A5','Lois Airport','Port Augusta','United States'),('Y8O2','Kirsten Airport','Helena','United States'),('Y8Y5','Gavin Airport','Lithgow','United States'),('Z4P7','Maxine Airport','Canberra','Australia'),('Z5E3','Gabriel Airport','Carnoustie','United States'),('Z6P2','Kirby Airport','Thurso','Australia'),('Z6T4','Buckminster Airport','Rock Springs','United States');
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-01 11:12:58
