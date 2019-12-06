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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test','tdgest@gmail.com',NULL,'$2y$10$FngN5eGZt0nfwpSDssSuJ.5ehIbb943K5.ZeOWXreTW.1GWNwiLei',NULL,'2019-09-25 22:27:32','2019-09-25 22:27:32'),(2,'test','harsha@gmail.com',NULL,'$2y$10$4GAxFVzowHAZ1UKS6XIteeTlHiNUsRcphLB5E/t36EuK9e/pYeDku',NULL,'2019-09-25 22:35:04','2019-09-25 22:35:04'),(3,'test','hakrsha@gmail.com',NULL,'$2y$10$H1oXU7y4jd.d8igHAiv9xOCUXHc28Ip21c./hRhMESw5CObPzvGPa',NULL,'2019-09-25 23:04:11','2019-09-25 23:04:11'),(4,'athula','athula1wasala@gmail.com',NULL,'$2y$10$uuNibXSXLzpZEmIBfZoSje27WP0Edkdxz6caFMO3ViJkuH4oZkYYu',NULL,'2019-09-25 23:40:36','2019-09-25 23:40:36'),(5,'athula','athula1wadvfdfdsala@gmail.com',NULL,'$2y$10$iMR2wYdAzWX74h826g9PfObOiKxoo3awqrgRjbNfixmfJgrVkKwR.',NULL,'2019-09-26 00:16:48','2019-09-26 00:16:48'),(10,'athula','athula1wadvfsdfdsala@gmail.com',NULL,'$2y$10$XmUiQSzTgXBzpf2thwuMpuWa02t2DPiHgYJVtPoSf5Wvo0WsZnGI.',NULL,'2019-09-26 03:19:26','2019-09-26 03:19:26'),(11,'athula','athula1wasala_@gmail.com',NULL,'$2y$10$SpfsASQCsRWOXCsx33.LmO4WuEw7fV.i3w9OhH1sheWjXIMKNqHjO',NULL,'2019-09-26 03:30:55','2019-09-26 03:30:55'),(12,'athula','athula1wadsala@gmail.com',NULL,'$2y$10$g5AJIki6M6JMfmw2hCqdaeEaHCt/FrahUp9DyShl.lMg5ZdbP57bq',NULL,'2019-09-26 03:49:08','2019-09-26 03:49:08'),(13,'athula','athula1wadsasla@gmail.com',NULL,'$2y$10$KdtTR6OyXLRVpPe.azGgleMbZSGuOL1bkX8pthA9W1F6isfACpEUa',NULL,'2019-09-26 04:04:29','2019-09-26 04:04:29'),(14,'athula','athusla1wadsasla@gmail.com',NULL,'$2y$10$W1TGwpBrSC6e.0vfrFj9WOMN8OXBel31tspCX4BeTMYUJS58KWmi6',NULL,'2019-09-26 04:06:45','2019-09-26 04:06:45'),(15,'athula','athusla1wdadsasla@gmail.com',NULL,'$2y$10$cfEvhBFGnyKv4AC776HT3OsUrZ6l22OqoHLJVEJtWE2LJa2H1YR56',NULL,'2019-09-26 04:08:32','2019-09-26 04:08:32'),(16,'athula','athuslas1wdadsasla@gmail.com',NULL,'$2y$10$XuLP537uTAx8RNE8x2FiXuaOUMzi48kBdp1jPjgtWGA4ET6dzZ05S',NULL,'2019-09-26 04:23:48','2019-09-26 04:23:48');
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

-- Dump completed on 2019-09-27 16:49:46
