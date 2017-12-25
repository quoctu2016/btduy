-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: guitarseller
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.26-MariaDB

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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `idorder` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `idprod` int(11) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`idorder`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `idprod` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `guitar` int(1) DEFAULT NULL,
  `chatlieu` varchar(20) NOT NULL,
  `dang` varchar(20) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idprod`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Taylor 610e',2,'xoan dao','120',1200,'https://drive.google.com/file/d/1ldt2zp1-6kl4kA-Ygml3FnoRWXQiukry/preview'),(2,'Taylor 300 Series 326e',2,'soi','Grand',1500,'https://drive.google.com/file/d/1HM-oVLMkXGFqKKiQKlk2fC2uneGDTd1U/preview'),(3,'Tobias Toby Deluxe-IV',3,'inox','Radiata',1000,'https://drive.google.com/file/d/1IaAKGXe_LUej_S6De0W0AzHpViVQaru-/preview'),(4,'Mitchell MB200',3,'inox','Radius 12 inch',1300,'https://drive.google.com/file/d/18wehxuUZaRLREiJmqPteCioV1Kc5fIe_/preview'),(5,'Kremona Rosa Morena',1,'tram','650-20 Scale',999,'https://drive.google.com/file/d/1k5CGJiMuoFfIzBeW9IdwovBV4qkZyIYZ/preview'),(6,'Kremona S58C 3/4 Scale',1,'rose','Laminated sapele',1199,'https://drive.google.com/file/d/1Jo4MKRFvFnqo-BB1JvETxC54s6gx9J9C/preview'),(7,'Keeley Compressor Plus',5,'',NULL,159,'https://drive.google.com/file/d/1XB501zZoL7Ian375wxW4oms4Rf5ir-bq/preview'),(8,'Ashdown B-Social Stereo 75W 2x',5,'',NULL,289,'https://drive.google.com/file/d/1geODkuJ8i148sUc17pxplGAHNEhI2-ng/preview'),(10,'Tobias Toby Deluxe-II',3,'inox','Radiata',999,'https://drive.google.com/file/d/1IaAKGXe_LUej_S6De0W0AzHpViVQaru-/preview'),(11,'Tobias Toby Deluxe-IV',1,'inox','Radiata',1000,'https://drive.google.com/file/d/18wehxuUZaRLREiJmqPteCioV1Kc5fIe_/preview');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-22 20:53:21
