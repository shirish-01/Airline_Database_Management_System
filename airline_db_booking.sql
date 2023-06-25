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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `CustId` int NOT NULL,
  `TicketNo` varchar(20) NOT NULL,
  PRIMARY KEY (`CustId`,`TicketNo`),
  KEY `TicketNo` (`TicketNo`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`CustId`) REFERENCES `customer` (`CustId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`TicketNo`) REFERENCES `ticket` (`TicketNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (40,'115S878Y28'),(1,'129Y414G67'),(61,'141P657O85'),(26,'168V236R15'),(29,'185Q168R46'),(99,'192S523F12'),(13,'194J596O87'),(88,'218T654I25'),(74,'225W744G87'),(20,'231D358N47'),(8,'231R874F36'),(92,'234F687O12'),(58,'238Z286P18'),(77,'256F324O27'),(12,'268X673K89'),(6,'273Q432X16'),(16,'293H643X41'),(97,'293S924X23'),(59,'317N681G12'),(95,'325P446R34'),(51,'325Q712K22'),(96,'326V318M32'),(85,'327C255S86'),(98,'332M252N36'),(9,'356R898N44'),(27,'358J876K72'),(70,'361Z616R54'),(21,'363R846X85'),(76,'375C434E27'),(93,'378G522M14'),(83,'392X398B79'),(23,'395I583Y78'),(67,'422D337T37'),(72,'434H317O27'),(80,'451E778F67'),(18,'454G234G87'),(42,'457K534R64'),(19,'472T856B77'),(60,'473E592X48'),(100,'487U683Q87'),(35,'489D566Y84'),(84,'524N334K43'),(15,'527L612Z42'),(86,'536D495T54'),(87,'553X586H46'),(25,'564B929O86'),(2,'578L413S92'),(33,'578Z454B54'),(81,'579T945E37'),(30,'584M546M63'),(82,'585X797Q57'),(62,'598L752U58'),(22,'615T283F73'),(46,'626A776O68'),(45,'626V647F37'),(41,'632R472G98'),(3,'634C374Y56'),(91,'641O368M75'),(24,'643I167E72'),(71,'645Q273K67'),(47,'646R652N88'),(90,'648P295M86'),(68,'656Q644Q32'),(54,'657B476V83'),(36,'657F944D56'),(28,'662O892S43'),(39,'665X561P28'),(37,'672J574P57'),(89,'682J473T96'),(63,'683N766E55'),(5,'753C149K28'),(79,'764X262U46'),(49,'765Y327T32'),(55,'771Y641Q53'),(66,'777E232H68'),(65,'787J611F48'),(78,'795F399Y66'),(44,'817J636L37'),(10,'818W885Q13'),(31,'822N352T45'),(94,'823B264S67'),(38,'836X361G42'),(73,'837E712D52'),(64,'843E794D26'),(53,'852K623B48'),(50,'858H744R51'),(34,'859M474G62'),(11,'865F257R43'),(57,'865I587S49'),(56,'873I763C67'),(75,'878O978H38'),(48,'881O564P85'),(17,'917L425V38'),(14,'926L877Z47'),(32,'934K684Q73'),(69,'936S443G98'),(43,'947A743W92'),(7,'948Z425N43'),(4,'954S273K73'),(52,'978Q447D82');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
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