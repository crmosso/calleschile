-- MySQL dump 10.13  Distrib 8.0.23, for macos10.15 (x86_64)
--
-- Host: localhost    Database: streets
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provinces` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `provinces_region_id_foreign` (`region_id`),
  CONSTRAINT `provinces_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
INSERT INTO `provinces` VALUES (1,'Copiapo',1,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(2,'Huasco',1,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(3,'Santiago',2,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(4,'Cordillera',2,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(5,'Concepción',3,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(6,'Arauco',3,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(7,'Valdivia',4,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(8,'Ranco',4,'2021-06-27 02:55:08','2021-06-27 02:55:08');
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Atacama','2021-06-27 02:55:08','2021-06-27 02:55:08'),(2,'Metropolitana de Santiago','2021-06-27 02:55:08','2021-06-27 02:55:08'),(3,'Biobío','2021-06-27 02:55:08','2021-06-27 02:55:08'),(4,' Los Ríos','2021-06-27 02:55:08','2021-06-27 02:55:08');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streets`
--

DROP TABLE IF EXISTS `streets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `streets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `streets_city_id_foreign` (`city_id`),
  CONSTRAINT `streets_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streets`
--

LOCK TABLES `streets` WRITE;
/*!40000 ALTER TABLE `streets` DISABLE KEYS */;
INSERT INTO `streets` VALUES (1,'Calle Rodriguez ',1,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(2,'Av. Copayapu',1,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(3,'Los Carrera',1,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(4,'Ejército Libertador',2,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(5,'Julio Montt',2,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(6,'Batallón Atacama',2,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(7,'Av, Monseñor Miguel Lemeur ',3,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(8,'Echegoyen',3,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(9,'Margarita',3,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(10,'Arturo Prat',4,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(11,'Calle Chungara',4,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(12,'Plaza Ambrosio O\'higgins',4,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(13,'Los Ángeles',5,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(14,'Algarrobo',5,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(15,'O\'Higgins',5,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(16,'Sargento Aldea',6,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(17,'Huasco - Guacolda',6,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(18,'Atacama',6,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(19,'Soberanía',7,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(20,'Calle local oriente',7,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(21,'Dávila Baeza',7,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(22,'Av. José Manuel Balmaceda',8,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(23,'José Joaquín Pérez',8,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(24,'Calle 
Condell',8,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(25,'Av. Ochagavía',9,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(26,'Av. Lo Blanco',9,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(27,'Av. Lo Martínez',9,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(28,'Calle Tobalaba',10,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(29,'Av. Mexico',10,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(30,'Nemesio Vicuña',10,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(31,'Alcalde Hernán Prieto',11,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(32,'Camino La viña',11,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(33,'Las Bandurrias',11,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(34,'Los alamos',12,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(35,'Santa Gemita',12,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(36,'Las Pataguas',12,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(37,'Av.  Los Carrear',13,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(38,'Camilo Henríquez ',13,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(39,'Janequeo',13,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(40,'Ricardo Lyon',14,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(41,'Luis Causiño',14,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(42,'Lota Green',14,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(43,'Los Acacios',15,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(44,'Daniel Belmar',15,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(45,'Tucapel',15,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(46,'Fresia',16,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(47,'Aukinko',16,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(48,'Los Hualles',16,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(49,'Mackey',17,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(50,'Julio Diaz',17,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(52,'Diagonal Freire',17,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(53,'Uribe',18,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(54,'Covadonga',18,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(55,'Las amapolas',18,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(56,'Av. Simpson',19,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(57,'Don Bosco',19,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(58,'Los Robles',19,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(59,'Latorre',20,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(60,'Baquedano',20,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(61,'Los ciruelos',20,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(62,'Carmela Carvajal',21,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(63,'Las Bandurrias',21,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(64,'Las Lilas',21,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(65,'Victoria',22,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(66,'Mackenna',22,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(67,'Baquedano',22,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(68,'Los Lirios',23,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(69,'Los Robles',23,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(70,'German Riesco',23,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(71,'Ricardo Boettche',24,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(72,'Arturo Prat',24,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(73,'Manuel Ossa',24,'2021-06-27 02:55:08','2021-06-27 02:55:08');
/*!40000 ALTER TABLE `streets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cities_province_id_foreign` (`province_id`),
  CONSTRAINT `cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Copiapo',1,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(2,'Caldera',1,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(3,'Tierra Amarilla\r\n',1,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(4,'Vallenar',2,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(5,'Freirina',2,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(6,'Huasco',2,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(7,'Independencia, Isla de Maipo',3,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(8,'Buin',3,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(9,'San Bernardo',3,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(10,'Puente Alto',4,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(11,'Pirque',4,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(12,'San José de Maipo',4,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(13,'Concepción',5,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(14,'Lota',5,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(15,'San Pedro de la Paz',5,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(16,'Contulmo',6,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(17,'Lebu',6,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(18,'Cañete',6,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(19,'Valdivia',7,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(20,'Los Lagos',7,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(21,'Panguipulli',7,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(22,'Rio Bueno',8,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(23,'Futrono',8,'2021-06-27 02:55:08','2021-06-27 02:55:08'),(24,'La Union',4,'2021-06-27 02:55:08','2021-06-27 02:55:08');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-28 19:20:26
