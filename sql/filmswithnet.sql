-- MySQL dump 10.17  Distrib 10.3.13-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: films
-- ------------------------------------------------------
-- Server version	10.3.13-MariaDB-log

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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `First_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Robert','Downey jr'),(2,'Paul','Bettany'),(3,'Chris','Evans'),(4,'Mark','Ruffalo'),(5,'Chris','Hemsworth'),(6,'Scarlett','Johansson'),(7,'Jeremy','Renner'),(8,'Tom','Hiddleston'),(9,'Clark','Gregg'),(10,'Samuel L.','Jackson'),(11,'Jackie','Chan'),(12,'Carol','Cheng'),(13,'Alan','Tam'),(14,'Lola','Forner'),(15,'Emma','Watson'),(16,'Daniel','Radcliffe'),(17,'Rupert','Grint'),(18,'Tobey','Maguire'),(19,'Kirsten','Dunst'),(20,'James','Franco'),(21,'Russell','Crowe'),(22,'Joaquin','Phoenix'),(23,'Taylor','Kitsch'),(24,'Lynn','Collins'),(25,'Willem','Dafoe'),(26,'Jesse','Eisenberg'),(27,'Woody','Harrelson'),(28,'Isla','Fisher'),(29,'Dave','Franco'),(30,'Morgan','Freeman');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_actor`
--

DROP TABLE IF EXISTS `film_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_actor` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `film_id` int(4) NOT NULL DEFAULT 0,
  `actor_id` int(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_actor`
--

LOCK TABLES `film_actor` WRITE;
/*!40000 ALTER TABLE `film_actor` DISABLE KEYS */;
INSERT INTO `film_actor` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,2,11),(12,2,13),(13,2,14),(14,3,11),(15,3,12),(16,4,11),(17,5,11),(18,6,15),(19,6,16),(20,6,17),(21,7,15),(22,7,16),(23,7,17),(24,8,15),(25,8,16),(26,8,17),(27,9,15),(28,9,16),(29,9,17),(30,10,15),(31,10,16),(32,10,17),(33,11,15),(34,11,16),(35,11,17),(36,12,15),(37,12,16),(38,12,17),(39,13,15),(40,13,16),(41,13,17),(42,14,18),(43,14,19),(44,14,20),(45,14,25),(46,15,18),(47,15,19),(48,15,20),(49,15,25),(50,16,18),(51,16,19),(52,16,20),(53,16,25),(54,17,21),(55,17,22),(56,18,23),(57,18,24),(58,18,25),(59,19,26),(60,19,27),(61,19,28),(62,19,29),(63,19,30),(64,20,26),(65,20,27),(66,20,29),(67,20,30);
/*!40000 ALTER TABLE `film_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `films` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'undefined',
  `year` int(5) NOT NULL DEFAULT 1998,
  `genre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'Avengers',2019,'action'),(2,'Armor of God',1986,'adventures'),(3,'Armor of God 2: Operation Condor',1991,'adventures'),(4,'Armor of God 3:Mission Zodiac',2012,'adventures'),(5,'Armor of God 4',2017,'fantasy'),(6,'Harry Potter and the Philoshoper\'s Stone',2001,'fantasy'),(7,'Harry Potter and the Chamber of Secrets',2002,'fantasy'),(8,'Harry Potter and the Prisoner of Azkaban',2004,'fantasy'),(9,'Harry Potter and the Goblet of Fire',2005,'fantasy'),(10,'Harry Potter and the Order of the Phoenix',2007,'fantasy'),(11,'Harry Potter and Half-Blood Prince',2009,'fantasy'),(12,'Harry Potter and the Deathly Hallows.Part 1',2010,'fantasy'),(13,'Harry Potter and the Deathly Hallows.Part 2',2011,'fantasy'),(14,'Spider-Man',2002,'fantasy'),(15,'Spider-Man 2',2004,'action'),(16,'Spider-Man 3:The Enemy Within',2007,'action'),(17,'Gladiator',2000,'action'),(18,'John Carter',2012,'fantasy'),(19,'Now You See Me',2013,'detective'),(20,'Now You See Me 2',2016,'detective');
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producer_film`
--

DROP TABLE IF EXISTS `producer_film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producer_film` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `producer_id` int(4) NOT NULL DEFAULT 0,
  `film_id` int(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producer_film`
--

LOCK TABLES `producer_film` WRITE;
/*!40000 ALTER TABLE `producer_film` DISABLE KEYS */;
INSERT INTO `producer_film` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,5),(6,4,14),(7,4,15),(8,4,16),(9,5,17),(10,6,18),(11,7,18),(12,8,19),(13,8,20),(14,9,20),(15,9,20),(16,10,20),(17,11,6),(18,11,7),(19,11,8),(20,11,9),(21,11,10),(22,11,11),(23,11,12),(24,11,13);
/*!40000 ALTER TABLE `producer_film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producers`
--

DROP TABLE IF EXISTS `producers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producers` (
  `producers_id` int(5) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`producers_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producers`
--

LOCK TABLES `producers` WRITE;
/*!40000 ALTER TABLE `producers` DISABLE KEYS */;
INSERT INTO `producers` VALUES (1,'','Russo'),(2,'Jackie','Chan'),(3,'Stanley','Tong'),(4,'Sam','Raimi'),(5,'Scott','Ridley'),(6,'Jim','Morris'),(7,'Colin','Wilson'),(8,'Bobby','Cohen'),(9,'Alex','Kurtzman'),(10,'Roberto','Orci'),(11,'David','Heyman');
/*!40000 ALTER TABLE `producers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-02 17:22:34
