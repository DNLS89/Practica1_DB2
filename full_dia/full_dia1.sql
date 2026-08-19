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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESERVA`
--

LOCK TABLES `RESERVA` WRITE;
/*!40000 ALTER TABLE `RESERVA` DISABLE KEYS */;
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

-- Dump completed on 2026-08-19  0:26:54
