CREATE DATABASE  IF NOT EXISTS `empresa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `empresa`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: empresa
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
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `id_dep` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `gerente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_dep`),
  KEY `gerente` (`gerente`),
  CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`gerente`) REFERENCES `empregado` (`id_emp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Contabilidade',1),(2,'Engenharia civil',2),(3,'Engenharia mecânica',3);
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento_projeto`
--

DROP TABLE IF EXISTS `departamento_projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento_projeto` (
  `id_pro` int(11) NOT NULL,
  `id_dep` int(11) NOT NULL,
  PRIMARY KEY (`id_pro`,`id_dep`),
  KEY `id_dep` (`id_dep`),
  CONSTRAINT `departamento_projeto_ibfk_1` FOREIGN KEY (`id_pro`) REFERENCES `projeto` (`id_pro`),
  CONSTRAINT `departamento_projeto_ibfk_2` FOREIGN KEY (`id_dep`) REFERENCES `departamento` (`id_dep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento_projeto`
--

LOCK TABLES `departamento_projeto` WRITE;
/*!40000 ALTER TABLE `departamento_projeto` DISABLE KEYS */;
INSERT INTO `departamento_projeto` VALUES (5,2),(10,3),(20,2);
/*!40000 ALTER TABLE `departamento_projeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependente`
--

DROP TABLE IF EXISTS `dependente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependente` (
  `rg_resp` char(8) NOT NULL,
  `nome_dep` varchar(45) NOT NULL,
  `datanasc` date DEFAULT NULL,
  `relacao` varchar(15) DEFAULT NULL,
  `sexo` enum('m','f') DEFAULT NULL,
  PRIMARY KEY (`rg_resp`,`nome_dep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependente`
--

LOCK TABLES `dependente` WRITE;
/*!40000 ALTER TABLE `dependente` DISABLE KEYS */;
INSERT INTO `dependente` VALUES ('10101010','Jorge','1986-12-27','filho','m'),('10101010','Luiz','1979-11-18','filho','m'),('20202020','Angelo','1986-12-27','filho','m'),('20202020','Fernanda','1969-02-14','Cônjuge','f'),('30303030','Andreia','1990-05-01','filho','f');
/*!40000 ALTER TABLE `dependente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empregado`
--

DROP TABLE IF EXISTS `empregado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empregado` (
  `id_emp` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `rg` char(8) NOT NULL,
  `salario` double(6,2) DEFAULT NULL,
  PRIMARY KEY (`id_emp`),
  UNIQUE KEY `rg` (`rg`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empregado`
--

LOCK TABLES `empregado` WRITE;
/*!40000 ALTER TABLE `empregado` DISABLE KEYS */;
INSERT INTO `empregado` VALUES (1,'João Luiz','10101010',3000.00),(2,'Fernando','20202020',2500.00),(3,'Ricardo','30303030',2300.00),(4,'Carla','40404040',4100.00),(5,'Jorge','50505050',1300.00);
/*!40000 ALTER TABLE `empregado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empregado_projeto`
--

DROP TABLE IF EXISTS `empregado_projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empregado_projeto` (
  `id_emp` int(11) NOT NULL,
  `id_pro` int(11) NOT NULL,
  `horas` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_emp`,`id_pro`),
  KEY `id_pro` (`id_pro`),
  CONSTRAINT `empregado_projeto_ibfk_1` FOREIGN KEY (`id_pro`) REFERENCES `projeto` (`id_pro`),
  CONSTRAINT `empregado_projeto_ibfk_2` FOREIGN KEY (`id_emp`) REFERENCES `empregado` (`id_emp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empregado_projeto`
--

LOCK TABLES `empregado_projeto` WRITE;
/*!40000 ALTER TABLE `empregado_projeto` DISABLE KEYS */;
INSERT INTO `empregado_projeto` VALUES (2,5,10),(2,10,8),(3,5,15),(4,20,2),(5,20,12);
/*!40000 ALTER TABLE `empregado_projeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projeto`
--

DROP TABLE IF EXISTS `projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projeto` (
  `id_pro` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `localizacao` varchar(45) NOT NULL,
  PRIMARY KEY (`id_pro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto`
--

LOCK TABLES `projeto` WRITE;
/*!40000 ALTER TABLE `projeto` DISABLE KEYS */;
INSERT INTO `projeto` VALUES (5,'Financeiro','LEM'),(10,'Motor','São Desidério'),(20,'Prédio','Barreiras');
/*!40000 ALTER TABLE `projeto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-11 19:12:28
