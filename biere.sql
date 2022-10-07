-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: biere
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `achat`
--

DROP TABLE IF EXISTS `achat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achat` (
  `Id_Achat` int(11) NOT NULL AUTO_INCREMENT,
  `Prix_Achat` varchar(50) DEFAULT NULL,
  `Marge_SDBM` varchar(50) DEFAULT NULL,
  `Id_Taxes` int(11) NOT NULL,
  PRIMARY KEY (`Id_Achat`),
  KEY `Id_Taxes` (`Id_Taxes`),
  CONSTRAINT `achat_ibfk_1` FOREIGN KEY (`Id_Taxes`) REFERENCES `taxes` (`Id_Taxes`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achat`
--

LOCK TABLES `achat` WRITE;
/*!40000 ALTER TABLE `achat` DISABLE KEYS */;
INSERT INTO `achat` VALUES (1,'2.50 €','22%',1),(2,'3.00 €','22%',2),(3,'3.50 €','22%',3),(4,'3.75 €','22%',4),(5,'4.00 €','22%',5),(6,'4.50 €','22%',6);
/*!40000 ALTER TABLE `achat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `Id_Articles` int(11) NOT NULL AUTO_INCREMENT,
  `Quantité` int(11) DEFAULT NULL,
  `Id_Biere` int(11) NOT NULL,
  PRIMARY KEY (`Id_Articles`),
  KEY `Id_Biere` (`Id_Biere`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`Id_Biere`) REFERENCES `biere` (`Id_Biere`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,5,1),(2,4,2),(3,5,3),(4,4,4),(5,2,5),(6,1,6),(7,1,7),(8,4,8),(9,1,9),(10,5,10),(11,8,11),(12,7,12),(13,1,13),(14,2,14),(15,3,15),(16,2,1),(17,1,3),(18,8,9),(19,6,14),(20,3,11),(21,9,15),(22,9,5),(23,3,7),(24,6,8),(25,3,12),(26,5,10);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biere`
--

DROP TABLE IF EXISTS `biere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biere` (
  `Id_Biere` int(11) NOT NULL AUTO_INCREMENT,
  `Marque` varchar(50) DEFAULT NULL,
  `Couleur` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Id_Pays` int(11) DEFAULT NULL,
  `Id_Fabricant` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Biere`),
  KEY `Id_Pays` (`Id_Pays`),
  KEY `Id_Fabricant` (`Id_Fabricant`),
  CONSTRAINT `biere_ibfk_1` FOREIGN KEY (`Id_Pays`) REFERENCES `pays` (`Id_Pays`),
  CONSTRAINT `biere_ibfk_2` FOREIGN KEY (`Id_Fabricant`) REFERENCES `fabricant` (`Id_Fabricant`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biere`
--

LOCK TABLES `biere` WRITE;
/*!40000 ALTER TABLE `biere` DISABLE KEYS */;
INSERT INTO `biere` VALUES (1,'33 Export','Blonde','Lager',2,3),(2,'Black Label','Blonde','Lager',7,8),(3,'Chimay Brune','Brune','trappiste',1,2),(4,'Chimay Blonde','Blonde','trappiste',1,2),(5,'Caffrey_s\'','Ambre','Stout',6,4),(6,'Quilmes cristal','Ambre','Pils',5,5),(7,'Heineken','Blonde','Lager',3,3),(8,'Stella Artois','Blonde','Pils',1,5),(9,'Corona','Blonde','Lager',4,5),(10,'Kronenbourg','Blonde','trappiste',2,1),(11,'Desperados','Blonde','trappiste',2,3),(12,'Hoegaarden','Blanche','Lager',1,9),(13,'1664','Blonde','Lager',2,1),(14,'Leffe','Blonde','Ale',1,6),(15,'Asashi','Blonde','Lager',8,7);
/*!40000 ALTER TABLE `biere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `continent`
--

DROP TABLE IF EXISTS `continent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `continent` (
  `Id_Continent` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Continent`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `continent`
--

LOCK TABLES `continent` WRITE;
/*!40000 ALTER TABLE `continent` DISABLE KEYS */;
INSERT INTO `continent` VALUES (1,'Afrique'),(2,'Amerique'),(3,'Asie'),(4,'Europe'),(5,'Oceanie');
/*!40000 ALTER TABLE `continent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricant`
--

DROP TABLE IF EXISTS `fabricant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabricant` (
  `Id_Fabricant` int(11) NOT NULL AUTO_INCREMENT,
  `Fabricant` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Fabricant`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricant`
--

LOCK TABLES `fabricant` WRITE;
/*!40000 ALTER TABLE `fabricant` DISABLE KEYS */;
INSERT INTO `fabricant` VALUES (1,'Kronenbourg SAS'),(2,'Brasserie de Chimay'),(3,'Heineken'),(4,'Thomas Caffrey.'),(5,'Anheuser-Busch InBev'),(6,'Brasserie Artois'),(7,'Asahi Breweries'),(8,' Canadian Breweries Limited'),(9,'AB InBev');
/*!40000 ALTER TABLE `fabricant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pays`
--

DROP TABLE IF EXISTS `pays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pays` (
  `Id_Pays` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) DEFAULT NULL,
  `Id_Continent` int(11) NOT NULL,
  PRIMARY KEY (`Id_Pays`),
  KEY `Id_Continent` (`Id_Continent`),
  CONSTRAINT `pays_ibfk_1` FOREIGN KEY (`Id_Continent`) REFERENCES `continent` (`Id_Continent`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pays`
--

LOCK TABLES `pays` WRITE;
/*!40000 ALTER TABLE `pays` DISABLE KEYS */;
INSERT INTO `pays` VALUES (1,'Belgique',4),(2,'France',4),(3,'Pays Bas',4),(4,'Mexique',2),(5,'Bresil',2),(6,'Irlande',4),(7,'Canada',2),(8,'Japon',3);
/*!40000 ALTER TABLE `pays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxes` (
  `Id_Taxes` int(11) NOT NULL AUTO_INCREMENT,
  `TTC` decimal(11,2) DEFAULT NULL,
  `TVA` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Taxes`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxes`
--

LOCK TABLES `taxes` WRITE;
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` VALUES (1,3.05,'3.66 €'),(2,3.70,'4.44 €'),(3,4.30,'5.16 €'),(4,4.60,'5.52 €'),(5,4.90,'5.88 €'),(6,5.50,'6.60 €');
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `Numero_ticket` int(11) NOT NULL AUTO_INCREMENT,
  `Ticket_horodatés` datetime DEFAULT NULL,
  `Id_Achat` int(11) NOT NULL,
  `Id_Articles` int(11) NOT NULL,
  PRIMARY KEY (`Numero_ticket`),
  KEY `Id_Achat` (`Id_Achat`),
  KEY `Id_Articles` (`Id_Articles`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`Id_Achat`) REFERENCES `achat` (`Id_Achat`),
  CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`Id_Articles`) REFERENCES `articles` (`Id_Articles`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'2022-08-02 14:04:14',1,1),(2,'2022-09-04 13:14:56',2,2),(3,'2022-08-22 17:05:23',3,3),(4,'2022-09-06 14:05:33',4,4),(5,'2022-08-09 14:06:10',5,5),(6,'2022-08-27 10:06:44',6,6),(7,'2022-09-10 16:07:10',3,7),(8,'2022-09-12 17:07:29',4,8),(9,'2022-08-09 21:08:16',3,9),(10,'2022-09-14 12:08:31',2,10),(11,'2022-09-06 14:05:33',6,11),(12,'2022-09-18 23:09:47',4,12),(13,'2022-09-09 17:24:28',6,13),(14,'2022-09-15 16:10:33',6,14),(15,'2022-08-31 10:24:50',6,15),(16,'2022-09-09 17:11:15',5,16),(17,'2022-09-03 21:19:38',3,17),(18,'2022-09-09 14:11:57',5,18),(19,'2022-09-02 14:34:10',6,19),(20,'2022-09-18 19:12:27',1,20),(21,'2022-09-11 18:12:56',5,21),(22,'2022-09-10 02:29:29',1,22),(23,'2022-09-18 20:21:41',4,23),(24,'2022-09-03 23:14:06',1,24),(25,'2022-09-03 21:39:22',5,25),(26,'2022-09-25 19:59:43',4,25),(27,'2022-09-20 17:40:15',5,26);
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-27 15:14:26
