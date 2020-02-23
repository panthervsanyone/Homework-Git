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
INSERT INTO `actors` VALUES (1,'Robert','Downey jr'),(3,'Chris','Evans'),(4,'Mark','Ruffalo'),(5,'Chris','Hemsworth'),(6,'Scarlett','Johansson'),(7,'Jeremy','Renner'),(8,'Tom','Hiddleston'),(9,'Clark','Gregg'),(10,'Samuel L.','Jackson'),(11,'Jackie','Chan'),(12,'Carol','Cheng'),(13,'Alan','Tam'),(14,'Lola','Forner'),(15,'Emma','Watson'),(16,'Daniel','Radcliffe'),(17,'Rupert','Grint'),(18,'Tobey','Maguire'),(19,'Kirsten','Dunst'),(20,'James','Franco'),(21,'Russell','Crowe'),(22,'Joaquin','Phoenix'),(23,'Taylor','Kitsch'),(24,'Lynn','Collins'),(25,'Willem','Dafoe'),(26,'Jesse','Eisenberg'),(27,'Woody','Harrelson'),(28,'Isla','Fisher'),(29,'Dave','Franco'),(30,'Morgan','Freeman');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producers`
--

LOCK TABLES `producers` WRITE;
/*!40000 ALTER TABLE `producers` DISABLE KEYS */;
INSERT INTO `producers` VALUES (1,'','Russo'),(2,'Jackie','Chan'),(3,'Stanley','Tong'),(4,'Sam','Raimi'),(5,'Scott','Ridley'),(6,'Jim','Morris'),(7,'Colin','Wilson'),(8,'Bobby','Cohen'),(9,'Alex','Kurtzman'),(10,'Roberto','Orci');
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

-- Dump completed on 2020-02-23 23:15:45
