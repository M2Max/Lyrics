-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: lyrics
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
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artist` (
  `Name` varchar(20) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES ('Giacomo','Poretti'),('Max Pezzali','Lombardia');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance`
--

DROP TABLE IF EXISTS `performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performance` (
  `SongTitle` varchar(50) NOT NULL,
  `SongReleaseDate` date NOT NULL,
  `ArtistName` varchar(20) NOT NULL,
  KEY `Artist` (`ArtistName`),
  KEY `SongReleaseDate` (`SongReleaseDate`),
  KEY `Song` (`SongReleaseDate`,`SongTitle`),
  CONSTRAINT `Artist` FOREIGN KEY (`ArtistName`) REFERENCES `artist` (`Name`) ON UPDATE CASCADE,
  CONSTRAINT `Song` FOREIGN KEY (`SongReleaseDate`, `SongTitle`) REFERENCES `song` (`ReleaseDate`, `Title`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance`
--

LOCK TABLES `performance` WRITE;
/*!40000 ALTER TABLE `performance` DISABLE KEYS */;
INSERT INTO `performance` VALUES ('It`s my life','2004-05-19','Giacomo'),('It`s my life','2004-05-19','Max Pezzali');
/*!40000 ALTER TABLE `performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `Title` varchar(50) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `Text` longtext NOT NULL,
  `Language` varchar(20) NOT NULL,
  `userAdd` varchar(20) NOT NULL,
  PRIMARY KEY (`Title`,`ReleaseDate`),
  KEY `user_added` (`userAdd`),
  KEY `ReleaseDate` (`ReleaseDate`),
  CONSTRAINT `user_added` FOREIGN KEY (`userAdd`) REFERENCES `user` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES ('It`s my life','2004-05-19','This ain\'t a song for the broken-hearted<br />No silent prayer for the faith-departed<br />I ain\'t gonna be just a face in the crowd<br />You\'re gonna hear my voice<br />When I shout it out loud<br /><br />It\'s my life<br />It\'s now or never<br />I ain\'t gonna live forever<br />I just want to live while I\'m alive (It\'s my life)<br />My heart is like an open highway<br />Like Frankie said, \"I did it my way\"<br />I just wanna live while I\'m alive<br />It\'s my life<br /><br />This is for the ones who stood their ground<br />For Tommy and Gina who never backed down<br />Tomorrow\'s getting harder make no mistake<br />Luck ain\'t even lucky<br />Got to make your own breaks<br /><br />It\'s my life<br />It\'s now or never<br />I ain\'t gonna live forever<br />I just want to live while I\'m alive<br />(It\'s my life)<br />My heart is like an open highway<br />Like Frankie said, \"I did it my way\"<br />I just wanna live while I\'m alive It\'s my life<br /><br />Better stand tall when they\'re calling you out<br />Don\'t bend, don\'t break, baby, don\'t back down<br /><br />It\'s my life<br />It\'s now or never<br />I ain\'t gonna live forever<br />I just want to live while I\'m alive<br />(It\'s my life)<br />My heart is like an open highway<br />Like Frankie said, \"I did it my way\"<br />I just wanna live while I\'m alive<br />It\'s my life<br /><br />It\'s my life<br />It\'s now or never<br />I ain\'t gonna live forever<br />I just want to live while I\'m alive<br />(It\'s my life)<br />My heart is like an open highway<br />Like Frankie said, \"I did it my way\"<br />I just wanna live while I\'m alive<br />It\'s my life ','English','user');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('anna','lisa'),('carlo','carlo'),('fede','fede'),('mario','mario'),('N','N'),('piccina99','picci'),('tanzone','123'),('user','user'),('usert','├╣├á├▓');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-24 17:07:19
