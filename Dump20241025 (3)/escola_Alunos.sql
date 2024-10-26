-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (x86_64)
--
-- Host: 127.0.0.1    Database: escola
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `Alunos`
--

DROP TABLE IF EXISTS `Alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Alunos` (
  `id` int NOT NULL,
  `nome` varchar(60) NOT NULL,
  `data_nasc` date DEFAULT NULL,
  `cidade_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cidade_id` (`cidade_id`),
  CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`cidade_id`) REFERENCES `Cidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alunos`
--

LOCK TABLES `Alunos` WRITE;
/*!40000 ALTER TABLE `Alunos` DISABLE KEYS */;
INSERT INTO `Alunos` VALUES (1,'Immanuel Kant','1724-04-22',4),(2,'Alan Turing','1912-06-23',3),(3,'George Boole','2002-01-01',1),(4,'Lynn Margulis','1991-08-12',3),(5,'Nicola Tesla','2090-01-08',NULL),(6,'Ada Lovelace','1978-05-28',4),(7,'Claude Shannon','1982-10-15',3),(8,'Charles Darwin','2010-02-06',NULL),(9,'Marie Curie','2007-07-12',3),(10,'Carl Sagan','2000-11-20',1),(11,'Tim Berners-Lee','1973-12-05',4),(12,'Richard Feynman','1982-09-12',1);
/*!40000 ALTER TABLE `Alunos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-25 22:10:17
