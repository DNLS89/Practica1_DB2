-- MySQL dump 10.13  Distrib 8.0.46, for Linux (x86_64)
--
-- Host: localhost    Database: hotel_db
-- ------------------------------------------------------
-- Server version	8.0.46-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CLIENTE`
--

DROP TABLE IF EXISTS `CLIENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENTE` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENTE`
--

LOCK TABLES `CLIENTE` WRITE;
/*!40000 ALTER TABLE `CLIENTE` DISABLE KEYS */;
INSERT INTO `CLIENTE` VALUES (1,'Albano Llopis Hierro','cliente1@example.com','+34 877 218 196'),(2,'Albino Bueno Gil','cliente2@example.com','+34878890838'),(3,'Constanza Sanchez Lobo','cliente3@example.com','+34 702 654 235'),(4,'Arturo Pinto Caballero','cliente4@example.com','+34 927594078'),(5,'Íñigo Pinedo Bermúdez','cliente5@example.com','+34 900 959 310'),(6,'Rolando del Bernal','cliente6@example.com','+34878164752'),(7,'Felicidad Gallego Lasa','cliente7@example.com','+34 821928327'),(8,'Elba Gimenez Morata','cliente8@example.com','+34807 305 641'),(9,'Yago Miranda','cliente9@example.com','+34 875767242'),(10,'Ramón del Romero','cliente10@example.com','+34 945 532 871'),(11,'Tito Canals Coronado','cliente11@example.com','+34 847691669'),(12,'Lucía Iglesias Alberdi','cliente12@example.com','+34828 845 146'),(13,'Javi Acero Lago','cliente13@example.com','+34 981 28 14 89'),(14,'Carmelo Pereira','cliente14@example.com','+34847 880 957'),(15,'Basilio Parejo Meléndez','cliente15@example.com','+34879 03 91 17'),(16,'Ricardo Casas Castellanos','cliente16@example.com','+34 977 824 896'),(17,'Julián Font','cliente17@example.com','+34 916578713'),(18,'Amílcar del Almazán','cliente18@example.com','+34 878930103'),(19,'Víctor Angulo Murillo','cliente19@example.com','+34 821 834 738'),(20,'Porfirio Suárez Herrero','cliente20@example.com','+34976631165'),(21,'Guiomar Solera Balaguer','cliente21@example.com','+34825065133'),(22,'Julio Sanabria','cliente22@example.com','+34843 62 47 31'),(23,'Roxana Cabañas Ayuso','cliente23@example.com','+34 988013267'),(24,'Clotilde Quero Barral','cliente24@example.com','+34 848 606 474'),(25,'Obdulia Torrecilla Cortina','cliente25@example.com','+34 871 43 09 80'),(26,'Amparo Ayllón Tapia','cliente26@example.com','+34981820812'),(27,'Manuel Bayo Gutierrez','cliente27@example.com','+34945 19 39 90'),(28,'Anita Hortensia Yáñez Molina','cliente28@example.com','+34883 353 462'),(29,'Jenaro Fausto Belmonte Agustí','cliente29@example.com','+34 974991183'),(30,'Dulce Cazorla','cliente30@example.com','+34925 135 427'),(31,'Ofelia del Ángel','cliente31@example.com','+34 708 41 24 11'),(32,'Calixta del Luján','cliente32@example.com','+34874 53 48 74'),(33,'Arturo Roda Lloret','cliente33@example.com','+34803 052 427'),(34,'Olalla del Agustí','cliente34@example.com','+34 828 128 059'),(35,'Brunilda del Castell','cliente35@example.com','+34 803 450 533'),(36,'Galo Ramos Cortes','cliente36@example.com','+34 879 22 60 25'),(37,'Rosario Hurtado Lasa','cliente37@example.com','+34 847160733'),(38,'Felicia Mayoral Goñi','cliente38@example.com','+34 877 036 541'),(39,'Gabino Vergara-Pulido','cliente39@example.com','+34987 501 429'),(40,'Alejo Camps-Rovira','cliente40@example.com','+34924 56 98 16');
/*!40000 ALTER TABLE `CLIENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLEADO`
--

DROP TABLE IF EXISTS `EMPLEADO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLEADO` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `puesto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLEADO`
--

LOCK TABLES `EMPLEADO` WRITE;
/*!40000 ALTER TABLE `EMPLEADO` DISABLE KEYS */;
INSERT INTO `EMPLEADO` VALUES (1,'Celestina Iñiguez-Arregui','Gerente'),(2,'Abigaíl Vizcaíno Figueras','Gerente'),(3,'Irene Becerra Murillo','Administrador'),(4,'Estefanía Narcisa Casanovas Mas','Administrador'),(5,'Esmeralda Real','Gerente'),(6,'Graciana Marqués Castejón','Recepcionista'),(7,'Humberto Pinilla','Recepcionista'),(8,'Mario Mascaró Ramis','Limpieza'),(9,'Serafina de Mateu','Recepcionista'),(10,'Cruz Ildefonso Montserrat Sola','Gerente'),(11,'Isaura García Vicente','Gerente'),(12,'Rosalina Doménech Blazquez','Mantenimiento'),(13,'José Ángel Natanael Naranjo Bueno','Gerente'),(14,'Nicodemo del Gomila','Recepcionista'),(15,'Candelario Amat','Contador'),(16,'Donato Talavera Beltran','Limpieza'),(17,'Herminia Ferreras Plana','Mantenimiento'),(18,'Gloria Hervás Coloma','Recepcionista'),(19,'Victoriano Campillo Rodríguez','Limpieza'),(20,'Chus del Ayllón','Recepcionista'),(21,'Diana de Sastre','Mantenimiento'),(22,'Salvador Sobrino Molins','Gerente'),(23,'María José Vargas Roldan','Contador'),(24,'Itziar de Taboada','Mantenimiento'),(25,'Dora Huertas Lluch','Gerente');
/*!40000 ALTER TABLE `EMPLEADO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HABITACION`
--

DROP TABLE IF EXISTS `HABITACION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HABITACION` (
  `id_habitacion` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_habitacion`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HABITACION`
--

LOCK TABLES `HABITACION` WRITE;
/*!40000 ALTER TABLE `HABITACION` DISABLE KEYS */;
INSERT INTO `HABITACION` VALUES (1,'Individual',350.00),(2,'Individual',350.00),(3,'Triple',650.00),(4,'Doble',500.00),(5,'Doble',500.00),(6,'Doble',500.00),(7,'Individual',350.00),(8,'Familiar',750.00),(9,'Individual',350.00),(10,'Familiar',750.00),(11,'Suite',900.00),(12,'Individual',350.00),(13,'Individual',350.00),(14,'Individual',350.00),(15,'Doble',500.00),(16,'Doble',500.00),(17,'Familiar',750.00),(18,'Familiar',750.00),(19,'Individual',350.00),(20,'Familiar',750.00),(21,'Doble',500.00),(22,'Familiar',750.00),(23,'Suite',900.00),(24,'Doble',500.00),(25,'Suite',900.00),(26,'Familiar',750.00),(27,'Triple',650.00),(28,'Individual',350.00),(29,'Doble',500.00),(30,'Suite',900.00);
/*!40000 ALTER TABLE `HABITACION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LOG_HABITACION`
--

DROP TABLE IF EXISTS `LOG_HABITACION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOG_HABITACION` (
  `timestamp` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `id_habitacion` int NOT NULL,
  PRIMARY KEY (`timestamp`),
  KEY `fk_log_habitacion` (`id_habitacion`),
  CONSTRAINT `fk_log_habitacion` FOREIGN KEY (`id_habitacion`) REFERENCES `HABITACION` (`id_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOG_HABITACION`
--

LOCK TABLES `LOG_HABITACION` WRITE;
/*!40000 ALTER TABLE `LOG_HABITACION` DISABLE KEYS */;
INSERT INTO `LOG_HABITACION` VALUES ('2026-01-01 08:01:00','Disponible',27),('2026-01-01 08:02:00','Disponible',25),('2026-01-01 08:03:00','Mantenimiento',21),('2026-01-01 08:04:00','Disponible',9),('2026-01-01 08:05:00','Mantenimiento',3),('2026-01-01 08:06:00','Disponible',8),('2026-01-01 08:07:00','Disponible',11),('2026-01-01 08:08:00','Disponible',29),('2026-01-01 08:09:00','Disponible',5),('2026-01-01 08:10:00','Disponible',8),('2026-01-01 08:11:00','Mantenimiento',23),('2026-01-01 08:12:00','Disponible',23),('2026-01-01 08:13:00','Disponible',3),('2026-01-01 08:14:00','Mantenimiento',14),('2026-01-01 08:15:00','Disponible',18),('2026-01-01 08:16:00','Mantenimiento',14),('2026-01-01 08:17:00','Disponible',7),('2026-01-01 08:18:00','Mantenimiento',13),('2026-01-01 08:19:00','Disponible',28),('2026-01-01 08:20:00','Mantenimiento',16),('2026-01-01 08:21:00','Disponible',12),('2026-01-01 08:22:00','Disponible',25),('2026-01-01 08:23:00','Mantenimiento',28),('2026-01-01 08:24:00','Mantenimiento',18),('2026-01-01 08:25:00','Disponible',16),('2026-01-01 08:26:00','Disponible',9),('2026-01-01 08:27:00','Mantenimiento',16),('2026-01-01 08:28:00','Disponible',13),('2026-01-01 08:29:00','Disponible',22),('2026-01-01 08:30:00','Mantenimiento',24),('2026-01-01 08:31:00','Disponible',27),('2026-01-01 08:32:00','Mantenimiento',30),('2026-01-01 08:33:00','Disponible',20),('2026-01-01 08:34:00','Disponible',30),('2026-01-01 08:35:00','Mantenimiento',19),('2026-01-01 08:36:00','Disponible',3),('2026-01-01 08:37:00','Mantenimiento',5),('2026-01-01 08:38:00','Mantenimiento',6),('2026-01-01 08:39:00','Disponible',9),('2026-01-01 08:40:00','Mantenimiento',11),('2026-01-01 08:41:00','Disponible',15),('2026-01-01 08:42:00','Disponible',11),('2026-01-01 08:43:00','Mantenimiento',9),('2026-01-01 08:44:00','Mantenimiento',9),('2026-01-01 08:45:00','Disponible',16),('2026-01-01 08:46:00','Disponible',24),('2026-01-01 08:47:00','Disponible',12),('2026-01-01 08:48:00','Disponible',21),('2026-01-01 08:49:00','Disponible',25),('2026-01-01 08:50:00','Disponible',25),('2026-01-01 08:51:00','Disponible',8),('2026-01-01 08:52:00','Disponible',27),('2026-01-01 08:53:00','Disponible',20),('2026-01-01 08:54:00','Disponible',8),('2026-01-01 08:55:00','Disponible',16),('2026-01-01 08:56:00','Disponible',19),('2026-01-01 08:57:00','Disponible',15),('2026-01-01 08:58:00','Disponible',25),('2026-01-01 08:59:00','Disponible',6),('2026-01-01 09:00:00','Disponible',25);
/*!40000 ALTER TABLE `LOG_HABITACION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAGO`
--

DROP TABLE IF EXISTS `PAGO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAGO` (
  `id_pago` int NOT NULL AUTO_INCREMENT,
  `fecha_pago` datetime NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `metodo_pago` varchar(50) NOT NULL,
  `id_reserva` int NOT NULL,
  `id_empleado` int NOT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `fk_pago_reserva` (`id_reserva`),
  KEY `fk_pago_empleado` (`id_empleado`),
  CONSTRAINT `fk_pago_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `EMPLEADO` (`id_empleado`),
  CONSTRAINT `fk_pago_reserva` FOREIGN KEY (`id_reserva`) REFERENCES `RESERVA` (`id_reserva`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAGO`
--

LOCK TABLES `PAGO` WRITE;
/*!40000 ALTER TABLE `PAGO` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAGO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESERVA`
--

DROP TABLE IF EXISTS `RESERVA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESERVA` (
  `id_reserva` int NOT NULL AUTO_INCREMENT,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `id_cliente` int NOT NULL,
  `id_habitacion` int NOT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `fk_reserva_cliente` (`id_cliente`),
  KEY `fk_reserva_habitacion` (`id_habitacion`),
  CONSTRAINT `fk_reserva_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `CLIENTE` (`id_cliente`),
  CONSTRAINT `fk_reserva_habitacion` FOREIGN KEY (`id_habitacion`) REFERENCES `HABITACION` (`id_habitacion`),
  CONSTRAINT `chk_fechas_reserva` CHECK ((`fecha_salida` > `fecha_entrada`))
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESERVA`
--

LOCK TABLES `RESERVA` WRITE;
/*!40000 ALTER TABLE `RESERVA` DISABLE KEYS */;
INSERT INTO `RESERVA` VALUES (1,'2026-02-05','2026-02-06',37,7),(2,'2026-05-29','2026-05-30',15,25),(3,'2026-02-21','2026-02-25',15,28),(4,'2026-11-22','2026-11-29',18,15),(5,'2026-07-09','2026-07-12',24,6),(6,'2026-05-17','2026-05-23',14,22),(7,'2026-11-22','2026-11-24',5,20),(8,'2026-05-06','2026-05-08',35,24),(9,'2026-05-19','2026-05-25',30,13),(10,'2026-06-16','2026-06-23',36,8),(11,'2026-01-17','2026-01-24',4,8),(12,'2026-05-18','2026-05-19',21,13),(13,'2026-10-18','2026-10-24',14,30),(14,'2026-12-02','2026-12-06',21,7),(15,'2026-11-26','2026-11-30',26,29),(16,'2026-03-13','2026-03-15',10,9),(17,'2026-05-15','2026-05-21',36,18),(18,'2026-10-26','2026-10-30',38,14),(19,'2026-03-12','2026-03-17',24,8),(20,'2026-01-25','2026-02-01',32,3),(21,'2026-11-18','2026-11-20',8,5),(22,'2026-02-02','2026-02-06',28,20),(23,'2026-08-28','2026-09-02',25,20),(24,'2026-01-06','2026-01-12',17,18),(25,'2026-10-02','2026-10-09',8,22),(26,'2026-11-25','2026-11-28',18,25),(27,'2026-08-11','2026-08-13',8,10),(28,'2026-05-15','2026-05-20',30,1),(29,'2026-02-24','2026-03-03',12,17),(30,'2026-11-24','2026-11-29',20,27),(31,'2026-03-20','2026-03-23',39,7),(32,'2026-09-29','2026-09-30',11,18),(33,'2026-09-08','2026-09-09',39,11),(34,'2026-07-05','2026-07-12',8,30),(35,'2026-01-30','2026-02-01',20,8),(36,'2026-02-13','2026-02-19',37,3),(37,'2026-02-05','2026-02-12',32,27),(38,'2026-03-06','2026-03-08',35,25),(39,'2026-03-26','2026-03-29',31,18),(40,'2026-11-07','2026-11-11',34,28),(41,'2026-10-04','2026-10-11',14,30),(42,'2026-06-09','2026-06-13',13,23),(43,'2026-09-22','2026-09-26',24,15),(44,'2026-04-26','2026-04-27',8,8),(45,'2026-10-29','2026-11-03',22,1),(46,'2026-04-23','2026-04-24',15,19),(47,'2026-11-20','2026-11-21',5,23),(48,'2026-01-17','2026-01-24',15,3),(49,'2026-09-21','2026-09-23',22,3),(50,'2026-09-06','2026-09-08',18,22),(51,'2026-10-20','2026-10-25',35,5),(52,'2026-08-31','2026-09-07',31,8),(53,'2026-02-18','2026-02-19',27,7),(54,'2026-08-05','2026-08-09',28,12),(55,'2026-01-28','2026-02-03',30,28),(56,'2026-07-26','2026-08-01',7,2),(57,'2026-02-25','2026-02-27',22,26),(58,'2026-10-02','2026-10-06',13,7),(59,'2026-04-04','2026-04-07',9,14),(60,'2026-02-08','2026-02-12',30,8),(61,'2026-01-26','2026-02-01',36,4),(62,'2026-01-08','2026-01-09',35,27),(63,'2026-07-28','2026-08-01',16,6),(64,'2026-07-25','2026-07-26',31,7),(65,'2026-01-02','2026-01-06',11,13),(66,'2026-08-21','2026-08-24',17,30),(67,'2026-10-12','2026-10-18',28,23),(68,'2026-04-08','2026-04-11',32,5),(69,'2026-10-24','2026-10-30',14,2),(70,'2026-06-10','2026-06-11',35,2),(71,'2026-09-02','2026-09-07',4,19),(72,'2026-01-30','2026-02-04',34,6),(73,'2026-04-06','2026-04-07',6,28),(74,'2026-12-12','2026-12-19',39,3),(75,'2026-03-03','2026-03-08',16,13),(76,'2026-11-01','2026-11-02',16,19),(77,'2026-08-03','2026-08-09',40,3),(78,'2026-09-25','2026-09-28',38,19),(79,'2026-12-09','2026-12-15',17,7),(80,'2026-05-16','2026-05-20',21,8),(81,'2026-11-27','2026-11-30',9,22),(82,'2026-02-07','2026-02-08',30,11),(83,'2026-10-16','2026-10-17',30,20),(84,'2026-04-20','2026-04-25',5,18),(85,'2026-06-28','2026-06-29',17,5),(86,'2026-05-26','2026-05-28',16,12),(87,'2026-10-06','2026-10-12',29,27),(88,'2026-12-01','2026-12-06',20,20),(89,'2026-10-11','2026-10-14',1,22),(90,'2026-03-10','2026-03-13',7,29),(91,'2026-02-24','2026-03-02',8,29),(92,'2026-05-20','2026-05-23',36,5),(93,'2026-06-25','2026-06-27',39,7),(94,'2026-09-08','2026-09-11',17,17),(95,'2026-11-21','2026-11-25',4,3),(96,'2026-01-02','2026-01-05',18,2),(97,'2026-05-15','2026-05-17',9,21),(98,'2026-08-07','2026-08-12',29,18),(99,'2026-02-08','2026-02-14',1,4),(100,'2026-01-19','2026-01-26',10,18),(101,'2026-10-10','2026-10-12',24,19),(102,'2026-01-22','2026-01-25',28,5),(103,'2026-01-21','2026-01-24',24,29),(104,'2026-05-08','2026-05-14',14,22),(105,'2026-10-14','2026-10-21',7,12),(106,'2026-03-21','2026-03-23',27,20),(107,'2026-04-01','2026-04-05',11,26),(108,'2026-06-20','2026-06-27',2,6),(109,'2026-12-09','2026-12-16',27,26),(110,'2026-03-23','2026-03-30',16,9),(111,'2026-01-20','2026-01-27',7,13),(112,'2026-04-13','2026-04-20',31,8),(113,'2026-06-06','2026-06-13',30,12),(114,'2026-02-05','2026-02-12',15,9),(115,'2026-11-25','2026-11-30',18,12),(116,'2026-03-01','2026-03-04',26,1),(117,'2026-05-16','2026-05-17',12,19),(118,'2026-08-11','2026-08-14',7,20),(119,'2026-11-07','2026-11-12',21,14),(120,'2026-10-23','2026-10-25',8,13),(121,'2026-08-12','2026-08-13',17,2),(122,'2026-12-10','2026-12-12',34,24),(123,'2026-02-05','2026-02-11',24,14),(124,'2026-06-10','2026-06-16',22,20),(125,'2026-06-03','2026-06-08',8,24),(126,'2026-07-29','2026-08-01',20,22),(127,'2026-06-01','2026-06-06',26,23),(128,'2026-08-04','2026-08-10',9,7),(129,'2026-03-31','2026-04-05',25,22),(130,'2026-07-27','2026-08-01',37,10),(131,'2026-05-27','2026-05-29',1,10),(132,'2026-10-24','2026-10-29',28,26),(133,'2026-08-15','2026-08-19',21,15),(134,'2026-08-31','2026-09-07',14,17),(135,'2026-02-13','2026-02-16',11,22),(136,'2026-11-21','2026-11-26',33,22),(137,'2026-05-01','2026-05-07',22,3),(138,'2026-01-24','2026-01-26',20,1),(139,'2026-02-07','2026-02-11',31,20),(140,'2026-11-19','2026-11-24',27,29),(141,'2026-07-16','2026-07-20',13,23),(142,'2026-03-17','2026-03-23',26,8),(143,'2026-04-23','2026-04-25',1,14),(144,'2026-01-26','2026-01-31',34,15),(145,'2026-03-04','2026-03-08',16,30),(146,'2026-08-26','2026-09-01',9,26),(147,'2026-11-01','2026-11-04',34,18),(148,'2026-09-16','2026-09-20',29,20),(149,'2026-03-23','2026-03-29',36,15),(150,'2026-05-13','2026-05-20',31,15);
/*!40000 ALTER TABLE `RESERVA` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-19  1:10:22
