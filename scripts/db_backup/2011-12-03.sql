-- MySQL dump 10.13  Distrib 5.1.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: myaccountant
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4

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
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mya_role`
--

DROP TABLE IF EXISTS `mya_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mya_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `authority` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authority` (`authority`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mya_role`
--

LOCK TABLES `mya_role` WRITE;
/*!40000 ALTER TABLE `mya_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `mya_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mya_user`
--

DROP TABLE IF EXISTS `mya_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mya_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_expired` bit(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mya_user`
--

LOCK TABLES `mya_user` WRITE;
/*!40000 ALTER TABLE `mya_user` DISABLE KEYS */;
INSERT INTO `mya_user` VALUES (1,0,'\0','\0','','382132701c4733c3402706cfdd3c8fc7f41f80a88dce5428d145259a41c5f12f','\0','agoston.fung');
/*!40000 ALTER TABLE `mya_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mya_user_role`
--

DROP TABLE IF EXISTS `mya_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mya_user_role` (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `FK56E598E095C3C3AF` (`role_id`),
  KEY `FK56E598E03AEE878F` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mya_user_role`
--

LOCK TABLES `mya_user_role` WRITE;
/*!40000 ALTER TABLE `mya_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `mya_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `direction` bit(1) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `update_date` datetime NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL,
  `act_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7FA0D2DE71A9D6` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (7,1,333,'fdsdgdfg dfg df gdf','2011-11-27 20:32:36','',2,'2011-11-27 20:32:36','GBP','2011-11-29 09:14:07',NULL),(6,1,30,NULL,'2011-11-27 19:45:11','',3,'2011-11-27 19:45:11','HUF','2011-11-27 22:57:51',NULL),(5,1,100,NULL,'2011-11-27 19:29:44','',5,'2011-11-27 19:29:44','GBP','2011-11-27 23:01:11',NULL),(4,0,3000,'Eating in Richmond with Mónica','2011-11-27 19:21:11','',4,'2011-11-27 19:21:11','GBP',NULL,NULL),(8,0,299,'Breakfast','2011-11-28 09:12:50','',4,'2011-11-29 09:12:50','GBP',NULL,NULL),(9,1,689,'Lunch','2011-11-28 09:13:15','',4,'2011-11-29 09:13:15','GBP',NULL,NULL),(10,0,390,'Coffee and muffin','2011-11-28 09:13:40','',4,'2011-11-29 09:13:40','GBP',NULL,NULL),(11,0,635,'Drinks with Adam','2011-11-28 09:13:57','',5,'2011-11-29 09:13:57','GBP',NULL,NULL),(12,0,300,'Breakfast','2011-11-29 19:33:47','',4,'2011-11-29 19:33:47','GBP',NULL,NULL),(13,0,495,'Lunch','2011-11-29 19:34:14','',4,'2011-11-29 19:34:14','GBP',NULL,NULL),(14,0,390,'Coffee and muffin','2011-11-29 19:34:27','',4,'2011-11-29 19:34:27','GBP',NULL,NULL),(15,0,1818,'Weekly shopping','2011-11-29 21:20:14','',3,'2011-11-29 21:20:14','GBP',NULL,NULL),(16,0,299,'Breakfast sandwich','2011-11-30 21:40:43','',4,'2011-11-30 21:40:43','GBP',NULL,NULL),(17,0,280,'Lunch sandwich','2011-11-30 21:41:03','',4,'2011-11-30 21:41:03','GBP',NULL,NULL),(18,0,390,'Coffee and muffin','2011-11-30 21:41:17','',4,'2011-11-30 21:41:17','GBP',NULL,NULL),(19,0,27398,'Flying home for Christmas','2011-11-30 21:54:01','',7,'2011-11-30 21:54:01','GBP',NULL,NULL),(20,0,299,'Breakfast','2011-12-01 20:55:23','',4,'2011-12-01 20:55:23','GBP',NULL,NULL),(21,0,670,'Lunch at Kokoro','2011-12-01 20:55:37','',4,'2011-12-01 20:55:37','GBP',NULL,NULL),(22,0,2000,'Oyster autotopup','2011-12-01 20:56:06','',2,'2011-12-01 20:56:06','GBP',NULL,NULL),(23,0,495,'Obento lunch','2011-12-02 09:54:17','',4,'2011-12-03 09:54:17','GBP',NULL,NULL),(24,0,300,'McDonald\'s with Adam','2011-12-03 09:55:10','',4,'2011-12-03 09:55:10','GBP',NULL,NULL),(25,0,5000,'Giving money to Balazs ....','2011-12-03 09:56:47','',1,'2011-12-03 09:56:47','GBP',NULL,NULL);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_type`
--

DROP TABLE IF EXISTS `transaction_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_type`
--

LOCK TABLES `transaction_type` WRITE;
/*!40000 ALTER TABLE `transaction_type` DISABLE KEYS */;
INSERT INTO `transaction_type` VALUES (1,0,'Anything not yet defined','Other'),(2,0,'All travel expenses','Travel'),(3,0,'Everyday shopping for home','Groceries'),(4,0,'Eating out in a restaurant or coffee shop, etc','Eat out'),(5,0,'Party, alcohol and stuff like that','Party'),(6,0,'Clothes, shoes for the whole year','Clothes'),(7,0,'Holiday, travel, hotel, eating, etc','Holiday'),(8,0,'Savings, pension and such','Saving');
/*!40000 ALTER TABLE `transaction_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-12-03 14:34:05
