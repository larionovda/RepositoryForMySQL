-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: online_auction
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(45) DEFAULT NULL,
  `billing_address` varchar(100) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Mark Dorcel','prospect Lenina 38','mark64','qwerty64'),(2,'Pol van Duran','Udmurtskaya st 8','pol76','qwerty76'),(3,'Ivan Gamaz','prospect Nevscy','ivan95','qwert95'),(4,'Roman Gorshunov','Nelegina st 10','roman76','afsaf76'),(5,'Julien Duma','Franch st 7','julien87','qwerty87'),(6,'Fredy Mercury','Communarov st 10','fredy46','qwerty46'),(7,'Nicolay Valuev','Sadovoye kolco 30','nicola55','qwert55'),(8,'Zurab Matua','Babushkino st 20','zurab22','qwerty22'),(9,'Kostya','Dzy','dzy76','qwerty'),(10,'Dima','Larionov','larionovda','Lvbnhbq'),(11,'Oliver Win','Lenina St 6','oliver77','Lvbnhbq77'),(12,'Oliver Win','Lenina St 6','oliver77','Lvbnhbq77'),(13,'Oliver Win','Lenina St 6','oliver77','Lvbnhbq77'),(14,'Oliver Win','Lenina St 6','oliver77','Lvbnhbq77'),(15,'Oliver Win','Lenina St 6','oliver77','Lvbnhbq77'),(16,'Oliver Win','Lenina St 6','oliver77','Lvbnhbq77'),(17,'Oliver Win','Lenina St 6','oliver77','Lvbnhbq77'),(18,'Oliver Win','Lenina St 6','oliver77','Lvbnhbq77'),(19,'Oliver Win','Lenina St 6','oliver77','Lvbnhbq77'),(20,'Oliver Win','Lenina St 6','oliver77','Lvbnhbq77');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-19 21:03:07
