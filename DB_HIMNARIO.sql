-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: himnario
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `id_autor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id_autor`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (12,'Andres Mejia'),(23,'Antonio Aguilar'),(13,'Aura Perez'),(21,'Dario Gomez'),(15,'Edgar Villegas'),(16,'Martha Mejia'),(14,'Pablo Mejia'),(17,'Santi Villegas'),(22,'Vicente Fernandez');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`id_categoria`),
  UNIQUE KEY `num_himno_UNIQUE` (`categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Bautizmo'),(2,'Cena'),(6,'Despedida'),(7,'Felicidad'),(4,'Navidad'),(3,'Otra'),(5,'Perdon');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `himnos`
--

DROP TABLE IF EXISTS `himnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `himnos` (
  `id_himno` int NOT NULL AUTO_INCREMENT,
  `num_himno` int DEFAULT NULL,
  `titulo` varchar(45) NOT NULL,
  `letra` longtext NOT NULL,
  `fk_pagina` int DEFAULT NULL,
  `fk_categoria` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id_himno`),
  UNIQUE KEY `titulo_UNIQUE` (`titulo`),
  UNIQUE KEY `num_himno_UNIQUE` (`num_himno`),
  KEY `himnos_paginas_idx` (`fk_pagina`),
  KEY `himnos_categorias_idx` (`fk_categoria`),
  CONSTRAINT `himnos_categorias` FOREIGN KEY (`fk_categoria`) REFERENCES `categorias` (`id_categoria`) ON UPDATE CASCADE,
  CONSTRAINT `himnos_paginas` FOREIGN KEY (`fk_pagina`) REFERENCES `paginas` (`id_pagina`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `himnos`
--

LOCK TABLES `himnos` WRITE;
/*!40000 ALTER TABLE `himnos` DISABLE KEYS */;
INSERT INTO `himnos` VALUES (8,222,'Pecador','Pecado Pecado Pecado',26,5,'1800-01-01'),(9,2,'Celebremos Su Gloria','Celebremos su gloria con gran gozo, alabemos su grandeza;\nDios eterno es todopoderoso; nuestro escudo y fortaleza.',26,5,'1800-01-01'),(10,17,'BUENO ES ALABARTE, OH JEHOVÁ','Bueno es alabarte, oh Jehová. Bueno es alabarte, oh Jehová,\nY cantar salmos a tu nombre, oh Altísimo;\nAnunciar por la mañana tu misericordia, tu misericordia\nY tu fidelidad cada noche.',28,5,'1800-01-01'),(11,70,'Santo Santo','¡Gloria al Todopoderoso, El Autor de salvación!\nPadre Santo, te exaltamos con la voz y el corazón,\nPor tu gracia sempiterna, por tu amor y tu bondad,\nPor tu gran misericordia, tu justicia y santidad.',33,4,'1800-01-01'),(12,7,'CON CANTICOS SEÑOR','Con cánticos, Señor, mi corazón y voz Te adoran con fervor,\n¡OH trino, Santo  Dios! En tu mansión yo te veré,\nY paz eterna gozaré.',29,1,'1800-01-01'),(13,56,'EL QUE HABITA AL ABRIGO DE DIOS ','El que habita al abrigo de Dios morará bajo sombras de amor,\nSobre él no vendrá ningún mal y en sus alas feliz vivirá.\n\nCORO:Oh, yo quiero habitar al abrigo de Dios,\nSólo allí encontraré paz y profundo amor.\nMi delicia es con Él comunión disfrutar\nY por siempre su nombre alabar.',27,2,'1800-01-01'),(14,64,'DIOS ES AMOR','¡Dios es amor! ¡Dios es amor!\nLa Biblia nos dice el mensaje sublime\nQue Dios es amor, ¡Oh sí!\n¡Dios es amor! ¡Dios es amor!\nLos ángeles cantan, Los hombres proclaman\nQue ¡Dios es amor!',27,NULL,'1800-01-01'),(15,81,'LO QUE RESPIRA','Alabad a nuestro Dios en su santuario, por la hermosura de su cielo,\nPor sus proezas alabadle a él.\nAlabadle por la grandeza de su nombre, con el sonido de bocina,\nSalterio y arpa, a la vez cantad.\nAlabadle con el alegre pandero, con el candor de la danza;\nCantad con gozo al Señor.',NULL,1,'1800-01-01'),(16,NULL,'ANTE SU PRESENCIA','. Ante su presencia canta,\n``Aleluya, Aleluya, Aleluya\'\'.\nOtras posibilidades en vez de ``Aleluya\'\':',26,2,'1800-01-01');
/*!40000 ALTER TABLE `himnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `himnos_autores`
--

DROP TABLE IF EXISTS `himnos_autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `himnos_autores` (
  `id_himnos_autores` int NOT NULL AUTO_INCREMENT,
  `fk_himno` int NOT NULL,
  `fk_autor` int NOT NULL,
  PRIMARY KEY (`id_himnos_autores`),
  KEY `himnosautores_himnos_idx` (`fk_himno`),
  KEY `himnosautores_autores_idx` (`fk_autor`),
  CONSTRAINT `autores` FOREIGN KEY (`fk_autor`) REFERENCES `autores` (`id_autor`),
  CONSTRAINT `himnos` FOREIGN KEY (`fk_himno`) REFERENCES `himnos` (`id_himno`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `himnos_autores`
--

LOCK TABLES `himnos_autores` WRITE;
/*!40000 ALTER TABLE `himnos_autores` DISABLE KEYS */;
INSERT INTO `himnos_autores` VALUES (13,8,12),(14,9,13),(15,10,15),(16,10,16),(17,11,14),(18,11,17);
/*!40000 ALTER TABLE `himnos_autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `himnos_ordenados`
--

DROP TABLE IF EXISTS `himnos_ordenados`;
/*!50001 DROP VIEW IF EXISTS `himnos_ordenados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `himnos_ordenados` AS SELECT 
 1 AS `id_himno`,
 1 AS `num_himno`,
 1 AS `titulo`,
 1 AS `letra`,
 1 AS `fk_pagina`,
 1 AS `fk_categoria`,
 1 AS `fecha`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lista_himnos`
--

DROP TABLE IF EXISTS `lista_himnos`;
/*!50001 DROP VIEW IF EXISTS `lista_himnos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_himnos` AS SELECT 
 1 AS `num_himno`,
 1 AS `titulo`,
 1 AS `categoria`,
 1 AS `autor`,
 1 AS `num_pagina`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `paginas`
--

DROP TABLE IF EXISTS `paginas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paginas` (
  `id_pagina` int NOT NULL AUTO_INCREMENT,
  `num_pagina` int NOT NULL,
  PRIMARY KEY (`id_pagina`),
  UNIQUE KEY `num_pagina_UNIQUE` (`num_pagina`),
  UNIQUE KEY `id_pagina_UNIQUE` (`id_pagina`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paginas`
--

LOCK TABLES `paginas` WRITE;
/*!40000 ALTER TABLE `paginas` DISABLE KEYS */;
INSERT INTO `paginas` VALUES (26,1),(27,2),(28,3),(29,4),(30,5),(31,6),(32,7),(33,8),(34,9),(35,15);
/*!40000 ALTER TABLE `paginas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `himnos_ordenados`
--

/*!50001 DROP VIEW IF EXISTS `himnos_ordenados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `himnos_ordenados` AS select `himnos`.`id_himno` AS `id_himno`,`himnos`.`num_himno` AS `num_himno`,`himnos`.`titulo` AS `titulo`,`himnos`.`letra` AS `letra`,`himnos`.`fk_pagina` AS `fk_pagina`,`himnos`.`fk_categoria` AS `fk_categoria`,`himnos`.`fecha` AS `fecha` from `himnos` order by `himnos`.`titulo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lista_himnos`
--

/*!50001 DROP VIEW IF EXISTS `lista_himnos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_himnos` AS select `himnos`.`num_himno` AS `num_himno`,`himnos`.`titulo` AS `titulo`,`categorias`.`categoria` AS `categoria`,`autores`.`nombre` AS `autor`,`paginas`.`num_pagina` AS `num_pagina` from ((((`himnos` join `paginas` on((`himnos`.`fk_pagina` = `paginas`.`id_pagina`))) join `himnos_autores` on((`himnos`.`id_himno` = `himnos_autores`.`fk_himno`))) join `autores` on((`himnos_autores`.`fk_autor` = `autores`.`id_autor`))) join `categorias` on((`himnos`.`fk_categoria` = `categorias`.`id_categoria`))) order by `himnos`.`titulo` */;
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

-- Dump completed on 2022-11-14 13:50:40
