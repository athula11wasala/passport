-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: dtech
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.19.04.1

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
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (2,'DASHBOARD','Dashboard','View Dashboard','2019-09-27 03:13:12','2019-09-27 03:13:12'),(3,'REPORTS_CHARTS','Reports & Charts','Reports & Charts','2019-09-27 03:13:12','2019-09-27 03:13:12'),(4,'INVESTING','Investing','View Investing','2019-09-27 03:13:12','2019-09-27 03:13:12'),(5,'RESEARCHING','Researching','View Researching','2019-09-27 03:13:12','2019-09-27 03:13:12'),(6,'OPERATION','Operation','View Operation','2019-09-27 03:13:12','2019-09-27 03:13:12'),(7,'REFERENCE_LIBRARY','Reference Library','View Reference Library','2019-09-27 03:13:12','2019-09-27 03:13:12'),(8,'HEMP_COMINGSOON','Hemp (coming soon)','View Hemp (coming soon)','2019-09-27 03:13:12','2019-09-27 03:13:12'),(9,'FAQ_HELP','FAQ/Help','View FAQ/Help','2019-09-27 03:13:12','2019-09-27 03:13:12'),(10,'GLOBAL_COMINGSOON','Global (coming soon)','View Global (coming soon)','2019-09-27 03:13:12','2019-09-27 03:13:12'),(11,'CONTACTUS','Contact Us','View Contact Us','2019-09-27 03:13:12','2019-09-27 03:13:12'),(12,'ABOUTUS','About Us','View About Us','2019-09-27 03:13:12','2019-09-27 03:13:12'),(13,'REQUEST_TIME_WITH_ANINDUSTRY_ANALYST','Request Time With An Industry Analyst','Request Time With An Industry Analyst','2019-09-27 03:13:12','2019-09-27 03:13:12'),(14,'USERADMINTOOL','User Admin Tool','View User Admin Tool','2019-09-27 03:13:12','2019-09-27 03:13:12'),(15,'CONTACTMANAGEMENT','Contact Management','View Contact Management','2019-09-27 03:13:12','2019-09-27 03:13:12'),(16,'ADMINREPORTS','Admin Reports','View Admin Reports','2019-09-27 03:13:12','2019-09-27 03:13:12'),(17,'HOME','Home','View Home','2019-09-27 03:13:12','2019-09-27 03:13:12'),(18,'ADMINTOOLS','Admin Tools','View Admin Tools','2019-09-27 03:13:12','2019-09-27 03:13:12');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-27 16:49:47
