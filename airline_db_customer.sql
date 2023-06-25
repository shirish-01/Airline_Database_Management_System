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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustId` int NOT NULL,
  `CustType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CustId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Agent'),(2,'Agent'),(3,'Customer'),(4,'Agent'),(5,'Customer'),(6,'Agent'),(7,'Agent'),(8,'Customer'),(9,'Customer'),(10,'Customer'),(11,'Customer'),(12,'Customer'),(13,'Agent'),(14,'Agent'),(15,'Customer'),(16,'Customer'),(17,'Customer'),(18,'Customer'),(19,'Customer'),(20,'Agent'),(21,'Customer'),(22,'Customer'),(23,'Agent'),(24,'Agent'),(25,'Agent'),(26,'Agent'),(27,'Customer'),(28,'Agent'),(29,'Agent'),(30,'Agent'),(31,'Agent'),(32,'Agent'),(33,'Agent'),(34,'Agent'),(35,'Agent'),(36,'Agent'),(37,'Customer'),(38,'Customer'),(39,'Customer'),(40,'Agent'),(41,'Customer'),(42,'Customer'),(43,'Agent'),(44,'Customer'),(45,'Agent'),(46,'Customer'),(47,'Agent'),(48,'Customer'),(49,'Customer'),(50,'Customer'),(51,'Agent'),(52,'Agent'),(53,'Customer'),(54,'Agent'),(55,'Agent'),(56,'Agent'),(57,'Agent'),(58,'Customer'),(59,'Customer'),(60,'Agent'),(61,'Customer'),(62,'Agent'),(63,'Agent'),(64,'Customer'),(65,'Agent'),(66,'Customer'),(67,'Agent'),(68,'Agent'),(69,'Customer'),(70,'Agent'),(71,'Agent'),(72,'Agent'),(73,'Customer'),(74,'Customer'),(75,'Customer'),(76,'Customer'),(77,'Customer'),(78,'Agent'),(79,'Customer'),(80,'Agent'),(81,'Customer'),(82,'Agent'),(83,'Customer'),(84,'Agent'),(85,'Customer'),(86,'Agent'),(87,'Agent'),(88,'Customer'),(89,'Agent'),(90,'Agent'),(91,'Customer'),(92,'Agent'),(93,'Customer'),(94,'Agent'),(95,'Agent'),(96,'Customer'),(97,'Agent'),(98,'Customer'),(99,'Customer'),(100,'Customer');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
