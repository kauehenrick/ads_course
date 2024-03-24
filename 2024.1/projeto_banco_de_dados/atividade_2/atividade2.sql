CREATE DATABASE  IF NOT EXISTS `atividade2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `atividade2`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: atividade2
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `id_pessoa` int(11) NOT NULL,
  `matricula` int(11) DEFAULT NULL,
  `ano_inicio` year(4) DEFAULT NULL,
  `semestre_inicio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pessoa`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,1,2020,1),(2,2,2020,1),(3,3,2020,1),(4,4,2020,2),(5,5,2020,2),(6,6,2021,1),(7,7,2021,1),(8,8,2021,2),(9,9,2021,2),(10,10,2021,3),(11,11,2022,3),(12,12,2022,1),(13,13,2022,1),(14,14,2022,2),(15,15,2022,2),(16,16,2023,1),(17,17,2023,2),(18,18,2023,1),(19,19,2023,3),(20,20,2023,1),(21,21,2024,2),(22,22,2024,1),(23,23,2024,2),(24,24,2024,2),(25,25,2024,1);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_turma`
--

DROP TABLE IF EXISTS `aluno_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_turma` (
  `id_aluno` int(11) NOT NULL,
  `id_turma` int(11) NOT NULL,
  PRIMARY KEY (`id_aluno`,`id_turma`),
  KEY `id_turma` (`id_turma`),
  CONSTRAINT `aluno_turma_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `aluno_turma_ibfk_2` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_turma`
--

LOCK TABLES `aluno_turma` WRITE;
/*!40000 ALTER TABLE `aluno_turma` DISABLE KEYS */;
INSERT INTO `aluno_turma` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,5),(7,4),(8,3),(9,2),(10,1),(11,1),(12,2),(13,3),(14,4),(15,5),(16,5),(17,4),(18,3),(19,2),(20,1),(21,1),(22,2),(23,3),(24,4),(25,5);
/*!40000 ALTER TABLE `aluno_turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instituicao`
--

DROP TABLE IF EXISTS `instituicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instituicao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cnpj` int(11) DEFAULT NULL,
  `nome` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instituicao`
--

LOCK TABLES `instituicao` WRITE;
/*!40000 ALTER TABLE `instituicao` DISABLE KEYS */;
INSERT INTO `instituicao` VALUES (1,123456789,'faculdade1'),(2,456789123,'faculdade2'),(3,789456123,'faculdade3');
/*!40000 ALTER TABLE `instituicao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'fulano da silva','1980-06-20','95092090060'),(2,'beltrano farias','1975-02-15','62048089100'),(3,'Sicrano ferreira','1980-10-02','11086017039'),(4,'Zé pequeno','1982-01-23','16079080032'),(5,'Kurt Cobain','1967-02-20','26040067062'),(6,'Tarja Turunen','1977-08-17','54084048052'),(7,'Amy Lee','1981-12-13','84048030023'),(8,'Floor Jansen','1981-02-21','16006032060'),(9,'Cássia Eller','1962-12-10','94027066058'),(10,'Janis Joplin','1943-01-19','37081061009'),(11,'Humberto Gessinger','1963-12-24','21006082002'),(12,'André matos','1971-09-14','22051093004'),(13,'Edu Falaschi','1972-05-18','97001055036'),(14,'Dolores O’Riordan','1971-09-06','30026062051'),(15,'Hayley Williams','1988-12-27','19048005073'),(16,'Amy Winehouse','1983-09-14','17072001087'),(17,'Tony Kakko','1975-05-16','91047002059'),(18,'Bruce Dickinson','1958-08-07','20025042050'),(19,'Fher Olvera','1959-12-08','58037051073'),(20,'Cyndi Lauper','1953-06-22','46066054054'),(21,'Serjão berranteiro','1983-04-13','92047051015'),(22,'Manoel Gomes','1969-12-02','50099046004'),(23,'Patrick Mahomes','1995-09-17','96096100078'),(24,'Travis Kelce','1989-10-05','72020099043'),(25,'Nazaré Tedesco','1970-01-06','52005053003'),(26,'Girafales','1980-06-20','1,11E+15'),(27,'Pardal','1975-02-15','2,22E+15'),(28,'Marocas','1980-10-02','3,33E+15'),(29,'Charles Xavier','1982-01-23','4,44E+15'),(30,'Helena','1977-07-12','5,56E+15'),(31,'Tibúrcio','1984-08-25','6,67E+15'),(32,'Splinter','1988-12-10','7,78E+15'),(33,'Miyagi','1980-01-01','8,89E+15'),(34,'Dumbledore','1975-05-20','1,00E+16'),(35,'Indiana Jones','1979-11-29','1,01E+15');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `id_pessoa` int(11) NOT NULL,
  `titulacao_maxima` int(11) DEFAULT NULL,
  `matricula` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pessoa`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (26,1,26),(27,2,27),(28,3,28),(29,2,29),(30,2,30),(31,1,31),(32,1,32),(33,3,33),(34,3,34),(35,2,35);
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor_turma`
--

DROP TABLE IF EXISTS `professor_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor_turma` (
  `id_pessoa` int(11) NOT NULL,
  `id_turma` int(11) NOT NULL,
  PRIMARY KEY (`id_pessoa`,`id_turma`),
  KEY `id_turma` (`id_turma`),
  CONSTRAINT `professor_turma_ibfk_1` FOREIGN KEY (`id_pessoa`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `professor_turma_ibfk_2` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_turma`
--

LOCK TABLES `professor_turma` WRITE;
/*!40000 ALTER TABLE `professor_turma` DISABLE KEYS */;
INSERT INTO `professor_turma` VALUES (26,1),(27,2),(28,3),(29,4),(30,5),(31,1),(32,2),(33,3),(34,4),(35,5);
/*!40000 ALTER TABLE `professor_turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` int(11) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `descricao` varchar(30) DEFAULT NULL,
  `id_instituicao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_instituicao` (`id_instituicao`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`id_instituicao`) REFERENCES `instituicao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,1,2020,1,'turma1',1),(2,2,2021,3,'turma2',2),(3,3,2022,5,'turma3',3),(4,4,2023,7,'turma4',2),(5,5,2024,9,'turma5',3);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-18 15:52:48
