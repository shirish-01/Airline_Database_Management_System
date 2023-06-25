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
-- Table structure for table `aeroplane`
--

DROP TABLE IF EXISTS `aeroplane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aeroplane` (
  `AirplaneId` varchar(10) NOT NULL,
  `AircraftType` varchar(20) DEFAULT NULL,
  `Fare` int DEFAULT NULL,
  `ArrivalCode` varchar(4) NOT NULL,
  `DeptCode` varchar(4) NOT NULL,
  PRIMARY KEY (`AirplaneId`),
  KEY `ArrivalCode` (`ArrivalCode`),
  KEY `DeptCode` (`DeptCode`),
  CONSTRAINT `aeroplane_ibfk_1` FOREIGN KEY (`ArrivalCode`) REFERENCES `airport` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `aeroplane_ibfk_2` FOREIGN KEY (`DeptCode`) REFERENCES `airport` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aeroplane`
--

LOCK TABLES `aeroplane` WRITE;
/*!40000 ALTER TABLE `aeroplane` DISABLE KEYS */;
INSERT INTO `aeroplane` VALUES ('AJXR8262LI','Private',5850,'Q6Y6','O4Q4'),('AKLJ3373EA','military',2414,'S3I7','O4B6'),('ALSP1973PH','Private',5850,'Q6Y6','O4Q4'),('ANGM2773LK','military',2555,'M1K3','Z4P7'),('ASVE6481JV','Hybrid',7415,'G2S2','M4S2'),('ATZN2688UV','military',5435,'B7C6','J8J6'),('BBZQ5897QB','Private',2138,'F3N4','R6Y8'),('BCTN1794QF','military',2577,'N2M1','F7B6'),('BCYE4776TM','Private',3973,'D2N9','Y5A5'),('BDAZ8292JH','Passenger',6605,'F8Q5','Q8Z7'),('BFJO7695EL','Private',5514,'R5Y6','Z5E3'),('BFVS4335ID','Cargo',2032,'K7T2','D8L8'),('BGTB3371GC','Private',6268,'Z5E3','C2P4'),('BIQI8435FY','Private',2665,'V6V4','V2M6'),('BIWL2346PI','Hybrid',7415,'G2S2','M4S2'),('BJAT8267XK','Passenger',5533,'Z6T4','E3S8'),('BJMP1815VZ','Cargo',4208,'B4O3','U8T5'),('BJQK4955KY','Passenger',7359,'J8J6','D2N9'),('BKHY9656CJ','Hybrid',2833,'O3T2','B3A6'),('BKXU3621SP','military',5296,'N7C5','B7C6'),('BLDQ8288TZ','Cargo',7852,'B3A6','P8X7'),('BLEY7394JI','Private',8812,'B4G1','K2P4'),('BLND3763YO','Passenger',8893,'H5L3','A1N9'),('BLNR7883XY','military',2046,'V2C6','I6T1'),('BLXR4378RQ','Private',7504,'Q6G5','O3T2'),('BMDB1172AC','Cargo',3533,'I6T1','W4E4'),('BMQF6587EK','Cargo',4289,'H5L1','U2F4'),('BNGN4276HN','Cargo',5835,'D9N9','S2K9'),('BTPM8682PN','military',6025,'B1X2','G2S2'),('BVMP2124CH','Hybrid',7001,'E8B7','F3L3'),('BWCG9657TO','military',2414,'S3I7','O4B6'),('BWYH7746GU','Passenger',5340,'K5U3','Z6T4'),('CBFU9572VY','Cargo',2032,'K7T2','D8L8'),('CELV1687YH','Cargo',3879,'K3A8','Q6G5'),('CFCM4534PQ','Hybrid',7269,'N4T3','N8E1'),('CFKI4255NS','Private',4068,'H7B4','D9N9'),('CFKY3786FH','Passenger',7997,'U2F4','H3X2'),('CILI6587HA','Private',3283,'F3L3','X4M6'),('CIYJ8963QV','Private',8812,'B4G1','K2P4'),('CKGX2747EI','Hybrid',7001,'E8B7','F3L3'),('CKKU6447AT','Cargo',7852,'B3A6','P8X7'),('CLFY5163KL','Private',7702,'U7K7','V2S5'),('CMSM3719OT','Hybrid',7586,'Q9W3','P3J7'),('CNCI8788AB','Private',8737,'G2V3','S3I7'),('CNJX6243RH','Cargo',4848,'T4C6','M1K3'),('CNOW8857FE','Cargo',8748,'K5B3','C1B7'),('COQJ7929ES','military',7889,'I4J4','K7T2'),('CPBE3939WC','Cargo',7832,'C8D2','D8E5'),('CQMJ8467HY','Hybrid',2833,'O3T2','B3A6'),('CRED9948ZS','Passenger',5660,'Z4P7','E8P3'),('CSNB5845KH','Cargo',5816,'F2J3','P7A5'),('CSVA8745LK','Passenger',5340,'K5U3','Z6T4'),('CTVE8587PL','military',5435,'B7C6','J8J6'),('CUYC4776GU','Hybrid',7546,'M4S2','H3R9'),('CVSN3575YJ','Hybrid',6249,'O4B6','B1X2'),('DBRN4723ZY','Hybrid',2119,'I4Z2','V2C6'),('DBTN3726WS','Passenger',5341,'R6Y8','K9J4'),('DDTJ8523QS','military',4347,'S2K9','F2J3'),('DEDL5214XG','Hybrid',4635,'K7D4','P2P7'),('DFVS5776TF','Passenger',5341,'R6Y8','K9J4'),('DGWS3557JR','military',2577,'N2M1','F7B6'),('DIZE7142JB','Hybrid',7269,'N4T3','N8E1'),('DJOC8329VT','military',2046,'V2C6','I6T1'),('DKHN3843QY','military',5072,'E8E3','W2Y8'),('DLXI6362IN','Cargo',8684,'K5U3','I4J4'),('DOLW5223WP','Private',3283,'F3L3','X4M6'),('DPQD6258PD','military',4199,'K2P4','N7C5'),('DRLC4943FD','Private',2665,'V6V4','V2M6'),('DSNK3915KW','Cargo',3162,'H3R9','R5Y6'),('DTIV7581YT','Private',6870,'D8E5','F4R3'),('DUJN1168ZF','Passenger',5139,'H3X2','K5B3'),('DUJV1615UK','Cargo',7832,'C8D2','D8E5'),('DUTS4325PI','Passenger',7359,'J8J6','D2N9'),('DXSN7122JK','Private',3283,'F3L3','X4M6'),('DXVT2623HQ','Passenger',5533,'Z6T4','E3S8'),('DYIY8568YQ','Hybrid',8568,'D7M3','X2W8'),('DZXO2293PE','Private',6653,'C2P4','T4C6'),('EBZG6777BC','Hybrid',8687,'E8P3','M3L6'),('ECHK6385VZ','Hybrid',7267,'P2P7','W2Y7'),('EFMM9832CN','Cargo',5476,'F4N3','H8B7'),('ELKH8479MM','Private',8812,'B4G1','K2P4'),('ELSH2723YR','Cargo',5816,'F2J3','P7A5'),('ELTC6235ZC','Hybrid',8687,'E8P3','M3L6'),('EMQX3237EF','military',3540,'K9J4','H5L1'),('ENJW7342DU','Cargo',5835,'D9N9','S2K9'),('EOWH9641QH','Passenger',5660,'Z4P7','E8P3'),('EQBP8845NR','Cargo',4208,'B4O3','U8T5'),('EQHN5236EY','Passenger',7406,'V2S5','K7D4'),('ERIH5358PB','military',6377,'J1R5','Y8Y5'),('EUUL5494DE','Passenger',8898,'C1B7','B4G1'),('EVMF6281IR','military',3024,'G7G4','K5U3'),('EWLT4585YY','military',3540,'K9J4','H5L1'),('EXWO9267ZW','military',2414,'S3I7','O4B6'),('EYNQ6674HI','Cargo',8684,'K5U3','I4J4'),('FATH6853RF','Cargo',7008,'W2Y7','E8E3'),('FBPJ3324TP','Cargo',8748,'K5B3','C1B7'),('FDSH8428AP','Passenger',6605,'F8Q5','Q8Z7'),('FFGB6177CE','Cargo',5476,'F4N3','H8B7'),('FFOR8284PP','Cargo',8825,'V2M6','G7X9'),('FFWP7369XY','Hybrid',8568,'D7M3','X2W8'),('FHKM7893IS','military',8013,'D8L8','I4Z2'),('FJTP3527MO','Hybrid',2119,'I4Z2','V2C6'),('FKSX2736FT','military',7996,'Z6P2','K3A8'),('FLJB2842YT','Passenger',7359,'J8J6','D2N9'),('FLUI5978HT','military',5648,'W4E4','H7B4'),('FMXW6698NR','military',4254,'O1N1','D8C9'),('FNKQ4815LW','military',5296,'N7C5','B7C6'),('FNUW8658UM','Cargo',2765,'A1N9','B4O3'),('FQTF7463SH','Hybrid',7198,'H8B7','V6V4'),('FRKR4774TT','Cargo',3890,'F7B6','F8L8'),('FRQB3468CQ','Passenger',5533,'Z6T4','E3S8'),('FTHC8853GE','military',7996,'Z6P2','K3A8'),('FTVK2285WK','Cargo',3533,'I6T1','W4E4'),('FVDB7431BS','military',4347,'S2K9','F2J3'),('GACU7544AK','military',3024,'G7G4','K5U3'),('GEFB9544CJ','Hybrid',7546,'M4S2','H3R9'),('GFAI1972JL','Passenger',8552,'C4E2','E8B7'),('GJRL4982XR','Private',7504,'Q6G5','O3T2'),('GLHG5662FI','Private',5364,'Q8Z7','H5L3'),('GLOO3351VZ','Cargo',5835,'D9N9','S2K9'),('GPUF6737MD','Cargo',7008,'W2Y7','E8E3'),('GPUR6118XT','military',4254,'O1N1','D8C9'),('GQOO6659KS','Private',6870,'D8E5','F4R3'),('GQPD8565YR','military',6025,'B1X2','G2S2'),('GTWY8764HQ','military',2577,'N2M1','F7B6'),('GVMI4629JP','Hybrid',7546,'M4S2','H3R9'),('GXCL5122PX','Private',7702,'U7K7','V2S5'),('GYTN7782HO','Private',7438,'P8X7','N2M1'),('HAKI5958SJ','Hybrid',7001,'E8B7','F3L3'),('HDOC1317EF','Passenger',2294,'O4Q4','N4T3'),('HGFM8374IY','Private',7504,'Q6G5','O3T2'),('HGLR7895OL','military',4347,'S2K9','F2J3'),('HGYF1583UY','Private',2138,'F3N4','R6Y8'),('HHJN4317EP','Hybrid',8687,'E8P3','M3L6'),('HHXK4376PG','military',8013,'D8L8','I4Z2'),('HIFE4448IW','Private',5514,'R5Y6','Z5E3'),('HIHT9974RS','Passenger',8893,'H5L3','A1N9'),('HJFL4778SL','military',8013,'D8L8','I4Z2'),('HKXT8272YP','Private',2138,'F3N4','R6Y8'),('HMLB3168GI','military',7165,'Y8Y5','I9E6'),('HNBZ7351BY','Hybrid',6249,'O4B6','B1X2'),('HOQT7567BM','military',3540,'K9J4','H5L1'),('HRNG1545ND','Cargo',3890,'F7B6','F8L8'),('HSXW3817HD','Cargo',3533,'I6T1','W4E4'),('HUHK4368QL','military',5296,'N7C5','B7C6'),('HUJI7792YR','Passenger',4441,'O8F4','D7M3'),('HUSH5528FI','military',7165,'Y8Y5','I9E6'),('HVBW3565EA','Hybrid',3656,'X2W8','G7G4'),('HWOM1634LP','Private',8812,'B4G1','K2P4'),('HXWR2487UH','Cargo',7832,'C8D2','D8E5'),('HYQW3833ZB','Private',5850,'Q6Y6','O4Q4'),('HYUR2618FM','military',4199,'K2P4','N7C5'),('HZCL3369LW','Cargo',4289,'H5L1','U2F4'),('IAQE3792HJ','Passenger',4517,'J7Y8','C4E2'),('ICGG9887NV','military',5648,'W4E4','H7B4'),('ICTV2173JS','Passenger',7406,'V2S5','K7D4'),('IENI2626IS','military',4199,'K2P4','N7C5'),('IFMV5897PK','military',2260,'F8L8','H7I2'),('IJQB7386FY','military',2046,'V2C6','I6T1'),('IKFS5344NB','Cargo',3879,'K3A8','Q6G5'),('IKLX2558VQ','Cargo',7832,'C8D2','D8E5'),('ILDR8543IX','military',3024,'G7G4','K5U3'),('INVE4972FO','military',6863,'P7A5','F8Q5'),('IOKA6513FH','Hybrid',7793,'Y8O2','F3N4'),('IPGL9742WH','Cargo',7590,'W2Y8','Z6P2'),('IPOF6884WD','Cargo',8948,'E3S8','Q6Y6'),('IRTL6127MX','Private',2138,'F3N4','R6Y8'),('IUCL8636TO','Private',7839,'I9E6','Y8O2'),('IVFA8322PL','Passenger',7406,'V2S5','K7D4'),('IVIM6763UT','military',2260,'F8L8','H7I2'),('IWBU7247FO','military',3540,'K9J4','H5L1'),('IWHP3282PK','Cargo',8684,'K5U3','I4J4'),('IWSC1658IU','Passenger',5139,'H3X2','K5B3'),('JCCT5217UF','Hybrid',4635,'K7D4','P2P7'),('JGIB6664SC','military',7624,'X4M6','U5Y6'),('JJEO3196SX','military',7889,'I4J4','K7T2'),('JJHX3328DC','Private',8737,'G2V3','S3I7'),('JKFP5962IN','Passenger',2294,'O4Q4','N4T3'),('JMWQ7945OR','Private',6268,'Z5E3','C2P4'),('JNWI1155HD','Passenger',7595,'H7I2','J7Y8'),('JOFQ3956YR','Passenger',7215,'U8T5','U7K7'),('JPGV4373MU','Passenger',7997,'U2F4','H3X2'),('JPUS1477MI','Passenger',7215,'U8T5','U7K7'),('JPXI5679FZ','Passenger',8898,'C1B7','B4G1'),('JRLF8259MP','military',7996,'Z6P2','K3A8'),('JRUB8629DN','military',7889,'I4J4','K7T2'),('JTPT5614BJ','Cargo',3162,'H3R9','R5Y6'),('JTYY3718II','military',6025,'B1X2','G2S2'),('JUVL4564KE','Passenger',5660,'Z4P7','E8P3'),('JVQE5545AE','military',7624,'X4M6','U5Y6'),('JVTP9674XW','Hybrid',2119,'I4Z2','V2C6'),('KAPC6357DO','Passenger',5340,'K5U3','Z6T4'),('KBWM1874NP','military',2555,'M1K3','Z4P7'),('KFKY8442WM','Hybrid',3656,'X2W8','G7G4'),('KHCN6846DU','Private',6653,'C2P4','T4C6'),('KHFW8182XO','Private',2665,'V6V4','V2M6'),('KIFG9651WL','Hybrid',2119,'I4Z2','V2C6'),('KIYH6759XQ','Private',7702,'U7K7','V2S5'),('KNEO6673FD','Passenger',7595,'H7I2','J7Y8'),('KNUU2785RM','Passenger',5341,'R6Y8','K9J4'),('KNUZ1886VM','Cargo',2032,'K7T2','D8L8'),('KOWH9345GH','Private',7438,'P8X7','N2M1'),('KPGF1688XB','military',4254,'O1N1','D8C9'),('KQDM7563LR','military',7996,'Z6P2','K3A8'),('KRUD6287SX','Hybrid',7269,'N4T3','N8E1'),('KSHU7514WS','Hybrid',7586,'Q9W3','P3J7'),('KSPB2575AT','Private',6653,'C2P4','T4C6'),('KTCM6294QD','Hybrid',8568,'D7M3','X2W8'),('KTFG2246TS','military',5296,'N7C5','B7C6'),('KUSR4979SH','Cargo',8948,'E3S8','Q6Y6'),('KVFR2734TR','Private',4068,'H7B4','D9N9'),('KVUD3934SR','Passenger',5660,'Z4P7','E8P3'),('KWQF9836IA','Passenger',8552,'C4E2','E8B7'),('KXYQ3353KC','military',8013,'D8L8','I4Z2'),('KYYI5779DO','Cargo',5835,'D9N9','S2K9'),('LCWS4498UE','Hybrid',7001,'E8B7','F3L3'),('LDTD8788IK','Cargo',4848,'T4C6','M1K3'),('LEBM3663RL','Cargo',2765,'A1N9','B4O3'),('LEEO5545WC','military',6863,'P7A5','F8Q5'),('LEPW1833HL','military',5072,'E8E3','W2Y8'),('LHVG8726GR','military',7165,'Y8Y5','I9E6'),('LIOC4134JO','Cargo',5835,'D9N9','S2K9'),('LJZF2265SV','military',5826,'D8C9','W1L1'),('LLAT5357SS','Passenger',5139,'H3X2','K5B3'),('LNJX3378TE','military',6863,'P7A5','F8Q5'),('LOKH3645VK','Cargo',3533,'I6T1','W4E4'),('LOLM3479RP','Cargo',7008,'W2Y7','E8E3'),('LOZQ2634LB','Passenger',5773,'N8E1','J1R5'),('LQKW4723GW','Hybrid',7269,'N4T3','N8E1'),('LQQH5717WL','Cargo',5476,'F4N3','H8B7'),('LROV6154BH','Private',4068,'H7B4','D9N9'),('LRZO7497LF','Cargo',8748,'K5B3','C1B7'),('LYUC6934NE','Passenger',5773,'N8E1','J1R5'),('LYVY8592RZ','Hybrid',3656,'X2W8','G7G4'),('LZMV9725SR','Passenger',7997,'U2F4','H3X2'),('MABS4814CJ','military',6377,'J1R5','Y8Y5'),('MAJE8683GV','Passenger',7997,'U2F4','H3X2'),('MBGT7883LE','military',7655,'U5Y6','C8D2'),('MBOQ4634YC','military',7889,'I4J4','K7T2'),('MDNK3822PM','Private',7702,'U7K7','V2S5'),('MDNU3414RC','military',2260,'F8L8','H7I2'),('MHEI4284JP','Passenger',7406,'V2S5','K7D4'),('MJWJ9283YA','Private',7839,'I9E6','Y8O2'),('MLUW8981PP','Hybrid',3656,'X2W8','G7G4'),('MORX4817JA','military',7624,'X4M6','U5Y6'),('MOUT5384AS','Hybrid',7267,'P2P7','W2Y7'),('MPUB2944CY','Passenger',7595,'H7I2','J7Y8'),('MRBL3323KG','Hybrid',7793,'Y8O2','F3N4'),('MSQW7731NS','Hybrid',7198,'H8B7','V6V4'),('MTBX3158OE','Passenger',4517,'J7Y8','C4E2'),('MUQJ7984PT','military',8045,'H3D7','G2V3'),('MWFI6792PD','Hybrid',7793,'Y8O2','F3N4'),('MWGO1289PG','military',8332,'G7X9','H3D7'),('MXVP4316HM','Private',8737,'G2V3','S3I7'),('MYSY4758JJ','Cargo',8825,'V2M6','G7X9'),('MZYY4513XX','Hybrid',7198,'H8B7','V6V4'),('NATC1446OB','Cargo',2032,'K7T2','D8L8'),('NBRO8645YP','Passenger',7595,'H7I2','J7Y8'),('NBSZ2658DI','Private',5364,'Q8Z7','H5L3'),('NCDY8551ZT','military',7655,'U5Y6','C8D2'),('NDJH5961DE','Private',5364,'Q8Z7','H5L3'),('NEFS2264XT','Hybrid',7793,'Y8O2','F3N4'),('NGKW2377YL','military',6377,'J1R5','Y8Y5'),('NGMR6238FQ','military',2508,'Y5A5','O1N1'),('NHWB7424BI','Private',3973,'D2N9','Y5A5'),('NHWV2385FO','Cargo',3162,'H3R9','R5Y6'),('NIQC1445LC','Private',5514,'R5Y6','Z5E3'),('NJLP7725UR','Cargo',8684,'K5U3','I4J4'),('NJPD1842FB','Cargo',2765,'A1N9','B4O3'),('NJTF3626IE','military',4347,'S2K9','F2J3'),('NKQA9228BE','Hybrid',7586,'Q9W3','P3J7'),('NNLG5524VV','Passenger',5773,'N8E1','J1R5'),('NNZW7494PD','Cargo',4289,'H5L1','U2F4'),('NPRD7825RP','Private',5364,'Q8Z7','H5L3'),('NRBB2317II','military',7889,'I4J4','K7T2'),('NRWW2225VG','Private',5364,'Q8Z7','H5L3'),('NTKP8949GE','military',2508,'Y5A5','O1N1'),('NTYV8262YJ','Private',6268,'Z5E3','C2P4'),('NUEJ3317FO','Passenger',7406,'V2S5','K7D4'),('NVKC5285GK','Passenger',7359,'J8J6','D2N9'),('NXRL3875XU','Private',6870,'D8E5','F4R3'),('NXXI3461BV','Private',7438,'P8X7','N2M1'),('NYMJ3686NQ','military',2508,'Y5A5','O1N1'),('NZVP3888UV','Hybrid',2833,'O3T2','B3A6'),('OAKM3383CI','Passenger',8898,'C1B7','B4G1'),('OGIP7789ML','military',7655,'U5Y6','C8D2'),('OLZG1544EC','Private',6653,'C2P4','T4C6'),('OMPL4783SN','Hybrid',7546,'M4S2','H3R9'),('OPDN6323LG','Private',2665,'V6V4','V2M6'),('OPRE3689BI','military',7165,'Y8Y5','I9E6'),('OPXH8466CI','Cargo',7590,'W2Y8','Z6P2'),('ORFJ6833FE','Passenger',6605,'F8Q5','Q8Z7'),('ORZR6265MS','Private',7702,'U7K7','V2S5'),('OSUP7869TA','military',2577,'N2M1','F7B6'),('OULK5322YU','Passenger',8552,'C4E2','E8B7'),('OVMC8186XK','Passenger',2838,'N4T3','Q9W3'),('OVQU3361LZ','Hybrid',4635,'K7D4','P2P7'),('OWPZ4328LH','Passenger',4517,'J7Y8','C4E2'),('OWTU7748HO','Passenger',6605,'F8Q5','Q8Z7'),('OYWY5582EF','military',7996,'Z6P2','K3A8'),('PDRZ2391FP','Passenger',4517,'J7Y8','C4E2'),('PDUG5425DR','Hybrid',2833,'O3T2','B3A6'),('PEUQ6333ZE','Private',5514,'R5Y6','Z5E3'),('PFXO7556MB','military',8045,'H3D7','G2V3'),('PGHB2277YK','Hybrid',4255,'W1L1','F4N3'),('PHAB2623KE','military',8332,'G7X9','H3D7'),('PIBD9522DT','military',6377,'J1R5','Y8Y5'),('PLGU7227DR','military',5435,'B7C6','J8J6'),('PLKY2578II','Passenger',2294,'O4Q4','N4T3'),('PLTF5455HQ','military',7624,'X4M6','U5Y6'),('PMGH3562GM','Passenger',7215,'U8T5','U7K7'),('PMGJ8427OC','Passenger',5341,'R6Y8','K9J4'),('PNQD2843ES','Passenger',5341,'R6Y8','K9J4'),('PNWV6758BV','Cargo',8748,'K5B3','C1B7'),('PPZQ8831QF','Cargo',8825,'V2M6','G7X9'),('PRFV2936TT','Cargo',7008,'W2Y7','E8E3'),('PRGF9238RO','military',6863,'P7A5','F8Q5'),('PTGR2856QD','military',8045,'H3D7','G2V3'),('PUIW6694JK','Cargo',7590,'W2Y8','Z6P2'),('PUPB9611NI','military',6025,'B1X2','G2S2'),('PVIF5356OC','Cargo',4289,'H5L1','U2F4'),('PXOY8721PY','Private',8737,'G2V3','S3I7'),('PXUR3837RQ','Passenger',5533,'Z6T4','E3S8'),('PXWC4316DT','Hybrid',7415,'G2S2','M4S2'),('PYBU7214RQ','Hybrid',7269,'N4T3','N8E1'),('PYFH5132QQ','Passenger',8893,'H5L3','A1N9'),('PYLF7149VN','Passenger',7215,'U8T5','U7K7'),('PYLY7226SL','military',2555,'M1K3','Z4P7'),('PYUO5594AM','Hybrid',7001,'E8B7','F3L3'),('PZLE2894GX','Private',2138,'F3N4','R6Y8'),('QBQK8172EC','military',5826,'D8C9','W1L1'),('QDUB5884KU','military',2046,'V2C6','I6T1'),('QEVP8783IM','Passenger',8893,'H5L3','A1N9'),('QFPI2466BB','military',2046,'V2C6','I6T1'),('QFPT2893UD','military',8332,'G7X9','H3D7'),('QIGM5538PI','Cargo',2765,'A1N9','B4O3'),('QINL6312MA','Cargo',4289,'H5L1','U2F4'),('QKFC7828WC','Cargo',5816,'F2J3','P7A5'),('QLTG4512ZF','Cargo',5816,'F2J3','P7A5'),('QNKY6638VC','Cargo',7590,'W2Y8','Z6P2'),('QNOS5576VI','military',5826,'D8C9','W1L1'),('QQBH7897IH','Hybrid',6249,'O4B6','B1X2'),('QRKO7866XH','military',2260,'F8L8','H7I2'),('QRXQ1438TP','Cargo',4848,'T4C6','M1K3'),('QUWU7798MK','military',6863,'P7A5','F8Q5'),('QVDC5886ZK','military',2508,'Y5A5','O1N1'),('QVQU6363VI','Cargo',4848,'T4C6','M1K3'),('QXYH9225SJ','Private',6870,'D8E5','F4R3'),('RBMV5681IL','Hybrid',4255,'W1L1','F4N3'),('RCFD2846HH','Private',7839,'I9E6','Y8O2'),('REXX5697QS','military',5648,'W4E4','H7B4'),('RFHW5213GI','Passenger',8459,'P3J7','O8F4'),('RFSS5372RQ','Cargo',5476,'F4N3','H8B7'),('RGNS9848HD','Cargo',2032,'K7T2','D8L8'),('RHWC3785XM','Cargo',7008,'W2Y7','E8E3'),('RIAR3582US','Private',3283,'F3L3','X4M6'),('RJKR8258JB','military',8045,'H3D7','G2V3'),('RKNC4559NC','Cargo',8948,'E3S8','Q6Y6'),('RKNJ9375BK','military',4347,'S2K9','F2J3'),('RMUV2975DE','Passenger',6605,'F8Q5','Q8Z7'),('RNBC1724AK','Passenger',7997,'U2F4','H3X2'),('ROHJ4273RV','Cargo',3879,'K3A8','Q6G5'),('RPOE7426NM','military',6377,'J1R5','Y8Y5'),('RQIY7377BM','Private',5514,'R5Y6','Z5E3'),('RRNB3968PX','Hybrid',7415,'G2S2','M4S2'),('RRYY6894FB','Cargo',3890,'F7B6','F8L8'),('RRZL2773GV','military',5435,'B7C6','J8J6'),('RSQX8518VH','Cargo',8948,'E3S8','Q6Y6'),('RUBJ7363YW','military',8045,'H3D7','G2V3'),('RVYN3139CO','Passenger',8898,'C1B7','B4G1'),('RWHT3499FL','Private',3973,'D2N9','Y5A5'),('SBKR4428EZ','military',2555,'M1K3','Z4P7'),('SCMP5757YO','military',7655,'U5Y6','C8D2'),('SECR2256LZ','military',2260,'F8L8','H7I2'),('SFMM8865PX','Private',6870,'D8E5','F4R3'),('SGML8288VK','Hybrid',7793,'Y8O2','F3N4'),('SJNR2962CQ','Passenger',8552,'C4E2','E8B7'),('SJXV5445IN','Passenger',8459,'P3J7','O8F4'),('SKGR2986UQ','Passenger',8552,'C4E2','E8B7'),('SKMX8312VC','Passenger',7215,'U8T5','U7K7'),('SLWB5772ED','military',5296,'N7C5','B7C6'),('SMPP7223RB','Hybrid',7586,'Q9W3','P3J7'),('SNNK3424YL','Hybrid',7198,'H8B7','V6V4'),('SOOX2727VW','Hybrid',8687,'E8P3','M3L6'),('SPCI7486TX','Hybrid',4635,'K7D4','P2P7'),('SPHX8156QK','Hybrid',2119,'I4Z2','V2C6'),('SRDW7338HN','Cargo',3162,'H3R9','R5Y6'),('SRRM8343NK','Passenger',7359,'J8J6','D2N9'),('SUNU1123CQ','Passenger',5139,'H3X2','K5B3'),('SUYI8739QJ','Private',7504,'Q6G5','O3T2'),('SYQW4314XO','Passenger',5340,'K5U3','Z6T4'),('SYYT2135XU','military',7624,'X4M6','U5Y6'),('SZAQ5948IC','Cargo',8748,'K5B3','C1B7'),('TBRC7425UC','Cargo',4848,'T4C6','M1K3'),('TECS4178VQ','Passenger',8893,'H5L3','A1N9'),('TFLQ7517NJ','Private',7839,'I9E6','Y8O2'),('TJGA1773EI','Cargo',8825,'V2M6','G7X9'),('TKTP4976GR','Passenger',5773,'N8E1','J1R5'),('TMJO2345CK','Private',4068,'H7B4','D9N9'),('TQBD4657JX','Cargo',7852,'B3A6','P8X7'),('TQOU4246DA','Passenger',5340,'K5U3','Z6T4'),('TSHW5578QH','Passenger',5660,'Z4P7','E8P3'),('TSIM1254MC','Hybrid',6249,'O4B6','B1X2'),('TTWY7685NE','Cargo',4208,'B4O3','U8T5'),('TVOM2333QB','Private',7504,'Q6G5','O3T2'),('TVUB3768OB','military',2508,'Y5A5','O1N1'),('TWFE4747VS','Private',6653,'C2P4','T4C6'),('TXMP7926OA','Cargo',5816,'F2J3','P7A5'),('TXWJ3862KL','military',2414,'S3I7','O4B6'),('TYDL7627WQ','military',3024,'G7G4','K5U3'),('UABA9443TD','military',5072,'E8E3','W2Y8'),('UAFD2926JW','military',4199,'K2P4','N7C5'),('UBEK4461DD','Passenger',2294,'O4Q4','N4T3'),('UFEP6661AY','Hybrid',4635,'K7D4','P2P7'),('UHUU9252GH','Passenger',5139,'H3X2','K5B3'),('UIBU1571XP','military',8013,'D8L8','I4Z2'),('ULCW6888QG','Passenger',4517,'J7Y8','C4E2'),('UOUK6958RM','Hybrid',7267,'P2P7','W2Y7'),('UTEH5245VJ','Passenger',5773,'N8E1','J1R5'),('UUSY4887UX','Passenger',8898,'C1B7','B4G1'),('UXAV7453WV','Private',3973,'D2N9','Y5A5'),('VAMC3348OU','Passenger',2838,'N4T3','Q9W3'),('VBVQ4946JX','military',2414,'S3I7','O4B6'),('VBZE6692CH','military',5072,'E8E3','W2Y8'),('VCHK2873QK','Cargo',5476,'F4N3','H8B7'),('VEPY8346RX','Passenger',4441,'O8F4','D7M3'),('VERQ6484VH','Cargo',8948,'E3S8','Q6Y6'),('VGPQ3538CU','Cargo',4208,'B4O3','U8T5'),('VLQB7521QX','Hybrid',7415,'G2S2','M4S2'),('VMYU9763GQ','Private',8812,'B4G1','K2P4'),('VVIT2422YC','Private',5850,'Q6Y6','O4Q4'),('VVXG8857EV','Hybrid',7586,'Q9W3','P3J7'),('VXVK8678PN','Passenger',4441,'O8F4','D7M3'),('VYSG4176TQ','military',8332,'G7X9','H3D7'),('VYWG6887KV','military',7655,'U5Y6','C8D2'),('VZJY7283AH','military',3540,'K9J4','H5L1'),('VZKP4788YB','Cargo',2765,'A1N9','B4O3'),('WAGE2777DJ','military',5072,'E8E3','W2Y8'),('WAQO5218BP','military',2577,'N2M1','F7B6'),('WBEU8228JB','Cargo',3890,'F7B6','F8L8'),('WDLP6834DR','military',5648,'W4E4','H7B4'),('WELT4646FC','Passenger',7595,'H7I2','J7Y8'),('WEVP9818TJ','Cargo',7832,'C8D2','D8E5'),('WGTS7466CS','Cargo',7852,'B3A6','P8X7'),('WHVE7442LN','military',5648,'W4E4','H7B4'),('WHVR1678NS','Hybrid',4255,'W1L1','F4N3'),('WIKV4726SW','Hybrid',4255,'W1L1','F4N3'),('WIQO3165ID','Cargo',3890,'F7B6','F8L8'),('WJMN6334XA','Private',6268,'Z5E3','C2P4'),('WKXU5535MU','military',4254,'O1N1','D8C9'),('WNPG1828QT','Private',3283,'F3L3','X4M6'),('WRCY7822DX','Hybrid',3656,'X2W8','G7G4'),('WRZF2788UC','Cargo',4208,'B4O3','U8T5'),('WTQI5227HJ','military',5826,'D8C9','W1L1'),('XAVJ5364RF','military',7165,'Y8Y5','I9E6'),('XDBO8111QT','Cargo',3879,'K3A8','Q6G5'),('XELW6851PS','Private',7839,'I9E6','Y8O2'),('XHSD6777VP','Hybrid',8687,'E8P3','M3L6'),('XIMN2622DP','Private',7438,'P8X7','N2M1'),('XJGN3946WX','Passenger',8459,'P3J7','O8F4'),('XLOV1837XQ','Cargo',3162,'H3R9','R5Y6'),('XNSR9568LD','Cargo',8825,'V2M6','G7X9'),('XNWI7244LV','Hybrid',6249,'O4B6','B1X2'),('XOSG6566PJ','Passenger',4441,'O8F4','D7M3'),('XRWO8233UC','Hybrid',7198,'H8B7','V6V4'),('XSZL5784CI','Hybrid',4255,'W1L1','F4N3'),('XWNQ8266ID','Hybrid',2833,'O3T2','B3A6'),('XYMP2276JR','Cargo',3533,'I6T1','W4E4'),('XYNR6115GI','Cargo',8684,'K5U3','I4J4'),('XYRQ4448KU','military',5826,'D8C9','W1L1'),('YAVN6894YU','Passenger',2838,'N4T3','Q9W3'),('YAYK3113HQ','Passenger',5533,'Z6T4','E3S8'),('YBSE6662HL','Cargo',7852,'B3A6','P8X7'),('YDQV5647DK','military',4199,'K2P4','N7C5'),('YDVP4424DC','Cargo',7590,'W2Y8','Z6P2'),('YFCV6752ZN','Passenger',8459,'P3J7','O8F4'),('YGOQ6737GD','military',8332,'G7X9','H3D7'),('YIWO4471ES','Cargo',3879,'K3A8','Q6G5'),('YJVN1556LY','Hybrid',7546,'M4S2','H3R9'),('YLVD3736WM','Private',6268,'Z5E3','C2P4'),('YMBM2964FF','military',3024,'G7G4','K5U3'),('YMIW2257SM','Private',5850,'Q6Y6','O4Q4'),('YNCM3751MM','Hybrid',8568,'D7M3','X2W8'),('YNQO5335QK','Passenger',4441,'O8F4','D7M3'),('YRMC8262IU','military',6025,'B1X2','G2S2'),('YUJT2655FJ','Passenger',2294,'O4Q4','N4T3'),('YWDS8284KH','Private',7438,'P8X7','N2M1'),('YXGJ7312BK','military',4254,'O1N1','D8C9'),('YXLW3656WO','Passenger',2838,'N4T3','Q9W3'),('YYTK7335ED','Private',8737,'G2V3','S3I7'),('ZAJO2471ST','Hybrid',8568,'D7M3','X2W8'),('ZBSB5481LI','military',2555,'M1K3','Z4P7'),('ZDBZ9422SW','Private',3973,'D2N9','Y5A5'),('ZDJJ7377EC','Passenger',8459,'P3J7','O8F4'),('ZECN2343WV','Private',2665,'V6V4','V2M6'),('ZHBK8152ET','military',5435,'B7C6','J8J6'),('ZHPQ2267GQ','Private',4068,'H7B4','D9N9'),('ZJRI4142ZQ','Passenger',2838,'N4T3','Q9W3'),('ZQAN7531PU','Hybrid',7267,'P2P7','W2Y7'),('ZQSU5128AL','Hybrid',7267,'P2P7','W2Y7');
/*!40000 ALTER TABLE `aeroplane` ENABLE KEYS */;
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