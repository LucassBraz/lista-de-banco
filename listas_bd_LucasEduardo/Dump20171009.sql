CREATE DATABASE  IF NOT EXISTS `escola` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `escola`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: escola
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

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
-- Table structure for table `cursa`
--

DROP TABLE IF EXISTS `cursa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursa` (
  `matricula_est` int(11) NOT NULL,
  `cod_disc` int(11) NOT NULL,
  PRIMARY KEY (`matricula_est`,`cod_disc`),
  KEY `cod_disc` (`cod_disc`),
  CONSTRAINT `cursa_ibfk_1` FOREIGN KEY (`matricula_est`) REFERENCES `estudante` (`matricula`),
  CONSTRAINT `cursa_ibfk_2` FOREIGN KEY (`cod_disc`) REFERENCES `disciplina` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursa`
--

LOCK TABLES `cursa` WRITE;
/*!40000 ALTER TABLE `cursa` DISABLE KEYS */;
INSERT INTO `cursa` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(2,1),(2,2),(3,1),(3,2),(4,1),(4,2),(4,3),(4,5),(4,6),(4,7),(5,4),(5,5),(6,6),(7,1),(7,7);
/*!40000 ALTER TABLE `cursa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependente`
--

DROP TABLE IF EXISTS `dependente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dependente` (
  `nome` varchar(50) NOT NULL,
  `cpf_func` varchar(15) NOT NULL,
  `parentesco` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependente`
--

LOCK TABLES `dependente` WRITE;
/*!40000 ALTER TABLE `dependente` DISABLE KEYS */;
INSERT INTO `dependente` VALUES ('Doroteia da Silva','12345678921','conjuge'),('Eduardo de Paula','34562798534','conjuge'),('Emiliando de Paula','34562798534','filho'),('Maria Eduarda de Carvalho','09878967587','filha'),('Mariana de Carvalho','09878967587','conjuge'),('Mariana Teixeira','0987654321','filha'),('Reinaldo Teixeira','0987654321','conjuge');
/*!40000 ALTER TABLE `dependente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplina`
--

DROP TABLE IF EXISTS `disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplina` (
  `codigo` int(11) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `carga_horaria` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplina`
--

LOCK TABLES `disciplina` WRITE;
/*!40000 ALTER TABLE `disciplina` DISABLE KEYS */;
INSERT INTO `disciplina` VALUES (1,'Matematica',10),(2,'Portugues',10),(3,'Biologia',8),(4,'Historia',8),(5,'Geografia',8),(6,'Ingles',6),(7,'Fisica',10);
/*!40000 ALTER TABLE `disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudante`
--

DROP TABLE IF EXISTS `estudante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudante` (
  `matricula` int(11) NOT NULL,
  `cod_turma` int(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  PRIMARY KEY (`matricula`),
  KEY `cod_turma` (`cod_turma`),
  CONSTRAINT `estudante_ibfk_1` FOREIGN KEY (`cod_turma`) REFERENCES `turma` (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudante`
--

LOCK TABLES `estudante` WRITE;
/*!40000 ALTER TABLE `estudante` DISABLE KEYS */;
INSERT INTO `estudante` VALUES (1,1,'Renato da Silveira','11333876','Rua Andre de Barros','(12)3309-0987','1993-11-07'),(2,1,'Rodrigo Pereira','43432543','Rua Joao Itibere 345','(12)3309-2345','2004-09-09'),(3,1,'Amanda Silva','09987321','Rua Visconde de Guarapuava 33','(12)3309-6543','2003-03-04'),(4,2,'Renata Borges','98387283','Rua Senador Armando 45','(12)3309-4534','2004-03-02'),(5,2,'Gabriel Moraes','43235987','Rua Mariano Torres 989','(12)3309-3333','2005-02-02'),(6,3,'Thaisa Rafael','45345333','Rua Dr Hugo de Barros 98','(12)3309-3211','2004-03-06'),(7,4,'Daniel Miranda','45234098','Rua das Flores','(12)3309-8888','2002-03-04');
/*!40000 ALTER TABLE `estudante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `estudantes_portugues`
--

DROP TABLE IF EXISTS `estudantes_portugues`;
/*!50001 DROP VIEW IF EXISTS `estudantes_portugues`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `estudantes_portugues` AS SELECT 
 1 AS `nome`,
 1 AS `matricula`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `cpf` varchar(15) NOT NULL,
  `cargo` varchar(30) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `data_nasc` date DEFAULT NULL,
  `data_admin` date DEFAULT NULL,
  `salario` double DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES ('0987654321','Professor','Maria Jose Teixeira','Rua dos Ipes','(12)3309-3456','1980-09-06','2009-06-07',1500),('09878967587','Professor','Vicente Carvalho','Rua Veneza 12 Bairro Sao Francisco','(12) 3309-9999','1977-02-05','2006-06-05',2000),('12345678921','Professor','Antonio da Silva','Rua das Flores 12 Bairro Sao Paulo','(12)3345-6789','1978-11-11','2008-02-02',1000),('34562798534','Administrador','Ricardo Oliveira','Rua treze de maio 345 Bairro centro','(12)3345-2345','1977-06-02','2007-06-01',1600),('34576890765','Bibliotecario','Fernanda de Paula','Rua Cinco 14 Bairro Veneza','(12) 3345-8765','1981-07-05','2010-04-03',1300),('929938848876','Professor','Joaquim Santana','Rua Visconde de Guarapuava 34 centro','(12)3309-4567','1981-06-04','2010-08-05',1000);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor_disciplina`
--

DROP TABLE IF EXISTS `professor_disciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professor_disciplina` (
  `codigo_disc` int(11) NOT NULL,
  `cpf_func` varchar(15) NOT NULL,
  PRIMARY KEY (`codigo_disc`,`cpf_func`),
  KEY `cpf_func` (`cpf_func`),
  CONSTRAINT `professor_disciplina_ibfk_1` FOREIGN KEY (`codigo_disc`) REFERENCES `disciplina` (`codigo`),
  CONSTRAINT `professor_disciplina_ibfk_2` FOREIGN KEY (`cpf_func`) REFERENCES `funcionario` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor_disciplina`
--

LOCK TABLES `professor_disciplina` WRITE;
/*!40000 ALTER TABLE `professor_disciplina` DISABLE KEYS */;
INSERT INTO `professor_disciplina` VALUES (1,'0987654321'),(2,'12345678921'),(3,'09878967587'),(4,'929938848876'),(5,'929938848876'),(6,'12345678921'),(7,'0987654321');
/*!40000 ALTER TABLE `professor_disciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turma` (
  `codigo` int(11) NOT NULL,
  `n_sala` int(11) DEFAULT NULL,
  `serie` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,200,'terceiro ano'),(2,300,'segundo ano'),(3,400,'primeiro ano'),(4,500,'quinta serie');
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `estudantes_portugues`
--

/*!50001 DROP VIEW IF EXISTS `estudantes_portugues`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `estudantes_portugues` AS select `e`.`nome` AS `nome`,`e`.`matricula` AS `matricula` from `estudante` `e` where (`e`.`cod_turma` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-09 17:51:54
