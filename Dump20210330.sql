-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: spotify
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `account_buyers`
--

DROP TABLE IF EXISTS `account_buyers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_buyers` (
  `account_id` bigint NOT NULL,
  `buyer_uuid` varchar(150) NOT NULL,
  PRIMARY KEY (`account_id`,`buyer_uuid`),
  KEY `fk_account_idx` (`account_id`),
  KEY `fk_buyer_uuid_idx` (`buyer_uuid`),
  CONSTRAINT `fk_account` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `fk_buyer_uuid` FOREIGN KEY (`buyer_uuid`) REFERENCES `users` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_buyers`
--

LOCK TABLES `account_buyers` WRITE;
/*!40000 ALTER TABLE `account_buyers` DISABLE KEYS */;
INSERT INTO `account_buyers` VALUES (4,'1'),(7,'2'),(9,'1'),(10,'2');
/*!40000 ALTER TABLE `account_buyers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `credentials` varchar(250) NOT NULL,
  `subscription_type` varchar(45) DEFAULT NULL,
  `country` varchar(70) DEFAULT NULL,
  `invites` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `invite_token` varchar(250) DEFAULT NULL,
  `expire` datetime DEFAULT NULL,
  `extra` varchar(200) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sold` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_idx` (`product_id`),
  CONSTRAINT `fk_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'coryldwhite@gmail.com:Spi16der ','Spotify Premium','CA',NULL,NULL,NULL,NULL,NULL,1,0),(2,'jillsummer1@gmail.com:morsyd1057 ','Spotify Premium Family Owner','US','3/5','15938 N 114th Way, Scottsdale, AZ 85255, USA','https://www.spotify.com/family/join/invite/Yzx64Z7453xC6Ba',NULL,NULL,2,0),(3,'embs2@k12albemarle.org:Burtram1','Spotify Free','US',NULL,NULL,NULL,NULL,NULL,2,0),(4,'jmqg99011234@gmail.com:Jjoonnaatthhaann01','Spotify Premium Duo','US',NULL,NULL,NULL,NULL,NULL,2,1),(5,'macedosgustavo@gmail.com:Tabathas2','Premium for Students','BR',NULL,NULL,NULL,NULL,NULL,NULL,0),(6,'payan.marisol@gmail.com:501352Mp','Premium for Students with Hulu','US',NULL,NULL,NULL,NULL,NULL,NULL,0),(7,'ithomsonvirtue21@gmail.com:Rocky1721!','Premium for Students + Headspace','GB',NULL,NULL,NULL,NULL,NULL,NULL,2),(8,'payan.marisol@gmail.com:501352Mp','Spotify Premium with Hulu','US',NULL,NULL,NULL,NULL,NULL,NULL,0),(9,'chesterkyle99@gmail.com:Greatwall99!','Premium + Headspace','GB',NULL,NULL,NULL,NULL,NULL,NULL,3),(10,'pasehwani@gmail.com:Kobe1999','Spotify Premium Family Member','PH',NULL,NULL,NULL,NULL,NULL,NULL,1),(11,'chesterkyle99@gmail.com:Greatwall99!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(12,'inapanci@gmail.com:Spi16der ','Spotify Premium','CA',NULL,'new test for post method',NULL,NULL,NULL,NULL,0),(13,'coryldwhite@gmail.com:Spi16der ',' Spotify Premium ',' CA',NULL,NULL,NULL,NULL,NULL,NULL,0),(14,'jillsummer1@gmail.com:morsyd1057 ',' Spotify Premium Family Owner ',' US ',' 3/5 ',' 15938 N 114th Way, Scottsdale, AZ 85255, USA ',' https',NULL,NULL,NULL,0),(15,'embs2@k12albemarle.org:Burtram1 ',' Spotify Free ',' US',NULL,NULL,NULL,NULL,NULL,NULL,0),(16,'jmqg99011234@gmail.com:Jjoonnaatthhaann01 ',' Spotify Premium Duo ',' US',NULL,NULL,NULL,NULL,NULL,NULL,0),(17,'macedosgustavo@gmail.com:Tabathas2 ',' Premium for Students ',' BR',NULL,NULL,NULL,NULL,NULL,NULL,0),(18,'payan.marisol@gmail.com:501352Mp ',' Premium for Students with Hulu ',' US',NULL,NULL,NULL,NULL,NULL,NULL,0),(19,'ithomsonvirtue21@gmail.com:Rocky1721! ',' Premium for Students + Headspace ',' GB',NULL,NULL,NULL,NULL,NULL,NULL,0),(20,'payan.marisol@gmail.com:501352Mp ',' Spotify Premium with Hulu ',' US',NULL,NULL,NULL,NULL,NULL,NULL,0),(21,'chesterkyle99@gmail.com:Greatwall99! ',' Premium + Headspace ',' GB',NULL,NULL,NULL,NULL,NULL,NULL,0),(22,'pasehwani@gmail.com:Kobe1999 ',' Spotify Premium Family Member ',' PH ',NULL,NULL,NULL,NULL,NULL,NULL,0),(23,'chesterkyle99@gmail.com:Greatwall99!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(24,'coryldwhite@gmail.com:Spi16der ',' Spotify Premium ',' CA',NULL,NULL,NULL,NULL,NULL,5,0),(25,'test@gmail.com:djuhsi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,0),(26,'test@gmail.com:djuhsi',NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_emails`
--

DROP TABLE IF EXISTS `admin_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_emails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_emails`
--

LOCK TABLES `admin_emails` WRITE;
/*!40000 ALTER TABLE `admin_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `description` varchar(200) NOT NULL,
  `created_by_uuid` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_author_uuid_idx` (`created_by_uuid`),
  CONSTRAINT `fk_author_uuid` FOREIGN KEY (`created_by_uuid`) REFERENCES `users` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'2021-03-02 00:00:00','jniuji','1'),(2,'2021-03-05 00:00:00','yhbjnk','2');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_product_price`
--

DROP TABLE IF EXISTS `custom_product_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_product_price` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `uuid` varchar(150) NOT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1_product_id_idx` (`product_id`),
  KEY `fk2_custom_price_uuid_idx` (`uuid`),
  CONSTRAINT `fk1_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `fk2_custom_price_uuid` FOREIGN KEY (`uuid`) REFERENCES `users` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_product_price`
--

LOCK TABLES `custom_product_price` WRITE;
/*!40000 ALTER TABLE `custom_product_price` DISABLE KEYS */;
INSERT INTO `custom_product_price` VALUES (1,1,'1',52.00,'2021-03-03 00:00:00','2021-03-05 00:00:00'),(2,2,'2',25.50,'2021-03-03 00:00:00','2021-03-08 00:00:00'),(3,2,'1',33.00,'2021-03-05 22:47:14','2021-03-09 01:00:00');
/*!40000 ALTER TABLE `custom_product_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,'test1@gmail.com'),(2,'test2@gmail.com'),(3,'test3@gmail.com');
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(70) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters`
--

LOCK TABLES `filters` WRITE;
/*!40000 ALTER TABLE `filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(500) DEFAULT NULL,
  `uuid` varchar(150) NOT NULL,
  `ticket_id` int NOT NULL,
  `is_read` char(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ticket_idx` (`ticket_id`),
  KEY `fk_messages_uuid_idx` (`uuid`),
  CONSTRAINT `fk_messages_uuid` FOREIGN KEY (`uuid`) REFERENCES `users` (`uuid`),
  CONSTRAINT `fk_ticket` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'test','1',2,'0','2021-03-04 00:00:00'),(2,'posttt','1',1,'0','2021-03-04 16:21:58'),(3,'messg 2 of ticket 2','1',2,'0','2021-03-08 22:44:15'),(4,'test','1',2,'0','2021-03-08 22:46:11'),(5,'jienvijo','1',2,'0','2021-03-08 22:50:29');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_filters`
--

DROP TABLE IF EXISTS `order_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_filters` (
  `order_id` bigint NOT NULL,
  `filter_id` int NOT NULL,
  PRIMARY KEY (`order_id`,`filter_id`),
  KEY `fk2_filter_id_idx` (`filter_id`),
  CONSTRAINT `fk1_order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `fk2_filter_id` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_filters`
--

LOCK TABLES `order_filters` WRITE;
/*!40000 ALTER TABLE `order_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(150) NOT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'completed',NULL),(2,'canceled',NULL),(3,'processing',NULL),(4,'replacement',NULL);
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_date` datetime NOT NULL,
  `uuid` varchar(150) NOT NULL,
  `order_status_id` int DEFAULT NULL,
  `product_id` int NOT NULL,
  `value` decimal(6,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_status_idx` (`order_status_id`),
  KEY `fk_product_id_idx` (`product_id`),
  KEY `fk_orders_uuid_idx` (`uuid`),
  CONSTRAINT `fk_order_status` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`),
  CONSTRAINT `fk_orders_uuid` FOREIGN KEY (`uuid`) REFERENCES `users` (`uuid`),
  CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2021-03-03 00:00:00','1',4,1,25.00,2),(2,'2021-03-02 00:00:00','2',3,1,36.00,4),(3,'2021-03-03 23:04:03','2',3,1,15.00,2),(4,'2021-03-03 23:21:02','2',2,1,15.00,2),(5,'2021-03-08 23:16:04','2',1,1,15.00,2),(6,'2021-03-08 23:17:15','2',1,1,15.00,2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `status_new_users` varchar(45) DEFAULT NULL,
  `minimum` int DEFAULT NULL,
  `maximum` int DEFAULT NULL,
  `details` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,'paypal','active','inactive',0,1,'updaeduser@paypalemail.com'),(2,'coinbase','inactive','inactive',0,0,'niuvfhi3287854dnfj');
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_status`
--

DROP TABLE IF EXISTS `product_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_status`
--

LOCK TABLES `product_status` WRITE;
/*!40000 ALTER TABLE `product_status` DISABLE KEYS */;
INSERT INTO `product_status` VALUES (1,'available');
/*!40000 ALTER TABLE `product_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `minimum` int DEFAULT NULL,
  `maximum` int DEFAULT NULL,
  `gate` int DEFAULT NULL,
  `sort` int DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `warranty` varchar(45) DEFAULT NULL,
  `format` varchar(45) DEFAULT NULL,
  `product_image` blob,
  `status_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `price_per_filter` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_status_id_idx` (`status_id`),
  CONSTRAINT `fk1_status_id` FOREIGN KEY (`status_id`) REFERENCES `product_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'UPDATED',12.00,'jnde',2,5,3,2,'2021-01-02 00:00:00',NULL,NULL,NULL,1,NULL,0.25),(2,'iuhreig',26.00,'jbnh',2,4,2,2,'2021-03-03 00:00:00',NULL,NULL,NULL,NULL,NULL,0.50),(3,'file product image test',50.00,'trying post method',2,4,2,2,'2021-03-09 01:00:00',NULL,NULL,_binary '�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\�\0\0\0\0\0F�\�e\0\0\0sRGB\0�\�\�\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0t\0\0t\�fx\0\0ۡIDATx^콇�\�}�\�\��ĎӾ�N\�ĉ\�\�v\\\�\�w[���8.�,TB�H� ��ދ\����������\�vX@�\�|Ν��\�ܙ��\�\�]v\�y^�\�u\�;\�̙\�\�̛s\�\�B\�9����Y\��s\�9w�DΞ9-%%�\����r\�\�	9y\�?^,\�\�\�\�ر�r\�\�9\�x\�HQ¢\")2FDDDDDDDDlg&�-/\�\�\�K�/\��4\�\\L�1\�\�4/\�\�L�3\�\�4O\�\\\�\�\�b\�8;�;\�,x\�Y���\�Rr���:\�4�;r\�\r\�\�\�Ç��yDDDDDDDDDl�&2./�\��Ks0\�\�4�r�N��Ls4\�\�4W��\�0.*�;}:\�\Z\�\�	/�;jA/�3;xP\Z\��\�\0\"\"\"\"\"\"\"\"b;Ws.�w<h�//�3�ܑ\"��i^���i%w�dZ Ɲ7a\\H��\�5M�^\"�s�d��0\�����������\�\��|Ks�T8�h9�\�]X57\��,\�i\�\ZƥZ\�%�gq\�\�N�\�u[\�i�\rp��\�GDDDDDDDD| M\�ܖr��in���\�hv �9[Z\�\�`\r��8�E��\�tK=�A\\�+�n0Q�T��\�ۗ\��=\"\"\"\"\"\"\"\"b{\�\���ωi�@\�\�\�473\�V�r��i\�\Z\�i�T�3%f�}\�yF�\�\"\�\�\�p^\�cǎɵkפ��^\�ݻ\'\0\0\0\0\0\0\0\0\0\�͹4\�\�\�K�/;Kr�&/�9\�\�L�U}��\�Pr\�ƅvO=uҌ��K<#.\�\�F�\�p����\�@\0\0\0\0\0\0\0\0\0:��i\�5T�Z\�%9\�ꎴ���\�lia\\�U\\�{�yN\�ѣ\�!t�g\��V�j\"\0\0\0\0\0\0\0\0𰡹���i^��Y�\�jbP\�ռ\�\�%ø\��n\�*N��\�\�`\r^\�VVV��\0\0\0\0\0\0\0\0x�\�|,ȥu\�<Ms5�u�ƥ��&��l�\�jq�J�8\0\0\0\0\0\0\0\0�D9;7\�\�뮪��\�l�0\�tQ=\�uQ��w\�\�*.\�=U�\�\0\0\0\0\0\0\0\0@\�\�a\�~��y�\�4_Ӝ\�\���\�H:\�\�Yq�\�\�\0\0\0\0\0\0\0\0\0�B�2/;\�-1�\�!��i\�f\�8�yqg\�FtQ\r<+N�o\0\0\0\0\0\0\0\0\0?��ya�\�z0\�U\�\r\�ϋ�FQ\r颪+ڷoϊ\0\0\0\0\0\0\0\0As3\�\�4GvU��q\�L�ϋ;2��\���\0\0\0\0\0\0\0\0������i����\�l\�0\��\�7x�>/Ι)\�yq�\�\�sW\0\0\0\0\0\0\0\0\0��y�	\�\�ƅ�qg4�3�7�a�;x���8mf\0\0\0\0\0\0\0\0\0\�x\�T5O3ύsqH�q\�4�+�q:\�C�	\���7\�\�\�~�m����aC�\�\�\�\�e\��d�\�o\��\�d���\��\�^�7G�p�!˖.u�z0�\���]\�\�?�*egW������])/..��\�\�ZDV�&��]\��\��}/o�\��;\�\"�\��֛{\�O:��ͧ�\�+�dԦ�\�\"�\�ܓ	\�\�˟��>\�;;��\��+շܹE]���ے6��\�Ko�s�\\�l�N�:߭��O,t�\0\0\0\0\0\0@[&=�\�A\�¸/�+vøÄq�@II�\\�pA֯[\'�&L��\�oRhWUU%+���U+WʒE�d��Q�{\�.�<q�̝=[V,[.�W��͛6�K�3m\�TY0o�y�`uu�ܾ�\n�\�*?�_���j��gV�\�h�\�|��9�����뵩�[|���\�k[\�w�\���\�s�T7�¸��ޖ��˄zf^k�}y�l9\�Ι\�\�m;/\�\�*�>o~\�\�s�ʕ�Tw�B�|�\�\�\��l?\��(�r\��P\� \�\�9\"\�C\�\0\0\0\0\0\0\0\�>\�a\�\�\\øD_W¸�PSS#\�\�\�e�\�E\�uk\�ʂy�dႷd��ݡ�d\�\�\�\�3O>%�-�eK�Ȓŋe��\�/\\h���c\�\�\�\�s\�%Rh�w�\�9Y�z�L�<ټ.�?߬\�\�ѣ&\�\�y\�\"^��V�]C��\�T\�7�k����|�\�\��4\���>�\���Գkoߕ\�\�nB�\����\�F���ԝS���l>\'\�~nUj>k�.o�kV=m����7�\���׶��\�\���zyjv�)\�	\�\0\0\0\0\0\0\0\��0NGT\�&�;N\�Rh\�UQQ!�g͒�cǚ0\�@a��5��6\\&�/�\�\�s�\�yw�w\�\�1�\�E܄q\�dLA��_?\�&�/3�M�\�c\�\�%R\�\�uٹs\�8\�&o�);w\�pC��2q\�66�«�Ble\�����o�\�E\�\�Mg\�=7$��\�ծ��}c�sl\��%\�\'nK�\�R���\�\�9\�lc��Ӧ�ir�\��{,>\����)�\��\�����]�.U�s�ܨm�9�.9\�?e�\�\0\0\0\0\0\0@ۇ0�\r�a\\]]�̘6]6�[o��nX�޴��6e�L�:MfϜe��\�@\�\�ٳ\�p����\�:>+��\�_�u\�*/t\�,C�1Aޕ+W\�%R\�[6o6a�nK��i\�\�d\�:\���q\��{7^国{�Jyy��){r\n\�\�\�=/��Wj垛�ݹ����\��\��\�z\�y��p�Vgŗk\����\��\�����8�u�\�ʳ�ʻ:Y-\�\\�e]�\'\�<�ggI��E�D�[\r�>\�w�<R�G��uT�ɍ�Tp\�蔻\��|���\�\�j�c\0\0\0\0\0\0\0��0������h\�\0lʤ\�&|�5c�iݦ-\�fΘ!�r\�N�\�iH�ψ\�գ�4H C��{��A��!K/�\�t`�ɓ&I��Q2i\�Y�`�y\�\��y�۶nu\�n�\��:\�P��0\�ѲP;�oЁ�T(\�qeڼ:8D�E\�\�	6�n��\�U�4d�\�?�\Zd�\�\���w>\�\�j�\�s\�Fn<k�A�\�q^w���\�\�#\�˔�dm�5\�5�BE�\�:\��D\0\0\0\0\0\0\0h�ƵA�U�v�7w��9J�*/u\�n��j�U�>�j\�\�\�2u�\�U`ޏ)-cG�v\�O�%�\�\�˗\�%Rh����\�\��e\�\�\�g����\�\�#L(�]^5�P�zZK�\�o}˴\�˕\\\�8mm��\�e_յǮ���a��\�K\�e�\�K\�	\�n=/\�\�ޕ�ۣ�ȹ�g�U5ܑ\�\�a{\���/��)�.�s\�1|\�t�\�}�R\�n6�p\0\0\0\0\0\0\0,\�\� :��֠-Ҟ}����A��.^\�/S�L��+V�\0M�\�v�\�M�z\��Y�b��^�ڄj��j���\Z1RƍcZ\�-_�\�9nERS]-�nݒjw`B[\�\��\�{��>\�\�9y��\�\��\�N?n�Iג4+�˲��>�\����f:0C\�e\'\�=/�K�_���G\�Mr�JMbf��\�1-\��k\�_N>`Z\�)�\r\�B�π�{\�`\�}/o0��[j.4޽\'u�r�z�i1��\�u���m�o�s\0\0\0\0\0\0\0@[�0�����N?A��\�\�t\�\�i7n\�X�]�t\�tWݼi��:y҄w��7}�\��q\�ͨ�ڥU�?�ϛ\�Vvo-X`FIݺy�:x\�\�p�\�ǳ2j\�H3\�ì�3\��\r=��(�\�xC6m\�$�5�0�%\�K\�j��v-]_\\n�\�q��F�1r��4�̟t^%\�+\�+���T5h�\��π���N�-9���eۡ�U\�uk9?\��	\�Fm:+Jo&��0t=7\�\�HIy�\�:S)ˋ�ʤ��\�ʓ���\"�Ѹ}�,���\'gv�\0\0\0\0\0\0��a\\\��\�ۦ��v]�h�	��u�v7\�@mͪ\�2y\�DY�l�\�F:t\�`ٶu�i�`�ٱ}�	\�֬^mB�iS�\�\�\�3̺t����\�8\�\�b���X�\�<3n\�\�1�w\�Y�f��\���e\�Ν��\\KӒ-\�4��\�^d�:��\rf�\�S�]N��\�z���;w��\�*\�}κ��i\0膀�\�w�L���\����^�?a�}�w\�\�\��MWT\�9q6Z\�\�}V�aWXzS\��f�)\�aV�|e\�N�\�\�\�\�!��a_p�	\0\0\0\0\0\0\0h�ƵQ�m�\r�իV��\�oɛ#F�@N�)�&\��e\�L\�8m�7h�V�U\�O�0�\�0n\�X�9\r�\�̞m\�7UUGi=y�Y�>_��\�5�>m�i��譅�b�r�4q�	�*++\�R�-ƽ�\�Jy\���R;\�\�M�/\�\"�\�׷�nt%�\�\�\�HY��D��O\�_w[��\�^\�\�#vɞs���n�#\�6�1!ܖS7|ϩ���K7L+�E/\���� �\�\�N�Z~\�8\0\0\0\0\0\0��a\\e�̙�u��b[�n�/.v>\�0\�MgN�nB2\r\�t0\�V��\�4t{k�|3h�N;|\�\�߷ߴ�\�\�\�\�3Aۺ5ke�*}�\�2Y�p���ϡۻg�?~\\N�8a�\�\�6��ܞݻ\�R��\���\�\n\�\"\��m5]B\ZSA��$�Ϙ��g�?�M��&�jK�/\�\�EUû\�g�뵩QZo߽\'��պ��hW\�ʺF\�U��>;\�|l�Vy\�sκ��/�>l�+a\0\0\0\0\0\0@��0����\�tt\�M�6ɴ)S\�s\�v\�\�i��Λ3Ǵ��;{�aU���<qB^0�<S��X�\�\�\�q\��\rY�b��>܌��i\�3�>N��\�o\Z�\�s\�\�A縞;wN�m\�*gϞu\�\�r\�#��G�AC8\����CH��uG��u,\�\�\���+M�\�\�\r\�nF5����۲�X�y.��y�C��2bc\�z\��9pE��\��5�峃v���z\��\�ۯ\�M\0\0\0\0\0\0��@\�F����/�(s\�\�5�ކf��n߶ʹV\�N�)7~\�8�iȦ�?v\�3ª�>�M\�=\�⪁۰!Cd\�[oɄ�\�M�6\�\�We떭\��\�C��\�t����\�˗K]]������aܣM@��-\����]z.9.�\�VJ�5P���t�\�^K�\��\�>\Z�\�߽�\�tk�[\�i˺�\�\'�-׼yݐLGJ�ڈ]��T���8b\�\�\n���é\�[u��\���.d:a\0\0\0\0\0\0@��0�\rs�\�]?v�y��>\�mİ\�E�jȨ�o�\�\�\r4X� ����\�;=\'ׯ_wאB��\�\�믽\�\������f\�\�K�Iii��)(�7�.C6�\�\�1Bv\�\�m\�\�\Z45�\�6��.�\�ߔ\�7oɭ\�{&���4E?ެo��˟\�<cN���\�\'\�n\�\'t\�\�l\�Kn\�wN�\�߿�\��ψC˲\�x�\��!�v+\�V|���>�G}\�H7U\0\0\0\0\0\0��a\\g\�޽2r�p3(ü9sel�h6x�	\�N�:\��R�:tȌ�ګGO\�\�t\�ڵ�t\��L8)U[\�iX�Ϝ\�g\�\�s\�N�<)\�֬�W^~Yz�z\�t�]�r�2\�t��t\�[����a�>{Mò;�\�6]I\�\�Vm�Oސ/\�iZЙ Lí��\�3ol�����F;��k�o�\�cB�\�β\�|��3]G=��u7-\0L���!?�W���ZӪN[\�\�\�k�\�>\�\0\0\0\0\0\0�\�\�8W�\\���G�\�\�i��;��`�i\�6m\�Tw�\���\�\�]�\�HQ�s\�Ι\�Q��juu�Q��^�|\�9�%r���lX��tKՐ̀\�\�nɢE�Z��;lCC�[����a\\:\��vW}zN�y�ܻ\����XǕ�>�d��sR\�,硭\�\�m=oB<{~\�\��\��r�J�4FIծ��/V\�S�\�\r.k\�\�Y�����<�\�Ny�{쯧�\�;Jݭ\0\0\0\0\0\0@[�0��\�\�\�hFB?f�i��#�=zTΟ?om\�4X\�p3�ϐ�s\�\�\��L8U\�:U�;��v�\Zٹ}�iuw\�\�I)++s\�uR\�̚-ӧN5\�\\�c\�Ys�E>\�8m̦�\�\nKo\�\���\�B�p�\��W:PCH�e��/���+O\�\�\�[\�\���j�\�9밗\�\�s\n\�\�J\�-\�\"\�C\�]���a\�\�\r\�j�ago���Q���W6\��F�{.\���\n9RVmFk\�m\�Ȭ\0\0\0\0\0\0\0\��!�kch\0v�\��i}j��3h˸%�ˊ\�+̳\�F��\Zt\0톪a��p\Z��\�r�:�	\���q\�\�U�=�h��toɔI�M�U\�a����t��\��\�\�ɛ#Gʺ�ke\�\�]�g�n\�ڮ%ù��q\�v]0-Ԟ_pT~3\�|w\��\�\�\�_{o4�\�L��A�1���3\�{���+N�\�\�y��]^O^�5�6h��j�\�G\'05h�9�:t�V\���	��5\��~Y\�,�ϭ�ˮk\�\�Cw�Q_\�\�$;J*��r��\�l�\Zg[v7Z\0\0\0\0\0\0\0h?Ƶ!4\�\�.�\�=��:̌��]F�n\�{oU\r\�^\�\�\�8l\�P\�\�3\��UM\�[ O=\�A��~żW\�x\�\�\�\��C\�H�:��>w\�̣\�p^�l�i\�\���>2y\�$��O\rj�o�\Z\��f\�A~i+�w?�\��\\7+\�JjOs^?\�o�Y_\"\�o\���9WZQ/]\�:&�\�\Z�7x���b)�TmZ\�ٜ.��AkKL�\0m\�\�F\�̣����;�\�\�c2w�%\�}�Ҵz\�g\��\0\0\0\0\0\0<Ƶ!4��^^.��\���]�vɱ�G��>!ǋ�Ώ���\�\�{힪�7\�t3͝��X\��׿�?�:y��/\��\��p,9]\"�O�6\�U\�z\�\�)���ӧM�\�C�JUU�[\��\�\�0\�\'\��˟�`aZ���v�ʰ�2u\�\�\�\�n\�v��A^_sZ��\���gW��O?\�t;�ӐL[\�=9\��\�\��g�	\�\�\�\���7�.�#7�5#\�^p���\�[\�ݷ\�Fm�馺\�\\��\�r\�\0\0\0\0\0\0\0�a\\\�\�\��Tܸ\�Nm:\�>���_�\��\�t6�_o���yӝ��\�u\�-�\�p\��e��r\�\�\�\�be�^WbGxW���}7˛�\�\�\�z�3\��m���ɷ\�\�mZͥm+�:�\��\�\"�w\�1e\�9VV#��� lt0�3\�uftVm57t�\�rOo�n�\�j\0\0\0\0\0\0\0\�>�qm�lø\�۷\�rY�\�!\r\���o\�eú�2��}�q\�\�\�=\�\�#{d䦳r���7���x+)���N� Nò��\�bFR\� \�F��\�|l�VyW\'k�\�,Z\�iK8T\�\��g�iwذVpZ�\��F9|�J�]�\�ȓ��\�\�w\��_\�hZz-��s?v\�\0\0\0\0\0\0\0\�>�qm�l\�8�\�\�իfTU���\��&��=�\�\0����E�?z�y�\��+5i\�WC\�=9t�J:\�?*\�\�\�q�xm�L\�u�tE�))��W���\��\��\�058��^\�c�ɬ=\�r\�-	fpΡ�\�[w\�ԵZ\�jo\��3f\0	\�ƪ!�YWH\�\�\�#�\0\0\0\0\0\0hƵ!�	\�\�jk\�S\�7n��N}\�ȫQ<aܣ\�o��5-h���/�3\�\�\�l��\r\�%�\��E/˥��\�%��\�ܖ\rǯ��LסA\��A\\�5P�e\�r\�هs\�\�\r��\�7�ˈ\rg\�h��0P?W\�5ʑK\�2w\�%��\�\�3\�\�\�&a\0\0\0\0\0\0@��0�\r�)�kll4\�l׮]s�\�y�3{��U�\r�0�qڭ���\�o�2��~����\�=Wi��(joߕ�\�\�Mk��\�lZ�i볏�\�b�\�$xhwV}^\�\�&\�7#��°`K5�\�N\���\�\�\r���C�E�\�-V�B8�U�\�~y\�NF�/J\�8\0\0\0\0\0\0��a\\\"S�ψ�;g�̚1C6o\�d��iS�ʼ9s\�\��@�\�ݺuKnߎ�\�޽k����\�\�\�^�\�r�\�|\�KCwʟ�]\\��k\�I\�n=\�뚪ک���\�Q{L\�^`\�f\�\ZN�\�~���\�pA�\Zjw\�7֞6Ϟ3]^3�nQ�\�8\0\0\0\0\0\0��a\\BðׯG�q\�*n\��\��R�\��\�������Hǧ�6�Z\r\�֬^-7l0ځ�n\�޽{��ݹ�ge\�RYYi�)�\�s\�9�\�]\�@M�w���L\�yA�8x��\�8�\�K\�̨��\�6m���ٷ\�ܓ\n���Y\�v\�m�i�w�z����,\�ke\�泦�?\�\���v��\0\0\0\0\0\0h?Ƶ!2�qם\�V._!#���W^\�mZ\�-[�\�y��;��:?/C\r�\�~��\�7�%o-X�\�k\�\�S�\�s\�F.o�)3�ϐ��*�l\��R�v������q\Z�]��%�\\�\'f\�{^\\ou0��Z�֟=�Z^_s\�t�9}�N�W�71�~\��/�7\�\��g��񮄵3\\Qtń�\�\�5Y�l\�\�\�|u$�\0\0\0\0\0\0h?Ƶ!2�q׮^��\�K�>}\�\�:˄q\�dƴi\�\�\�\�9�<\�\�3e�d\���\�\��\�N�w\�^ӂN={\�Lw�ݱ}�4Xjjj̴իV�r�\�\�1!��\�ږ\�8m}v��Z^��m�oȒCWdԦs\�q\��객�=֛�\�`yj�\�\��s\�z܆���Wk\�\'ʻ:�\���\��s����\"�K�\r�\�\�\"�G�<fdTw����ٟ�&�_i��h�-f�W\0\0\0\0\0\0\0h�Ƶ!2�qǋ�e\�\�12u�d�9}�L�2E�,Y\"ݻv3\�y��gd\�ʕ�{롃���Zjkke\��\�2t�`y��\�dؐ!�k\�.\�N�;�譅r��a3�.�ϩ۰~��ݶ\�=9\��\�}�6\�?�\� ��\�z�\�\�\�U�+j2���~4\�9�K�|�+��V+\��?w֑�7& {W��\�z�Ɏ�\n��\�\�.|�\�=Yz\�|\��\��]֘给\�t}A\��z��\�\Z\�>>2z��Y~R;\�\��.Tԧ�\�\0\0\0\0\0\0��	a\\\"Sw\�\�1Y�x�,Z�\�W\Z�M�8Q̛�|֛�=�\��e\�d��9u\�\�Zr��i�\��dʤIR__o���k\07{\�,Y�h�\�޹Kz�\�%}_\�c�k)�\Z\��d�~3XB2\�\�֎+\�^\�*�N^7ϓ�P\�`Z��M����L\�۟]���\�f�\�C�|\�\�l�j�mye�	y\��N/�k�xe��v�!��\��\�4�u�X\r��+.\0\0\0\0\0\0\0�\�\�ٴ��5c�	ִ\��yq\�bm\��a\\CC�̛;WF&�2\�\��\r%%%2}\�4Y�j�	\�˗�\�c���\Z9R֮YcB�\���o�a\\H��\���\�Z��\�ܬO�(�tޏ\�rN�\�\�\�˄�-\�ݑK\�r\�\Z�U[\�i��_N9 �Һ\�e\�\�\�|ڵV�W7z�9\�\�N��[w\�^HH\0\0\0\0\0\0\0h?Ƶ!2�qG��d�\�Y&X[�b��~�q\�\�&\\\�q\��T��6u�	�^�*׮]��k\�ʙ3g|��._�T6m\�(ӝy�o\�&\�\�\�f{������\�\�\��K7\�kXv\�\�=YPX&�z}��>l9\�?a�t^pT�]��ƻ� N[�m9uC�?f��\'l\�(�\�{{��_M9(��^�C�\�f�\�\�.�ƻo\���\�r�*�\0\0\0\0\0\0@ۆ0�\r�)�ۺe�0@�\r*�� Ç��}�I�>}\�\�A�0N\�\Z�o\�.\�Zhm\�\�\�\�\�nQw�\�Y?v��Y�ڬO��*�%�ؾø�+\�`�|9\r��_\�-�r\�,��GF\�1ϙ]\�R��>=�H��uܱ\�QY\�h�\����\�\�\�J\�Q\�?\r\��T(\�v_�b��\'p\�\���z\�|�L\�^*//=!�\�8lF�\0\0\0\0\0\0��a\\\"S�-\�F.\�Ǎ�I&ʤ�e\�\�!2ҙv\�9���\�)/\\0��nۺUv\�\�eZ\�\�2:b���\�7\�\�\�K\�\�ŋ�5��aݜY���W\�U��\�t��\�Q�0x��r�3\��\��er�J�/\�:w�^��S$\�um\�z�j��\��Cn`�\n2�\�ޖY{/\�\�m%i\Z\����\�o�\�-#6��#eա!�.QR^\'+�\\�!\�J\��3\�W�\�4��gϯ�?r��c�\0\0\0\0\0\0\0�\�C׆�\�40\�`mtA�̟7O�.Ybo\�Vk\�ƌ��6��q�̷��U�e��\�\�ѣ�~\�:3���q\�Ξ��;vȪ+e떭2\�A\��\�\�J���r��)>t��Z�\�^\\T,_�˄S\��ی4���\�\�\�\�{\�	�\�?^nFH�ti�\�\�ϘA�!Y04s?\�\�t�GMh\�\�\�(�~C���/��\�Qt�P�\�\�y�Q\�~�F\�(�z(�q�\�ߔ);K�ì\��Ɂ[\�s\�#\�j�G\0\0\0\0\0\0\�> �kCąq7�\�3�M�\�^\�/o�aZ\�\�{\�a\�\��B\�8\�A��j�Wv\�	\�6l\�\��C&�[\�p:�\�\��\�\�\����\�\�[�\�\�\'{�\�1\�M7^F�|ӄs-ESø\��e\�\���L��V�k+\��ܙb\�r\�z|k6W����\�\��\�<��n\�\"N�5�\\Z�稃3|u�.���Bڳ\�t�Hb\�\�J3x\�wF\�1��B>[g:a\0\0\0\0\0\0@��0�\r\�i+��o�%}^\�-�^]z���<�\�ң�����\�d�\�e\�a\�3e�ܹ�\�k�W��`\�<\�ik9\�\�/_�\�\�-r\�y?e\�$\�iwX����´�SP U7o�s柦�q\�\�j�-�L-�aǕ�^d\��˾ ���,+�\"��=<,\�i�\�:��nS\�6{]z\�4@ԑY\�l9\'_�\�Y�\�J�l�0\0\0\0\0\0\0��@׆\�0\�z\�3\�6o\�$�GȢ�e\�\�\�2\��7\�{m���2���[�Ԍ���m�f̔7�B\�x\��\�3\�t\�T\r\�.X �\�xC�\�\�m�\�\�8\�3}\�Z\�RQ\�(\r��\�Kс4�Ґ-n\�j\��7\�ך\�ZM\�tym%�\�\�;\�3\�Җ\r	\�t�p\�Re����\�\�3#�.<pY��\�\�\�\��[\�B\�8\0\0\0\0\0\0��a\\´��qC�\�\�!|\0�M�d\���x\�BY�h�,Y�X�N�lԑR\�\�8\�f�]P/\\� kW�1]R\�g�\�2\r\r\rr\�\�9;z�̜>\��o-X ֯7ϙk\�a\\u\��ݨm4\�n�V}\�t�\�GKoʼ�e2|\�)�\\\�.�@�!�\�׷\�u�\�\�q� \�g\n���Պͩ\�Wk\�ۣ�Ȼt\�Ԑ\�\�Vò\�^&\�(�*��z��YqZN�5r\0�,\�O\0\0\0\0\0\0\�> �kCd\n\�e���:k\�L�6u�y^��f�\�\�2n\��\�\�w\�M\�#EE&��\�\�Vo\Z\�\��:DeE��^�J\�.��n���ڵkm:�����n�!3Z\�\�헯�\�-�U���:\�}�O:�v�\��\�n/,8�q�Tm����\�\�Ly��d�ʺF\�iP��y�\�W-\�{{l��\�\��\�R�C����ys\Z\n�\�a-��\Z\�騲\0\0\0\0\0\0\0\��!�kCd\n\�6m\�(\�Ǎ��\�@N���Q�dڔ)�m붴0\�g��/�$�w햭��\�K\�_4ς���4Ϡ+>V,/<\�Y��{\�|VtP�3%%r��PV�\\)/^l\�a\�O\�\�?}~�\�N�ɀJ[�%Z�}�\�fY}��;w�C�\�z�w\�\�g���\�\�2c�Ew��,?!\�}�����ޝ�!��c߹J_W\�zm�	�o_\\\�[&���\�zj`~\r\r6�0\0\0\0\0\0\0�=@׆\�\�mٴY�\r*�g\�2�/L�<\�ꠣ�\�\�\�2\�gd\�ʕr��m�\�<�}\��B9q\�Y\�\�>}MwW\�ʪ�\�}N��֪E,_�܌�ږ\�8m���\�`А\�\�\��>�_M9���\����qH\Z\Z\�K%Xr\��\�\�6D�f\�w\�\"\�}6Ɏ�\n�\�:���:Ӓ/v�\���k\�\�CwJ\�e\'L\�Xv\��:\0\0\0\0\0\0\0h�Ƶ!4L\�\�E�q\Z�i�Աc\�\�k�`Mc>t�\�V�ƹόSn޼)G����M[\�-]�D�O�&\�O��G��0N[\�i8��;h9�\�\�p�\�>\��,;|\�<�M\�\�i�\�V\�{^\\�\�w_�C]�r�Lt+\�g\�}��\��N�ω\�\�5�ӑVo[]S��\�o�g\�i��V��uZ\�4\�\�\��\�r�C�\��\�\��\�\0\0\0\0\0\0\0\�&�qm�d�Dt7\�\�_(�\'M�qc\�J��z�n�{�\nog�q%�Kdڔ��[��\��\�믛�m�\�}�w\��\��\�Ξ9#�uu�۪\�Zn���2�`t�\n\����U򋉅f`��\�w\�\�SfӴk�>�\�~\�[\�\�{�̜�\�s\�yu!\�y\�2a�y�L8�\�%7Lk6m�\\&Tw\�Z\�\�\�Y{.J�\�\Z3P���\n\0\0\0\0\0\0\0\�¸6D�0NG76d�L�4Ɍ���o�)#��\�\�ҟשcG\�\�\0\�\�s�\�Ι#��\�o�=E�f\�MY0�\���ڂ.Ȇu\�el;\���\�f���x=D\�-�\�ߔ�\�\�\�\"-���\�J�:{\�\r\�V�jZ\��a0��޻\�\�\�s��^~B\�kn�K;\�\�q��J�객�\'�W��\r\�Z�>\�Cwʴ]\�hY�\�ܺC8\0\0\0\0\0\0�va\\\"S�q\�1l��a҄���ܔɓe\���c\����q\�<#o|]v\�\�%�.]���z�\��̙3R[[k\�{��s\\O��n��e\�qA\�r���v�|糫\�ȩ:B�b��7}6�\�\��F\��?HQ|���ܹ��K\r�.U6\�7\�ܝ\�yC֣π�\�ԃr�zj�\�5�\�Z�|o�^y�s�8W\r\���t:P\�&�fp�Q[\�\�<S!c�����.$�\0\0\0\0\0\0\0�6\ra\\\"\�0n\��\�E\\�_4�8hk��0�\�\�O\�\�\�3B6E\�\�\�qu�u�ݒ\�K���\��6�	\�F��\\O>hj�������\�tV&l/�\�/ʼ�e\�\�l\��\�t\0�c�k\�\�^\�\�i\�\�Ǧ�s7\�\�rJu\�����;C��wvZe�m�o$�3\�\�lp\�y(\���\�j�\��]2{\�%�Ru+�\"ݧ�e52iG�<5�H�ۙ��l���r��\0\0\0\0\0\0\0\�2�qmƕ_���|2��\�3\�\�\�3e�ԩ2z\�(�4a��9J�mM\�j?3.�>N��%��g\�M�4Y<hF^\r�\�c5�\�/�\Z\�i6킪�[`��ܬ�#���KtO��0\����m��{.�\�l��\�3\�>;h{j�?\�o�\�덾�k\�\�\��Y~Ҵ؋=���:�ʹ��\�\�u�:�|\�B��\�|V~>�\�<�N\�C]\�;���\�\�\�	\0\0\0\0\0\0\0m¸6��i�\���޼\�0n\��\�fTQUd\��	贛i.a�vO=y\�t\�\�U�\r*+�-37�%Z\�֮�ѣ\n\�d˸L\�ޜ�^oZ��\�+ƹ��\�Jy<еU\�4\�A��\�7�\��ˮk�\�[\�\�be���������\�߿�>5opy\�\�^��T��U�kHQZQoBB\����֙QU\�e	\�\0\0\0\0\0\0\0\��qm\r\���n?�\�O\�ڵk\�\��\�ꕫ�\�+}\�վ��w��e\�\�Y\��\�N�R�e\�\�-9�q\�2N��\�/0Ϡ�z�jr�\� K-��Ç˭[\�\�&�ES\�8\�绎\�2NZP��m�~\�x\�y��`}\�\�ͳ\�i����\�ӯo�\�S[\�}cd�{��v%\��\"�8dG\�2����zm��\�\�Ys�Z�=g+�\�\�b�Ǟ\�B8O�N\0\0\0\0\0\0\�> �kch���_�Z�Icc�;ULH����\�\�\�ؿo?^�\�7��a��ȜY�s\n\�l��\\\�\�\�2y\�$�0~�;�ehjw\�b�	\�V�&\\6\Z\�s\�<��k��\r��n\�6\��y\�R�UZE]�\�\Z\�*\�U[��\�zNjo�\�S�Cp�F�t�w4ck8�z�w\�wB.V�Z\�i��N�:zM�4d��3C\�\0\0\0\0\0\0\0\��qm\r\�/\\(�\�$/^Le\�׮�֬^-�V��	\�\�ːA�e\�[oɶ�[\�@M\r\�\�0pǎ�k\�\�Bwj\�\�\�0\�g\n\�/��5��v5\�X�V\'�{���\�\��-\�\�\�-f�\��e\�ƳR{;�i\����\�浗\�\�\'\�Q�ki\�;2w\�%�\�nk�˅�#�j�V\�F롃>�\�\�6��tTذ\�\�\0\0\0\0\0\0�\�\� w\�ܑ�u7#�����\�\Z\�]�rEN�8!�N���=&g\��\�\�泆uA�\�\�jh�\�Ǐ\�k��ˢ�MZ���q?�_�THx&1\0\�\�]L�h�\�UG���-��ڧ^\�&�N\\w���}Wf\�����=/�3#�z��j�w��J�W�\'r\�w?�J~7��+K�^�Aܵ\�\�R��\\\�n���q\0\0\0\0\0\0\0\�¸6Jmm��\�\�S����:uʌr�v\�3ݢhJ�ύ\�.��6n4ϣ\� ��!Յ��\�G���;d˩Գ۴�j\�\�\'�UǕ��\�8��\�1)�����Z+��v(5_\�r��rPN\\�u�\�=V��z��F�NY�1b�y��y\�ko�\��LC�\��VU���\�*�\�Ėm�\0\0\0\0\0\0\0��0���d\�\"y\�7��	\�ƙAr�)a���\����b�nr�\�wj˓�0\�9G|]>_��\�\n�R�\'β��_�;w��t\"��]����15_0�s>k��E�$[\�);J*\�\�v�\�\r�=/�����J��͚�;2yG���.\�[#�8UGb�ꔻ&\0\0\0\0\0\0\0h\�Ƶq��mW._�\�\'ʓOt�Æ;\�!�\�%\�0N�5�k\�Ny���ҩcGټi�ܬ��\�!\�47�Ӯ�ڪL��zl8^.�\�s�?�\n�Z�yc�\�Z�\��	�֖��\�`\Z���Ws\�^W\"\�\�l���X^���թ�i5Л��L���&3�j\��Ҧ9�?\��\�\��:3�*\0\0\0\0\0\0\0�}\�\�\�u���F.\\� K/��Ͽ`\\�z�\�\�\ZE\\�A\�\�˗eڔ������u\�޽r\�\�U�u\�V\�`-Msø��\�(ˊ��\�0a��\�h�!��zZZ�jMWt�\�t�L\��\�\�-礲.5\�\�\�s��\�轑�{~m�.���:d�˶\�7\�\�#v�Gn\r[�v�u^�Yu:�\�\�U�k��.\0\0\0\0\0\0\0h\�Ƶ#L(W]-JKe\�\�\�2b\�0\�ܩ�̛;74�\�4�;SR\"�F�\�,��̞9\�9�\�M0w?B8���q�V���\�\'\�\�?*\�.�C�PQ/]\�:\�X�P+���Wʌ\����*K_��\�\�?\��{o�\�қ\�\��\�\�߽�.5_H��]b\�\�dZ\�y��^\'�\�	<\'\�5d��ݬC��gws\0\0\0\0\0\0��a\\;E��K�.\�~�\�\'O�$/v\�j��ڣ�\�8}\�\�·ޒ޽^��K�J�cr�����\�45��X\�`\\�P\� ���PMò�\�\�\�\���}�6\�\�3fSE���Ąf�\��f\�A�\�l\�C�\�\�8\�\�\�\Z���\�y�\�i�\�q\�\�˿���O��^ݟ�\�˥�\�Nr\�XE\�g?�\0\0\0\0\0\0\0\�.�q\�\r\�\�\�\�d\�\r2��7dʤ\�RYQi6/�\�uG��ѣ\nd�\�q&����p\�\�6hjŚc\�\�C\�\�-&�֛�\���Tk��7\�\�\�\�E\�\�X���n3�\\��n[v��|j\�6�2\�\�i�,(,�:�\��U�\�q�\�w\�y�m٣�:�\Z\�m>uݷ��-\�\�\�$#7�u�\0\0\0\0\0\0\0@[�0\�AC�Cʘ�\�R�\�(\�=�\�S�f\�j\�bnؐ!�\��α<\�&Z\�\�g�-\�40�ˮ#��\�s\�\�n�Z�\�۾6bW輞�\�:9b=��\�=yu\�I���m����]g��\�\�\�X{Z��\��\�eL\�q\�5uÉ\��)t�\���\�\�c��[\�\�o\0\0\0\0\0\0\0�-C���ϓ3z�L�4\�\�0d\�`>t�,_�\�tIm�45�\�n�ǯ\��Z�y#��n���\��<u\�3\0�Ǭ��\�\��l�͓\�]V[��\�L���\�d�o\��\���m�\�t��9\�+�>\�N����\�R[\��m��2o��E]C\�=\�]�\�\�����\�\�~\0\0\0\0\0\0\0m¸�+W�ȐA�\�[_���ߣ�+˖.��7o�߶M�\Zƽ�\�t[X,����Ѐ\�G\�.+0{w\�U��tE�Yk:àu%�����/\�\�.\�g�I\�(�O\\�/ّ>��j\�u��Tm��h㸂\�\�ϊ\��Z\��\�\�V\�o5�abIm��l8^.\��G�\��0\0\0\0\0\0\0��@��RTT$\���wd����.�m���q�N: ?�P(\�ʪ\�)b��\���\�/���\�&\��\��\�d~�\�A�/*�\�XF׷�\�i�\�1~\�y�\�W�$\�Q�8}6�=bkU���ԃ�7\�\�&泷e-�\�׷\�k�\��\�*\�%U�\�z�j��\�\�\�9\0\0\0\0\0\0\0�-C����6h\�ݻv��m���q:p���\�ju�\�\��:��D��uX��]j�\'|\�T\�5ʄ\�\�剨efI\�;mug�co�,\�\�?\Z��\�3s�\�\0�h������N���-�v�{Df\�\�5U���\�<\�.8��-\�\�9\0\0\0\0\0\0\0�-C�\0SWW\'���.�m�|\�� \�\�\0\0\0\0\0\0\0�\�!��6a\0\0\0\0\0\0\0<\�A��0\0\0\0\0\0\0\0\�M��0�=tओ)\0\0\0\0\0\0�\�\ra�	�\�ݬ�#�\�T\��\�r\�x��l?]!*\Z\�oé�uW���!�\'�\�r\��!�\�w\�\�\�םe��e6��.��\Zb6]f�3�Ϋ\�h�V\�NQ^s[���L��	n/��Ҋz�>\0\0\0\0\0\0\0h\�\�A��9a��Y\��[\��\�:\�\�m�9�.�߆s�J�|a�y\�K�e��\�-2{o�2��]��%\�9��\�A(���\�\�8���ۿ��Q�\�]F]q\�ܺ�\�V\��o��*�\�-S\�\�\�\�˧\�\�.\�v]0\�\0\0\0\0\0\0��\ra�	�\�\�,��O��M��gV��\�&���\��6�c�k\�C}7\'����\�;\�DZ\Zƕ\�l��\�N����e���U2k\�\�\�0\�,s\�\�\�-��K_1-\�UG�\�g\�؞,GS|\�2n\�y�>\0\0\0\0\0\0\0h\�\�A���aܧ\�0\�\r\�\�[�k\�/\��C6a\\�ƹ˘0notwǙ~��Z��\�t�ΫL�Uo�D�*�њ\��>\�#a\0\0\0\0\0\0@��0���z��\\�rE\�\�\�\�\�ŋr\�\�5�u\��m:o������\�\�Rq�B\�\�K��\n�ӫ���\�Q\"Ǐ��ӧͶty��7oJ���۷o�S\�犊\n��~}���4\�{����\��t;:���\�Lkll4�^�~\�7������:_�2Ѭ0\�L �ˢe\\Z\�c�L�\�\�\�^\�>�kh�g��z�k��=\�ɾ�7�ϙ\�z\��x�>����僞N����\�\�\��\�y���7�\��:~mĮ�\�r\0\0\0\0\0\0�m@\�Btz��<��\'\�\�\':\�\���>�_�۷��*HCC��[�V:<�{\�գ�	Ԃ\�\�\�\�\���{׮�د#���_ɯ�ҭKW�Ǵ)S�ǋ/\�\�ӧ\�)	Μ9#C�!�\'6\�\��q\��LH\�h\'O��7�\�C���O�t钌>\�쇽=�6\��7\�\�\'��ŋIuu��Mf\�K\�7\�e\�2.\�\�tSՁ%^]y29��\�7�ɱ˩z�Z}\����\�U�ˋ�ʘ-\��\�\�@\�O�_-Cן��G��n:y]\�]O?�\0\0\0\0\0\0\0�\�A\�B|\��.?��Od\�\�˛#F\�+�^�\�|\��\�\����\�\\)nܸ!\�>��|\�+_��\��ЩOm�f�m\�V\�=�D>t��>B��\�g\�]_�\ZMS��/~\�s�o\�^wJ�C\�����\\\�UUf�h\�u|V>�\��aZ�)\�\�\�ҿ_?�\�$S&O6��S\'O\�\�~�[��_1�\�\�w��O�c��G>j\�y\��q��\�\��0��\�Tc\�8}^\�\�G\�r\�]�\\\�w3e5�vq=t�\�\���.kLp\0\0\0\0\0\0\0\�¸\�>�Q6d�im�]:�k\�}�\�7��u�;{�;W�;w\�ȱ�G\�˟���\��ȇ>dZ�i�O\r\��1H~��_\���\�\�g]���Z\�.��(�\�\�[��\�_1\�\�\�#G\�_�Z��ϓ᝶�\�ޥ�|�??bB�\�\�Z�\�<ƍ�+n@�h˺�O?\�\�\�פ�\�(i��!N��}��ie��\�\�\�K\"�\�i�a\\D7U-U���e\�5μ�0\��])��JU�w�h|a���DwÝ\0\0\0\0\0\0\0\�#�q-ħ>�_���\�\�T�\�6z\�(�\�(K-2\�<t�I&ȷ��u���׿��\�\�s\�n��<���^5\�W�Z\�T[\�i\�W�\�\�\�xq�tx�q��G�7��:\�^ϗ^�O:\�PZj4\��:i\�D_��?wN^\�\�Y���o�=�N�Q�\��\�\�ǚU�\�?��i]�ad6\�\0��\�]��%�\��=�\�=6ȁU�-\�l\�\�8\�0\0\0\0\0\0\0��C\�B|擟��u��;vȁ\��n\�Z�\�o~#/v\�*\'O�t\�J�(+9]\"��\�_ʐA�\�\�,��\�#�b\��\��\�\�ߒo\���X\�̚\��c�ϖ{�\�\�U�\�V\�̣�W��_�\�Q�y]`5�\�ݫ�|\�c�\�Ӧ��O?^ʯ%��ڔ�?oZ\�}��ߕ;��\�]˖.���\��L\�Xm\�\��\�M\�w\�w�x�ƹ�U�e\\t��49�\�gƹۉ\n\�\Z\Z\�ʆ\�\�\�}�6$ׯ>6\�	\�!\�=�Z�0\0\0\0\0\0\0��C\�Bh�\�/|\�R��\�\�\����|�3-Ǯ]��쾩\�EW�X!_���\��a�鈪�lǧ��\�\�T/�u\���&h�\�\�>nZ\�͘6].^�`\�:����&��\�\'LWӧ�|\���Ih��O}Z~��_�.���q�������\�/_�җ\����̛;\�7����\�Ů\�\��\��^ryE[\�=��\�\�\��\�\�ٳffN�nB�qc\�$��8�\�2�c�\�T\�`-�0\�\r\����\�ia��?VV#?��\�Yw\�Yq\�e��?^nFX͆T˸\�:\�\0\0\0\0\0\0\0\�?�q-��q�|6\r����>?\�\����}f\�\r�p�\�y3\��#\���\�V�{\�.3x����ޞݻ\�3\�<�{\�g�^/��\�9\�\�\��iFm�^~ݝCd\���\�~\�<cN[\�͞9K\�̞-#�\r�\�|�a\�\'?�qY�h��\��G䳟��)�7ȃG\"�\�\�\�\��\�5Jlݼ\�\�\��y�\����I\���oa�t壛\�=g&�a��S\�;o�?\�R~1�P*\�2��<3\0\0\0\0\0\0\���0����\'>)���J\�i:\0\�\���<���\�A�\�4d\�n���\�\�\�\�:��\�?��?Ȉa\�\�;����a\�Ǌ\�`	:�>�\�km7\�\�W\� \Z\�\��\�\\�\��K>�Mø�{��O|\�\�f\0\�\���\�|W��\�/\�\�5k|�ڴ�j�^0��\�MU[\�\�\�>����\�?�\���W��W\�e��\�\�\'�K�\"���jW^s[�o<#\�mmr\r\�\��\�:)�Tm�l\�q\0\0\0\0\0\0\0&�q-�v#}�wo���\nO4\0\�Vh:Ҩ�\�A��\�ZT$W._N�#�~\�[ߖ<�}9t𐻆t�����\�_�:\��\�\�W�6�\�ѣ�\�o~k��644�i\ZƽԽ��U\�8e\�\r�+����8/H;w\�t\���|\�\�4-�t�$�]b_\�\�MN�<)W�\\1\�\�}�?w�|\��-ݻvMn/��\�\�\�aܝ�o˵�\��\�\�\��WV����e\�\�\�x7�\�<3\0\0\0\0\0\0\���0��\�\�\Zrݸ�\�>�c�v�Ν:��M\�2��\�L5H\�p\����\�(�ڲ,8z�����\�x��\�\�0��\�/˗��E�\�h\���_���\�g?KQSS#]_xA>�\'\�8m��\�z\�\�/u\�..$B*\��\�L�VW[kZ\�i\�����d\���\�P_\�+�\�S�\�\'��}�\�@�d\� \�\n\�\�ܟ0\�\�ϭ�9�.ɞ��\�)\�\�^X\�\�V�Aܓ�\�\�)tS\0\0\0\0\0\0x0!�k!>�o0�%t|\�)y�\�g\�?��|�S��\�{̴�\�\�\�襟�\�ge\�\�)\�R~4���\� ݺt1]R\'�o��6t\�`;z���j\�\�vt\�R\r�\�U�7\�T�\�/~�S��SoV\r\�:=\�\�t1Ձ#�uh0�\�s�Mwۂ7G�t\'O��\��\�W�\�]���z?�\�O\�>\\�x1���N�ϩ\�\�\�\r<\�,\�}\�ܰ�)aܻ:��/\r\�!\�E���j�w��/��G\'ʵ\��5�\�T_X#\�O\�A.�\��\�c\�\�\�kY�;\�#\���Ppy��rρ\�\�%\�/�\����\��&\0\0\0�s\�Z�n/t13h���\�tІիV\���\�M�\�\�\�J3\���}�ɉ\'ܥ�訫��.Ç5�$̘>]~�\�ߘ\�Y�\�\�~�[\�ӻ�\�ڹ\�t��=k��}\�9{\�;%��我f��e��e\�\�I��Z&/P\�Vv��7�1�G��Mú�\��\���7!����˽9r��Dץ�c\�^�d옱r\�\���t�\�M\�\r�Z�e�vE=u�V����yp\�U��ϦF<���\�W˯��\�[��.r!�e\�_��q�gB�U&E{v\�nc����l\�\����\�5JYQ�n�.ك���\�]\��\��q��О�\�\0\0\0&\�Z\r���z�\�u�v\�i)\�]:\0��Y��5;H�\�\�իWMxv��u)9}Z���N�:%�\�.�ua\��\�sۂ\�\�|\�o�ץU_�+�v��GmUty}���AC;햪e\�2뼺��\�i�\�zh�5\�\�uDu�U\�\�3\�jnݑE/\�w�?�\�v\�\Z\�[&\�?zv���\�zyy\�	3\�j�h��>�����m\�e\\sZ_e�l\�\�<�=V ��0q��ﻖ�ʺ�\�&_a\\\�|�\�s�\� }�\�s�S\�\�4�.�>�[\��Y$�\��ܾ\�\��\�\�1\�e\�zY\�\��B)�\�7z�_\�\�\�ߪF�*\�&���Ν;��\�ءSg\�\�o����F�K\�9\��0\0\0\���0rF��\�\Z����_e\r\�4\0\�p���\�n�u�2b\�Y��\���elu\�\��ۜj9\�̣˼�\�����iY�\Z\�����w=�\n�\�\�i�,+�ڤg\�\�_\�n�2�ݲ�qQd��l�M\�|�\�\�ewi�?�{i�%\Z?\�\�g\��\����j,]#�;[\�\�\�S��`m��f�\�#�\0\0x�!���іz����7�n>\�3\�z���i�\�T\�k\�\�\r\�p&�\�0u���WFo>\'��^���\�_uMue\�@\���\�ik�l\�9o\�7\�{{��?��@��\�)W�\"\�\�(\�-KE��\��\�\�\�\���݅qu�R\�ɚ��s<� N!��\�\�\�\����+/�\�0?k�����\�\0\0<\�\�A\�h\�\'�xBz����ܫG��ҥK\�sS�oa�.\�\r�\�8\r\�\�n����\�\��}\�oJU\��{\�m�\��˻;�N-\�q�tYx\�̓u�\�\�7F\�2-\�u=>㐔���� \�\�(\�-[Ub=hO������^y3\�_s�M\�%\�0.$�\�\�\�O�� SWQb����b\�\"k��g9���e\��Z�n[\�o\�ת��\�k\�r)Ԯ�\�F\�RWU*\�kgʀ.v�U\�8\0\0��¸V\�ƍ\�r\�ϝK�>[\�TA���\�\�X\�n�:\�ٳg�c\��3g\�s\��9tq\�vu�\\�\�3\�}\�9g�W._�{�}m\�ύ�\�i�\��\�˪+ͺ�/]*�.4ek�ݴV[�\�q�Rό���0���]Y}\�	���]$\�\�;\"�|*d{�s�d�\�K&��\�.��\�U\�7F\�NΧ�c����l�\�Ρ�\�;��\��f�Vo=\�E6��ޤ\�\�\�?Z>��(\�\"��{ξ��\�\�\�G�7��\�7�\�8�\�45����Qv���n\�#�Ne�ϲF)\�9Ezu\�e\�\0\0\0f\�Z�\�˖I�~��o\�W�\�˽�\�/IϗzH�>}\�gUUf\�&��`\�\�A<֬Z-��zY^\�\�S^q\�\�\�h}�u͚9SΞ9\�\�\�G�\�6\�<\�޵�L�:\�t/�\�miH׽KW\��\\�vPt�\��c\�\�\�9s���\�L\�`n¸�fU-GoS�^f&N�`�h\n�l�o�l�I;\�ø��\��A{\0�\�ej �ӌ���\\��m���\�l��\�.�L\�\�H���\\�qJu�S\�e�y]�k���l\��\�(���\�V��]��o�9�\�z\�?\�	|̰��\�Tf�f\�\�\�\�AS�87\�m�Ƶy\�\� �\n��j\�yV��E4�\��~S\�\0\0\0b\�Z�ys\�ʋ]��`\�\':\�\�>�i�\�g?\'=^|фa\Zn)*2ٓ�B���ϛp#���/~\���\�_���}��Y\���?�ɏ}܄ya�\'���|\�\��)��\�\�}\�6���-\�Z�/\��\'y�?�O\�̚�ݔ�\'O\�o�kSƛ��f\�\�3g\��\�>&����\��;K\�N��\�3\�>�6,-�˖\�q�Ko\�gmO�^��\�:��$��\��\�\���\�\�t\\!�\�\�VnQ\�ʪ�0\�фq{\�\�8\�Be��\�\�\��뫶\�;ZV�u�6����=�␝�Q\\�0x�lpʟ\����	\��\�]�\���\�K��|\�\0\�e�x�x\�\�s��_V(\�Y4�:�;}�u��]zɀ�\�ewI�\�M�9\�F\�\�dm�CG3:߼-�R\�\�2\�aܭ2)\\6^�\�,��\���\\x5��+�\�a\�\�\�Yz\r/\���Hy3�\�Ňqu\��� nQ�aS\�5JyI���?^��s~�#%�s�K>#SD\�l7VI�Z���\��[\�S��Ϙ5R\�m6_\�\�\�\�}x�\\vƭ#\�\���>y<�}/\\.�Ru֡S)�����[ }��\�\�ٙwmq\�ߎ�|�f4�&�qM�[��bY\�\�o��\�\��,�\��\�*��Ckd\�\�\�ҧ�s\�y�x:\��6\�\�T/\�n��;�{�\\��\�\��̝\�o�;OF��[�	\�\�E>³<�>\�@c]�oY.3�s\�9�M˽��\�\��\�\0\0\0@.\�\��=*�\�w�t�\'M7Q\rȞ\���|\��\�k�6�`�	\�V�Ze>k�\�#EGL �\����Tܸa�\�,]�Ąd\Z\��\�\�?1-��-\��\���f���}�+\�1=��G\�@\r\�z�\�\�[\�\�<#?�я\�g-���\�צМ0\���z�ƈ]\�繽�\�J��ԃRv3��^��^v´8�²O��M\�K�D�k�-\�V�\�\�b��\�\�\�$5�r{vܸm\�\�\�^\\�l��\\�yG\�Ly�i�\��\�1���l�­\�RY3�s\�2;���Q\�ij��l֡:\�Yt.�X�\�[U$3{�0;���Yr��\��\�4J\�\��Y<�����Q!0Eنl֡:\�Yߺ5�\�0�NJ\��I}�xg�\�h\r��\�x\�\� �f�\��<\�����xw�u.\�\\\�-��+�\�v\�Ơ� ׷IA\�(�}��Ņ��\�\��\�E��[\���%�q�\�vc�l+��뎃6\��<�VeE\�\�o��\�&cy�}ȁ\��B���\0\0\0r�0\�>p\�\�1y\�w��0\�~.��aV�\�\�˷��M�,7��c\�ɣ?���X�ܝ�մ���\�g?�)\�\�\�F׫-״麵k\�\0\�\�N�Eg�ϔ�\��S�L�,�\�G\��N\�9\���	\��YvZξ���|6]���\�u��\�\�\�|ќ0��\�\��Ĭ\��g/��/m��榳r��19���H\� l\��\�{X��dWȯ�0ϑ�\"\�0N\�n���j��>3�H.V6�sdǍ\�\��\�;\������S�~+O�.�m�l�0��-�\�Y:k�\�\�\"(\"ܪ+�)/�֥v\�6@\n&�����ZP<�XG\�f(x�\�\�~ΘQ[ù\��q�Z7\�\\\�Ke�=��n�\�pSVu�\�\"\�\�\�2S\�gsl\�hZ�\�<Ƨ�ˀ�D9\�X�g\\;�)L�\�-[a�`�\�\�\"�>\\�1\�aTW�\�.C\�� $�J�\�1؊D\�Z���\�\�\��||�l4!_\�jNW43��8}[�;7�vn�K`ԥ��\�<�o��K\�\�׎ӊ\�\r\�\�oF~h�0\��rƆq\�o`��\�\Z\�\r�)\�\�1�x\�\�*{�d�}�s9.�\���!\�\�8Ӫ\�=�a�\�\�\�\0\0\0y�0\�>P|�X:����̓O���\�֥�|\�[\�v\�\�mR\�0q��\�O&�-���3\�\�\�#G��\�\�٧�v\�JQt����\�˂y󥦦F\�9R�\�we\�\�ž\�k\Z\�}\�c��k\�J�n\�\�#��L�6Mn޼\���&�{�o_�u+\�\�\�\���.��\�~W*+*\��jUUU\�\0\�Ҝ0NYx\�||�V\�h��\�k��Xr\�t\r\�g���Q/w�ʿ��Q�\�\�\��\�u��\�v^\Z\Z�\�ߔ0���Qz:\�7�\��\�\�r�Jt\�ż�e\�Yx��\�A\�lI�#m�l�(�\\\���[U�q`j=��4^v�uSҖ#��\�NS�\�j�Ѹsx\�;\�\�{�b�\n�F�pm�\"�ܛ�ЮK�\�{�X�XA\\\�A\�û#U\�<;�102k��\�\\�U$�\�V\�C��5J��\�\�ћϩ�)\�ܯ�[�e�u\�j��\"�\�\�r�Lyٽ�\�sW\�\��\�\�+ؓC+\�x�\�\��I�o�\���c��pٝ\�8\�_ߞz\��\�Rq~28\�P��Vy#�|�+.lS2}�	\rŬ\�?|{\�.>��ȳC/��%եY�\���v\� � ��`�g\�o\��l�U~~3�E��q�O�2ݛ�\�(�[�KA�\���\�ڥ|K��քԉ�{Pul��ё�\�7¶�xg0c��\\�\�n��\�\�2\�����.y��ʉ�\0�Gnkƈ�y�}ȁ�\��y�\��7�ܐ���\\櫷Ǥ����^\0\0\0¸�Bqq�	�:>�tD\�U��\�i�&L4\���m3�O7.�\�\�?��O?m�\rg�\����د#��M+�͛6ˏ�C\��\�&\��\���\��\�䢳�\�\��\�~\�<_N\����x\�&\�\�xႼ\��y����W\�˟��|�S�6Aa�\�].47��j�#\��?�F;��\�N�\�=/��?}~M\�w\Zn=:�P�\\�v\�NS\�8\�\�\�\����\�),�\�Α=��\�\�����\�:jwܗGn�\�e�J�\�f�|!Z��Rr��\�^�,��9|{j梉�\�\'�S#\�\�T\�\�#S\�2�\�-�o�\�\�>q7�u������\�2\���L��\�{_�\�]f���8gm����)wr\�C\�S\�;N��a�\�59�\�#ƕ87���\�\�gE.\�`\�m�{\�\�I7ۑ�A��\�V\�\�e�\��xx?�\�Ւa\\0Xk��c`ԡ߼�p�^�LI�-$\�\\�M\�\�η�5\�ǚo�!w�K�~3�E��q\Zr\��l�\�\��yQ ��\�!�\�\��tP\�+����[�+\�߆/tT\� \���jk��\�j]\�O�9P2\���\�Eٟ�\0\0\0�a\�}@ø��qaa\���g>k�2m\�\�x�\�?d�\��T��\��:0Ī�+M��\�[�\�\��|�{�oo\�8yaܲ�KMH�v�\Z���\r\n7n\�h�\�\�H�^\�8\r\�>��|\�_4\�Ԗvo\�_`F�����\�hn�qԉ+��I|�\�<\�e^+5�3ol7#�f\ZT�)a�v�=|�*9���\�J3\Z\�S\�\�n�텡��tP/pԐ�\�\�\�qJl�U%k�y\�u�)24\�\�\�\"y�\�/K�\�͸\r�+�/P\�#k�\�~T<-uS\�y�}K���⿯Z�\�֙1|T�6\�\0w�\�.\�\�\"� �n\�|a\\ǎ\�ѾY~\�)W�u�j�m\�S\�\�T\�\�a]�cS�1U����\\�¶L\�G,�\�x)\nۇ\\�.3�$&\�\�]\�\�qж�.�q\�~�~3�G��qdw\rF3rk�On;伱���w�\�R\��;��ߪ�PW4E�9��(\�/\�m��\�~�>\�@\�<\�\�f\��\0\0\0YCw(\�g\�=��\\!\�q\Zvi8e?3n\�����HfϚe��^�pQfΘaFeհ\�f�\�y�O|\�\��/~Q���/�W���<؝3\�MU�k������\�4�{s\�Hy\�)c�>}��\�.�^0ϴ\�Pϛ_�\�W��k�47�S4�\�\�=5�H���\�\n\�\�,�?z�\�9[it\�DS\�8]\�\�\�y�=��S�e��\�\�,�D7s\�z��\�\�_Xm��\�p	\�\�\�-���\�ɪ3ϥE\�\�[ƺI���r�\�~ĕ׾�J\�v\Z�릶`�;Q\�T�D\�\�7ۮ\\e�(ٝ��,�\�z���i\�?\n�\��\��\�v��\�\�l\�\�,�\�r�PW眗�� \�\�e�J\�Z\0d\�\�lw�:\�\�oF�h�0.��fE�$��!�\�b۾�k߱\�\�oUS\�\�g\��\n<C0\\\�v�1t\�����5q�v\0\0@N\�\�t4U��\�\�7!��Z:�·��\r_7~\�X�\�d��h\�ӳgΘ\�u_�\�\�\�rY\�2�\�;�_���\�q\�\�-\�q\�c�pͪ\����\�t)�|9q\�fp�Їe\�[o%ˢυ\�.�\��\��\�K����\�\�\�<�N\�\�\�\�h�\�:/�\�#�St0\r�\��\�O\�\�\�\�7P\��\�V�>b��\�z^J�\�e\�)&�s֛\�\�\�.W\�J��j��^����;e�nKGQ}\�c�7\�2\�#\���\�\�R k�H�\\]����g\�9vv[;\�\�\�!����\�3\�\�t�\�*\�wS���⾷o�;K�\�\�F\n��֗��<3\�<j\�r\�]R�zRI\�\�#��o��\��V\�\�9Z3\�@\Z\�C\�;�?\�<S}g�\�\�Բ\�G3ʕ馾)7�e�u\�\��p\�c`\���\�\�E�y�\�\�m6�k��\�c�e۲�2~\�p\�\�>�?}�\�q\�Ak�����52O\�\"l\����\�\�C\�sO\�5��^�r�izИ��\0\0\�a�0\�>p��H~��_\�\�\�Ō7J���q\�>��|��_5a�\�\�Q�\�\�߄f\Z�-]�D>�\��!3�O7\�(,4�\�F�\Ze�6�k׮\�믽f���X��U�}�\�> s\�\�I�~Ӂ�k����\�����r��R\�vAծ�ڢOG{�\�\�\�2��\�:�C�\�8EC05UC��\�*e呫2o\�%�\�:S)\'�\�\�\��ƌ]S�4ܹ+��^3-\�\�\�EW\�BE�\�^��\�\��\�eڮ2\�q\�\�r\�z]�4]�Re�L\�Q*3�u7\�m�&>y#\�@-�,��	�\�CF�\�Mk}��򤍦\�\�T0CC���p.���s\�d�¸�\�}\�hj��ͤ$S�:��3e����1��/�{��L)rnzC�]l@��\\v\� ���\�3S}g\02�,R�Q�|�q��\�\�\�3��Q>¸��f䉶\�5^\�-3v\�n�Oc�ø\�c�\�ߪ�\�X\'\�%E�f��\�>Iu�Y_���\�CT_#\�\0:Y���\0\0\�a�0\�>�u��?���\�7�1#�\�h��\�v\�\�nښ\�c\��\��o~K\�ϝ\�NI��;u�|�+_���\�\�&L\��J\�\�t\�iϣ�\�|^�x�	\���v�\�g��\�?��L�:M\Z\�S;\�\�\�ʘ�\��igޗ�w�ʊă�Μ9#��կM\0�\�U�\�9\�Ա�<ա��^XX(w\�\�1�\�B>\�8\r\�n߽\'u�\�\�h9\�o>tQ\�^��\��U\�����M0\�Y\�pG\�\�mF!,*\�\Z\�Z\�\�C\�\�\'&�\�H�\�Ƅ[��&�\�h,�5ó�	\�<XքvEr�)oZ��\\\�W\�+c\��\�L6J\�\�\�C�\�;\�൥��4\�C�>ꜛWk0��\�)!\\\�(�}\�Y>\�!\��K>q�\��.S}7�f;_\�\�s\�{8~\'\��\�T\�m,�\��oFhKa\\\��H�>�J��\�\�o���8 \�u�%ø��V����h�5\0��\�<�>dM]Z�l;tJ\�^d�\�>ֱ\��y\0\0�0Aw8���3F&O��l�\�\�ͤ�e�����\�5w�\�\�5kdȠA�g��<(���U2u�y�\�\�\���2j\�β�&��9y�0@\�1´�\��t��\�۶��w:�\�\��7w�\�\�֚iZ��\�\�\�Kݺ�m�/�\�)�^\�!/v\�&ǋ��\�:��\�8hd��b?\�\'f٘p�\�7�h�+�\��``��.Y�i-\\b\�\��2�	�\�Wל�\0^7.\��҅ҳ9#�F�qʥ�\�z�\�\rT[@�\Z\�\�6*\�I�Ǜ\�|�+ӱ\�\�\\h<4޺Y\�2\�l\�a\\3�C�	\�|�8v\�%�]�3�E-\�\��%�W\"�`\��|��\��Q;��k���&\�$\�\�.\0\0\0\�\r¸��pW�^5]D�u[�+W�\�ŋ}\�Xee��]��6b�_\�jM��6�-\�t>}�n���̨\�WuY]��6�n\r\�;z�\�\�\�5\�\�(�\�Ҁδ`�\�l!�{�)�wY��\�HwI\�\r\�\�$jt��{p�.�\�?_�h�+��=\�ӻ��1\�-[l�Ph���\�\�\�\�꾳\�k����ݲ<���ǝzib\�\�0Ρn{\�\�ݜ�\"b[�\�v�)\�\�å\�\n\��Z�LaF�aG�\�a�������0��~3r�m�q��{��.\�nS�8��k�0��~��=����܏0�\�\\#\�q���q\0\0\0y�0\�m!�\�\�Xk\�I���\�\�3����\�=�if�\�\����lGUJ\�YE��Ɋ�A�G9|���I��nA\Z���n�\�n\�\�\�k�HQ�	،0\��\�n�\�gm\�G�\��[U5��:S�ݲ\n\�d7��\�\�\�\"m�0.�\�\�KW\'ۆ{�8\�2bm[\�Z�7#3m#�+��V`>|{Ƴ�u\�8g\�\���j��(|�>܇0\����,~s	\�\0\0\0�a�	�\�U޺\'Ս��\��=�u�m�v^�\�ߑK�w\�ȍ\�&\\���\�RVwǙ��,�%7�yn8\�\�m^k\�ܓ\�\���.\�ɡ\�䢳챊\�f}���2\�sy\�]ip>���-u\�:u�+uw\������w\�z�;\�5\��\�U\�O׭\�\�W��ܙ�\�\�;r\�f�Y��j\'�u�v>\�\r\�68e�\�,����\�|�~]\�5g��5ȖK�f޶L��%R�7\r%s�Vbq-�bo���uk�\�\�8����G�oϢ�_$\�	㜚�o\�L\��a\�\\fs3\ZN\�0\�!\�|\�\�\�(�R�d�\�r\�!�+�=�\�E���q�\�7#m#�\��\�\�\�b-\�\�i\��Ƕ��\n�H��%9�\�h�6r��߇0.��m��:\�|\0\0��!��6A\�W^��G���rc\�\�)��-��\�2��h\�\�\�\�R\�\�\�Ur��фYo�T\�\�+�2\�H�	�6_�3���\�<{��L9^%.ԙyuY\r\�4�[\�|^}�\�a�\�a\�\�\�W��5ᝆx�OW��o�����\�q�^\�T7\��c7e]i�\�=Um\�\�\�kKke[Y�)�.w�\�	���)�\�:\�9g\��*LYJ��u\�}��,9S#��\�:\Z\�iS6�f\ZK��\�-�\"\�aĆq\"Uk\�\�;J��lZN4J�\�)\�k��6\�FiH�l���5H`{ξ��ӓd(o\�d�\�\�\�}dQ\�@6���x\�`\�{\�Z|ؖ���5�Q\n;�\�-UY�j:\�┞S��U�b�l)����o{}d�Uwz�d\�)Y\�\�k\�\�RQ\�>��o`��\��Z�\�q�\��\� ��0._���m�q%2���.\��`r\�#��dfO�\�~\�y�\�0._�U9ᖿC\�Y\�\\;d�QJ�G\��\��m\�\�35Xo��\�p\���V���kdpgk]�q\0\0\0͂0\�=/\�I\�nix�\�y?ݹ0^]ZkZ����mª�Goʚ�ݙ\�l\�Yv�ƄkK\�\�ȑ�dו\�iЦ\�4\�\�@L��7W\�Tg�W\�\�H߽\�e\�\�z����9rS�;\�5UT)\�\��ԘVzk�\�\�\�1�١�[\�:*dΩjy˙w�3ﲳ�\�\�\�v�\��\Z\�i�V����N�4�\�m\�~����}�R�L�t�=\r\���3\�K\�e[IUz�v�܄J�\��.SK�\�Vz+�\�\r�6)�Rw\��K�̔]\�\�\�\�K\�F�\�\����4�A��\Z�l\�x\�n�=�\�&Sy�!��0:�PJC�̯I.+�^O%\���\n¶�\�\�͜��upn\\����kξ��l����fS���!|J���v\�x��\�c�\�dߝ9@\�a��i@�\"�\�;��)����՛g\��\�IM����u��\�r5\'�<�>��o,y��\�\�\�7#��0.�N���e�=7J\�\�\�6c���\�\�\�a�C>~�r\�W�\�����˶Iqi�\�߆ƺ*3h\�_8\��)\�Γ ��.\�8\�WvM?\�{\�ߚ��%\�\\�$pꪮ�0�LO{=\�&\�\0\0\0\�\�:���P]Ue\\ȫ\�:�2\nj[`�\�i��-ܴřW�\�4A�]\Zƭ�P\'�W\�ɛ��\�\\�/�\�\�S��\��\�\�f\��M[\�i\�\��_��\��\�&ߔ�\�jLH�-\�4�\�\�4�[z�\�l\�\�4̛\�̯\�Z5�[붐+(�4�\�t{�OV;\�\'ʘ\��i+�w�\�X�\�:\�\�U�S[\�i �\�\�uiK����\�t\� ��tN6��ss0>ӈ��\�-%��k���\��\�\�͋�FɳC\'w\�\�!e�j�My�!�\�S\��\�Fq��\n�¶L\�+\�͹\�\�\�[ؾ[��vC�Z�\��A\�4\�ir\n\�҂\�NNٓ�\\�lh}g�>\�\'��n\�\�v\�Ռ0�d��\�\�\�9u~\�9\�nT�\��(oa�\�\�ߌ�\�V\�8�\�(\�~�B\�ЯO�y�\�3\�\��V儯ns��x\�7\�\�~�q�rc\�\�\�\�s\\�Xo\0\0\0` �kG4\�7\��m\�dܘ�2q���:v̘\�\�]\�:�.֛\�e[\�\�\�3\�4�ҐJ[�i@��B���m¸\�\��\�\�Uߑ\�gj\�s\���1!\�\�\����R�y�s\�JN[�i��\�jh���4�q�\�iCT�.��uh\�5\rޖ�!�vE=�\�T�e��n\Z�iw\�I\�rSu�\�2Nˣ-\�4�\�y\�nwۄw��\�4�۫�n�r�=w��\�q\�\���>�C�:)	�z���`Y~*�v6ل[Jc��bu\�ˠ�t�Y\�Ϫ��i�?c\�<d��D=\��u��W[\�m,�[\�\�#�S\Z�tmǭCg0�0ٲ�\�Дd˽�f{\�c\�5����͙\�RW$S\�V{!v\�9S���x�|���r5#��\�u��=��Q^\�8�Y���̈́quES|�\�\� �fIս\�o�\�\�\�\�6\�*\'\Z��xm��	�O�H;H\�1ۤ<��e\��\n\�\�6�\�u�\�Ri\��\�.\0\0\0\�a\\;���\\��~E\���\��\��\�\���\�\�\�\���r\�\�wk퇽\�]7�5�v\�|���\�>Ye\�\��\�4@\�l\�U��#W�Vg\Zfm��h=�\�L��K<cN\�<\r\�\�9\�\�`\n��9m\r�\�Y�v\r\�A��q\Z�\�648\�\�y��\�5�3-\��.\�\�.g��\�0]N\'9\�\�\��\ZY\�lKÿ�\�v�9q\Z�i��Wdוz\Zj��nCש\�auy���5\�ݾ>?N��vŭ2\�&f�\�޲D[\��>O\�+Ov�\�H�7�%�m~�\�h]���z���k�8\�\�p\�\rXɞ\�2sx��V^ٷ�\�pk�ky/\��åO�@+2m�\�o�\�\\�[J*\�ʛ�0\�E�}\�<)\�+�c�νd@���g\�5JU\�\���\�\�~\�~\�\�R�\�s�2�{\�i@�{UR�]{vLu\�r\�\����\�֭\Z\�)�(a\\\�s�Y�y�-�q��R\����;С��0c��[t?\�8�f�V\�N\��ٽlf\�ߴ`\�;\�����o\�M�/�S\Z�jwT\�\�5\�\�\����G�y\�V	\�\0\0\0�a\0�\�\�\r74\0\0\0\0\0\0-�q\0\��\�\����\�\�\�\0\0\0\0\0\0y�0\0\�=���,�rwz[���\0\0\0\0\0\0�a\0�c\Z�|\�p߃���\��\�\��G{+/\0\0\0\0\0\0\�\�8\0hGJ�ZХ�1md\�N\�\�{\�t����\0\0\0\0\0\0Z\Z\�8\0hGأ\�\�\\ ۮ���\�[y\0\0\0\0\0��!��vD�\�\�\�!h=\�A:� 3��J\�=w�6E{+/\0\0\0\0\0\0�4�q\0\0\0\0\0\0\0\0\0�a\0\0\0\0\0\0\0\0@+A\0\0\0\0\0\0\0\0\�J\�\0\0\0\0\0\0\0\0��q\0\0\0\0\0\0\0\0\0�a\0\0\0\0\0\0\0\0@+A\0\0\0\0\0\0\0\0\�J\�\0\0\0\0\0\0\0\0��q\0\0\0\0\0\0\0\0\0�a\0\0\0\0\0\0\0\0@+A\0\0\0\0\0\0\0\0\�J\�\0\0\0\0\0\0\0\0��q\0\0\0\0\0\0\0\0\0�D��qcƌADDDDDDDDĀ��\0\0\0\0\0\0\0\0h%\�\0\0\0\0\0\0\0\0\0Z	\�8\0\0\0\0\0\0\0\0�V�0\0\0\0\0\0\0\0\0�� �\0\0\0\0\0\0\0\0h%\�\0\0\0\0\0\0\0\0\0Z	\�8\0\0\0\0\0\0\0\0�V�0\0\0\0\0\0\0\0\0�� �\0\0\0\0\0\0\0\0h%\�\0\0\0\0\0\0\0\0\0Z	\�8\0\0\0\0\0\0\0\0�V�0\0\0\0\0\0\0\0\0�� �\0\0\0\0\0\0\0\0h%\�\0\0\0\0\0\0\0\0\0Z	\�8\0\0\0\0\0\0\0\0�V�0\0\0\0\0\0\0\0\0�� �\0\0\0\0\0\0\0\0h%\�\0\0\0\0\0\0\0\0\0Z	\�8\0\0\0\0\0\0\0\0�V�0\0\0\0\0\0\0\0\0�� �\0\0\0\0\0\0\0\0h%\�\0\0\0\0\0\0\0\0\0Z	\�8\0\0\0\0\0\0\0\0�V�E¸1c\� \"\"\"\"\"\"\"\"b�\�._��\���\�#\�\�\�\���jYd�%\�\��\�\�Y\�~�f��YMLW\�i!\�����>\���G�C��\�4}��\�:\�{-JN{ҙ��h��S\�}=�x��\�|v�?\�z\�4�s�ό=*�\�{�츄�\���\��\�k\'絓��;\�L;\�|8\�<稯��9hgu��\�w??\�z�\�N*\�\�.�=��:\�Uo���۔\�\�N=.ݝW�E\�}�/M;�4l�g�\�\��4�\'�\�p{9�l<!/\�t^Uo��ٲ��p�\�>�ѾsR���\��_=_�{\�U\�\'>��\�מ6���	\�g�}��$}�-\�\�\��t\�\�y\�yU�}�C�Is\�\�ưi�Ö�;|\�Ya<xM��\�Q_=�\�o\�4}]~\�U߫\�\�G�8/��\�\�5\�\�\�;fU��\rq�\��\�\�NX�z\r:q\��\�R\�\'9Nv>G9e�E�Sm7�;mc�\�7]2\�\�輪\�癛ӝ\�K2\�rΖ2c\��%���,\�m�\��y\�.\�|G}\�i�>\��˲`G�o\���p\�Y�Su\�\�rt\�/r^\��\�焋w_�%.\�s\��~����7�y��\�v\�\�k�b_\��y\��hW�׸�\�\���ik=\�\�\�ڃ	\��\�\�&ޯw\�p\�z\��\�a����n<|#\�ME\�n>�p�\�֣�נ\�\�cΫ\�1���~wǻ�xe���ޔ\�\'�\�9Y\�\�<��\�0��N�\\x�\�\�y-Q���,ڞ���g\�W\�CgSv�2&\�>缆Xt�Z�8�F}o�15�\�\��hi\�c��Ū�>\�\�j���\�^�1��\'/�{�,|�z\�X��r\�\��J��q\���gϳ�z\�y�Z/\�\�^qu?۞�\�4�\�X^/\�^\�W�\�Ns>_�\�\r\�[I\�Ԋ�ī�y\�x�\�\�+je\�\�r\�x+\�MW\��5g�񦚘��	oK�Z\�|\�\�˫o\�u\��zUc\�j}�-7�\�U\������6ݛ�w|\�o\�9���R�\��W\�}U}\�j\�\�{��I\�J��Z\�ਯ��ٱ�ᮣ�Z\�r��\�Y����z;a���\���\�jbZ��]�Nwl0\�t\�c\�=�\�\�ܓێ����m�9\�Ƥ��\Z\�&\�\'�\�}[\�Dy/\�][\�;cr��\�{�\�g3\�mI\�L7��\�~\���m�>�8ߙD!�3\�7\��>�Z)-�h�\�a~\�p\�y%�#�#�KHG4,t��0.D+�#�#��%�#�#��E�\�\�y\����^+�e\�T\�8̯\Z�9��q�q�q		\�ゆ�nQƅhq�q�q��q�q�q�\�\�z\�8O\�8x\�\�k����\�\�a܇\�!�����������q����������$a\"\"\"\"\"\"\"\"b+I���������\�J\�!\"\"\"\"\"\"\"\"���q����������$a\"\"\"\"\"\"\"\"b+I�\�:縞\�\'&>�/N|\�\�\�Ň\�ɕ��bˆ\�\�\�;�\�<q��>0/\"\"\"\"\"\">\�!6A\�8\�F\�8DDDDDDJ���������\�J��0\�k��\�2\�6\��\�3��R�5S\�z�>+�\�^_�\�\��z-bl\�\���\�\�c탯N�-l�u���a��?X\�4�\�g�7���\�di\�͢\�=\';�\�:\�=����\�\����\�,\�u.�\�:ʮ�\�u\�d�I;��ͧF\�Y�SQz-\�|\��o�)dݑ\�\�3�O!u뙱,f:��\�\�\�\��������ZG\��q�\�ߣ�\�o�gd\�\�xޅ�\'\�\��5XN{\�d}ʛ�\�T\�~�}\�G\�gO{�i\�I��͠M9��Z�пe5XN{,�e\���xf<?#��9g⶯��\�\�c\�\�\�t_�,\\sB��g�N�TW�1	�\'�\�\�:3�j�c\�[րi�\"\"\"b��]�q�7:\�.\�Ö��@���(\Z��\n�?x��V6��˾xs\r.\�+��}\�\rL\�>\�\�q\�u\�5�==\�*\�m\�U���\�T^5j\�\�\�Q��ӹ`\�8G\�\�F\�\�\�&�\�4�~��a\��\��o*�Qu\�m_\�p·m\�>�<�AF��KǨ�4�Ns9.M�ۉ4p�C\�U\��o �]\�\��\�\�V�ߪ\�<�\�\�f\�\�\�h�\'\�Xדv��\\6p�\�r�3�\�R�c�Q�2�Z�==x.\�Z���$����6g_�z~\�nS��^\�ckOw�\�9��6�7\�>fa\�\�o\�K\��\�B{��ux�n\�c�\�*\�c���\�=\���Z��\�/\"\"\"��0.p�\�v���a.M!۷\�\�XsM\�/\�\�J\r\\Щ��`5�k����}��.��\�\�y3\�_�۰\�%\�8{i\�ɰ/>�P���\�|\�MS�\�K�#q7\n���\�i�d\�e6��fT�\��R�L��7u�$\�\�X:F��v٭�d{\\Ԧ�\�D�;�f�;\������Qu�\�:�\��}ϳ��\�~��>�x.\�\���˛���q\�\�8g*[��!\�\�c��\�A#\�s.\���D|\�\�}m\���M5�n��m\�1\�gh\�\"���\��-��\�\�0.\�˚TW\�\�\�oߺu����X��\�/\"\"\"��0ξh\�B\�}\�L\��9\\4\�5\�m��)o�k\�~E]�&\�\�Y\�B]��>y!lm\�wq�a�t�0r^{ێ��\�v���\n\�!\�M�c���]�\�Ss\�{^{�\�}	\�\�ȋ\�l�F���\�\\��2\ZU\'\�~ŭ7v�e�8\�\�\����\���\�qQ�����w`�lΟL�u��/h�߾s �\�e�߀����{\�r$\�([.\�9\�y\�*e1�e(s\�\�uŜ˹�?\��\�d��\��.P���ݦj\�M`\����\�vs�Y>~ӓ\�\�)�)�Un�l[\"�U\��\�`T�D٤�\n9&�z�}~\��\�/\"\"\"��0ξP\��\�\���0��&߼\����m�\�\�\�T\�~E]�\����海��}m��!b�Yבc\���C��\�6���ި���]N�2�υ��v9\�}\�=_\�>g�7\�Y\�L\�w\�\�o*�Qub\�}\�9\�ܦ}�\�1\��\�\�X:F��\�ɥ�����]�\�\\\�֞W?\�U\�\ZC\�i�\�߷�ܮM	[2\�{D}\�#o=^��\�U\�8\�r�3�V)C��\�(C��F�\�^OS\�o�#�udk���\�g\�6՘��\�\�e�s\���\\\�Y��\�\��^}�\�iQ�\�\�#���[֤�\n���6ög\�\�\Z{~\�W���ۍ���m\�vƅ\�p�/n܋�����/C.�|\�F�2xQ\Z�x۳o�Դ�ߨ�CW�\"X�\�]�\�ھ/��\�v!go\��ޮ�0\�z��Ϩ�	\�l�C0�\n�\�^W67JQ\�W\�v=�i\�mT�GԵ�v\�\�rx\��77oh�\��\��!\�\�j6u��q/���l\�cTY\"�\�\�r\\������\�2Y\�_���\r\�i\�[�����fq��eK�mU�텭\�޶\�{�\�y�\�\"P���M\�޶u�x\�af*W\��g\�P\�Q\�;��.�]�@dks�\�^6͘�\�nS�\�[{=1�\�\����\�~��|!&���\�۞�\�\��\�\�\��=��G\�l\�w\���TWv=��{�ݯ\���~c`�\\�ۇT˸��и�Ҭ/@�.�\�^\�z��\�W]>v�bʬ�.�����\�@˴�6�\�s�Ho\�v�۰�o\�ŧ��\�0�2�7��\�L�hk\�f\���>���\\�F\�\�\�(S�S���\�\�Gk�\�9�\�1\�\�X:F��Qe\�\�4�o\'L�\�\�n\�\�X\���vҴ�aܶC��i��ׁ��\�z�\�o\�]No^\�h��	\�2\�L\�y��!\�\�c��\�A\�u�vd]~�,\�.iDY����<!����\�T\�m��\�6u?����<fnټ\�^\�T=�لq�����\�\�3\��Ⱥ�\�I\\\�\�1Y��C�o�\�\�/\"\"\"��0.jި\�Y_\�r\�d\�\�^��m\'v��.]�ˆ]l:Ӽ\�79����u9�\�k�\�1\��e��\\øL\�jݶ�|\�6�z.��\�7\'a\���q���ǰ}�=��0�\�7MQ\�n�6�\�\�>W�c\\.j{Q7{Q\�}F�%B�\�H3�2�\�Կ�4�\�1�~\�rf�7��\�+sھY\�dc0�\�T���Qv9�\�5o��W�s%�\�w\�V)C��\�(C����\�^\�1�|Y�?\�߬\�\\�(k>�U\�\���ݦ\Z�_���h\�~D\�u�\�Pr~��a�>G�g��&\Z�oY�\�\�>&��.{�ٖ;��9\��e3�����\�>|p\�8��*F�*\�\�\\.�\�y�;�l\�>\�/�šk�\"\�L��\�껀ϰQu�\�Esؼ����\�va�A\�u\�tC\�\��Ǵ�4�\\�\�Ͱ��}\�T�Y��\�z�\�z\�\�;fiF՟�-g�˅\�c�.��:Wr:��ٞ�����ug:\�a���\�.O\�1\�\�\�\�F8K}7�\��\�\��\n\0<�\�cO��\���EN\���\�	ُV)C��\�(C����˞v.\�R��s\�3��$��\�i��\�T��H�-���,פ���\�Zƀ\�\�R^\�D�-f��f�oY�\�*\�\��:Ͽ(CϏ��7���EDD\��\�\�5\�b+\�\�\\.�\�y\�����Q^ϴ�`W{\�\\¸l֙\�B/j^{_\��\'\�m�U\�5\�8�.��\�Ʀ�ּ��\��Q�h�3�\�a��\�s\�\�C\�MS\�q\�p�Fj׉�\\\�tװ�3�|�\�u�2l3h.j�\�Em\�\�Nиmf��l��\\�ڟ�ue]o\�wQױ\�:��o\�l\�%\�.�\�\�\�^_\�rqu�f���JB�\�7\�o=c\�;6\�\\\�W�\�ې�U#\�X�Y�~\�\��3\�\�@\�\�U�\�\�.oS�Yl9�e�\�\�6\�\�ȶ�\�8]>\�ع�m�I\�w\�1�\�\�\�wg=9�\�3\��EDD\��\�\�e�/\���/s�h\��?��\�\�a\�:\"/�\�m;fsa�ƕ%��\�\�y\�\n�\'\�md�\�Q\�\�L\�U��\�^����z.\��\��.r�}I\�\�h\�[\�d�\�f�,Q\�̴\�l�kk\�w�\���η>k\�\��\�t�\�����i\�ߜs+\�\�u\�\�P�V=���D|�\�\�@rz`Q��u�Y\����r\�u�wNĝQu�\��wq<[�&\�(�]�l\�y�\�\��.\��\�\�\�.o\���v¾�;>\�w����b\�a/y\�e�:f�\�9�㐜7b�ը������\��mG��\�k]\����\�\����YЦ\�/\"\"\"�}�0.\�\�վ\��.Z\�i�z\�/�\"L^P\��F�E\rݯ�\�X늻\�Oc�}�� \�XGV\�y�\��\�$�\��ن�\'�O�\�?j�l#ϯ`}y�\�\�s!\�X�.\�\�\�\��1x,�~\�zB�\�9o�|\�>$���=`\�fk�\�2\�o9\�|�\�u��\�/݇\�4\��3�\�\�ߎ��g6\�\�v�4�o��\�2\�\Z�\�7�\�7KÎAԹjo;m[��8\�2gs,����*C\�\�g���\�\�\�$\�\\nj����\����!\��p|�Ɲ�qub���{\�\�\���\�\�珵O�v93�3\�톔\�3�0.ԘuzF\�w̲Yו\ZwL\�t�\�*��\�^���Ҕ�EDDĶm�\�	\�[I\�8DDDDDDDD\�V�0��$�CDDDDDDDDl%	\�[I\�8DDDDDDDD\�V�0��$�CDDDDDDDDl%[=�CDDDDDDDD|Xm�0\���\��\���Au\�ay\�y5�,2\�\�m�\�\�\�i�{�\���&���\�uz\�ߏ�~�	\��#ҡ\�Hr��z\�b\�%�=\�LKx4��)u��M�ONs>;ӟv^=u��9\�g\�����\�v\\B}oNs|ⵓ�\�I_\�s�s>�pL�s\�WO���:\�}�޻��w^=_�^\'ge�ɞǍ]���7\��\�m\��h��\�Ϋ���>Η��H\Z6ͳ\��t{�ד\�sF��_6���g:��7\��l\�{V�}f�\�h\�9�W\�~s����\�=\�\���\��kO\��\���\��>́J�����\�\�~:ha��Ἢ�>\�!�Τ9t�Yc\�4\�aK\�����0��&ޏ\\樯�\�\�7u��.?\�\�\��\���V��Q\�g�\Zp�\�\���TƆ8\�q�\�p\'�I�����\�u���\';������ϩ�ҝ�1\�\�.glt^U��\�\�\�\�\ns\�%�m9gK�1���\�\�Z�\�6W\���m�e���\�4}�t�eY�#ڷv�]�\�,ܩ:\�w9:\�9��vy\��s\�Ż�Ȓ�\�\�{�\�\�|ޛ��\�yo�b\�5Y�/\�J�\���j��ˍk\�\�\�\�\�̴��tZ\�u\���\�^w�^\�\�;n8t=\�z���\�}U7��榢h7I�\�q\�\�\�k\�m\�\n\�\���N\�W�;�\�\�y�2\�]Io\�\�~�����Tb�}\�k��O�~.<]\�輖�\�{\��m\�T\���\�㡳);\�\��s^C,:_-G�W��7\���\�j�z�4\�1\��\�b\�y\���IO\\t^/֘Wϓ�\�=U>M=m�Kx9�Zb{�Nθ\�{��\�Y}�\�^��s�g����m\�_�[\Zxo,��\�\r	�\�~v�9�/�x\��\�ejEC\�\��μw�\\q\�\��2\�m�j������3\�xSML\�ׄ��\\�r�s\��\�շ\��z��1a��ޖ�\�\�V\�\�[Y�\�\�\�;��7\�\��F�\���ޫ���>a��\�\�\�פw�\�y�ip\�WO�\�X\�p\�Q_-o9\�\\\�W\�z}���^_\�\�{\�t51����^�;6u��ޱ�\�r\��\�\�w\�\�mG}M|���ec\�\�|�w\�\�\�-w�����19M\�\�=Wﳙ���t�\�\�o�\�}��y�T�\�L����\�fz���A�S	\�0�j�\�\�\�\�%$�#�\Z�EI�\�\�\�\�\�\�\�\�\"�S\�	\�<	\�\�AC��\�2�v*a\�W\rלW\�8\�8¸��q�qA\�B�(	\�B��8\�8\�8[\�8\�8¸[�qj=a�\'a<h\�RZ\�Nm�0�a�0��$�CDDDDDDDDl%	\�[I\�8DDDDDDDD\�V�0��$�CDDDDDDDDl%	\�[I\�8DDDDDDDD\�V�0��$�CDDDDDDDDl%	\�[I\�8DDDDDDDD\�V�0��$�CDDDDDDDDl%	\�[I\�8DDDDDDDD\�V�0��$�CDDDDDDDDl%	\�[I\�8DDDDDDDD\�V�\�ø\�\�bDDDDDDDDć\��\�\0\0\0\0\0\0\0\0<l\�\�0\�\��ለ���������q���������-�a\"\"\"\"\"\"\"\"b\�A�������I�w>,\�x\�w�\�p\��\��g�ܗCDDD\�C\�8DDD|h\\\�Uð��	Y&\�U�&\�\�\�Ý\�s��5-�\�!݂\��4\�\�����\�!~c\�k\�<1��\�τ�uUw�\�\r�{݉rY\�\�\��m/U\�VY�֍�\�\�O\�7Ҿ.�����_=\��\�\�\nx�\rb��(n����KJi\�T\��V�\�i\���*O\�2���xTV\��[aVl��m7�΃\�Y`�v\�\�ߐ0.t\�>ZA^2��\n�a\"\"\">�Z\�O��W�^\�XA��[�\�\�5%��B4��M\�\�d\�\�\�\�	\�m��\�ҷ\�\��n�L^X\�\�\�\�\�vW\�8DDD�?z\�!\"\"\�C�>[`\�\�F\���j|��\'c fS\�8�\�lg�B�d=5+�+����]w��\�S\�3eI�-s=\�!\"\"bk\�A�����v+�\�0ɧ�D�w�p!AP3ø�� *]��\�m��\��l\�8�\�\�	\�\�P͛/��,�KC�>ƅ-!a\"\"\"���q����pi?\�\�\"tC�\�e�!PD@�CH�24�o\����\�\�/P��\�n\�qA��fz(�\�i\�p\�\���?��e\"\"\"�Q=\��!\�\n�r\n`�\��Tx�fy�x�\�[尷ӌ0.X\�ӛ\�2.M�\�!z\�)-�K\�\\�,qu\�\�\'όCDD\���a\"\"\">4&×\\C)/|\n\rڬe-�|�S���l\�	�\�\nʒ\�ib�\n���\�0.j�\�tw\�\�vY캷\�\\֞\�\n\�\��5� �CDDć\�-�L\�Jy�Mh�\��BLk\�\�\�a�j�Qf�|��&��Z\�ߧ��\n4-�¬�}jm7m\��\�c�\\W ��\�|�[��cz|�a\"\"\"b�n�\�\�\�SQa\"\"\"\">z\�!\"\"\"\�\�uՌn���\�.�t�DDDD|(� �CDDDlA��\�<;\rh=\�[X\�8DDDDDDDD\�փ0\Z���P~\�(\������\�\r�\��\����M��@\�1R\�8DD|h$�\�V�0�mIH\�:Rψ���z\�!\"\"\"\"\"\"\"\"���q��\��\�O\�7���ײeEWwZ��W\���n녨\�S#@�[4��{��\�r�G��\�k�f�\��.�uE�ʐnvˤ\�\���\��v\�\��.�.�\�\�]&�\�6\���\��\�]w�\�\�:N�sיn}��\'dzz���9\��\�n?\"\�Q���n�e�\�4`�|��.k�\�����\��֙���4xL�ﲪk��v\�\�|\�|<�?�\�\�<Fj��*Y��o^`z\�\�[^\�\�Z\�5��3\�z�9\'\���#\�\�\��a\�arzDY�\�\�\���#e\�P\�1M-�^֐:�~H-\�/j��u���\�F�3����a\"b�2�F#y������4ya�t�����\��	�_\�\�cb/�Z6ny\�\�!\�\�e\�\�-j�QӃ7o���ׅ}��\�Ծ�\n���n�\�m\�\�;?�e�\�ۏ¸�iun�ת��2g\�k�a\�]l�F�Ø\�\�+\�в�\�K�\�\\L�B�1f:\�S\�L\�/�g6\���ڟs<�3���ZӼz	]O��\�c�\�yU�Ȳ\�\�i\�\�#ݰ�35\�]O\���\�C\����\'m;!\�U7\��In\���\�.\�!�\�Ѷ���ur������y3�\�1����rlc\�}DD\�U\�8D\�ve��F\�MLƛ�\�Q�\��!7A��oR\��狾Q�9eH7|�\��P\�6#�n�\�\�\�51o\�\r�}#b\��\�\�Zޞ���\n�\�*o\�~���\�7�j��2\�Gr\�!\�;\�\�\�iL9\�˜\�Ȳ��1\�s.�|!\�du�Y�\'\r��\�f۞Q�c�Nۈ8�3����\�>���c�v\���:�*S\���η��M��t��≠\�l\�ٞ?`p?c���O͗*C��\�|\�5q>�\�oG\�Ρn\�o\�\�N�Νi\�\�~M`Յ���u\�+�\�¸�e1M\�8D\�ve��|�v���.��.\�/��o22\�(X˺7\�&\�\�H=*��lN\�\r[&5ͫ��m�O��\�\no]�c�Z�\�*�F\��>4��l�\�ݭ�n7�Of��\�\�\rrs\�+�E�7n?\�\�Ոz߼\��Y�}�\�vC\�k6刾q\r\Z]V����?\�b\��LV盽_���\�\�l�\��?1\�x>g>\�\���\���\���\�yU�Ȳfw�\�>\�\r=?��ݤz��E�{\�\�\�\�7\�>y^%\�c/k�ߣkS~;r9��u�:��a�\�&�\�XVG�\�R���{]wb\�ܱ\�\�\�I[\�� �CDlW�ߴ�_`GOO�\�\�:\�\�>��?��:�LPo\��eMٝ\�5z�A�S�t���\��Ͱ\�i����<�M�Ο<��M_\�:B�\�\�6���^\�o��V_�Ԩ�\�\�Gڹ�](��f���d��̦\�F�T92�m�>G��\�*_\�\�\�v��Wb�?���1��l�\�s\�\�V\�\�4S�i\�m��iϫ�2%n\'�N�^醝�\�iY\�SZ=�V���:6\�#�7#5O�z\�\�K���Y\�\�x��\�r%\�M\�wb[�㛜/�]j^�z��v�\�s\�+�s�\�~l1=\�ە���ąs{\�n\�Z�z��͍F\�\�!]\�2����N���>=�a7ש\��ı��*\��:6)��\�S��r4���7��zi�0.Q\��\�*�\Z<��fS��0�\�\Z<\'�=\�b\��L\��-\�E�9�m{F\�O�9�ϙ���L�d�������7�}r�Qe�,k�\�[�\�#\�Աh�\�R\�NYR\�\�|\�\�ϵ��H�K:-ۿ�޼\�.�4�ߎ\\Ρd]z\�w����i\�\�|�MY��\���+U�^y\��ZXZ�7\�AD\�t=\�ە\�7�ɋ�@\�~\�m�\�\�:\�F a�E�\ru\��\�\�\�\��\�\�h$lN\�\r.��옼�K��I,�u\��W�\�rɛ��M^j\��\�BC\0\�\���>�u�\�\�滾Re\�?5n?\�\�հ���\��>\��82�ѐ�?z�~c\�\���bdY\���\��s.r?�?\�\�\����e[�j\��Ę\����x\�VWi\���Ϋ�2E�5���e�\�M��t3�-3�7X\�c\�\�~\�r�F�m�>��-t�\�O\r��e~;�?�\�>;���\�\�\�d\��\�̞�	\�\"\"�\�A��؞��`���\�\�:yC\��>v���\�\�|�s�\�\�M��9eH7l�\��[\���`�E�M\��\��R�`ϗ*�c\�v\�ndc�w�\rd~\�˾���qn��\�	\�o\"\�˫��9\�~x\��ʒm�F�Ø\�\�+\�в��%\�<N�)_\�2�\�[Ժ�\�7�\�\������4\��9��Ȳ�a\�	9FY�WQe�,kL�^\�f�[2f\\o\�>��\�rQ�\��D]��K\�29�mz���#�;�i�:\�\��I\�\�(l�\�|�����\�\�\�ؤ�������î�¸d9|\�@DD[\�8D\�6n\�\"\�3�B8}׬n*\�\r���\r�Ў���,�c\�f\"�f<���\�)C�\�\��\�%�\�f\�;\���Z\�\�kj�\�JM��kj��Q7A�7RV\�u签��\�Զ�}�\�}R�����\�܏{Ժ2�kjz�%\�\�\�+`dYӎi\�y�]O��\��|��\'x�S\�ϭ��I3\�|p\�\����x4��1\�Q�E\�C\�Ŕ1\��\\G\�\�wЦ\�s\�\�Dʦ�~\��\���\�\�F�\�^�e;�8��e����[�-\�t�n�\�}��`���\�[6Y���[DD4Y�B���������\�\�z\�!\"\"\"\"\"\"\"\"���q���������-�a\"\"\"\"\"\"\"\"b\�q_\�8\0\0\0\0\0\0\0\0��	\�8\0\0\0\0\0\0\0\0�V�0\0\0\0\0\0\0\0\0��h{a܅�\�;\�!\���rٝ�y\\�?\�u���噏��\�ӝ\0\0\0\0\�\�\�xž��_+y\�*��5K�r\�uW\�\��~�\�;�5\�\�\�z�-]\�\0\0\0�\�v\�8�Bjg\�ą����\�J\\�\�ﳅ0\0\0\0 \r�z+��������\���T\�r�\��5^\"ds\�\�~�\�Y�I{�\�]+Z\�\0\0\0h���0.�Z\�\�\0\0\0\0\�ၛ�E�\'�9_\�\��.�9�y=!\�wQa\\�\�\�	��\0\0\0h{�\�0\��_R�řwa\�W�����ɾ�-��\�e\�v��}%1\�#3�.C\�={{^n����!�\�u\0\0\0�\Z\�5�w=\�>��N�/\�2.\"���z\��5R:�\rӢ.�\Z\0\0\0�\�\�>\�8/\�\�i�\�y^\�\�]!�w��\�{�\����s�Ix�#�\�6�x\\��.��\�w���q\0\0\0p����묈k��\�\�^�\�����s����Ӯբ�,7\0\0\0@ۢ\�qA\���2w�D�\�\�?\�r\�\����/��0.m~w�Z\�\�w	��Y_h\0\0\0��k\Z\��V\��Q\n��\���7_\�5Tb�D/w^s�d��0\0\0\0\�G\�8\�,M3z�~g�g!\�\����\�l¸t\�\�kH\�\�]\�\�\0\0@�\��M�\��.�\�w�\�H\�uV\�Ϻ>���\�(\�\0\0\0��\�nø���p-\�b\�\�\��aa�;�ia\\�E���޼�q\0\0\0Цp���ڤ)a\\ߝ\�\�Y\�\�Iּ\��a&>o�}�H\0\0\0\�v\����Xa-\�Ӓx��,-\\\\�_4�÷dy�ϑ\��K~V��y\0\0\0Z�\�k\��ɽ����\�K\�v�~=���H�V��0\0\0\0\�	\�/�S�X\�\��ʆ�q��MM\��?���؆�\���o}ޅ�gj��q\0\0\0p��³��\�\����\�(n9\�wa�a\�\Z\�\�΁0\0\0\04\�^\0\0\0\0\0\0\0\0��B\0\0\0\0\0\0\0\0\�J\�\0\0\0\0\0\0\0\0��q\0\0\0\0\0\0\0\0\0�a\0\0\0\0\0\0\0\0@+A\0\0\0\0\0\0\0\0\�J\�\0\0\0\0\0\0\0\0��q\0\0\0\0\0\0\0\0\0�a\0\0\0\0\0\0\0\0@+\��¸3\�w�Cޑ\�#2\�ȎWR\�c�\��\�wB4Y�\�\�\�\����\�|�<�Sξ;\�\�BӶ\0\0\0В��u2����J\�\�Y:[\�\��{=d�\��\�̬J\0\0\0Ъ�\�0.\"Dkjg�y�\�\0\0\0\�!�s����+qm�M wYf� ��\�K�\�_�k/w]��\�W\0\0\0\�iwa\\ִr\�8\0\0\0��\�u\��Sҽ\�����\�k]�\�n�m3�e\0\0\0\�\'\�e�w!晼�K[����޼\��}\���K^x��;���6�e�{1�\�\�ֲ\��w�\�6��\�׿O�|\0\0\0p����\�1�\�D}e�u\�ƙ\�2��j\��\��.t9�\��x\��t�\��F�窽.\�\�y\��\\�\0\0@Ҿø�\\h�f\�\�qn\0�\�K-\�]dzA��\���ø\�r\�Fw�\�gw	\�\0\0\0\��K�W\�5I\�������Z\�w�\�\�;ӝ/\��I�ד�<�e\�\�+}\�m\�ߥmǽK\\��|\�\0\0\0䟶\��]\�y�	�gƐ0.p1�\��.}\����\'\�Ѭ\'�0\�\�^p��\�a�\0\0\0К�V�k���,�\n�\�@}�\'��\�k�\�5O\�:�k���/\�]ϥ�gk l3\�\�\���n�\�\0\0\0�x Z\�y-\�|\�\�\��ާi/�2�?���33\�W�\�a\\r=�}\n|��\0\0\0\�>�~=b]\��e\�\�2w~�u�7�/s���a�.[\�Sp��\�\��\�뱥�\�x\�x�^���\0\0\0�\�u�H�}�ד\�:��+pa\\\���0\0\0\0\�\�5�Z\�ݣ�\�o�鴰k�\�gk���|\�f�z\�\�\n\�\�n\�ǻ.L^\0\0\0\� �s/��y!a�w���\�0�;\�{���83˵T�~�\0\0\0\�\��O�k�uP\�z\�1\�\�\�̛���\�tYo9o=�P,���\�`y\�\�7�L!\�WQ�]���k�\�\0\0\0 �\�0.y�\�\��\�,m=ޅ��u�\�_g�\�[b��\�7yq\�p#�\0\0�v�{\r���	��j_K�GS5\�\�\�LV�2oz��[j���\\\�z\�[k�,\�\�/�\�\�\�TZ\�\0\0@\�\��¸�3\0\0\0\0h}|�\�*��\0\0\0�`\�N\�8��\0\0\0\�~B\0\0\0\�4\�O\�u\�tLvs\0\0\0\0��a\0\0\0@\�hw-\�\0\0\0\0\0\0\0\0\0\�+�q\0\0\0\0\0\0\0\0\0�a\0\0\0\0\0\0\0\0@+q_økׇ#\"\"\"\"\"\"\"\">�z\�!\"\"\�xd\�w\�\���t[��{H7\��;��	�1_r\�!b~����c��� �CDD��Pw��_	\�ۂ�q���������-�a\"�O��m��0\�y����w<*+�e���Y��\�\�eգ\��8~c\�k\�<�I�w\�in�\�\���ӯ~J�\�M��������^շ\�\�~[\�t��\�=YVo[���)8�Z.eX]�}s\�__\�oM�þǜ�\��N�޾\�\�\�\�^65}EWo������,lz\�z\���</ߙ}\r;W��K�\��o\�6�L���N�۷\��O{�ӗ��nb�S�e�;z�Q\�G\���D�\�F�w\�6C\�\�+Ot��8��\�NJ]Wx}E\�c�z\�\�%��\�k�9�\�ŝKƈ:�W�;Y�\�>^3�$˛Xg�\�S@g\�\�y¶P\�\�억�q�\�G\�o�o1��\�,K\�6R��\�\�q6\�\�^�\�>��\�\��.Î��\\��MQ#\�\��L��,Ox=!\"�%=\�C�.݋ì/\n\��\�K_\�ɐe�x�b7�Li玾/{���\�\��ک2$��.\�C�9��2\�\�Ը:�\'|3۠9\�{\�~&o֒�\�G\�|\�\�V\���\�8\�\�ԝ/Q��\�EN�\�A��\����28\�ﻚK�\r�\�XCϳp�\��>�\�t^e�>t�Ҏ��\�w�\�l�\�Z/�crN\�.\�+G�άc�</\�N3�\�E�\�\�G�N¿O\Z�\�Ö�\�\���=�\�\�8\�xF�\��	��\��\�ar�\��-2F��kb�7\�e�2~W\���\�Ǯ��[e�(K\�Ω\�\�8��J\�:\'\�\�/\�\�\n?~\�2&\�-\�|V]�M��C�!\"\�o=\�CM�X\���0\���\�\�r\�jƋ\�`���\0\�6\�B?z���X\��M7�o>����T9�\��Q�o��\�\�\\n$�\�\�\�����\�\�a\�#�\�Z���j\�~�\�3d��z�t�\����\�V݅\�\�&L\�c\�\���)�\�\\�AcΛ(}u�e\��\�w5>\0�\������A�~Z\�-iTy��\�Z/�u��K˸e|\�Wj��9\�ټ�u\��a\\jzҨs,��%i���˒\�\\���N=FϨ\��?i�Qu�2Y�\�<*\�t[^F�E��kb�7\�eS\�m��\���犷\\�o\�Z_DY�\�pNe_Ǚ�W�\�r�z\�\�*�==�8\�\�\�\�<��֙6�)����I\�8D\�P\�/��(L3\�\"غ��.F3^L\�ez*�b6�����a}\�\�U�#��٧�m\�\�X�\�W�މ�kk�:�w\��ρ���\�\�����7�\r�þ\�\��\�\r\�{�\�\�о���\��q,�0l{1\�#\�߮�nZ&w[Z�o�}*tߓe��+�:\rڜАs-`��ᯧ\�>Yu�\\\�L\���+�.���Oj��Ì\�z��\�9\�\�k��g�����\�/�l\�<\�9�>��\�.\�<��n�\'�7\�2��%i\�2ae\�\�\\J\Z\�\Zq\"�\'5\�۟\�y&˦\�\�]�)_\�\�yԹ\�\�oM\���Ų\���dՃ���}�XgDY�\�pNe_Ǚ�W�V9���2\�\�\�_w1\�9�Mk[\�go��\�9\�\"\��փ01\��Ŭ/\n\�L]�k-���L7q�n�)\��\�	^��.`\��nؓ7\���u����:5\�w\�\�|�,�w3yXo\�v�~�uR��7U�A\�ʡ\�\�17G�ch�+Ͱr�\�O�ً<ϼ�%n{�^}�Y\�\�&��\�\���\�\�\�}�\�ͥN����������^\��\�\�N\�Gȹ��e\���\�:\��+�|�u%�VǙ\�c��\�\�x8\�]\�z\�@\�2�m��\�ԛ[�z\�\�n�}�nO\r?ߢ�g��ی1l�\�\�Υ��W���د\��	Ο�o+y^�\�Z�^��K\�W�m\�\�9\�Ý��S�qˆm\�1��\��y�\�\�п���$\�\�ʾ�3�4}\�H,�\�e���3f\����֟c\��\��~\�A��j�\�b\��i\�\�=R\�u�]�g���ʤ�Q�\'���\'�L\�s�f\�,r�r����弛�\�<\���;\�y73��XGڍ�e\�MH�s\�\�\�\�6h����\���+U\��\�O�>e\�\�\�wH�#�GԿ�\�eM�\��=�o�r\�R�A�\�8\�\�s2]�>&��\�Cz�\���\�9\�\"z���ٿ\�\�s���9a�f{\�,�\�F��\�y��K�ee\��!F��� dzV�q�9�/I�\���?�s)h��j\\�\"�C\���s(�W~�n�dq\�=\�Y�\�X�\�f\\V\��O\�O�e�c�\�	-[DY�\�pNe_Ǚ�W��r$�\�\�K��J~r\��us��\�L\�WԱM��C�!\"\�o=\�C\r�X\\$z�F],�^�>�.3^L\�d}��s��v\�ܦ�9�~�R�\Znb{�\�R��>;Fm\�\�\�\�oz̍D\�q�?��\�oԱ\r�þG\�Sp�rY�\�n\�Ҏ����a�gw�1=\�Mn�\�ω}\n\���\�`}质:\r\Zs\�DuN��~~\�\�-g��*\��\��em׮�侄\�\�I\�\�9�\�KԹ���]ƛ�ڇ\�yd�[\��y\�\�\�!5��H\�E�i?9�/I�Z&�s\�ٯ�!\�~̿)#�CT\�r�MvM֥uN�{]�Q\�k��5�e<s��\nΧ��>\���\\�U�L\�\'�s*�:\�|�\��\��\��[�>\��\�\�_�qN�ݛ�,��i\�ʡ\�\��q��a�],�݌$L�xL3\�\"\�Z��!��z���Ћ\��\�n3���hk�w�\�~�]�\'�\�\�gO��q\�6o\�MM\�w9\�o\�\�E�9\�{\�~�\���\�{jٰ}	�A3z\���`9¶�FL�8�u�\��\�iЈs)\�\�s\�6�>���ʪu�\�\�|ޅ\�]ny\�\�Ӛ\�?��<tߢ\�ל�I\�S�y�?Ĩ�w��N��\��Qe��G\�erz�:Qcʙq�\�t�\'o[�y�:�Q\�\�n\�\�Q濭d9|u�Z.}�3\�]�~k\\�^\�*C�|\�O��Z���$\�\��p;�3�4c\�v�_�#�uq,�\�s�3D\���a\"��u�\�v�2�\�w!4\�\"ط.\�\�3jݎ�\�2]�:\�\�.�C�Wc/`۳\���Tt=�\���\���rD\�s\�M�}�2o\��|e\�e�i��\rze�#㾇\�KB��\�\�e�_���ߠ%L\�\�����\�^\��\�u�\���J\Z��;W��K���\�\�ebϑ��%\�(�<\�r\���Ϋ\�\�]��\�\���G�_&\�\�_o���\��\�Y�ek�;��ߎ[�!��zN\����םo�A����\�^�^\�\�Su�M�\�W�\����Wް2�ƖS\��\\��ۉ���\���\Z�;�\�\�-s�\����\�\��G�OM��i²�\�ֵq�O�zH�;s�?�,\�\�2�)��\�\�\�\�^�1�\�\�*�픑�ݱ�F��v�#\�ۈu\"\"\�G=\��\nd\n�ԃ01&Zenф�����q�����\�\�\�~G�8DDD�Ѓ0�����a\0\0\0\0\0\0\0\0�\�a\0\0\0\0\0\0\0\0@+q\�\�8DDDDDDDDć\�V\�V	\�[I\�8DDDDDDDD\�V�0��$�CDDDDDDDDl%	\�[I\�8DDDDDDDD\�V�0��$�CDDDDDDDDl%	\�[I\�8DDDDDDDD\�V�0��$�CDDDDDDDDl%	\�[I\�8DDDDDDDD\�V�0��$�CDDDDDDDDl%	\�[\��\�}�S\'DDDDDDDDć\��ƅMGDDDDDDDD|P%�CDDDDDDDDl%	\�񡷬�pÎ;\"\"\"\���q\0\0\0\0�\�\�o���޽{r�\�]|\�\�\�n�\0\0\0\0����\�\0\0���ݨ��/\�\��d�\�#���,\�W��z��x\�q\�\�\�\�\0\0\0�4v&F\0\0\0$^w\��m��?|T\�>\"�Ϝ��׮KEm�ܺsG�bl��\�q\�\�\�]���z>\�y�\��\0\0\0�4v&F\0\0\0^w\�\��h����\�ȵ�j���{oKÝ�R{��T74J�z\�}\����\���\�[��E\�=/��\��D\�B9\0\0\0h)\�L�0\0\0\0� \�zU�l>Z,;O�2-�\�\�{ۄ1u���Vm\��!~\��@\�=/��\�\�\'z�\�yC \0\0\0-���\�\0\0��(��sW��焝�|U\�9ӴUԵ\��V\�\�+��W=?�<\��E\�=�<\"�\0\0�|bgb�q\0\0\0\�\�\�\�D���tYV<l� j�D\r[�\�$�\��\��g}o\�\�\��G\�#=�\�\0\0\0 _ؙa\0\0\0�k�qg/�ɪ\�����޴v�RӐ�\�}\�3�3|\��F\�=��|��\0\0\0\�;#�\0\0�v�\�]�Q!K7풫Ur��Q.Wכp�W^s}\��G\�#=���\"�\0\0�|`gb�q\0\0\0\�nч\�߾}[6\�=,\'/���35PAl�z\���畞_z�\0\0\04;#�\0\0�v��V\�\�z;}N�*6�c�U\�KY�#��6�U\�\'=���\��q\0\0\0\�\\\�L�0\0\0\0\�%\�Z���NVl\�#\�n\�ȥ�zļ�畞_z�\�:\0\0\0����\�\0\0@�C[)566ʱ\�geב�r���\\����7\�x\�5o�z^\���癞o��\0\0��bgb�q\0\0\0\�\�\�VJ�nݒu�\�\��J�p��E\��K\�3=\�h\0\0\0M\�\�\�\�\0\0\0�]\�=+\��rY��\�ݒ\�\�:)�\�x�_O/�N]{\�#����|�\�u�\�Ĳ���Dd1\�k3\��k\�U\�/=\��|\�\�q\0\0\0\�T\�L�0\0\0\0\�\Z�\��GN��}\�J\�|e]۱dQ2�\'\���¸Er \���mf9Я�gz�\�yG\0\0\0M�\�\�\�\0\0\0�]\�uQ\�~\����pń%\�*j\�\�\�i>\�Y����M\�\��>ƅ/�\�kV\�\�5\�W=\��|��*\0\0\04;#�\0\0�v\�ݻw���^\�\�,��\�r���\�h�`���|o,��^7y�\�uVWhM\�٬ʁY\�gz�\�y�\�\0\0\0@�ؙa\0\0\0�����!����b\�)��1a\�749s\�}�_�!�~�v����֤Z\��*\�O�ø�r\���\�	Y\�$Y\�}o�c�by֞o\�\�dy\�x\�x}�\�\�\�\��/\�\�k�ϝ\�\�~r���e����d�7���v=�\���\�\�\'b���Y\�3=\���\�󏮪\0\0\0�+v&F\0\0\0\�\rA�!�555�t\�.ӅP\rO̫\���l�`��ϻ&��\�;\�\�\�j)�:\�kw��\�XZi�q���n\���b\�g��S�y�\�\�3�e�\�.�\�\�rh�wP��w�;Oo�es\��\�3뮕\�\�޺&\�:wZp\�\�Y�\�b;\�)�ίe�m\�!C\�eL �\�J\�Oj_�Y\�V�����癞oz\�1�\0\0\04;#�\0\0�v�\�UWW�p�\�F�cm\�y�j���\�\�jw��a�q��v8v�R�WKa2h�(k���z-\�4@�L,w\�\Z�a�.9�쭖s��\�T\�iyI\��4�\�r�\�8w��\�嬑�{Ra\�\�]��j�P�\�����=o�3}��Y�\�G\�+����!۽_�g�W=\���#�\0\0��`gb�q\0\0\0\�n�q�o\�\�\�\�m\�\�n��t������\��N�\�8{��VX�ߝ�\�\n\�\�\�(�\�\�r�ng9;\�\�f�;d�;�\�r\�.�\�\�r\��װ\�Ҷ�ӣ���˥�?\�I�*b���0\0\0\0����\�\0\0@��\�Vl\����w\�;r\\w~�J\'�\�G\�\���WH�d��:�H�0@��Xk9�\��\��eu\�E)R�,ٲ.�\�d+T���S}n\�\�=3l\�?_\��QW\�\�ԩ\�\�:?uOw�\�p��?��{Ÿ���i�^Y�˷��\\aYQ˷ݬ��\�և�7\�e\���q�e1n�\�mK�\�\�c�\�{\�oυw\�m\�\��{�\�\��\�\�[;����\�Rga�)Ɖ��\�I�\�\�\�DDD\�\�$\�\�\�\�\n\�ny\�\�φ{��a��y\�Y>\�\nR�\05�6�\�O\��e1.\�>/r�rZ�ˢ8V~l�q\�\��*��ϕŸ�l�x\���\�\�\�b���\�RQ\����\�?dE\�7�\��w\�qVL\�\nss�{\�w\�\�a���\�oƉ��\�I�\�\�\�DDD\�\�$\�·Z�\�_o�?�(L\��\��\�\�g��*���e��W�n�~\\��EQ\�l��\��ű\�\��>��jv�\�w�\�X��\�1>_\�\���w�� \�\�\�\�!\�e\�x��j\�~�\��ݬ��\�w\�9\�}�\�\�OlL\���\�L\���Z֞>\��>���q\�[w�q\"\"\"r�\�51\�8�0	E������?\ro�so����������(�`aٓ\�\�c�\��q�^Y��v�\�e�\�\�>Q\�\�>�|V\�q�ve1.,{�8��\�\�;\�˿0bjCm[h�|7|c쓸\��_���\�\��u��y.|���\�x\�Zga��qƟb������&�\'\"\"\"*\�~�\���\�_�\�\�\�~�z,���\�X4y\�?�x�	4|\��\�\���c�S�\�OǂZ�<��\�a�j\�\�\�~d\�?̎�\�ڴ<�\�k\�T\�\�>\�,K�y4-K-/�����V�ݺ��֫��Au~��\�\�[8\��\�Yoa܅�\'\"\"\"rh�b����\\��b\�7\�|3<~�x�����G�ĢIpg\��\�}�\�~\�y�2=\�+��0\�¸S���$��)Ɖ��ȅJ��q\�-߼�\��\�o\�\���I,�ܞ~z�t\�Ÿ�\��yz\�Wg�IUDDDN��&�\'\"\"\"*\�\�\�}�\�W\�o?�t�\��|x\�\�Oc\�\�\�?^z���e\�U_a���\�\�ŉ��\�I�\�\�\�DDD\�\�%}T�ɓ\'\��\�7���p\�O�[�l�\�\��\�*��0\�|DUDDDN��&�\'\"\"\".\�\�q\�\�-?�\�ᇯ�1�z�\�p�\'p&\�x\n\�*�/ߢ*\"\"\"�M^S����\�q}8|\�G�\r�x��\�\�O�o�\�K?�<�\�0�\�x\n\�ʻ\�DDD\�,�\�\�\�DDD\�B&�;\�믿~��\�\r7\�\����_?�\�\�\�|	\'\�OGa<�qƗwŉ��\�i�\�\�\�DDD\�\�&H\�7\\��~��\�\��\��\���:�\��Ǳ��\�\���~\��3��0~\�8\n\�)�+ߠ*\"\"\"g��&�\'\"\"\":\�\��\�_�?�񏱀�\�w�\��ӏ�\�z0��\�/�Pl	<�x\�q/a܄�\�QOa\\�x�����E�b����\\�\��w\�{8�\��l�_?}sx�\�\'\�?�E�ק�{���\�I/a\�(ĉ��\�\�H^S����1¼ �\�W�\���7���\�O����\����Q,�@\�Ca|�q\�K7y!\�\�SEDD䬒\�\�\�DDD\�\�$P\�\���ꫯ�/��r��\�O���Xly�G�\r/��φW޼;��\�G\�\�\�|1<��\�\�O�\��2�o�/\�\�G_�!^\�_>�(^�0\�x\�\"��0N\�x	\�&�\���N^S��K��n��\�\�|�M|�\�\�Ǐc�\�׿��p��{Ï_{�޿�r�?zm���$��0.�p�\��\�=\\�0\�x\�\"��0N\�x�\"\"\"�\�\�\�DDD\�\�%}l5�\�\�\��s�V\�\'O�_|�E,�|�\�\'���\�}��\\�\�\�z�\��a<�q\�Gz7�B����<�\�5�gZ�\0x��ۇ~8<z�hx��\��\�{\�\r�\�\�\�\�\�\�׼�.�\\�\�\�z�\��a<䅺\��\08kϴ\0pT�7ÿO�����ꯆǥ�oq��1\�Cw�\0\0<eϤ\0�wA�|\�\0�cQ�\0\0\0�#y�\�8\0\0\0\0��T�q\"\"\"\"\"\"\"\"\"\�F1NDDDDDDDD\�HQ�9R\�DDDDDDDDD�\�8�#E1NDDDDDDDD\�HQ�9R\�DDDDDDDDD�\�8�#E1NDDDDDDDD\�HQ�9R\�DDDDDDDDD�\�8�#E1NDDDDDDDD\�HQ�9R\�DDDDDDDDD�\�8�#E1NDDDDDDDD\�HQ�9R\�DDDDDDDDD�\�8�#E1NDDDDDDDD\�HQ�9R�J1.�\0\0\0\0Z�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$\�w\�+\�/�\�u\�\�m��\�\�\�\�q��\�{nO�\\��pe��JZvc����<���9��ϏO\�\�p\�J\�_W�\r7�\�v\�6�۟\�\�\�a}�ߵ����\��R�E�c�\�u�׫\�\�1܎\�\�zr����n�k�U\�\�l\�\�(�\�\�m-�\�a\�j\�\�o��h�;��?\��\���9@9�;µj~w�\'cm�\��Y��}\�է�\�N�x]5\�\�i�[S+�q&\�`ܵ�o�o\�Y��f�\�\n\0\08\��/\��&-����fE��3\�8\�	�X8\�\�@\�v���h�8��&>S_��y\Z\�\�j� \�c��m\�~\�\�֞O\�\���\�f*2v(\�\�z~�?N��\�\�\�Z�W��}*\�-�\�\�r\�sy�y�q��띍���o\�S�N\�ξ?\�c��3\�\����\0x^]\�b\�\��\'W�\�\�\�vƓ�|\�2MP\�wa\�\�vLjbQg\��]ϝK\�\�jm�\�}�\�\�\�1�e�\�[\�wM֮S\�4Ÿ�)�\�\�Nn\�\�2f�]�\�M�\���yq,U\��7Z����t_\0�<Ÿ\�]aI>)��y�\�4)�K�������o\�Ӳ\�M�t�R���\�ve\�E�yb�\n�\�\�sڹ�JXw<\�\�\�l�\�/\��\�~\�O���\\�\�\�u\�\�\�q:�\�X��\�s�6_�\�\�M�b_�\�\�u\�uI\��Z\��\�˗���O&�\�\�P.OR\�ľ\�\�\��\�{�x@1n��\�_]\���\�<�jLm*\'��m�����Xi��S\�wc{\�\�~Ɵ\��ا\���\�{���\���n�ϗ�5^�\�\� ���~�X\\\�\�%\�=�\����o\�w=��\�Z��W�Y1�\�\�=��\�ϭׇ�\�\�\�\��q��}�\��=Ӹضe�\�}]\�Ǭ�sz~��(�S\�9����\\Շ��W�I�{}lS�oCZ���۹헲�\��\�1n\��/�pظ]:�\�����5o;\�w�\\\�\�\��)�n\�x�\�\�ꜛe�vm�����\n\�\�v��\0\�r��Ÿ醵��7�\�Mw��K7\��MkZ6\�\�\�7\�Ս\��8\�\�gǉ\�\�\�D�\�nTӲ\�F6�\�֏7��$`׾\n\�i��MK��p�\�\�˶\�2�Kv�<�]\�\�\�vLm/&8\��*\'V\�\�y\�7��\�^��\�I�պ�\�q�9�\�v\�:�д\�k�Ԏ��8m���n[�m}�ʶ\�ף�Ƨ\�v����t>{�M07-�Sl�:��c�e\�1v�;^��O\�\�C�mlG�~�\�\�C�_\�\�S\�\�\�9����\�Ѵ�$\�\�2ɷͭ��:>\�\�ӵ\�_�~>�\�\�9\�8\�n~�k��:�\�1\�k�\�\�\��\�\�n�il�J�\�|����\�{�x�\Z�m_\�\��jϽԞ\�\���1�k�\�cv����޸��\�}cv\�gZ6�Sٿm��-\0�\�\��\�]\��\�n��+n��x#:\�\��n�\�e\�d\"\�G��}��-7��L��\�W!�mjgh�\�>��\n}\�\�駍�m��no�\��\\O2�e�\r~\�\�ģ3ɨ�\�r_.��_ns�\�\Z\�\�m�m\��vD;&NΊc\�\��\�*\�\�\�y;�~mەv�\�c\�\�W�\�q\�\�A\�_\�c��8�\��z\�\�m�kX��[q\����J5f�\�{}ӳv\�<M�\�>\�\�+��\�\���\�7k:ۅc7\�k��uP�\�\��\��\\{m��?��7\�c���k�\�c\�\���o\�ϳ\�_~.\�~�_�[\�:�\�{\�\�\��\��+�)_�G?�\�lϭx\���e��\�;\��1\0�%t1\�Wo�\�\�h�	\�\�]ֹy.n�\�qڛ\�n\�vY;\���L�\�\�\�Ҿ\na_i�U;���ߋ\�/OJ��\�8�\�o7��$d\�\�\�|Y����\�\\�\�ؚL\�`ylluۖ�W\�߆C�\�\�B;��O�M��9�VZ�Z�:��\��}l�\�\��\�\�\�nGk<\�ܯ�v�\��l�14\�\���k\�r\\\�\�c�\�\�a}�ݮQ����s�ڱ�|\�S��0��)\�\�8�����\�7k�>\�\��Wʯ\�vyy�u�c�\�\��p\��X\Zۍ�u�\�����ǯ��Y�n_nZ�컥��<n�}�u�q۞\��\����G?��ou\r�q��l�\�n\�W�[\0\0�\�\�/\�śå�ᨷ�vY;aoӍp�Y^�	���;\�Xn\�+��\�\�w#�Y^\�W%l[\�DO7����\���{�>\�:��\�d&\�~;�\�\��\���ڒ/붵\�\�^\�e���0M�I\�¤��ٲ\�$�_I\�\�{�\��\�n\�oc_4\�d\�h\����\�~w�\�r߯o�鴣\�^�x�jY�\Z)_7����\�5�\�gmS\�c\�\�\�\�>8q�֊6/-_\��ڬ�G�\�T\�n�\�N\�v\�؍\�\�,��4ەm\�G1�fe�.��\��\�����\�Fu���\�1�[�zT}W�3�s\��ߤlw\�g\��q����6\�x��9\�}�ka�}��ۿ�u��\��Q�}oY\�g\�޿3��\�\Z�\�wl\0\\N�\�q�&6�7�Ųv\�RK\��\��Ƴ�}z>���\�5A\�c_�ލ�Y=�a�\�Aޟ�\�~�4���y�|�n~3\�[\�E{\�\�	V4���c�\�u_$�>_�N��;\�\�\�X����We��\�\�]X\���m;�\�e�w]��Ͷ��&:h\��\Z-�e���q�}�\\Z�}=�m;u�&K\�o\�l��I\�f\�y�\�o��>,�\�ڱk\�\�\�\0M��\���G�m.�َ\�\���\�\�n\�\�\�6}��y\�\�=�I�\�j\�گ��z+\��ߧ�v��G?��y�\�/~\�R�|3n7�\�T}�c�\��-\0�\�\�\�\�\�pyӘ\�\����\�Mbq�>\�x7\�ōiy\Z�\�\�n2��\��\�x�x�}�\���7�i\���_\�|O�|�\�����u\�\�\�o\�\'���|\�zR��MjSo�P-+�mG5!\�\�s��\�\�\��\�\���\���i\�؏\�q:\�/�p\Z+��E{��=ʷ�\�\�\��?owq��\�\�v��޵ߘ���\�\\���\�c\�\�\�{g۹j\�\��m\�v\��ءh�\����\�u�ڐ�׻n\�\�۝��y�z}���>>\�\�ӵ\�_�o\�\�l\���Y�\�\��\�clw\���)\�;��2\���\�\�{-��)�eZ>\�\�K�\�\�m��w�W\�<s\��\�;f�^�:�\�k:\�\�\�r�A<F�M\��\�>�v\�3�\0\0.�KQ�\��$ۮ����\��Ʋ�	o<���&eAy\�\�\�\�m\�o�\�I\�4!K\�(o�W�5��n��m�\�v\�m\�\�N(���~K}�O{Z�7	��Q\�7ih�͓\�\�x]\�IBob�]�\�\�\��͓��|�r�|\�V]�B�^u��k\�닞f�o��ks�\�	\�a���|\�N�\�vw;Z\�\n\�|�>(�];\�\�X\�\�^V�;�+��z϶m�}�w\�v�m;�Oտ��\�\�\��u��\�6\�\�j,/�[��\��]\�\Z#�\�\�w|~\�gxnl[�]\�\�g\�R����Ze\�\\\��\�˯C1\�c\�\�\��[3*�Uס\�\�v�\�a\�a�ݠ<n�{}�\�\��z��\�\�m����ۼM\�c�ꯝ\�.��\��Z���\�\��\�k|.�n�⵵�/W\�~\�m�?�ø��\�G\'[\0\0�й.\�]:K��ɮ�勤\�o�\�&�{�}{F�:W6�3\Zg9���\��S�\Z\�O�&��\0\0\�b\�1\�,>��W;�?\�վ��P:\��\���X��\�ٌ��g;�.K\�.�\�;�\�k0�=\�5٧_\0\08�\�b��n1$N�\��\�]�Ÿ�іS�[!N�\�\�\\�K:ٺ�\�\�\�t\�,\�\���$)�c\Z�\'D�;/����\�\�/\0\0�c�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�q\0\0\0\0p$�w�\��^�\�}n�oc���\��\��p����/��{V\���\�\�\��ˮ\�^\�l\�\�~?\�k!��ҕ��+/�f��\�\��׻\��:��i_+�.�m�>fW\��ʵ\�J\���kÍ\��zZ\�`\'\�\r\0\0xJ\�\��]9�\�\�\�\�V\\\�b\\�`_�\��E)ƅv\�\�g^��\Z<wŸ\�0\�+�q\0\0�e��H1\�0g�%z㞺T<9\�Ÿ��6\�#\�wY\�8\0\0�%vq�qq�[��,�o\'\�Մu�l,\�\�Im5��\'\�Qy����|�x�T�\Z-\�:Ÿ4�O�\�\�ؖ�\rS���J��I^0H\�>Fy1\�\�\�B1n\���\"\�\�g�\�YA!\�\�q\��\����v�\�6�\�v�絫͍켋\�ڢd*\�$��\�sW^�6��~۳\�dc�c�}S�����[렾/�}}�M[r+\�\�\�~�s��\�x��^\�\�H\�\�y]\��/�m\�Ƹl>�iY\�\�m\�5V7\��m\�CZ/���c�z.?VѾb�\�-\�\�/�m?]/�[j\��8\�]�lܥ��\�\�\�uz\�h\�\�c���\�\0\0\�\�\�e\�o;y�&�y N\\�\�\�N6�m\�\�v�:��4i\n\�:?��\r\�\�\���\�\�\��S{R���6��ڳSY��\�:Ł\�x��m<�\�v]����1�\��;�\�\�Z�K\�\r\�kѮ�\�\�{>>��/\�u\��\�d>ǅ�n\����~<\��\\^�{�\�ܾ+m�l�\�\�5�^߹\�b\\�\���\���\�6�g\�\��u��X\�\�P>w\�1�6�w��\�>\\\�Zo�\';\�\���\�m{R���\�y�s��\�b?m��t��q\0\0<�\�\�\�e\�䮜$�\�f�\�:\�>�81^���\�4q�.�\r\�s�&�W_\'\�\�I_\�\��9�\���l\�ni�����o��֙\�\�LV\�\�A:\�\�ډ�R_v���[]��\�4\�UK\�\�}]/K�\�\�V^��8sQ&���/�e�:\�y\��k��\�\�\�\���}\�G��\�v��9�^�\��\�+\�W�]ϧ\�b�t\�L\�g�\���\�su�\�\�v\���i�3^��v֩�Wol\�\���=��6_�l�Ͳ}\�iݧ�\�\�f�Mc�\�c��\�\�m\0\0�\�b\\�|�l���E��\�}V����0��&s\�dq;yl�\�8Oh�bD��L\���\�}����j�??\�&�ut&�E�$.�����6���\�\�m^ܦlGqM\��\�ɮEx\\\\ê8����\�.�3�kw_�\�6\����o��>�}\�ma?\�:sQ��x\�e\�6����\�|�����\�R\�7\�ny��}�\�v\��\�cLw\�F\\\'��\�\�6\�9�p�n�}4n\�\�w�\�WK��Ls\�\�}\�tn{O�\0�\�b\\�|�l�x�\�\�8\�\�=�j�Y\�#��\���\�q�8�w;�l��{y\�|_�\��\�}����4�N\��T\�\rmAa{�۶,/=\�N�\�m:�-\�\�\�\�m\�k:��\��0\������\�\�P0H\�\��\�:s�v�us\�3\��\���e�}\�m�_�u\��߱��i\�))\�\�|=U{\�EM\�\��Վ\�~�ַk�_ڦg\�\�h�in�~Yڦ�&\�8�\�`:\�\�ߠ\�\�\�Z_-��\�B[�}%q�i��~?\0\0ϧ�[���r�&��d���89[�\\\�	n>��&Y��y\�8ᚏ��\�\�g�� \�gib6N �\�\�\�\�v6MH��<n�=V\�\�y{}P.\�۳fm�۱4ٝ\�)_\�\'\�\�\�v�\�s�\�m\'\�\�mnl�S��vYZgy���\�\�+������N\�\�u���#-[8�\�\'\����F\�ώ�Ϲu��\�w{\�׵\�4j��\�����1T�}\�\�v��ڷ\�v\�u\�cLw\�F\�\��\�\�\��\�8I\���\����\��\�\�\�u��ZhK�<N:\�\�\'\0\0\0\��;\�Ɖ\�v�5>\�N(��O3�گ�&�˓\�j���΄5�1N̊\�\�m\�B\�\��>Ǻ�\�\�/m_�Q\\{�\�YL\�\�\�zY\�\�L\�#?�y�]I�_�\�\�\�mq�:\�ұ6�k\\/ϭ���\�ѳ\��Zt֙\�Wz�+���\�fu^�\�ܫ�h�{��_���\�=έ\�/i����t\rV~t�m\�u[�YZ�ic\�\��\�\��\���~\�u\��\�vK\�:״�\�/�\�\��\�b\�U\�֯��:�����s>�u[<\�y�\0\0����V��z\"V>��x��L��IQ1q\�L���\��$p�|�	i;\�\��WL\"OY��	`Ֆj\�:NN��W\�\�no��ӞE������&\��6\��8\�/��\�\��3_���5\�)\�\�\�F֎b<V��\�L\�;c�ۦ�=��6\��v$\�\�`���㞨\�{׾l\�\�Z9�n��\��+\�X)�׭��\�ϧ\�ƴ���\��kc�\����[\�E?o\�\�;6z״��_jy?\�\�Q\\\�}\�i2�\�\�v��U�}�\�זf��M����x\0\0\0\�\�\�>E`��\0\0�Q��SQ��}(\�\0\0�\�\�T\�`�q\0\0\0#\�8\0\0\0\08\�8\0\0\0\08\�8\0\0\0\08\�8\0\0\0\08\�8\0\0\0\08\�8\0\0\0\08\�8\0\0\0\08\�8\0\0\0\08�Êq\�*\�\0\0\0�I�A1\�u\�8\0\0\0\0\�\�X�{}��0\�\�NŸ��q\0\0\0\0p��w3+\�m<z�aQ�{\�\�\�\�V,ƽ�\0\0\0\0(�qo\�:[S�{?\�޻7\�KŸ[c1\�ͬ|�\�݃\0\0\0\0��.\�\�B=-\�\�b1\�VV�=\Z�q޻?\�޹Wz�\�7\�\�\�\�ϯ���{ \0\0\0\0x\�\�u�PW����A,\�=�Ÿ��\�\�sg�}\�\�T�7n�1\�O?��9\0\0\0\00\nu�POu�P_u��7}T5\�\�0<x0\�\�3ܹ}k�F\�X�۾;\�Ν;݃\0\0\0\0��.�+.���7\�oR\ru�X���nܣ�\�7�>H_\��N�F\��%�ߍ\�\0\0\0\0�w�7����7c��,\�m�/qx��ġ�Q\�\�_W�\0\0\0�%�~VD5\�يb\\�w\�zU}���j\�@\0\0\0\0�?��\��#��Ζ\��Um�Uu[�\�\0\0\0\0�w�~�\�\�j��\�ls1.�;.~T5�;.|T5w\�\�\�f�\�qo�1��\0\0\0\0]�~\�h��\�j��\�lM1n׻\�ngW\r|�w \0\0\0\0xޥ���zZzW\\��ŸT�۾;n�\�q�ߍ߬�Ν\�\�\�[7��o��ށ\0\0\0\0\�y\�g��\�i��\�k�\�\�-\�\�\�\�?��n��\�f\�s�� ?�:�\r��-�\�\�|\�\0\0\0\0�E�s�\�QH5�PK_\�0~4�\�X7��PG��PW��Pgk�q��\\��\�{��?.�C.~du��\�\�ZǢ\�X�\0\0\0�\�(\��B=,}Y\��7\�\�wą�Y�;q��\�k�\�\�-\�\�㪡 �~U����\��7\�\�oY\�%7�-��0WJC\0\0\0\08\�\��\�\\���p㷦�:Y�q\�;\�R!.\�\�B�mg1n|w\���\�\�\\�r\�܉\�?�z�\�(��r\�ب�8\0\0\0\0\�X|�\np��\�T��>�z�v��ſW\�B}-\�\��q�RA.�\r��\�\�o�o��r��۷n\r�nnssq.\Z��\0\0\0\0p�5�T���N�[�b],\�\�B�,\�\�\�5�w�)ą:\�\�b\\�\�/uxp?~k��E�;�\�\�\�F�F�@7\�\0\0\0\0\�b\�[�\�\�^��\�`E.�\���X7��PG��T�۫\��X�K�\�\��\\x^h�\�MCBc\�gd�X�\0\0\0�(ոb�m*��:XQ�K\�{�`[��\�jA��\�U�>� �\�\�����.�X�{ps�{sa.\�\�]262�;\0\0\0\08\�R-k�m�ZW�}���pcn|7\���ԇs--\�\�\�\Zۣ\���#�� ��\0\0\0\0IEND�B`�',NULL,NULL,1.00),(4,'test',12.01,'test',2,5,3,2,'2021-01-01 01:00:00',NULL,NULL,'',1,NULL,1.50),(5,'FINAL TESTT',12.00,'jnde',2,5,3,2,'2021-01-01 01:00:00',NULL,NULL,_binary 'Today, 20:11\r\n\r\nHi! So I suffer from hormonal acne that is placed on my jaw and around my mouth and occasionally on the sides of my cheeks. My skin type is combination, with an oily t-zone by the end of the day. I mostly feel the dry side of it and i cant live without moisturizer. At the moment, except for acne, I have a lot of scars that are red, texture irregularities and blackheads on my t-zone. I would like to build a simple regimen with ordinary products\r\n\r\nToday, 20:11Seen\r\n\r\nManjit:\r\nThanks. When an ambassador responds, you\'ll be notified here and by email.\r\n\r\nToday, 20:12\r\n\r\nManjit:\r\nManjit joined the conversation\r\n\r\nVancouver, Downtown Store\r\n\r\n\r\nManjit:\r\nHi Ina! I�m Manjit, a team member at Deciem :-)\r\n\r\n Sent from Mobile9 minutes ago\r\n\r\nHi :)\r\n\r\n8 minutes agoSeen\r\n\r\nManjit:\r\nI would recommend using Niacinamide, Salicylic acid masque, hyaluronic acid, and azelaic acid\r\n\r\n Sent from Mobile8 minutes ago\r\n\r\nNiacinamide is great for regulating oil production and minimizing pores, also showing signs of brightening \r\n\r\nSalicylic acid masque is a clay and charcoal wash off masque which acts like a magnet for the dirt/oil build up on the face, exfoliating the inside of the pore to clear up active breakouts and blemishes \r\n\r\nHyaluronic acid is a hydration serum which essentially acts like water for the skin, it�s great for hydration support so you don�t feel dry and dehydrated throughout the day\r\n\r\nAzelaic acid targets textural and tone irregularities!\r\n\r\nProduct image\r\nNiacinamide 10% + Zinc 1%\r\n\r\n\r\nView\r\nProduct image\r\nSalicylic Acid 2% Masque\r\n\r\n\r\nView\r\nProduct image\r\nHyaluronic Acid 2% + B5\r\n\r\n\r\nView\r\nManjit:\r\nProduct image\r\nAzelaic Acid Suspension 10%\r\n\r\n\r\nView\r\n Recommended by Manjit5 minutes ago\r\n\r\n can i also use this  https://theordinary.deciem.com/product/rdn-aha-30pct-bha-2pct-peeling-solution-30ml\r\n\r\nor is it too much\r\n\r\n4 minutes agoSeen\r\n\r\nSo your routine would look like \r\n\r\nAM\r\n1. Cleanser\r\n2. Hyaluronic acid\r\n3. Niacinamide \r\n4. Moisturizer \r\n\r\nPM\r\n1. Cleanser \r\n2. Hyaluronic acid \r\n3. Azelaic acid\r\n4. Moisturizer \r\n\r\nPM (1-3x a week)\r\n1. Cleanser\r\n2. Salicylic acid masque (wash off)\r\n3. Hyaluronic acid\r\n4. Moisturizer\r\n\r\nManjit:\r\nThe peeling solution is a great chemical exfoliator but I would only recommend it if you�re experienced with exfoliating acids and if you have tough skin as it is very strong!\r\n\r\n Sent from Mobile2 minutes ago\r\n\r\nso azelaic acid should be up to 3 times a week?\r\n\r\n2 minutes agoSeen\r\n\r\nManjit:\r\nYes!\r\n\r\n Sent from Mobile2 minutes ago\r\n\r\ni understand, i have used previously a toner with aha bha and pha but not sure how strong it was\r\n\r\n1 minute agoSeen\r\n\r\nWhenever you�re not using the salicylic acid!\r\n\r\nYou may wish to get the peel and do a patch test\r\n\r\nManjit:\r\n Patch tests can be done in several different ways. We have a comprehensive guide on how to perform a patch test on The Ordinary website - https://theordinary.com/patchtest\r\n\r\n Sent from Mobile1 minute ago\r\n\r\nokay thank you very much!\r\n\r\n1 minute agoSeen\r\n\r\nManjit:\r\n And if it is too strong, you can view our return policy and other return details here: https://deciem.com/document/returns ??\r\n\r\n Sent from MobileJust now\r\n\r\nat the moment i cant order because youve stopped shipping in my country because of corona so Ill save everything for a later time\r\n\r\nOne last question\r\n\r\nhow often should be the mask used? 2 times per week?\r\n\r\nManjit:\r\nOne a week max!\r\n\r\n\r\n\r\n// TO-BUY from boots.com\r\nvaseline\r\nanti frizz hair products, \r\nshampoo,\r\nargan oil,\r\nmaybe a hair straightener,\r\nmoisturizer,\r\n\r\n\r\n// Glowy Skin\r\nPurito BHA Dead Skin Moisture Gel\r\nIsnTree Clear Skin PHA Sleeping Mask\r\n------keto te dyja alla Isntree AHA Clear Skin qe ty tpelqen------\r\nHyaluronic Acid stuff:\r\nIsnTree Hyaluronic Acid Water Sleeping Mask (20mij 100ml)\r\nIsnTree Hyaluronic Acid Moist Cream (22mij 100ml)\r\n',1,NULL,0.35),(6,'FINAL second TESTT',12.00,'second test',2,5,3,2,'2021-01-01 01:00:00',NULL,NULL,_binary 'Today, 20:11\r\n\r\nHi! So I suffer from hormonal acne that is placed on my jaw and around my mouth and occasionally on the sides of my cheeks. My skin type is combination, with an oily t-zone by the end of the day. I mostly feel the dry side of it and i cant live without moisturizer. At the moment, except for acne, I have a lot of scars that are red, texture irregularities and blackheads on my t-zone. I would like to build a simple regimen with ordinary products\r\n\r\nToday, 20:11Seen\r\n\r\nManjit:\r\nThanks. When an ambassador responds, you\'ll be notified here and by email.\r\n\r\nToday, 20:12\r\n\r\nManjit:\r\nManjit joined the conversation\r\n\r\nVancouver, Downtown Store\r\n\r\n\r\nManjit:\r\nHi Ina! I�m Manjit, a team member at Deciem :-)\r\n\r\n Sent from Mobile9 minutes ago\r\n\r\nHi :)\r\n\r\n8 minutes agoSeen\r\n\r\nManjit:\r\nI would recommend using Niacinamide, Salicylic acid masque, hyaluronic acid, and azelaic acid\r\n\r\n Sent from Mobile8 minutes ago\r\n\r\nNiacinamide is great for regulating oil production and minimizing pores, also showing signs of brightening \r\n\r\nSalicylic acid masque is a clay and charcoal wash off masque which acts like a magnet for the dirt/oil build up on the face, exfoliating the inside of the pore to clear up active breakouts and blemishes \r\n\r\nHyaluronic acid is a hydration serum which essentially acts like water for the skin, it�s great for hydration support so you don�t feel dry and dehydrated throughout the day\r\n\r\nAzelaic acid targets textural and tone irregularities!\r\n\r\nProduct image\r\nNiacinamide 10% + Zinc 1%\r\n\r\n\r\nView\r\nProduct image\r\nSalicylic Acid 2% Masque\r\n\r\n\r\nView\r\nProduct image\r\nHyaluronic Acid 2% + B5\r\n\r\n\r\nView\r\nManjit:\r\nProduct image\r\nAzelaic Acid Suspension 10%\r\n\r\n\r\nView\r\n Recommended by Manjit5 minutes ago\r\n\r\n can i also use this  https://theordinary.deciem.com/product/rdn-aha-30pct-bha-2pct-peeling-solution-30ml\r\n\r\nor is it too much\r\n\r\n4 minutes agoSeen\r\n\r\nSo your routine would look like \r\n\r\nAM\r\n1. Cleanser\r\n2. Hyaluronic acid\r\n3. Niacinamide \r\n4. Moisturizer \r\n\r\nPM\r\n1. Cleanser \r\n2. Hyaluronic acid \r\n3. Azelaic acid\r\n4. Moisturizer \r\n\r\nPM (1-3x a week)\r\n1. Cleanser\r\n2. Salicylic acid masque (wash off)\r\n3. Hyaluronic acid\r\n4. Moisturizer\r\n\r\nManjit:\r\nThe peeling solution is a great chemical exfoliator but I would only recommend it if you�re experienced with exfoliating acids and if you have tough skin as it is very strong!\r\n\r\n Sent from Mobile2 minutes ago\r\n\r\nso azelaic acid should be up to 3 times a week?\r\n\r\n2 minutes agoSeen\r\n\r\nManjit:\r\nYes!\r\n\r\n Sent from Mobile2 minutes ago\r\n\r\ni understand, i have used previously a toner with aha bha and pha but not sure how strong it was\r\n\r\n1 minute agoSeen\r\n\r\nWhenever you�re not using the salicylic acid!\r\n\r\nYou may wish to get the peel and do a patch test\r\n\r\nManjit:\r\n Patch tests can be done in several different ways. We have a comprehensive guide on how to perform a patch test on The Ordinary website - https://theordinary.com/patchtest\r\n\r\n Sent from Mobile1 minute ago\r\n\r\nokay thank you very much!\r\n\r\n1 minute agoSeen\r\n\r\nManjit:\r\n And if it is too strong, you can view our return policy and other return details here: https://deciem.com/document/returns ??\r\n\r\n Sent from MobileJust now\r\n\r\nat the moment i cant order because youve stopped shipping in my country because of corona so Ill save everything for a later time\r\n\r\nOne last question\r\n\r\nhow often should be the mask used? 2 times per week?\r\n\r\nManjit:\r\nOne a week max!\r\n\r\n\r\n\r\n// TO-BUY from boots.com\r\nvaseline\r\nanti frizz hair products, \r\nshampoo,\r\nargan oil,\r\nmaybe a hair straightener,\r\nmoisturizer,\r\n\r\n\r\n// Glowy Skin\r\nPurito BHA Dead Skin Moisture Gel\r\nIsnTree Clear Skin PHA Sleeping Mask\r\n------keto te dyja alla Isntree AHA Clear Skin qe ty tpelqen------\r\nHyaluronic Acid stuff:\r\nIsnTree Hyaluronic Acid Water Sleeping Mask (20mij 100ml)\r\nIsnTree Hyaluronic Acid Moist Cream (22mij 100ml)\r\n',1,NULL,0.60),(7,'test request part',12.00,'second test',2,5,3,2,'2021-01-01 01:00:00',NULL,NULL,_binary 'Today, 20:11\r\n\r\nHi! So I suffer from hormonal acne that is placed on my jaw and around my mouth and occasionally on the sides of my cheeks. My skin type is combination, with an oily t-zone by the end of the day. I mostly feel the dry side of it and i cant live without moisturizer. At the moment, except for acne, I have a lot of scars that are red, texture irregularities and blackheads on my t-zone. I would like to build a simple regimen with ordinary products\r\n\r\nToday, 20:11Seen\r\n\r\nManjit:\r\nThanks. When an ambassador responds, you\'ll be notified here and by email.\r\n\r\nToday, 20:12\r\n\r\nManjit:\r\nManjit joined the conversation\r\n\r\nVancouver, Downtown Store\r\n\r\n\r\nManjit:\r\nHi Ina! I�m Manjit, a team member at Deciem :-)\r\n\r\n Sent from Mobile9 minutes ago\r\n\r\nHi :)\r\n\r\n8 minutes agoSeen\r\n\r\nManjit:\r\nI would recommend using Niacinamide, Salicylic acid masque, hyaluronic acid, and azelaic acid\r\n\r\n Sent from Mobile8 minutes ago\r\n\r\nNiacinamide is great for regulating oil production and minimizing pores, also showing signs of brightening \r\n\r\nSalicylic acid masque is a clay and charcoal wash off masque which acts like a magnet for the dirt/oil build up on the face, exfoliating the inside of the pore to clear up active breakouts and blemishes \r\n\r\nHyaluronic acid is a hydration serum which essentially acts like water for the skin, it�s great for hydration support so you don�t feel dry and dehydrated throughout the day\r\n\r\nAzelaic acid targets textural and tone irregularities!\r\n\r\nProduct image\r\nNiacinamide 10% + Zinc 1%\r\n\r\n\r\nView\r\nProduct image\r\nSalicylic Acid 2% Masque\r\n\r\n\r\nView\r\nProduct image\r\nHyaluronic Acid 2% + B5\r\n\r\n\r\nView\r\nManjit:\r\nProduct image\r\nAzelaic Acid Suspension 10%\r\n\r\n\r\nView\r\n Recommended by Manjit5 minutes ago\r\n\r\n can i also use this  https://theordinary.deciem.com/product/rdn-aha-30pct-bha-2pct-peeling-solution-30ml\r\n\r\nor is it too much\r\n\r\n4 minutes agoSeen\r\n\r\nSo your routine would look like \r\n\r\nAM\r\n1. Cleanser\r\n2. Hyaluronic acid\r\n3. Niacinamide \r\n4. Moisturizer \r\n\r\nPM\r\n1. Cleanser \r\n2. Hyaluronic acid \r\n3. Azelaic acid\r\n4. Moisturizer \r\n\r\nPM (1-3x a week)\r\n1. Cleanser\r\n2. Salicylic acid masque (wash off)\r\n3. Hyaluronic acid\r\n4. Moisturizer\r\n\r\nManjit:\r\nThe peeling solution is a great chemical exfoliator but I would only recommend it if you�re experienced with exfoliating acids and if you have tough skin as it is very strong!\r\n\r\n Sent from Mobile2 minutes ago\r\n\r\nso azelaic acid should be up to 3 times a week?\r\n\r\n2 minutes agoSeen\r\n\r\nManjit:\r\nYes!\r\n\r\n Sent from Mobile2 minutes ago\r\n\r\ni understand, i have used previously a toner with aha bha and pha but not sure how strong it was\r\n\r\n1 minute agoSeen\r\n\r\nWhenever you�re not using the salicylic acid!\r\n\r\nYou may wish to get the peel and do a patch test\r\n\r\nManjit:\r\n Patch tests can be done in several different ways. We have a comprehensive guide on how to perform a patch test on The Ordinary website - https://theordinary.com/patchtest\r\n\r\n Sent from Mobile1 minute ago\r\n\r\nokay thank you very much!\r\n\r\n1 minute agoSeen\r\n\r\nManjit:\r\n And if it is too strong, you can view our return policy and other return details here: https://deciem.com/document/returns ??\r\n\r\n Sent from MobileJust now\r\n\r\nat the moment i cant order because youve stopped shipping in my country because of corona so Ill save everything for a later time\r\n\r\nOne last question\r\n\r\nhow often should be the mask used? 2 times per week?\r\n\r\nManjit:\r\nOne a week max!\r\n\r\n\r\n\r\n// TO-BUY from boots.com\r\nvaseline\r\nanti frizz hair products, \r\nshampoo,\r\nargan oil,\r\nmaybe a hair straightener,\r\nmoisturizer,\r\n\r\n\r\n// Glowy Skin\r\nPurito BHA Dead Skin Moisture Gel\r\nIsnTree Clear Skin PHA Sleeping Mask\r\n------keto te dyja alla Isntree AHA Clear Skin qe ty tpelqen------\r\nHyaluronic Acid stuff:\r\nIsnTree Hyaluronic Acid Water Sleeping Mask (20mij 100ml)\r\nIsnTree Hyaluronic Acid Moist Cream (22mij 100ml)\r\n',1,NULL,0.75);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `online` char(1) DEFAULT NULL,
  `uuid` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_staff_uuid_idx` (`uuid`),
  CONSTRAINT `fk_staff_uuid` FOREIGN KEY (`uuid`) REFERENCES `users` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'1','1'),(2,'0','1'),(3,'1','2');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_status`
--

DROP TABLE IF EXISTS `ticket_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_status`
--

LOCK TABLES `ticket_status` WRITE;
/*!40000 ALTER TABLE `ticket_status` DISABLE KEYS */;
INSERT INTO `ticket_status` VALUES (1,'opened'),(2,'pending'),(3,'closed'),(4,'x');
/*!40000 ALTER TABLE `ticket_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `uuid` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ticket_status_id` int DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ticket_status_idx` (`ticket_status_id`),
  KEY `fk_tickets_uuid_idx` (`uuid`),
  CONSTRAINT `fk_ticket_status` FOREIGN KEY (`ticket_status_id`) REFERENCES `ticket_status` (`id`),
  CONSTRAINT `fk_tickets_uuid` FOREIGN KEY (`uuid`) REFERENCES `users` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'test','1','2021-03-01 00:00:00','2021-03-04 17:10:01',3,'heiu'),(2,'test267','1','2021-02-01 00:00:00','2021-02-01 00:00:00',4,'jiuh'),(3,'post method','1','2021-03-08 22:11:44','2021-03-08 22:11:44',1,'post method');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_status`
--

DROP TABLE IF EXISTS `transaction_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_status`
--

LOCK TABLES `transaction_status` WRITE;
/*!40000 ALTER TABLE `transaction_status` DISABLE KEYS */;
INSERT INTO `transaction_status` VALUES (1,'test');
/*!40000 ALTER TABLE `transaction_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uuid` varchar(150) NOT NULL,
  `payment_method_id` int DEFAULT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `transaction_id` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_payment_methods_idx` (`payment_method_id`),
  KEY `fk_transaction_status_idx` (`status_id`),
  KEY `fk_transactions_uuid_idx` (`uuid`),
  CONSTRAINT `fk_payment_methods` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  CONSTRAINT `fk_transaction_status` FOREIGN KEY (`status_id`) REFERENCES `transaction_status` (`id`),
  CONSTRAINT `fk_transactions_uuid` FOREIGN KEY (`uuid`) REFERENCES `users` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'1',1,12.25,1,'2021-03-02 00:00:00','test for get all',NULL),(2,'1',1,35.25,1,'2021-03-05 22:55:32','test for post',NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_promotion`
--

DROP TABLE IF EXISTS `user_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_promotion` (
  `id` int NOT NULL,
  `description` varchar(500) NOT NULL,
  `uuid` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_promotion_uuid_idx` (`uuid`),
  CONSTRAINT `fk_promotion_uuid` FOREIGN KEY (`uuid`) REFERENCES `users` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_promotion`
--

LOCK TABLES `user_promotion` WRITE;
/*!40000 ALTER TABLE `user_promotion` DISABLE KEYS */;
INSERT INTO `user_promotion` VALUES (1,'SALE for you ','1'),(2,'please do this','1');
/*!40000 ALTER TABLE `user_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_status`
--

DROP TABLE IF EXISTS `user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_status` (
  `id` int NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_status`
--

LOCK TABLES `user_status` WRITE;
/*!40000 ALTER TABLE `user_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `uuid` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `role` varchar(50) NOT NULL,
  `last_sign_in` datetime DEFAULT NULL,
  `sign_up_date` datetime DEFAULT NULL,
  `balance` decimal(6,2) DEFAULT NULL,
  `user_status_id` int DEFAULT NULL,
  `notifications` char(1) DEFAULT '1',
  `password` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `fk_user_status_idx` (`user_status_id`),
  CONSTRAINT `fk_user_status` FOREIGN KEY (`user_status_id`) REFERENCES `user_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','ina','UPDATEDina@test.com','user',NULL,NULL,15.25,NULL,'1','inaina'),('2','test','test@test.com','admin',NULL,NULL,35.25,NULL,'1',NULL),('3','test per post method','ina@test.com','user','2021-03-06 21:07:38','2021-03-06 21:07:39',0.00,NULL,'1','inaina');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_payment_methods`
--

DROP TABLE IF EXISTS `users_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_payment_methods` (
  `uuid` varchar(150) NOT NULL,
  `payment_method_id` int NOT NULL,
  PRIMARY KEY (`uuid`,`payment_method_id`),
  KEY `fk1_users_uuid_idx` (`uuid`),
  KEY `fk2_users_payment_method_idx` (`payment_method_id`),
  CONSTRAINT `fk1_users_uuid` FOREIGN KEY (`uuid`) REFERENCES `users` (`uuid`),
  CONSTRAINT `fk2_users_payment_method` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_payment_methods`
--

LOCK TABLES `users_payment_methods` WRITE;
/*!40000 ALTER TABLE `users_payment_methods` DISABLE KEYS */;
INSERT INTO `users_payment_methods` VALUES ('1',1),('2',1),('3',1),('1',2);
/*!40000 ALTER TABLE `users_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-30 23:00:07
