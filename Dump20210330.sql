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
INSERT INTO `products` VALUES (1,'UPDATED',12.00,'jnde',2,5,3,2,'2021-01-02 00:00:00',NULL,NULL,NULL,1,NULL,0.25),(2,'iuhreig',26.00,'jbnh',2,4,2,2,'2021-03-03 00:00:00',NULL,NULL,NULL,NULL,NULL,0.50),(3,'file product image test',50.00,'trying post method',2,4,2,2,'2021-03-09 01:00:00',NULL,NULL,_binary '‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\ã\0\0\0\0\0FŒ\Úe\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0t\0\0t\Şfx\0\0Û¡IDATx^ì½‡Ÿ\×}¿\ï¿\à—ÄÓ¾©N\âÄ‰\ã\Äv\\\â\Şw[»­8.²,TB¢H€ ±ôŞ‹\è½÷¾”–¶”–²°\ËvX@Ÿ\ß|Î¹÷\ÌÜ™¹÷\î\Ş]v\áy^¯\çu\ï;\åÌ™\Ù\ËÌ›s\æ¼\ãB\é9‰³ôüY\ãùs\ê9w¶DÎ9-%%§\äô©“r\ê\ä	9y\â¸?^,\Å\Å\Ç\äØ±£r\ì\è9\êx\äHQÂ¢\")2FDDDDDDDDlg&ò-/\ë\Ò\ÜKó/\ÍÁ4\Ó\\Ló1\Í\É4/\Ó\ÜLó3\Í\Ñ4O\Ó\\\Í\Ë\Øb\Ã8;ˆ;\ç,x\ÖYÁ™’\ÓRrú”œ:\á4€;r\Ä\r\Ş\Ë\áÃ‡Œ‡yDDDDDDDDDl§&2./ó\ÒüKs0\Í\Ã4ó…r§N˜üLs4\Í\Ó4Wó¹\È0.*ˆ;}:\Ñ\Z\î\Ä	/„;jA/€3;xP\Z\ÈÁ\ä\0\"\"\"\"\"\"\"\"b;Ws.“w<hò//œ3ÁÜ‘\"““i^¦¹™i%wúdZ Æ7a\\H§­\á5Mò´™^\"„s¸d¥°0\Ìıˆˆˆˆˆˆˆˆˆ\í\Äô|Ks¯T8—h9—\å]X57\Óü,\Èi\Î\ZÆ¥Z\Å%gq\Ú\ÜNû\Ãu[\Ãi¨\rpû÷\ïGDDDDDDDD| M\æÜ–rš—in¦ù™\æhv §9[Z\â\Ì`\rúŒ8·Eœ®\ÈtK=¬A\\¢+ªn0Q€Tö\íÛ—\åô=\"\"\"\"\"\"\"\"b{\Ö\á¼÷‰Ï‰i‰@\î€\É\Ë473\İV­rš¯i\Î\Z\Æi÷Tóœ¸3%fô}\èœyFœ\×\"\Î\â¬\Öp^\ÔcÇÉµk×¤¾¾^\îİ»\'\0\0\0\0\0\0\0\0\0\íÍ¹4\ï\Ò\ÜKó/;Kr…&/ó9\Í\ÑL—U}†œ\êPr\ÊÆ…vO=uÒŒ¡ŸK<#.\Ä\éF¼\Öpúşøñ\ã¦@\0\0\0\0\0\0\0\0\0:šƒi\æ5TóZ\É%9\í²ê´ªùš\ælia\\ªU\\ª{ªyN\ÜÑ£\æ!t‰g\ÄV§j\"\0\0\0\0\0\0\0\0ğ°¡¹˜—‘i^¦¹Y¢\ËjbP\ÍÕ¼\ç\Ç%Ã¸\Òón\Ñ*Nû¹\ê¨\Ş`\r^\â§VVVº›\0\0\0\0\0\0\0\0xø\Ğ|,È¥u\Ğ<Ms5¯uœÆ¥º¨&Ÿ—l—\êjqúJ‹8\0\0\0\0\0\0\0\0€D9;7\Ó\Íë®ªùš\æl¾0\ÎtQ=\ëuQµw\äˆ\Õ*.\Õ=Uû\Ä\0\0\0\0\0\0\0\0@\Í\Ëa\Ü~“£y­\ã4_Óœ\Í\Æº¨\êH:\ë\ïYq\î©\Ö\0\0\0\0\0\0\0\0\0Bó2/;\Ó-1˜\Ã!“¯i\Îf\Â8ûyqg\ÏFtQ\r<+N‡o\0\0\0\0\0\0\0\0\0?š›yaœ\éªz0\ÕU\Õ\r\ãÏ‹óFQ\ré¢ª+Ú·oÏŠ\0\0\0\0\0\0\0\0As3\Í\Ï4GvUõ…q\çL§Ï‹;2Šª\àº¨\0\0\0\0\0\0\0\0¤£¹™£i®¦ùš\æl\É0\Î¼\á´7xƒ>/Î™)\ìyq÷\î\İsW\0\0\0\0\0\0\0\0\0š›yš	\ã¼\çÆ……qg4Œ3ƒ7¸aœ;xƒı¼8mf\0\0\0\0\0\0\0\0\0\áx\İT5O3ÏsqH…q\ç4Œ+ñ…q:\ÂC‘	\ãüƒ7\Æ\İ\Ş~ûm©­©‘aC†\Ê\È\á\Ãe\Èƒdğ\ëo\Èğ¡\ÃdÀ«ı\åõ\×^“7GŒp¾!Ë–.u—z0ø\é„ıò—]\×\È?·*egWû³õş])/..–òš\Û\îZDV½&Ÿ¼]\Şœ\ßñ}/o”\êú;\îœ\"÷\ŞùÖ›{\äO:¯öÍ§ş\Û+›dÔ¦³\îœ\"·\îÜ“	\Û\ÎËŸ½>\ï;;­”\ç“+Õ·Ü¹E]¨’÷Û’6¯ª\ÓKoºsŠ\\¬lNó:ß­–ŸO,t§\0\0\0\0\0\0@[&=Œ\ÓA\ÂÂ¸/Œ+vÃ¸Ã„q­@II‰\\¼pAÖ¯[\'“&L”…\ÜoRhWUU%+—¯U+WÊ’E‹dô¨Q²{\×.™<q’Ì=[V,[.«W­’Í›6»K¥3m\êTY0o¾y˜`uuµÜ¾\n«\Ú*?¿_ş´ójùƒgV¤\ìh½\ê|÷ÿ9¯½–ëµ©ı[|ğŠü\×k[\Íw¾\å÷ÿ\ÔsƒT7¤Â¸»÷Ş–ÿ¾Ë„zf^kş}y£l9\çÎ™\ã\Æm;/\ï\î¼*¹>o~\İ\ÖsóÊ•ªTwğB•|°\ï\æ\äúl?\Ò‹(­r\ç¹P\Ñ \Ï\Ì9\"\è”C\ë\0\0\0\0\0\0\0\Ú>\áa\Ü\á\\Ã¸D_WÂ¸üPSS#\×\Ë\Ëeñ\ÂE\Æuk\×Ê‚yódá‚·d÷®İ¡ƒd\Ô\Ö\Ö\Ê3O>%‹-’eK–È’Å‹e©óª\ï/\\h‚ºñc\Ç\É\Ü\Ùs\Ü%Rh˜wş\Ü9Y³zµL™<Ù¼.˜?ß¬\ã\èÑ£&\è\Óy\Ú\"^§ÁVš]C¾¶\áŒT\Ö7ºk™µ÷’|¨\ß\æ´ù4\èú÷>›\äöÔ³koß•\Ï\ŞnBµ\àüÿö\ÊF™¸½ÔS¤¡ñl>\'\ï~nUj>k¹.o“kV=mùö¯½7†\Îûñ×¶š°\Î\ãüzyjv‘)\ã	\ã\0\0\0\0\0\0\0\Ú©0NGT\Í&Œ;N\×Rh\àUQQ!³gÍ’ñcÇš0\ì@a¡¼5Œ6\\&Œ/ó\ç\Îs\Ëyw‰w\î\Ü1­\ç´EÜ„q\ãdLA™_?\ëº&/3¦M“\âc\Ç\Ü%R\è\ÃuÙ¹s\æ8\Û&o¾);w\ìpCÀù2q\Â66¦Â«¶Ble\Ç²ôğ©o¼\ë®E\ä\ÍMg\å½=7$¿÷\æÕ®¤Ÿ}c»sl\Ü´%\Û\'nK­\ÏR½¹û\Ë\Ü9\ÅlcÀªÓ¦›ir½\Öú{,>\î÷¿)ÿ\Òú\ä÷¶Ÿ´]Š.U»sŠÜ¨m”9û.9\ë?eº\Ù\0\0\0\0\0\0@Û‡0®\r¡a\\]]Ì˜6]6¬[oº¥nX¿Ş´Š›6eªLŸ:MfÏœeº®\Ñ@\í\ìÙ³\æ¹pıûõ“\ç:>+¯½\Ú_ºu\é*/t\î,C‡1AŞ•+W\Ü%R\è²[6o6aœnK·³i\ã\Æd\ë:\íúºq\Ã¹{7^å›½{öJyy¹û){r\n\ã\Ü\ì=/®—Wjå›°İ¹û¶¼¸\è¸ü\éó\Öz\Üyõ¹pÁVgÅ—k\ä£ı·¤\æµü\ÄÀ­²¶8µu·\ïÊ³óÊ»:Y-\ã\\µe]¿\'\Í<ŠggI…üE—D·[\rğ>\Øw“<R°Gº¼uT–ÉºTp\×è”»\Òù|µú–\Ô\Şj¹c\0\0\0\0\0\0\0ùƒ0®¡Á˜¶h\Ó\0lÊ¤\É&|›5c¦iİ¦-\ÛfÎ˜!‡r\çN¡\ËiH§Ïˆ\ëÕ£‡4H C‘—{ö”A¯¿!K/‰\ãt`‡É“&IÁ¨Q2i\ÂY¸`y\Ö\ÜüyóŒÛ¶nu\çn\îğ¤:\çP®˜0\ÎÑ²P;°oĞT(\ØqeÚ¼:8D÷E\Å\îœ	6¿nº®\çU¿4d‡\ì?Ÿ\Zd¡\æ\Ö³½w>\ë¬\Ûj§\ês\äFn<kA§\Üq^w©\ïŒ\Ú#\İË”dmñ5\Ó5õBE½\Ô:\ëòD\0\0\0\0\0\0\0hŸÆµA´Ušv7w®¼9J†*/u\ïnºœj—Uı>ˆj\Å\Å\Å2uò\âU`Ş)-cGv\ŞO–%‹\Ë\åË—\İ%Rh‹·±£\Ç\Èòe\Ë\å\Ùg‘¡ƒ\Ë\È#L(¨]^5¼PšzZKğ\İo}Ë´\ÎË•\\\Ã8mm¶ğ\àe_ÕµÇ®™®¨aóÿ\ÃK\ëeö\ŞK\îœ	\Æn=/\ï\íŞ•ôÛ£öÈ¹©gúU5Ü‘\Ï\Şa{\Îû·/®“)».¸s\ê1|\Ût\İ}¶R\Ên6˜p\0\0\0\0\0\0\0,\ã\Ú :€ƒÖ -Ò}úóü·A¯¿.^\í/S§L‘•+V˜\0MŸ\ávó\æMóz\åòYµb¥¬^½Ú„jú½jºº\Z1RÆcZ\Ú-_º\Ì9nERS]-·nİ’jw`B[\Ğ\éó\á´{«¾>\ß\é9yıµ\×\Ìó\ëN?nI×’4+ŒË²›ª>ÿ\í»£ö˜¼f:0C\ïe\'\ä=/®K›_»‘şG\ßMrüJMbf—§\ç1-\æ‚ók\ë·_N>`Z\Ã)º\r\íBªÏ€³{\Ğ`\î}/o0­ñ´[j.4Ş½\'uröz½i1·ù\äuóü»m§o¸s\0\0\0\0\0\0\0@[†0®¢£›N?Aº½\Ğ\Åt\Õ\ç·i7n\ìX–]ºt\ÉtWİ¼i“œ:yÒ„wú¬7}¶\Ûøq\ãÍ¨¨Ú¥UŸ?§Ï›\ÓVvo-X`FIİºy‹:x\È\Òpö\ÌÇ³2j\äH3\ÈÃ¬™3\ÍÀ\r=º¿(ƒ\ßxC6m\Ü$µ5ş0ª%\ÈK\èj«˜v-]_\\n\çq¬¬F¾1r—‘4¸ÌŸt^%\ß+\Ø+·¬‘T5hû\â¡Ï€û«®N½-9ú´eÛ¡‹U\Éuk9?\Ö‹	\ìFm:+Jo&ƒ»0t=7\ë\ïHIy\ì:S)Ë‹®Ê¤¥ò\êÊ“òôœ\"ùÑ¸}¦,úüº\'gv—\0\0\0\0\0\0€¶a\\\åö\íÛ¦‹ªv]¼h‘	ª´u›v7\Õ@mÍª\Õ2y\âDY±l¹\éF:t\Ğ`Ù¶u›i·`şÙ±}»	\ØÖ¬^mB·iS§\Ê\Ì\é3Ìºt‡¹³\ç8\ë\Übº½®X¶\Ì<3n\Ü\è1²w\ÏY»f™\ïõe\×Î¦õ\\KÓ’-\ã4ˆû\ç^dğ:ÿÀ\rf¤\ÓS‘]Nÿ±\Çz¶şŒ;w‚½\ç*\å}Îº’ói\0è†€ÿ\Ñw³Lµº\êÀ³ö^”?aµ}õw\Ó\É\Â—MWT\ï9q6Z\Í\Ú}VŸaWXzS\Ö»f)\×aV‘|e\ØNù\×\Ş\å\İ!ûªa_p	\0\0\0\0\0\0\0h›ÆµQômƒ\r’Õ«V™ğ\í­oÉ›#Fš@N²)“&\Éòe\ËL\Ë8m§7h·VU\ßOœ0Á\Æ0n\ÌXó9\rñ\æÌm\Â7UUGi=yò¤Y·>_®ü\Ú5™>mši…·è­…²bùr™4q¢	ó*++\İRµ-Æ½«\ÓJy\ïòò²R;\Õ\ÂMƒ/\í\"ú\É×·¥nt%ı\Ì\Û\åHYµ»D‚«O\É_w[›œ\Ï^\æ\ë#vÉs©ºªn¸#\Ã6œ1!Ü–S7|Ï©óğ¸K7L+ºE/\Ëš ş\Ê\ŞNŒZ~\Â8\0\0\0\0\0\0€öa\\eöÌ™¦u›¶b[¿n/.v>\ï0\İMgNŸnB2\r\ât0\íVª­\Ù4t{kş|3hƒN;|\è°\ìß·ß´”\Ó\îª\æ\Í3AÛº5keõ*}¶\Ü2Y¼p‘™¦Ï¡Û»g¯?~\\Nœ8aº\È\ê6´…Üİ»\İRµù\ãş°\ã\n\Ó\"\í¯m5]B\ZSAœ¢$üÏ˜½ògƒ?üM·µ&³jK·/\Ş\ÚEUÃ»\Çg’ëµ©QZoß½\'§¯ÕºŸühW\ÙÊºF\ÓU»Ÿ>;\ï¨|lÀVy\çsÎº­€/ù>lš+a\0\0\0\0\0\0@û0®¢­\ßtt\ÔM›6É´)S\Ìs\âv\î\ØiºœÎ›3Ç´€›;{¶aU»ª<qB^0À<S®øX±\é\æ\êq\ãú\rY¹b¥Œ>ÜŒšºi\Ã3Ÿ>N»«\ê«o\Zú\és\æ´\İAç¸;wN¶m\İ*gÏu\×\Ôr\ä#ŒûG¤AC8\í–ú«©CH¨¾uGº¼u,\Ñ\Â\Í»Œ+M·\Ï\Ï\r\ÚnF5õ¸÷öÛ²öX¹y.œ„yşCõ2bc\æz\Òô9pE—ª\åõ5§å³ƒvø»z\åğ\ŞÛ¯\ÒM\0\0\0\0\0\0 ı@\×F©¨¨/¾(s\ç\Ì5­Ş†fºnß¶Í´V\ÓNŸ)7~\ì8¦iÈ¦õ?v\Ì3Âª>óM\Ã=\íâªÛ°!Cd\á[oÉ„ñ\ãMø6\à\ÕWeë–­\æû\áC‡š\ïtıúö•\åË—K]]»¦–£©aÜ£M@¦ƒ-\è§Ÿ´]z.9.»\ÎVJ£5Pƒ¢Ÿtô\Ô^K\Ëÿ\ë’>\Zª\çß½¸\Îtkµ[\ÅiËº\Û\'¬-×¼yİLGJıÚˆ]²õTôˆ¦úŒ8b\Û\é\nùıŒÃ©\Ñ[uÁ°\Íşü.d:a\0\0\0\0\0\0@û0®\rs÷\î]?v¬y¾›>\çmÄ°\á¦E›jÈ¨‘oš\ç\Ä\r4Xö ıûõ“\ç;=\'×¯_w×BŸ§\á\Şë¯½\æ\Ì÷ª³¾¹f\Ù\åK—Iii©Œ)(7¾.C6­\â\Ş1Bv\ï\Şm\Ê\Ğ\Z45Œ\Ó6Ÿ¼.û\Ïß”\Ë7oÉ­\Æ{&ø²ƒ4E?Ş¬o”³ËŸ\Ä<cNƒ­\Û\'\çn\Ô\'t\Ğ\Öl\ÛKn\ÈwNïª¡\Øß¿´\Î¡ÏˆCË²\áx¹\é«! v+\ÕV|Áõø>§G}\ïH7U\0\0\0\0\0\0€öa\\g\ßŞ½2røp3(Ã¼9selÁh6xˆ	\åN:\å£Rœ:tÈŒ¤Ú«GO\Ó\åt\íÚµ²t\ÉóL8)U[\ÑiX§Ïœ\Óg\Ä\és\åN<)\ëÖ¬‘W^~Yz÷z\Ùt…]½r•2\Ôt½t\é’[Š–§©aœ>{MÃ²;÷\Ş6]I\Ã\ĞVm›OŞ/\ÙiZĞ™ LÃ­€\ë3ol“¥‡¯øF;­¨k”o\ÚcB¯\ä¼Î²\à|ş3]G=­½u7-\0L´„»!?»Wş¶ûZÓªN[\Ñ\Ù\Ûk–\î>\Æ\0\0\0\0\0\0´\ã\Ú8W®\\‘±£G›\ç\Ãi¦;¼µ`i\á6m\êTw¤\Õ¦›\é\î]»\åHQ‘s\ÌÎ™\ÑQµ»juuµQ»½^¾|\Ù9%r ğ€lX¿ÁtKÕïÍ€\Ú\ÂnÉ¢EòZÿ¦;lCCƒ[Š–§©a\\:\à‚vW}zN‘y†Ü»\ìÁ‚¡XÇ•ò>›dô–sR\ë,ç¡­\İ\Æm=oB<{~\í\Êú\ÊòrüJ4FIÕ®°‡/V\ËS³\Û\r.k\Ì\ÊYÁŸ­»œ<ñ\ïNyµ{ì¯§”\É;Jİ­\0\0\0\0\0\0@[†0®\Ó\Ø\ØhFB?f¬i­¦# =zTÎŸ?om\Ğ4X\Óp3§Ï¹s\æ˜\Ğ\î­ùL8U\Ã:Uƒ;ı¼võ\ZÙ¹}‡iuw\ê\ÄI)++s\ÖuR\æÌš-Ó§N5\á\\ñ±c\æYs­E>\Â8mÌ¦­\Ø\nKo\Ê\Ä¥ò\è¤Bùp¿\ÍòW:PCH eû÷/­—ş+O\É\Õ\ê[\î\Ú£¡j÷\×9ë°—\Ñ\Ös\n\Ë\äJ\Õ-\Ó\"\ÏC\ß]¨¨—a\Î\È\r\Üjago£©şQ§•òW6\É÷Fï‘——{.\Êö’\n9RVmFk\Õm\êÈ¬\0\0\0\0\0\0\0\Ğö!Œkch\0vô\È”i}j§ƒ3hË¸%‹ËŠ\å+Ì³\ŞF˜Á\Zt\0í†ªaœ†p\Z¸™\Ör:ƒ	\áœùõq\Ú\ÍUŸ=·h¡†toÉ”I“M÷U\Ğaş¼ù²tñ³\îñ\ã\ÆÉ›#GÊºµke\×\Î]²g÷n\ÓÚ®%Ã¹¦†q\Óv]0-Ô_pT~3\í |w\Ôù\Ì\Û\å_{o4­\ÇL ¥Aš1¤µ™3\í{¬—¾+Nš\ç\Äy»¨]^O^­5ƒ6h¦ój·\ÔG\'05h‹9»:t„V\í®ú³	…¦5\Ü†~Y\é,§Ï­ûË®k\å\ËCwšQ_\ç\ì»$;J*¤ør”\İl\Zg[v7Z\0\0\0\0\0\0\0h?Æµ!4\ì\Ò.¥\Ï=û¬:ÌŒ˜ª]Fõn\Î{oU\r\Ï^\ë\ß\ß8l\èP\Ì\é3\àôUM\Ì[ O=\ÑAúô~Å¼W\Çx\ê¼\Î\ë\ĞÁC\ÌHª: ƒ>w\ÎÌ£\ëp^‡l¦i\à\×÷•>2y\Ò$©¯O\rjoš\Z\Æıf\êA~i+´w?·\Êÿ\\7+\àJjOs^?\Øo³Y_\"\ço\Ôû9WZQ/]\ß:&ñ\Â\Zóœ7x¡û¢b)ºTmZ\ÌÙœ.¯“AkKL˜\0m\í\íF\éÌ£ûğ…Á;¤\ë\Âc2wÿ%\Ù}¶Ò´z\Óg\Ï½\0\0\0\0\0\0<Æµ!4Œ»^^.¿ú\ßÿ•]»vÉ±£Gú>!Ç‹µÎ™®£\Å\Î{íªƒ7\èt3ÍôX\âõ×¿ü?™:yŠ™/\áñ”\Çp,9]\"§OŸ6\ïU\í²z\ê\ä)³Ó§M“\áC‡JUU•[\Òü\Ó\Ô0\î\'\ã÷ËŸ†`aZ¡˜¶vûÊ°2u\ç\Ó\İ\Ôn\åv©²A^_sZş©\çù£gWš°O?\ët;°ÓL[\É=9\ë°ü\Ë\Ë£gˆ	\ã\Ş\é”\ãı½7š.µ#75#\Ã^p¶“©\å[\ãİ·\åFm£é¦º\ç\\¥¼\Ğr\Ç\0\0\0\0\0\0\0òa\\\Â\ã\îğ¤TÜ¸\áNm:\Ï>ıŒ¬_»\Öı\Ôt6¬_o‘¨ºyÓ’š\Æu\Î-Œ\Óp\íñ™‡eıñr\Ó\İ\Ô\æbeƒ^WbGxW§•ò}7Ë››\Î\Ê\Ízÿ3\Ùômó÷—É·\Ş\ÜmZÍ¥m+ƒ:²\êö\ß\"¿w\Ê1e\ç9VV#õ lt0Š3\åuftVm57tı\ÓrOoønÁ\Ój\0\0\0\0\0\0\0\Ú>„qmˆlÃ¸\ÆÛ·\årY™\Ä!\r\ãô¹o\ÍeÃºõ2¶ }‡q\Ú\Â\í½=\Ö\Ë#{dä¦³r¡¢Á7ø‚¶x+)¯“«N™ NÃ²õ\ßbFR\Õ \ÌF—³\åœ|lÀVyW\'k¤\Ô,Z\ÆiK8T\â·\ÓšgÁiwØ°VpZ\ÊúF9|±J–]•\ÏÈ“³Š\ä«\Ãw\Éû_\ÙhZz-ñôs?v\ê\0\0\0\0\0\0\0\Ú>„qmˆl\Â8\ç\êÕ«fTUµ®®\Îı&‡=Œ\Ó\0î¯º®•¿ºE¾?z¯y®\Ûñ+5i\áWC\ã=9t±J:\Ï?*\ï\í¹\ŞqŸxm«L\İuÁtEµ))¯•W–\ì¹Á\è¶\İ058û—^\ä‡c÷É¬=\år\Õ-	fpÎ¡•\Ú[w\åÔµZ\Ójo\Øú3f\0	\íÆª!YWH\à§\Ï\É#Œ\0\0\0\0\0\0hÆµ!²	\ã\êjk\å S\ç›7n’ıN}\ëÈ«Q<aÜ£\åoº­5-hğö÷/­3\á\Õ\Çl‘¯\r\ß%\æ•E/Ë¥›·\Ü%ü”\×Ü–\rÇ¯›L×¡A\Ü¹A\\£5Pƒe\Úr\î©Ù‡s\ê–\ê\rşğ\é7¶Ëˆ\rg\Ìh¨Á0P?W\Ô5Ê‘K\Õ2w\ß%ù¿\É\Ì3\è\Â\Ö&a\0\0\0\0\0\0@û0®\r‘)Œkll4\á›l×®]s\Ïy™3{¶U—\rò0„qÚ­ô—“\Èo¦2Á›~½÷¢\ì=Wi‚¶(joß•³\×\ëMk¹ö\İlZ¹ië³ô\ßb\á¦$xhwV}^\Û\Ï&\ì7#¶úÂ°`K5ı\ìN\Óõ½\ï\å\ròøŒC¦E\İ-VñB8¡U»\Î~y\èNF­/J\Â8\0\0\0\0\0\0€öa\\\"S§Ïˆ›;gÌš1C6o\Úd‚¶iS§Ê¼9s\å\Îÿ@Š\ÆİºuKnß¦\îŞ½k¾ô”¶\Æ\å‚\î^ı\í»r­\æ¶|\áKCwÊŸ¸]\\õ¹k\è³I\Æn=\ïëšªÚ©«µò\íQ{L\èÂŒ^`\æ†f\Ú\ZN»\Î~üµ­\æ¹pA´\Zjw\Ô7Ö6Ï3]^3„nQò\Ì8\0\0\0\0\0\0€öa\\BÃ°×¯G†q\Ú*n\äğ\áòR÷\îò\äïŸ¯ö—¡ƒ‡HÇ§6Z\r\ãÖ¬^-7l0Úœn\ëŞ½{¦µİ¹³ge\çRYYi¦)ú\ê…s\í9Œ\Ó]\Ğ@MŸw­ú–L\İyA¾8x‡¯\Ú8ş\ÃK\ëÌ¨©ú\Ì6m¹¦Ù·\ßÜ“\n¿‚Y\à³v\Õm­i­wözúóü´,\×ke\Ôæ³¦?\à\Ëö…v´Œ\0\0\0\0\0\0h?Æµ!2…q×\ïV._!#‡W^\îmZ\É-[º\Ôyÿ²;‡Ÿ:?/C\r’\Ç~ıù\î7¿%o-X\á´k\ë\éS§\Ìs\çF.o)3§Ïªª*³l\éùR¹võš™·½†q\Z¦]©º%‹\\–\'f\É{^\\ou0£Z¡ÖŸ=¿Z^_s\Útµ9}­N¾W°71¿~\Åù/½7\Ê\àõg¤¾ñ®„µ3\\QtÅ„\Ú\İ5Yl\Ö\ï\Í|u$Œ\0\0\0\0\0\0h?Æµ!2…q×®^•ó\çK¿>}\å…\ç:Ë„q\ãdÆ´i\Ò\ã\Å\İ9ü<\ï\Ì3eòd\éıò\Ë\Òù\ÙN²w\Ï^Ó‚N={\æŒLw–İ±}‡4XjjjÌ´Õ«V™ró\æ\Ì1!œ\ÖÚ–\Ã8m}v´¬Z^¨’m§oÈ’CWdÔ¦s\Òq\Îùê°ò=Ö›’\á—`yj÷\Ğ\ç•s\ÎzÜ†€†“Wk\å\'Ê»:\á¦®\×ñsƒ¶›Á\"Â‚¸K•\rò\ä\ì\"ùG§<fdTw™¤ÁõÙŸƒ&¿_iøhÿ-f„W\0\0\0\0\0\0\0hûÆµ!2…qÇ‹‹e\ì\è12uòd™9}ºL›2E–,Y\"İ»v3\Ëyö™gd\ÕÊ•¦{ë¡ƒ¥¦ºZjkke\Çö\í2tğ`yü±\ÇdØ!²k\ç.\ÓNŸ;·è­…røğa3.«Ï©Û°~½³İ¶\Æ=9\ë°€\á}½6\È?õ\Ü ÿğ\Òzù\Û\î‰\ÑUµ+j2€‹¸~4\Î9ñK«|ƒ+œ¾V+\ç‘?wÖ‘œ7& {W§•\ÎzöÉ’\n©»\í\ï.|û\î=Yz\èŠ|\êõ\íò]Ö˜ç»™\åt}A\íõzŸ­\é\Z\ê>>2z¯ôY~R;\ë\ÕÁ.TÔ§µ\ê\0\0\0\0\0\0€¶	a\\\"Sw\ì\è1Y²x±,Z¸\ĞW\Z’M8QÌ›Ÿ|Ö›=€\Ãòe\Ëdô¨9u\ê”\é¢Zrú´iı\Öó¥—dÊ¤IR__o¶¯ók\07{\Ö,Y¼h‘\ìŞ¹Kz÷\ì%}_\éc–k)š\Z\Æıdü~3XB2\Ä\ÊÖ+\ä¿^\Û*›N^7Ï“ó¸P\Ñ`Z™ıM÷µş€L\ßÛŸ]ÿôù\Õf´\ÔCª|\ë\Ñlôjõmyeù	y\ïòN/„k‚xe“üvú!™±\ç¢–\Ş4­u¤X\rş´+.\0\0\0\0\0\0\0´\ã\ÚÙ´Œ›5c¦	Ö´\Şõyq\Úbm\á‚±a\\CCƒÌ›;WF&‡2\ß\éÀ\r%%%2}\ê4Y½jµ	\ì”Ë—›\î°cœõ\Z9RÖ®YcB¼\×ú÷oŸa\\H€¦\Óşº\ÛZ™¶\ë‚Ü¬Oµ(«tŞ\ŞrNş\å\å\éË„¨-\ç´İ‘K\Õr\Û\ZU[\Ãi‹µ_N9 ÿÒº\Ğe\ã\Ô\Ö|ÚµVŸW7zó9\Ó\âN¸š[w\ä^HH\0\0\0\0\0\0\0h?Æµ!2…qGŠŠdö\ÌY&X[¹b…ó~¦q\ê¤\É&\\\â…q\ÚıT—6uª	ò®^½*×®]“µk\ÖÊ™3g|£¨._ºT6m\Ü(Óy·o\Û&\å\å\åf{ƒ¾şÀ´Œ\Ó\î\İ“K7\ÄkXv\ë\Î=YPX&Ÿz}›ù>l9\Û?aµt^pT]®‘Æ»© N[«m9uC¾?f¯™\'l\Ù(µ\ë{{¬—_M9(³÷^’C«\äfı\Ó\Ê.ŠÆ»o\Ëõš\Ûr¹*¦\0\0\0\0\0\0@Û†0®\r‘)ŒÛºe‹0@†\r*¯õ Ã‡•ş}ûI¿>}\Ì\àA¼0N\Ñ\Z¶o\Û.\ßZhm\Ğ\é\Ú\Ò\ÎnQwö\ÌY?v¬¬Y½Ú¬O»®*¼%¯Ø¾Ã¸+\Í`ú|9\r»_\Ñ-•r\í,©GF\ï1Ï™]\ŞR»¦>=§HŠuÜ±\ÖQY\×h\ãöõ»\Ã\×\ÖJ\ÏQ\Ã?\r\áT(\Óv_bğ…\'p\Ú\ïüz\Ù|òºL\Ü^*//=!\Ï8lFƒ\0\0\0\0\0\0€¶a\\\"S§-\ÖF.\ãÇ“I&Ê¤‰e\è\à!2Ò™v\Ğ9º¼\Æ)/\\0£¥nÛºUv\ï\ÚeZ\Ó\é2:bª»\ë7\È\Ò\ÅK\ä\âÅ‹¦5¢aİœY³¥¿W\ÛU§­\ÌtÀ„\í½Q¾0x‡ürò3\èÁ\ÜıerüJ­/\ì:w£^™S$\Õum\Úz‚j ÷\ØôCn`–\n2¯\×Ş–Y{/\É\çm%i\Z\Æıµ³\Ío\Ü-#6•#eÕ¡!œ.QR^\'+\\•!\ëJ\ä÷3\ËW†\í4ûögÏ¯–?r¶÷c§\0\0\0\0\0\0\0 \íC×†ˆ\ã40\Ó`mtAÌŸ7O–.Ybo\ĞVk\ãÆŒ‘6„†qúÌ·ª›U¦eœ®\ã\ØÑ£²~\İ:3ƒ†q\çÎ•;vÈª+eë–­2\äA\æı\Í\ÊJ©ªªrù)>t˜ğZ›\ã^\\T,_¾Ë„S\ß¹ÛŒ4úó‰…ò\Ä\Ì\Ã\Ò{\Ù	¿\í¼¬?^nFH½ti·\Ò\áÏ˜A’!Y04s?\ë³\ÜtıGMh\æ\â¦\ï¾(Ÿ~C»¸¦/—ö\ŞQtøP¿\Í\ÒyşQ\Ù~úF\Ú(¬z(õqû\Ïß”);K¥Ã¬\ÃòÉ[\Ís\ê‚#\ÄjøG\0\0\0\0\0\0\Ğ> ŒkCÄ…q7œ\Ï3¦M—\×^\í/oaZ\Ä\é{\íªªa\Ù\ÄñB\Ã8\äA»jWv\é’	\á6l\Ø\à»C&˜[\é†p:€\Ã\Æõ\ë\å»\ßú¶ô\é\İ[ö\í\İ\'{÷\ì1\ËM7^F|Ó„s-ESÃ¸\Ã«e\Û\é²óL…–V™k+\ÜÁÜ™b\Ør\êz|k6Wış·š\í\èó\å<ô™n\Ú\"NŸ5¶\\Z°ç¨ƒ3|uø.™²óBÚ³\Şt€Hb\Ï\ÙJ3x\ÃwF\í1óûB>[g:a\0\0\0\0\0\0@û0®\r\Æi+¶…o½%}^\î-ƒ^]z¼ø¢<ù\ÄÒ£û‹òú€\×dù\Òe\éa\Ü3eşÜ¹ò\Æk¥W²`\Ş<\Îik9\íªª\ï/_¾\ì\Î-r\Åy?e\Ò$\ŞiwX¯¢¢Â´¤SP U7oºsæŸ¦†q\Í\ájõ-óœ¶L-üaÇ•ò¾^d\ÑÁË¾ ®¾ñ®,+º\"Ÿ´=<,\Ói\é:ºªnS\Ã6{]z\ä4@Ô‘Y\Çl9\'_²\ÃY§\ÚJ„l‡0\0\0\0\0\0\0 ı@×†\Ğ0\íz\Ì3\ã6o\Ú$£GÈ¢…e\Î\ì\Ù2\èõ7\Ì{mµ¦ƒ2„¶Œ[²ÔŒªm³fÌ”7”B\çx\Ùó\ë3\ât\äT\r\Ä.X ƒ\ßxCö\ì\Şm\×\Ã8\İ3}\ÖZ\í­»RQ\×(\r©\àKÑ4ôÒ-n\Ùj\Èö7\İ×š\îZM\ítym%÷\Õ\á;\Í3\ÛÒ–\r	\Ítp\áReƒ»–·\ï\Ş3#».<pY¾õ\æ\î\Ì\ë¬[\ÃB\Â8\0\0\0\0\0\0€öa\\Â´Œ»qC\ê\Ğ!|\0‡M›d\Âøñ²x\áBY¼h‘,Y¼X¦NlÔ‘R\Ã\Â8\ífª]P/\\¸ kW¯1]R\íg¿\é2\r\r\rr\î\Ü9;z´Ìœ>\Ã‚o-X Ö¯7Ï™k\Ëa\\u\Ã¶İ¨m4\Ïn»V}\Ûtı\ÔGKoÊ¼ıe2|\Ã)¾\\\ë.‘@Ÿ!÷\é×·\ÉuŠ\é\Úq… \ág\n¥ş¶ÕŠÍ©\æWk\åÛ£öÈ»t\ÔÔ\à\ÍVÃ²\è±^&\í(•*§¼z´ôYqZN5r\0‰,\ÖO\0\0\0\0\0\0\Ğ> ŒkCd\n\ã´eœœ:k\æL™6uªy^œ†fƒ\ß\Ù2n\Åò\å\Îw\ÛM\Õ#EE&˜ó\æ\ÓVo\Z\Ì\é«:DeE…¬^¹J\Ê.•™n¬úşÚµkm:ŒºşŒünú!3Z\ê\Æí—¯\Ø-°Uş¶û:\Ó}óO:¯v¦\ïóµŒ\Ón/,8šqôTm¡ö‰\Û\äLy»d‚ÊºF\ĞiP—”yŸ\İW-\Ã{{lµ\Å\×ü\İRC ­öôys\Z\nú\Öa-Ÿ\Z\Æé¨²\0\0\0\0\0\0\0\Ğö!ŒkCd\n\ã6m\Ü(\ãÇ“ó\æ›@Nƒ¸‚Q£dÚ”)²më¶´0\î¹gŸ•/¾$»wí–­›·\ÈK\İ_4Ï‚«¬¬4Ï +>V,/<\×Yú÷{\Õ|VtP‡3%%r °PV¯\\)/^l\Óa\ÜO\Ç\ï—?}~µ\éNúÉ€J[»%Z¼}¨\ïfY}ôš;w‚Cª\äŸz®w\çµ\Ôg³Ÿÿ\å\å2c÷Ew©¯,?!\×}µœ«÷Ş®!™®cß¹J_W\åzm£	öo_\\\ë[&±˜\Özj`~\r\r60\0\0\0\0\0\0 =@×†\È\ÆmÙ´Y†\r*³g\Í2ƒ/L<\Åê £ª\î\Ü\Ò2\î™gd\ÕÊ•rûömó\ì¸<ò}\éöB9q\â„Y\î\Õ>}MwW\íÊª­\ä}NœÖªE,_¶ÜŒ Ú–\Ã8mö§\Ã`Ğ\î\Ñ\É¤>ğ¼¸_M9¹Œ¬\é¦¿›qH\Z\Z\ïºK%Xr\èŠü\Ë\Ë6D…f\Îw\Ú\"\î}6É’\nó\ì:›’ò:Ó’/v”\Ôşùk\ä\ËCwJ\ïe\'L\ØXv\Óÿ:\0\0\0\0\0\0\0h›Æµ!4L\Ó\çµE…q\Zši—Ô±c\Æ\Èk˜`Mc>t˜\éVšÆ¹ÏŒSnŞ¼)GŠ˜€M[\×-]²D¦O&\ÇO£G˜0N[\Ìi8§ƒ;h9ı\Ü\Öpˆ\ã>\Ú‹,;|\Õ<›M\Ñ\Öi»\ÏV\È{^\\‚\éw_²C]¬r—Lt+\Õg\Ñ}ö\íò®NñÏ‰\Ó\å5ˆÓ‘Vo[]S•ı\çošg\Íi˜–V†°uZ\Ó4\à\Ó\í¿ºò¤\ìröC¸\Êú\Ä\à÷\Ç\0\0\0\0\0\0\0\Ú&„qmˆd÷Dt7\Õ\×_(“\'M’qc\ÆJ¯—z˜n½{ö\nog…q%§KdÚ”©¦[ª\Öú\Æë¯›Àmÿ\Ş}²w\Ïº\éó\åÎ9#õuu¦Ûª\×Znıºõ2¦`t»\n\ãşø¹Uò‹‰…f`ú\Ûw\å\×SfÓ´k©>‹\Î~\Æ[\ã\İ{òÌœ¢\Äs\â¼yu!\ëy\ï2aûyóL8›\í%7Lk6m±\\&Tw\İZ\Ş\ï\ì•Y{.Jñ\å\Z3P…À\n\0\0\0\0\0\0\0\íÂ¸6D¦0NG76dˆL™4ÉŒ ª¯o¾)#†“\í\ÛÒŸ×©cG\Ö\é\0\Ú\î s¬\æÎ™#¯õ\ïo‚=Eõf\åMY0¾\é«¯Ú‚.È†u\ëel;\ãş£\ïf™²ó‚x=D\ï¾-û\Îß”¿\î¶\Ö\ß\"-¦½«\ÓJó:{\Ğ\r\åV½jZ\Ôıa0€óŞ»\Ó\ß\Ûs½ô^~B\Êkn»K;\Ç\ÕqÿùJùê°ò\'W¥–\r\ÓZ·>\î‹CwÊ´]\ähYµ\ÔÜºC8\0\0\0\0\0\0€va\\\"S·q\Ã1l˜¼aÒ„‰¦•Ü”É“e\äğ²c\Ûöô–q\Ï<#o|]v\í\Ü%—.]’úúz¹\á¬ÿÌ™3R[[k\æ¹{÷®s\\O›Ànù²e\æqA\Úr§Á™vù|ç³«\ÌÈ©:Bªbú¼7}6›\Ç\ÍúF\éºğ˜?HQ|˜ºó‚Ü¹›¨K\r¿.U6\È7\ßÜ\â¼yCÖ£Ï€û\ÍÔƒrözj»\Ú5¶\äZ­|oô^y÷s‚8W\r\áô¹t:P\Äî³•&„fpúQ[\È\í<S!c·—©».$¾\0\0\0\0\0\0\0€6\ra\\\"\Û0n\Æô\é¦E\\_4ƒ8hk¹°0®\ã\ÓO\Ë\Ì\é3B6E\ç\×\Öquµu¦İ’\ÅK¤¦º\Æı6…	\ãF\\O>hj·ôğµùœŒ\ÚtV&l/•\é»/Ê¼ıe\æ\Ùl\Şó\Út\0…c—k\ä\ß^\Ù\Æi\×\ÖÇ¦”s7\ê\ÍrJu\Ã·õ¼¼;C‹¶wvZe»m§o$ƒ3\ä\İlp\Öy(\ãòş\Âjù\Úğ]2{\ï%¹Ru+±\"İ§£e52iG©<5»HşÛ™÷¯l’ÿ›rÀ\0\0\0\0\0\0\0\Ú2„qmÆ•_—§Ÿ|2¢›\ê3\Ò\é\ì™3eúÔ©2z\Ô(™4a‚¼9J¶mM\ï¦j?3.ˆ>Nƒ¿%‹›g\ÆM™4Y<hF^\r¢\İc5Œ\ëÂš/š\Z\Æi6í‚ª[`÷“Ü¬¿#£·œKtOõô0\ëı‡úm–™{.š\ÖlŠ¾\ê3\Ú>;h{jş?\Üo‹\éë¾ªk\Ğ\ç\ÕõY~Ò´Ø‹=ÿ®û:ùÍ´ƒ²\å\ÔuóŒ:ı|\èB•Œ\Ú|V~>±\Ğ<—N\ÃC]\î;®”\ß\ï\Î	\0\0\0\0\0\0\0mÂ¸6„†iú\ì¶ÿŞ¼\Ñ0n\Äğ\áfTQUd\Ø€	è´›i.aœvO=y\â„t\ï\ÒU†\r*+–-37„%Z\ëÖ®“Ñ£\n\ÚdË¸L\èŞœ½^oZ­™\Ğ+Æ¹¾³\ÓJy<ĞµU\Ã4\ÈA»\ç7º\ëúË®k¤\ë[\Ç\äbeƒ»¤˜®¥ó÷—\Éß¿´>5opy\Ë\ê¹^›T”U»kHQZQoBB\í’û—Ö™QU\íe	\ã\0\0\0\0\0\0\0\Ú„qm\r\Óô¹n?ÿ\ÉO\åÚµk\î\Ôú\İê•«¤\ï+}\äÕ¾ı¤w¯—e\Ö\ÌY\Òù\ÙNòR÷e\Ë\æ-9…q\Ú2N¿·\æ/0Ï »zõjrô\Ô K-–‘Ã‡Ë­[\é\İ&óES\Ã8\İç»\Ú2NZP½–mŠ~\Şx\âºy›`}\ß\ËÍ³\â¼iºƒª\äÓ¯o\ßS[\Û}cd¢{ª‡v%\ÕÁ\"¾8dG\è2¶ºüûzm—\Ë\ëYsºZö=g+¥\ë\ÂbùÇ\ÒB8ON\0\0\0\0\0\0\Ğ> Œkch¸ô›_ıZŠIcc£;ULH§£ö\ë\Ó\ÇØ¿o?^ı\î7¿•aƒ‡ÈœY³s\n\ãl´•\\\Õ\Õ\Õ2y\Ò$™0~¼;¥ehjw\èb•	\ÛV¹&\\6\Z\ès\Ş<ô¹k½–\r±Œn\ë6\íúy\äRªUZE]£\é\Z\Ù*\ÎU[ª\İzNjo¹\İSCpşF½tšw4ck8õz¬w\ÊwB.V¤Z\Õi–¨N¬:zM¾4d‡¼3C\ã\0\0\0\0\0\0\0\Ú„qm\r\Ô/\\(ƒ\ß$/^Le\å×®™Ö¬^-«V¬”	\ã\ÆËAƒe\Ñ[oÉ¶­[\Í@M\r\ã¢\Ğ0pÇ¦k\ì\ÂBwj\Ë\Ğ\Ô0\îg\n\å/»®5¡™v5\í¶°X®V\'{§µ¡\Û\ç¹-\Ô\Ü\à-fı\éó«e\äÆ³R{;¨i\È÷µ»\Òæµ—\×\ì\'\ÊQ«ki\í­;2w\ß%ù\ënkıË…¨#¿j÷V\íFë¡ƒ>”\×\Ü6­ôtTØ°\å‚\Æ\0\0\0\0\0\0´\ã\Ú w\îÜ‘»u7#¡–••™\Ï\Z\Ê]¹rENœ8!§N”’=&g\äô\é\Óæ³†uAš\Æ\İjh\ãÇ\ËkıûË¢…MZ’¦†q?¿_şTHx&1\0\Â\Ô]L§h—\ÓUG¯š°-®•Ú§^\ß&›N\\w—©¿}Wf\ï½¾œõù=/®3#·z£¶jˆw ´J¾W°\'r\Ïw?·J~7ı+K^«AÜµ\ê\ÛR°ù\\\Ænµ¶„q\0\0\0\0\0\0\0\íÂ¸6Jmm­ô\ê\ÑS½ş†œ:uÊŒrúv\Ä3İ¢hJ§Ï\Ó.±›6n4Ï£\Ó ®¡!Õ…²¥\ÈG÷¥¡;dË©Ô³Û´‹j\ß\å\'¡UÇ•¡¡\Ø8¾ğ\Ö1)µº‰¼Z+¿v(5_\Är¿šrPN\\©u—\Ó=V»¶z£œFùNY¾1b—yœ‡y\×ko›\åÿLCÀ\äüVU¯ò¼³\Ó*ù\ÙÄ–m¹\0\0\0\0\0\0\0ù0®³d\Ñ\"y\ì7¿‘	\ãÆ™Ar¡)aœ¶²\ëòüòb·nrô\ÈwjË“0\î™9G|]>_ª–\ïŒ\n´Rø\'Î²óö_’;w½öt\"«]“÷¿²15_0Œs>k«¹E¯$[\Å);J*\ä«\Ãvú\ç\rñ=/­—¥‡¯J£µÍš†;2yG©ü¿.\İ[#‚8UGb°ê”»&\0\0\0\0\0\0\0h\ËÆµqô¹mW._–\É\'Ê“OtÃ†;\Ç!»\à%\Û0NŸ5·k\çNy¡óóÒ©cGÙ¼i“Ü¬¬Œ\Ø!\ß47ŒÓ®šÚªL»˜zl8^.ÿ\Ôsƒ?¼\n„ZŸyc»\ì¶Z¨\éÀ	ƒÖ–˜õ\Å`\Zò³Ws\ë^W\"\ï\îlµŠ‹X^ƒ³«Õ©‘i5Ğ›¿¿Lşµ÷&3ºj\ØöÒ¦9Ÿ?\Ò‹\Ù\æ™ò:3ò*\0\0\0\0\0\0\0´}\ã\Ú\Úu´¦¦F.\\¸ K/‘®Ï¿`\\³zµ\é\Î\ZE\\§A\Û\åË—eÚ”©ò«ÿı¥¡u\ßŞ½r\í\êU¹u\ëV\Ú`-MsÃ¸÷õ\Ú(ËŠ®šîŠ\Æ0aûù\Ôh¨!—zZZ‘jMWt©\ÚtùL\Î±\Ü\è-ç¤².5\Ú\í\Şs•ò\Èè½‘ó{~mø.³»:dªË¶\Ó7\ä\ë#vùGn\r[‡vµu^õYu:ğ\Ã\á‹U¦k¬½.\0\0\0\0\0\0\0h\ÛÆµ#L(W]-JKe\Ï\î\İ2b\Ø0\éÜ©“Ì›;74”\ã4„;SR\"£F¾\é,ûœÌ9\Ë9¦\ÇM0w?B8¦†qıVœ”\İ\'\Ï\Í?*\Ç.§C¸PQ/]\Ş:\æ†XÁP+ñú‡WÊŒ\İ“£¨*K_‘ö\Û\ìŸ?\àû{o”\ÂÒ›\É\ìóª\á\Üß½¸.5_H˜¦]b\ç\ì»dZ\Ñyœ½^\'\æ	<\'\Î5dŸ´İ¬CŸ‡gws\0\0\0\0\0\0€öa\\;Eƒ³K—.\É~§\Î\'Oš$/v\íjºšÚ£\Ã8}\æ\ÜÂ·Ş’Ş½^–¥K–Jñ±crıúõûÀ\Ù45Œ»X\Ù`\\¸P\Ñ õ©PMÃ²´\ç\Å\Ù\á–óş}½6\È\Î3fSE—²¾Ä„f¾\åşf\ÚA¹\àl\×Cµ\ß\Í8\ä\ï\Ú\Z¢¶œ\Óy½\íi÷\Ôq\Û\ÎË¿ö¶O¥³^İŸõ\ÇË¥ª\áNr\ÄXE\×g?ó\0\0\0\0\0\0\0\Ú.„q\í\r\ß\Ê\Ê\Êd\ã†\r2øõ7dÊ¤\ÉRYQi6/Œ\ÓuG‘Ñ£\ndü\Øq&À«¨¨p\×\Ğ6hjÅšc\×\äC\Ú\Â-&ûÖ›»\åø•Tkºó7\ê\å\É\ÙE\é\ËXŸõ™n3÷\\ôµn[vøª|j\à6ÿ2\ß\Ùi¥,(,“:«\ŞÁUò\Ãqû\Ìw\Éy½mÙ£¿:¯\Z\Äm>uİ·¼¢-\ä\æ\î»$#7u§\0\0\0\0\0\0\0@[†0\îAC¹CÊ˜‚\ÑRğ\æ(\Ğ=ó\äS²f\Õj\ÓbnØ!ò\ÖüÎ±<\×&Z\Â\Ég§-\Å40ûË®#“º\ês\×\Ên¦Z¸\é³Û¾6bWè¼ÿ\Ò:9b=ó­ñ\î=yu\åIù«˜mı£¡]g“­\âœ\å\ŞX{Zş±\çú\ĞeL\ç†q\Ú5uÃ‰\ë¾Á)t»\Úú¯\Û\Âcò±ş[\ä\İo\0\0\0\0\0\0\0 -C÷€¡Ï“3z´L™4\É\Ì0d\Ğ`>t¨,_¶\ÌtIm«45Œ\ÓnŸÇ¯\ÔúZªy#›šn£Á€\Ëú<u\×3\0‚Ç¬½—\ä\ßûlòÍ“\Ô]V[¨•\İL„ª\İdÿo\Êù\ÃÀºmõ\Ùt¯¯9\í+£>\ßN»­¦•\ÑR[\áım÷µ2o¿¿E]C\ã=\Ó]õ\ç\Í÷ºş\ß\ï~\0\0\0\0\0\0\0mÂ¸+W®ÈAƒ\ä[_ÿºüß£ÿ+Ë–.•›7oºß¶Mš\ZÆ½±\æ´t[X,§®¥°Ğ€\ì…G\Ó.+0{w\çU²ıtEòYk:Ã u%òÿº¬ñ/\ã\é.\ÛgùI\ß(ªO\\—/Ù‘>¿«j\Ùu¾Tm¶¡hã¸‚\Í\çÏŠ\ÓõZ\å²ı\ã\çV\Éo5abIm÷¶l8^.\ßµGş\Ôô0\0\0\0\0\0\0 ı@÷€RTT$\ßûöwdÀ«¯š.«m¦†qN: ?›P(\ÇÊª\İ)b÷\Øôƒò\ç/¬–¿\è²&\å©\×ö\Ûd~ğ\ĞAº/*ö\ÏXF×·¢\èªi™\æ1~\Ûyù\ÏW·$\æQƒ8}6=bkUıùõÔƒò7\İ\Ö&æ³·e-÷\É×·\ÉkÀ\åğ\Å*\Ó%U»\Ëzój€ø\Ë\É\Ü9\0\0\0\0\0\0\0 -C÷€¢ƒ6h\Õİ»v™÷m¦†q:pÁ”\äjuª\ë\è™ò:¶¾DœuXš]jŸ\'|\ËT\Ô5Ê„\í\çå‰¨efI\ç;mug‡co¸,\Ï\Í?\Z¾Œ\ã3sŠ\Ì\0öh§úœºş«N™õ…-£vœ{Df\î½\è5U™¿¿\Ì<\ë.8ÿ˜-\ç\Ü9\0\0\0\0\0\0\0 -C÷\0SWW\'©.•m™|\àğ \Ó\ß\0\0\0\0\0\0\0€\ì!Œƒ6a\0\0\0\0\0\0\0<\ÆA›€0\0\0\0\0\0\0\0\ã M0®=tà¤“)\0\0\0\0\0\0À\Ã\ra´	š\Æİ¬¿#»\ÎT\Èú\âr\Ùxüºl?]!*\Z\ÜoÃ©½uW¶¾!\'–\Ùr\ê†œ!\Ûw\î\É\æ“×e®›e6¸.—«\Zb6]f“3ŸÎ«\Ëh¯V\ßNQ^s[ö«L­³	n/©ÒŠz³>\0\0\0\0\0\0\0h\Û\ÆA› 9aœ†Y\ß¹[\Şó\â:\ã\çm—9û.¹ß†süJ|ağy\ÏK‰eşó\Õ-2{oô2š]®º%\î·9¹\êµA(“»÷\Â\ã8ªÁÛ¿¼¼Qş\Ş]F]q\äªÜº“\áV\ÃÀo½™*»\Ñ-S\è\ç´\ï\ÖË§\ß\Ø.\Óv]0\ë\0\0\0\0\0\0€¶\ra´	š\Æ\í,©O½¾Mş¿gVÿ½\Ï&™²³\Ôı6œc—k\äC}7\'—ùû—\Ö;\ËDZ\ZÆ•\İl¿\ë¾Nş¿‰eşø¹U2k\Ï\Å\è0\Î,s\Ë\Ì\ç-£¯K_1-\æ”UG¯\Ég\ŞØ,GS|\ï2n\ëy³>\0\0\0\0\0\0\0h\Û\ÆA› ¹aÜ§\í0\î\r\ã\â[Šk\×/\ÆıC6a\\•Æ¹Ë˜0notwÇ™~´¬ZşÀ\ât™Î«L·Uo™D—*»Ñš\ß÷>\ì³#a\0\0\0\0\0\0@û0®…¸zõª\\½rE\Ê\Ê\Ê\ä\ÒÅ‹r\í\Ú5¹u\ë–ûm:o¿ı¶ùşò\å\ËRq£B\î\İK´œ\n¢Ó«ªªœ\ãQ\"Ç—’Ó§Í¶ty›7oJ¹³½Û·o»S\èçŠŠ\n£·~}­¬¬4\ë¸{÷®™¦\èút;:½¶¦\ÆLkll4ó^¿~\İ7¯·®ºº:_™2Ñ¬0\îL ŒË¢e\\Z\×c½L‰\é\ê™\ã^\Ì>Œkh¼gº¤zókö=\ÖÉ¾ó7“Ï™\Ûz\ê†üxü>ù¾›åƒN¹ôó¿õ\Ş\è\ßş\Ğyÿ¾—7˜\ï“ó:~mÄ®Œ\İr\0\0\0\0\0\0 m@\×Btz¦£<ùû\'\ä©\ä©\':\È\Ó”>½_‘Û·› *HCCƒ¬[»V:<ş{\éÕ£‡	Ô‚\Ô\Ô\Ô\È\Æõ¤{×®òØ¯#¿ù¿_É¯ùÒ­KWóÇ´)S¥Ç‹/\Ê\éÓ§\İ)	Îœ9#C–!ƒ\'6\İ\îøq\ã¤ó³LH\çh\'Oœ7”\áC‡šÀO¹té’Œ>\Üì‡½=6\èõ7\ä\É\'Å‹IuuµûMf\îK\×7\Æe\Ó2.\Æ\ÅtSÕ%^]y29¿ú\Ù7¶É±Ë©z¹Z}\ËÀ°ò\ÈUŸË‹®Ê˜-\ç­\ê\Ü@\îOŸ_-C×Ÿ‘•Gıón:y]\Î]O?§\0\0\0\0\0\0\0 \íA\×B|\èÿ.?ûñOd\Ğ\ë¯Ë›#F\Ê+½^–\ï|\ã›ò\Ä\ï—……\î\\)nÜ¸!\Ï>ıŒ|\í+_•ş\Û¤Ğ©Om‰f³m\ëV\ê=ıD>t˜Œ>Bú÷\íg\Ö]_Ÿ\ZMSƒ¸/~\îs²o\ï^wJ‚C\Êÿşü¦\\\ÕUUfšh\Ïu|V>ü\ïÿaZò)\å\å\åÒ¿_?ù\É$S&O6Ÿ•S\'O\Ê\ï~ó[§Œ_1­\æ‚\ìwÿOôcùøG>j\Öy\âøq÷›\Ì\Ü÷0®©\İTc\Â8}^\Ü\×G\ìr\æ]™\\\æw3e5ò©vq=t±\Ê\Æı¿.kLp\0\0\0\0\0\0\0\íÂ¸\â¿>òQ6d¨im¦]:µk\ç«}û\É7¿öu™;{¶;W‚;w\îÈ±£G\åËŸÿ‚ó\İùÈ‡>dZ¤i—O\r\æ¿1H~ù‹_\Èö­\Û\Ìg]®¦ºZ\Ê.ù»(ö\é\İ[şû\Ë_1\á˜\Í\Ñ#G\ä±_ÿZıùÏ“á¶\ëŞ¥‹|ü??bB·\Ú\ÚZÀ\é<Æ“+n@§hËºO?\í\ì\Ã×¤¾\Î(i‹º!Nù}¦£ie§¡\Ü\Ò\ÅK\"»\Ûi·a\\D7U-U» şe\×5Î¼‰0\î])·—JUıw®h|aœ»½DwÃ\0\0\0\0\0\0\0\Ú#„q-Ä§>ş_¦õš\×\İTŸ\×6z\Ô(ù\É(K-2\Ó<tI&È·¾öu†ıö×¿‘ı\Ï\Ìs\á¼n£ú<¹şı^5\ÓW¯Z\ÛT[\Ëi\èW¸\ß\ß\ïxq±txüqù¿Gÿ7ùü:\İ^Ï—^’O:\å½PZj4\íş:i\ÂD_§œ?wN^\è\ÜY¾û­o§=NŸQ÷\ãü\Ğ\ìÇšU«\å§?ú‘i]§ad6\ä\0‡û\Æ]©º%\çõ=ó\í½=6ÈU‘-\él\Ò\Â8\ç•0\0\0\0\0\0\0 ıC\×B|æ“Ÿ’»u—;vÈ\Â²n\ÍZù\İo~#/v\í*\'Ot\çJ´(+9]\"¿ş\ß_ÊAƒ\Ì\ç·,\ä#²b\Ùò\äó\å\Óß’o\ã›ò³ıX\æÌš\í‡c¡Ï–{­\Ó\İUŸ\ÛV\ìÌ£ó©«W®’_ş\âQ¶y]`5Œ\ëİ«—|\âc“\éÓ¦™õO?^Ê¯%º¦Ú”?oZ\Ñ}ÿ»ß•;ş\Ö]Ë–.•ÿù\Ş÷L\×Xm\Ø\åù\çM\è·w\ÏwxòÆ¹ÁU¢e\\t°¦49Œ\ÓgÆ¹Û‰\n\ã\Z\Z\ïÊ†\ã\×\å}½6$×¯>6\í	\é²!\Æ=›Z0\0\0\0\0\0\0 ıC\×Bh÷\å/|\ÑR¿ø\é\Ï\äóŸşŒ|ñ³Ÿ3-Ç®]½šì¾©\İEW®X!_úü¤\èğa’éˆªºlÇ§Ÿ‘\Ò\ÒT/‘u\Âøñ&hû\ä\Ç>nZ\ÉÍ˜6].^¸`\Â:¯½&Ÿş\Ä\'LWÓ§Ÿ|\Ò¨ Ih÷¹O}Z~û«_›.®Š†q¯¼ü²üûû\ß/_ùÒ—\äŸù¬Ì›;\×7˜ƒ‡–\åÅ®\İ\äû\ßı^ryE[\É=ñø\ã\Ò\İù\î\ìÙ³ffNŸnB»qc\Æ$ƒ¿8ò\Ö2®c\İT\İ`-§0\Î\r\Çşø¹\Õiaœ¾?VV#?›°\ßYw\êYq\Ñe¬?^nFXÍ†TË¸\Ô:\ã\0\0\0\0\0\0\0\Ú?„q-„†qú|6\r¶´¥›>?\î‡\ßÿùô}ÂŒf\ê\r€pş\Üy3\ØÁ#\ßù\éVº{\×.3xƒ–ªŞİ»\Í3\ç<´{\ég¾^/õ\Ï9\ß\ì\ÃÿiFm½^~İCd\à€ò…\Ï~\Ö<cN[\ĞÍ9K\æÌ-#†\r—\ï|ó›¡a\Ü\'?şqY²h±ü\à‘Gä³Ÿú´)·7ÈƒG\"Œ\ëš\Æ\é³\èş\ë£5Jlİ¼\Å\ì\Ãüyó\ä¾÷ˆI\Ö£¸oaœtå£›\ê=g&´aÀªS\æ;o¾?\ì¸R~1©P*\ê2‡’<3\0\0\0\0\0\0\àÁ„0®…øô\'>)ú÷—J\ë™i:\0\Â\ïû<ú³Ÿ\ËA§\Ş4d\Ón¬Ÿø\è\Ç\Ì\è«:¢©\í?ıı?Èˆa\Ã\äº;š©†a\ÅÇŠ\Í`	:¯>\Îkm7\à\ÕW\Í \Z\ê\Ù›\Ñ\\ı\ËÿK>óMÃ¸—{ô”O|\ì\ãf\0\í\Îúı\ï|W¾ú\å/\Ë\Ú5k|­Ú´›j·^0Á¡\×MU[\Ï\é³\á>òÁùö\á?ÿ\ãƒòùWùúW\İeƒ­\ì‚\ä\'ŒK´\"»£©jW^s[†o<#\İmmr\r\Ó\Şó\â:)ºTm¶l\á™q\0\0\0\0\0\0\0&„q-„v#}¥wo©¸‘\nO4\0\ÓVh:Ò¨¶\ÓA†œ\è¢ZT$W._Nª#¤~\ï[ß–<ò}9tğ»†t´‹ª–ğ\Û_ÿ:\Æõ\ë\ÓW¾6š\êÑ£ò\Øo~kº«644˜i\ZÆ½Ô½»ıU\Ã8e\ã†\r¦+¬††ú8/H;w\îœt\îôœ|\ç\ß4-ôtº$¡]b_\ì\ÖMN<)W¯\\1\å\×}›?w|\ã«ÿ-İ»vMn/Š¼\à\Ğ\ÊaÜ»oËµš\Ûò\Ú\ê\ÓòWV§şù«e\Ô\æ³\Òx7»\î©<3\0\0\0\0\0\0\àÁ„0®…\Ğ\î£\Zrİ¸\ê>ºcûvóœ·Î:™°M\Ã2ı¬\İL5H\Óp\Ëöµş\Ì(§Ú²,8z©‡€ª\ëxş¹\Î\É0®÷\Ë/Ë—¿øE¤\Ùh\à÷«_şŸü\âg?KQSS#]_xA>ò¡\'\Ã8m±§\Ïz\Ó\îª/u\ë..$B*\İõ\éLÀVW[kZ\Íi\Ü÷ÿóûd\Ãúõ\ÒP_\ï+ÿ\éS§\ä™\'Ÿ’}ÿ\ä@¡d\× \Í\n\ã\ÎÜŸ0\î\İÏ­–9û.É³ò\Ë)\ä\Ï^X\í\ëVªAÜ“³\ç\Ä)tS\0\0\0\0\0\0x0!Œk!>øo0ƒ%t|\ê)yö\ég\ä§?ş±|öSŸ’\Ç{Ì´Š\Ó\ç±\éè¥Ÿÿ\Ìge\ê\ä)\îR~4œúò\ç¿ İºt1]R\'ŒoÁ6t\Ğ`;zŒ¼öj\Ä\évt\ÔR\rÀ\ÅUŸ7\ÉT\Õ/~úSù™SoV\r\ã:=\Ó\Ñt1Õ#¼uh0÷\ÂsMwÛ‚7G™t\'Oœ\ßş\êW¦\Õ]•³¼z?ÿ\ÉO\Í>\\ºx1¹¬‡N¡Ï©\Ó\ç\ä\r<\Ä,\Å}\ãÜ°«)aÜ»:­’/\r\İ!\é¿Eş¤ójùwºú/¬–G\'Êµ\êğ5¡\İT_X#\ÛO\ÆA.”\Éò\Éc\Î\ï\ÚkY™;\İ#\Ó÷ğPpy¹ôrÏ\Ç\ë%\Ë/»\Ó ñÿ\Äÿ&\0\0\0´s\ãZˆn/t13h ¥­\ËtĞ†Õ«V\Éùó\çM—\Í\Ê\ÊJ3\ÈÁ«}ûÉ‰\'Ü¥üè¨«ƒ¾.Ã‡5ƒ$Ì˜>]~û\ëß˜\ÑYµ\é\ï~ó[\éÓ»·\ìÚ¹\Ëtõ˜=k–ô}\å9{\æŒ;%ñæˆ‘f ¯eœ–e\Ê\ÄI¦ŒZ&/P\ÓVv‡–7”1£G›°MÃº±\Îû\×ú÷7!¸ªË½9r¤ùD×¥Ác\ï^½dì˜±r\å\Ê÷›tò\ÒM\Õ\r®Z¢eœvE=uµVş¶»ÿyp\ÚUõÏ¦F<õü³\çWË¯§”\ê[©.r!¬e\Ü_š–q©gB¸U&E{v\Ënc‘”¥şl\ß\í–£ªó\Æ5JYQªnŠ.Ùƒ‘ø¿\Û]\âø\Ú„qğÀĞ«\ã\0\0\0&\ãZ\r¯´©z \Ïu»v\íši)\æ…]:\0ƒ†YúŒ5;H³\Ñî¢º\ÜÕ«WMxvıúu)9}Z›ÁN:%—\Ë.§ua\Õõ\êsÛ‚\ë½\í|\Öoª×¥U_µ+­v›µGmUty}ö›–AC;í–ªe\Ğ2ë¼ºı\Ôi÷\Ëzh¹5\Ä\ÓuDuµU\Ú\â3\ãjnİ‘E/\Ëwö?û\Æv\Ó\Z\Î[&\Î?zv¥¼·\Çzyy\Ù	3\Êj®h§ƒ>ø»½®‘m\í²e\\sZ_e·l\á˜\Ô<=V ‘÷0q¡ƒï»–½Êº¼\Í&_a\\\Ü|ş\ïsÿ\ï }õ\Ûs¹S\Â\Ì4–.’>[\ËõY$¥\Ù€Ü¾\É\Æ¤\ê\Å1\ße\ËzY\ë\ÃÀB)°\ê7z£_\İ\Ş\ÏßªF©*\Ù&ó†÷‘Î;¤¶\ãØ¡Sg\é\Üo¸ŒŸ¿FŠK\ëœ9\Ãğ—0\0\0\àÁ†0rF¼š\ê\Z©º™ø_e\r\Ü4\0\Ôp®©´\Ånªu2b\ãY¬©\Şú½elu\Ä\ÔöÛœj9\çÌ£Ë¼¯\×™»ÿ’iY—\Z\à¯¨—w=—\nÿ\Ş\Ùi¥,+ºÚ¤g\Ğ\İ_\ân2‘İ²„qQdª¿lM\Ü|ş\ï\Úewi¹?ˆ{iŠ%\Z?\Æ\İg\ãò\Çıù­j,]#ƒ;[\ë\Î\äS½¤`m‰øfü\å#Œ\0\0x°!ŒƒœÑ–zıúô‘7¾n>\ë3\åz¼ø’i\×T\îk\ç\Æ\r\ßp&¹\Ş0u¹ÿ³WFo>\'«^•®\É_uMue\Õ@\î“·š\íik·l\Ñ9o\Ö7\Ê{{®—?´‚@™µ\Ò)Wû\"\î\æ(\Ù-KE¦ú\Ëö\Ø\Ä\Í\çÿ®İ…qu…R\ĞÉš¿“s<¦ N!Œ»\Ï\Æ\å\Öÿ­ª+/\í0?kƒ¿ışò\Æ\0\0<\Ø\ÆA\Îh\Ü\'ŸxBz¾ô’ùÜ«GóùÒ¥K\æsS¸oaœ.\Æ\r³\Â8\r\Å\ìn£ú¬¸\ç\æ•}\çoJU\Ã¹{\ïm³\Ş³Ë»;¯N-\×q¥tYx\ÌÌ“u·\ï\Ê7F\î2-\â¼u=>ã””··¤ \î\æ(\Ù-[Ub=hO‰´õ§–µ^y3\Õ_sM\Û%\ë0.$ˆ\Û\İ\ÖO– SWQb¯ùb\ã¥\"kıg9‚Áªe\ÙõZ¡n[\ço\Ç×ªö±\Òk\Ìr)Ô®¨\ÉF\ìRWU*\ÅkgÊ€.v÷U\Â8\0\0€‡Â¸V\âÆ\ær\çÏKóœ£>[\ÎTAŸ§ó\Ú\ÏX\Ón :\ÏÙ³gc\á3g\Ìs\Şô9tq\èvuú\\·\à3\á}\Ü9gW._‘{îº}m\í¦Ïó–\Õiº\íó\çËª+Íº—/]*‹.4ek¼İ´V[÷\å™qıRÏŒûû0®öö]Y}\ìš	Àš]$\Ï\Î;\"ú|*d{÷s«dö\ŞK&„ó\Ğ.¤û\ÎU\Ê7F\îNÎ§şcõ²ûl¥\ÜÎ¡‹\é­;÷¤\Ïòf¤Vo=\í¿E6¼Ş¤\ç\Ğ\İ?Z>Œƒ(\ã\"ƒ‹{Î¾÷±\æ\ë\ĞG–7ıÿ\Ú7™\Â8¸\ï45Œƒ–¤Qvôşn\ï#óNeúÏ²F)\ß9Ezu\Ğe\ã\0\0\0f\ãZ‰\åË–Iÿ~ı¤o\ïW¤\ÏË½¥\ç‹/IÏ—zH¿>}\ÍgUUf\Ğ&Ÿ`\æ\ÕA<Ö¬Z-¯ôzY^\î\ÙS^q\æ\×\Öh}œuÍš9SÎ9\ë\Î\åGŸ\á6\î<\éŞµ«LŸ:\Õt/µ\ÑmiH×½KW\Ø€\\·vPtô\Óñc\Ç\Ê\Ü9s¤¶¶\ÖL\Ó`nÂ¸ñfU-GoS¦^f&N˜`‡h\nùl÷o¯l”I;\âÃ¸¢‹\ÕòA{\0‡\ëej ŒÓŒ­¾ñ®\\«¹mºŒ–\İl¿\ë¾.±L\Ç\ÄHª³ö\\ô…qJuƒS\ï…e©y]µk¹³®l\Ñõ\î(©¿\é¶VşÀ]‡€o¬9\Óz\î?\Í	|Ì°¨õ\ÈTfıf\ã\î•\É\ÆASó87\Ñm§Æµy\ã\Ú ÷\n¥Àj\×yV‰ûE4–\Êò~S\ã\0\0\0b\ãZ‰ys\çÊ‹]»™`\ì©\':\È\ç>õiù\âg?\'=^|Ñ„a\Zn)*2Ù“¿B¾ôùÏ›p#‡/~\îóò\ë_şŸô}¥Y\Ï¿ÿ?òÉ}Ü„yaƒ\'˜î¤¿ÿ½|\ì\Ãÿ)ş\ì\ç²}\Û6÷›º-\íZú/\ïı\'yÿ?¿O\æÌšİ”“\'O\ÊoõkSÆ›••f\Ú\Ù3g\äñ\ß>&ÿõ‘\Ê;K\çN¤\Ó3\Í>6,-ğË–\æ„qûKo\ÊgmO†^ÿğ\Ò:²®$¶õ\Øú\ã\åòş\Ş\Ët\\!ÿ\ê¼\×VnQ\èªÊª¬0\ÎÑ„q{\Ó\Ã8\åBeƒü\ï\ä\Éõë«¶\Ø;ZVu«6«şö=ùâ¾Q\\¿0x‡lpÊŸ\ë ÷–	\ãü\Ï]³\Íü¶\ÆK…²|\â\0\éex÷x\é\Üs€Œ_V(\åY4ğ¬:·;}u]zÉ€‰\ËewI¹\ÕM©9\åµF\è\ëdm«CG3:ß¼-¥R\Ù\à2\ÏaÜ­2)\\6^ô\ì,¬›\Ğû\\x5›Š+•\İa\ë\è\ÔYz\r/\Ë÷”Hy3»\ÒÅ‡qu\Î÷ş nQ¦aS\ï5JyI‘¬™?^†÷s~÷#%šs§K>#SD\Ül7VIñZ­“\ÒÁ[\çS¥Ï˜5R\×m6_\å\Ê\Æ\Å}x\\vÆ­#\ä\ïÁş>y<}/\\.ıRuÖ¡S)ûû½§õ[ }¬ú\é\ĞÙ™wmq\ÌßŸ|üf4‡&‡qMª[‡ªbY\ã\ìo÷§\Ü\ïú,—\äµ\İ*—’Ckd\Ş\Ä\áÒ§‹s\Şyóx:\ç®ş6\Í\ÌT/\Ûn¼´;ñ{—\\¯ó»\ê\ÔóÌ\Îoª;OFòñ[•	\ß\ßE>Â³<ÿ>\ä@c]©oY.3œs\Ü9¦MË½”‰\ß\ç‚ÿ\Ş\0\0\0@.\Æ\İ=*¿\ìwòt‡\'M7Q\rÈ\ëø¬|\ã«ÿ\íkñ6¦`´	\ÔV¯Ze>k·\Ñ#EGL ÷\éÿú„TÜ¸a¦\Û,]²Ä„d\Z\Üı\ì\Ç?1-·§-\Ùş\ãıÿf‚¾¯}ù+\Î1=”œG\Ã@\r\Şz÷\ê•\é´[\ê³\Ï<#?ıÑ\Íg-·¶ª\Ó×¦Ğœ0\îüzùÆˆ]\Éç¹½«\ÓJùõÔƒRv3ü^»ö^vÂ´8óÂ²O¿±M\ÖKµD’k§-\êV½\æ\ëbª­\Û\æ\ì½$5·r{vÜ¸m\ç\å\ï^\\—l§Á\\§yG\åLyi½\×ö\É1ğñ½l“Â­\ÆRY3¤s\È2;ô’™Q\Ãij«ªlÖ¡:\ëYt.±X“\Ê[U$3{–0;–¡Yr¦º\Ïö\Ø4J\é\ÚÁY<¤¼ƒôšQ!0EÙ†lÖ¡:\ëYßº5\è0®NJ\æöI}÷xgŸ\Íh\r›\îx\ã\ê ıf»\êø<\é¸ñõùxw™u.\æ«\\\í-Œ«+‘\åv\ËÆ ö ×·IA\Ü(—}œõÅ…ùø\Í\È­\ÆEü­[\Ûô•%“qõ\Üvc¹l+ˆ¯ëƒ6\Æ¯<ıVeE\à\ïoÀ†\æ&cyş}È\èŸBŒü÷\0\0\0r0\î>p\ì\Ø1y\âw›0\Î~.œ¢aV—\Î\ÏË·¿ñMó,7ñc\ÇÉ£?û™¬X¾Ü’Õ´ÿ«¯\Êg?ù)\Ó\İ\ÔF×«-×´éºµk\Í\0\Ú\âNŸEg£Ï”û\è‡ÿS¦Lš,ÿ\ÈG\äùN\Ï9\Çü¼	\ÖôYvZÎ¾¯¼’|6]©³ü\Ïu–ı\Ï\Ì\ç|Ñœ0®ñ\î\ÛòÄ¬\Ãòg/¤‚/m…öæ¦³r£®19Š©¶H\Ó l\ë©ò\ç{XÁ„dWÈ¯¦0Ï‘‹\"\×0N\Ñn­Ÿœj±§>3§H.V6¸sdÇ\Ú\Ûò\å¡;\Ìö¼õü­S~+Oš.´mŸlŸ0¢—-š\ÑY:k«\Õ\×\"(\"Üª+’)/¥Ö¥v\è6@\n&—ñ»ûZP<öXG\çf(x“\ã”\Ç~Î˜Q[Ã¹\å¶qôZ7\ä\\\ŞKe°=¸€n§\ßpSVu¸\Õ\"\È\Ú\Õ2S\İgsl\ê¤hZ÷\ä<Æ§ºË€‚D9\ÆX­g\\;)L»\É-[a…`®\Ú\Ú\"½>\\›1\ÒaTW¶\Ì.C\Øñ $ôJ–\İ1ØŠD\íZ—ú\î\×\Ç£||€l4!_\åjNW43¹½8}[;7óvn‘K`Ô¥ô‰\×<‡o“ªK\Ë\ãƒ×ÓŠ\İ\r\È\ËoF~h•0\î¥™rÆ†q\Öo`—À\ï’\Z\Õ\r¼)\Ç\Õ1òx\å\é·*{Šd¼}üs9.¡\äù÷!\Ò\Â8Óª\Ö=¦a¿\Ï\ã¨\Ó\0\0\0y†0\î>P|¬X:üş÷òÌ“O…¶Œ\ëÖ¥‹|\ï[\ßv\ê\İmR\ã0qüù\ÅO&‹-’††3\Ø\Ã\Ñ#Gœ\Ç\åÙ§Ÿv\çJQtø°üğ‘\ïË‚yó¥¦¦F\Ş9Rù\Îwe\É\âÅ¾\Ök\Z\Æ}\âc—µk\ÖJ÷n\İ\ä#ú°LŸ6MnŞ¼\éÿó&À{µo_¹u+\Ñ\Ê\ìÂ…\Òõ….òı\ï~W*+*\ÍÀjUUU\è\0\ÙÒœ0NYx\à²||ÀV\ßh§ÿ\ÜkƒôXr\Üt\r\Õg¬»Q/w”Ê¿¼¼Qş\è\Ù\Ô¥\ÙuŒ\ßv^\Z\Z£\Ëß”0®²®Qz:\Û7ó»\åú\Ò\ĞrüJt\èÅ¼ıe\æYx¾ı\ë¹A\ÆlI#m—lŸ(²\\\Ö„…[U²q`j=½4^v‡uSÒ–#­›\ÑNS¤\Øj…Ñ¸sx\ê;\ç\Æ{ğ²b©\n®F»pm™\"½Ü›¾Ğ®K™\Ê{¯X¦XA\\\ÇA\ËÃ»#U\Ë<;¸102k¦ú\Ë\\¿U$¿\×V\ãC»Š5Jù–\á\ÒÑ›Ï©›)\ÇÜ¯”[»e¸u\Ójö§\"°\Ó\år›LyÙ½ñ\ËsW\ç\Üø\Û\å+Ø“C+\çxõ\é¢\İ·I±o”\ÄcñøpÙ\Ö8\×_ßz\Èò\ÂRq~28\çPñ²ÁVy#ˆ|•+.lS2}Ÿ	\rÅ¬\ã?|{\à.>—ÀÈ³C/™²%Õ¥Y»\Ùùşv\ë ¼ ®ó`™g\Õo\ãõlU~~3òE«„q¶Oõ2İ›·\é(¬[–KA\Æõ‘\ÎÚ¥|K±”Ö„Ô‰ó{Pul”Ñ‘»\Ó7Â¶ıxg0c›”\\÷\æn”º\Ò\İ2\ŞŠğ‡¹.yù­Ê‰À\0GnkÆˆµyş}ÈÂ‰¤\×ğy²\æó7•Ü…óû\\æ«·Ç¤ûü¦·^\0\0\0Â¸ûBqq±	¹:>õtD\×U¾÷\íï˜–i“&L4\Óôùm3¦O7.ü\ì\Ç?–O?m\rg£\ëüúòØ¯#…ûM+·Í›6ËğC\éú\Â&\Ìó\Ğî­Ÿüø\Éò¥\Ëä¢³\ï\ç»ò…\Ï~\Î<_N\ÃÀ§x\Â&\áµ\à»xá‚¼\ĞùyóŒ¹ÿşòW\äËŸÿ‚|öSŸ6Aa°\Õ].47Œ«j¸#\ç‘?³F;õü\ãN«\ä=/­“?}~M\Úw\Zn=:©P\\ªv\×NS\Â8\íªº\è\à\ßöş©\×),½\éÎ‘=ºı\ç\æ•¿öº\Ö:jwÜ—Gn¿\íe J–\Ëf·|!Z·™Rr¯‘\ä^™,²¶9|{jæ¢‰©\é\'¹S#\Ğ\çT\Í\ï#S\Â2¥\å-oµ\î\Ğ>q7÷u»¥ £·®\Î2\Ï÷ñLõ—\á{_ˆ\Ö]fŠ«8gm‹­ÀÀ)wr\îC\ãS\Ó;N‘¢a…\éš59¬\â²#Æ•87ı©›\È\ÒgE.\ç`\Ômó…{\Ü\éI7Û‘A‚¢\ÉV\È\Óe\äğxx?™\ÊÕ’a\\0Xk‰”c`Ô¡ß¼ğpú^‘LIş-$\ì\\°M\Ê\ÃÎ·Š5\ÒÇšoü!wºK¾~3òE«…q\Zr\æòl¶\ê¶\ÛÿyQ »ƒ\Ç!°\í\ÈÿtP\Ç+­óõ[•+\Îß†/tT\ï \İõùjk‹¤\äj]\ë¾O¿9P2\×ú·\é¥EÙŸ‡\0\0\0a\Ü}@Ã¸ø–qaa\Üùüg>k‚2m\á¦\Ïxû\È?d\ßÁT»¬\êò:0Äª•+M°¦\İ[µ\Ë\éÿ|÷{²oo\ê8yaÜ²¥KMH·võ\Zù‚³\r\n7n\Øhº\Ò\êH¯^\Ë8\r\ãº>ÿ‚|\å_4\ëÔ–vo\Í_`F‹­®´\âhn§qÔ‰+µò‹I|­\Ş<\íe^+5õ3ol7#–f\ZT¡)aœv=|±*9ÿÿ÷\ÌJ3\Z\ê–S\×\ån†í…¡­ûtP/pÔ±\Ç\â\ã„qJl¸U%kúy\ßu”)24\Å\×\Â\"y£\æ/K÷\ÅÍ¸\r‰+¯/P\è#k²\è~T<-uS\Öy®}K–©şâ¿¯Z›\êÖ™1|Tª6\Ê\0wş\Ç.\Û\Ü\"¾ ¡n\à|a\\Ç\ÒÑ¾Y~\Ü)W‹u¯j”m\ÃS\Û\ÊT\ß\éa]€cS¬1UŸ¹“¡\\™Â¶L\ßG,£\Óx)\nÛ‡\\£.3¥$&\Ì\İ]\à­\ÇqĞ¶˜.ˆq\ç~¾~3òG«„qdw\rF3rk›On;ä¼±·ñwÁ\ßR\Ñÿ;—¿ßª¦PW4Eº9Ÿ‰(\Æ/\Ûmµø\ã~ı>\ä@\É<\éœ\Üf\Èù\0\0\0YCw(\Ög\Æ=ş¸\\!\ì™q\Zvi8e?3n\Âøñò“şHfÏšeº–^¼pQfÎ˜aFeÕ°\Ìfş\Üyò™O|\Ò\ìğ•/~Q¾ú¥/™Wõı˜<Ø3\ÑMU§k¨¦›ª­\î4ø{s\ÄHy\Ò)c¿>}’­\é.”^0Ï´\ÓPÏ›_¿\ÓW»ûk®47ŒS4ü\Ò\ç¾=5»Hş¢‹\Õ\n\Î\â,¿?z¯\ì9[it\ÈDS\Â8]\æ\Ò\Íy·=ˆƒS–e‡¯\È\í,¶D7s\îz½œ\â\Ï_Xm¶¯\İp	\ã\â\Â-û¦«\ãÉª3Ï¥E\Ò\İ[ÆºIô·¸r¦\ç~Ä•×¾ÁJ\ëv\ZÁë¦¶`·;Q\ÉTñD\ê\æ7Û®\\e²(Ù¬»,ò\åz¥¦·i\Ï?\nš\é¡ı\ÍÀ\Şv¦ú\í\Âl\Ó\ä,\ØrµPWçœ—©° \æ¸\çe¢J\æZ\0d\è\êlw¾:\É\ãoF¾h•0.—õfE¡$·!Œ\ËbÛ¾¿kß±\Í\ãoUS\Ñ\Ñg\Çô\n<C0\\\ívº1t\çû÷û5qÿv\0\0@N\Æ\İt4U¥´\Ã\ã¿7!–Z:ˆÂ·¾ş\r_7~\ìXù\éd§h\×Ó³gÎ˜\Öu_ü\ì\ç\ärY\â2ö\î;ò›_şŸü\Úq\ë\æ-\Îq\Óc—pÍª\ÕòóŸü\Ät)½|9q\ÕfpøĞ‡e\á[o%Ë¢Ï…\Ó.®\ßÿ\î÷\äKŸÿ‚ô\é\İ\Û<£N\Ñ\ç\È\éh¯\Ú:/Ÿ\ä#ŒSt0\rÀ\æ–\ÉO\Æ\ï—\ì±\Ş7P\Ãÿ\ë²V¾>b—Œ\Ûz^J®\Õe\Ä)&ŒsÖ›\Æ\í‰\ã.W\İJŒ¨j‚‹^–†°‡;enKGQ}\á­cò¾—7\Ò2\Î#\îÁ¾\á\ëR kôH™\\]ú¿ÿşg\Æ9vv[;\ä\Ô\É!¦¼¾›\î3\Ã\Ët–\Õ*\ÇwS›©şâ¾·o¤;KÁ\ê\í¦¹F\nº¤Ö—¼™<3\Î<j\âr\Ù]RzRI\ã\ï#ƒ¦oúƒ\ÛõV\Å\æ9Z3\Í@\Z\îC\Î;¥?\ä<S}g¼\Ù\ÎÔ²\ÈG3Ê•é¦¾)7ıe€u\Ì\Ã´p\Éc`\äûû\É\ÆE”yü\Í\Èm6Œk¬“\Òc»eÛ²™2~\âp\é\ã>ô?}ğ\æ‡q\ÑAk«š‹©52O\ë\"l\àƒ¤µ\Ø\ïC\èsO\í–5óƒ^ôrizĞ˜ÿó\0\0\àa‚0\î>p¤¨H~û«_\É\ã\ÎÅŒ7J©‡†q\Ï>ıŒ|ı«_5a›\Ç\èQò\Ã\ïß„f\Z-]²D>ü\ïÿ!3§O7\Ë(,4­\âF\Ze‚6›k×®\Éë¯½fºº®X–•U§}ğ\ß> s\ç\ÌI¶~Ó´k«˜ú\ÏÿğòrR\ãvAÕ®³Ú¢OG{õ\Ğ\í\ê2·œ\å›:ˆC¾\Â8EC05UC«½\ç*eå‘«2o\ß%‚\í:S)\'®\Ô\È\ÍúÆŒ]Sƒ4Ü¹+«^3-\Û\Ô\åEW\äBEƒ\Ù^õ·\ï\Êô\İeÚ®2\Õq\Ê\Îr\îz]³4]öReƒL\ŞQ*3œu7\Şm¡&>y#\Ë@-”,—	·\ÊCFñ\ÌMk}÷œò¤¦\ê™\èŠT0CC¦ªøp.¦¼ös\éšd¾Â¸«\Ë}\ÏhjŠöÍ¤$S¿:õ’3eù’ô1š€/Œ{¼»L)rnzC]l@¤±\\v\Ï ³\Ó3S}g\02´,RòQ®|‡qÁº\Î\Ô\Â3Q>Â¸¼şfä‰¶\Æ5^\İ-3v\În´OcóÃ¸\Èc›\çßª¼\ÒX\'\å%E²fşğ\ä >Iu”Y_´À\ïCT_#\Ş\0:Y™ÿó\0\0\àa‚0\î> uö¿?ÿ…ü\î7¿1#\Úh°¥\Ïv\Ó\ÖnÚš\Íc\Äğ\áòo~K\æÏ\ëNI´;uò”|ı+_•Ÿş\è\Ç&L\ë÷J\Ó\ít\çiÏ£»\ã|^ºx±	\ë´õv‘\ÕgÀı\ë?ı³LŸ:M\Z\êS;\Ô\Ö\ÔÊ˜‚\ÑòigŞ—ºw—ÊŠÄƒ«Îœ9#¿ıÕ¯M\0¨\İUŸ\î9\éÔ±£<Õ¡ƒ™^XX(w\î\Ü1ó\æB>\Ã8\r\Ênß½\'u·\ïš\Öh9\æo>tQ\í^ª­\éôU\Íü¬¹·M0\èY\İpG\î\ÜmF!,*\ê\Z\åZ\Í\íœC\Å\Ö\'&ğ\ÉH–\ËÆ„[¾¸&¸\áh,•5Ã³¸	\í<XÖ„vErˆ)oZ«®\\\ÍW\ç+c\Óô\ßL6J\é\Ú\á™C£\Ç;\Ëàµ¥¹µ4\à«C»>êœ›Wk0ğ\Ö)!\\\Ú(ƒ}\ËY>\Ş!\Ñ­K>q¼\è–ú.S}7ûf;_\å\Ês\ç{8~\'\çü\ÎT\Åm,Œ\ËûoFhKa\\\ÙÿH>ŸJ´¢\ê\Üo¸ŒŸ8 \Õu·%Ã¸¼ÿVµ÷ª¤hš5\0‚£\Ô<ÿ>dM]Z¹l;tJ\Ó^dü\È>Ö±\Ïÿy\0\0ğ0Aw8ş¼Œ3F&Oš”l\æ¡\áÍ¤‰eÀ«ı¥ü\Ú5wª\È\Ú5kdÈ A²g·ı<(‘ª›U2uòy¥\×\Ë\Îû›2j\ä›Î²¯&»¡9yò¤0@\Ş1Â´¬\ÓÁt ‡\íÛ¶§…w:š\ê\è‚™7w®\Ô\ÖÖšiZ¦‰\ã\Ç\ËKİº›mª/÷\ì)½^\ê!/v\í&Ç‹‹›\Ô:®¥\Â8hd¨…b?\×\'fÙ˜p«\É7±h¬+•\âµó¤``¯.Y®i-\\b\Ê\ë’2„	™\ÉW×œ½\0^7.\íşÒ…Ò³9#F†qÊ¥À\è‡zŒ\â\rT[@ö\Z\İ\Å6*\àIÇ›\í|–+Ó±\Î\á\\h<4ŞºY\Ï2\ìl\Ëa\\3šC›	\ã|ƒ8v\è%‘]õ3„E-\Æ\åñ·ª%¸W\"ó¬`\Üÿ|Áû\ÆùQ;™k‹¥´&\ä‡$\æ\ß.\0\0\0\È\rÂ¸û€pW¯^5]Dµu[+W®\ÈÅ‹}\áXee¥”]º”6b©_\ÚjM»6º-\İt>}†n»¬¬Ì¨\ëWuY]¯6ºn\r\ë®;z›\Î\í\ê5\ç\Ü(•\ÒÒ€Î´`·\Ûl!Œ{)÷wY›˜\ÅHwI\ì›\r\ç\æ$jt¹¸{pƒ.ó\Ä?_şh¬+—’=\ËÓ»ù„1\å-[lµPhö¨Œ\Í\ã\î\í¶ê¾³\Ìk¹Š“ò’İ²<øğóÇzib\ì\Ø0Î¡n{\à\Ùİœó\"b[ş\çv—)\Ç\âÃ¥\Ö\n\ãòZ®LaF¶aG \åa÷Àˆ—‘´±0®µ~3r¡m„q²{¤·.\ÇnS¤8ö´k¥0®µ~«ò„=úµÿ˜Ü0®\Ô\\#\åq¿»„q\0\0\0yƒ0\Úm!Œ\Ó\ÑXk\ïIı¶\Ş\í3–²ş\Î=©if÷\Û\ÖÀ÷´lGUJ\æYE¹ÉŠ»A°G9|¬¬Iô¸nA\Zıµn¶\Ân\æ\ã\Êk§HQ³	ØŒ0\Îù\În•\Øgm\ÖG­\Éø[U5ı¦:S§İ²\n\Çd7 ƒ\ï\Ü\Í\"m­0.¯\å\ÊKW\'Û†{ó8\æ2bm[\ãZı7#3m#Œ+’ñV`>|{Æ³®u\Â8g\É\Öş­j¾(|ÿ>Ü‡0\Î÷¼½,~s	\ã\0\0\0òa´	š\ÆUŞº\'Õ÷¤\êö=¹u÷m©v^¯\Öß‘Kµw\äÈ\Û&\\»ûö\ÛRVwÇ™÷®,¿%7yn8\ï\ï½m^k\ïÜ“\Ë\Î÷›.\ÕÉ¡\ë·ä¢³ì±Š\Ûf}úˆ·2\çsy\Ã]ip>œ¬¼-u\Î:u+uw\Íöô»«õw\Íz¯;\ï5\Øó\ÊU\ä¬O×­\å\ÑW§Ü™·\Â\Ùî…š;r\êf£Y‡†j\'œuŸv>\ë²\r\Î68e½\ê,£û ó\ê|º~]\Ï5gû¯5È–KõfŞ¶L£¯%Rö7\r%s­Vbq-¥boüÿóŸuk\æ\é8®¼‘G‡oÏ¢›_$\Í	ãœš›o\ÕL\ë±üa\ß\\fs3\ZN\æ0\Î!\Ë|\ë\Ê\î(»Ró·d—\×r\å!Œ+³=ˆ\êE£¼„q÷\ã7#m#Œ\Ëñ\ï\Ó\×b-\ä¼\Éi\ÛñÇ¶õ«\n§HŸù%9\Êh‰6r·¤ß‡0.‹¿m¾ :\ä|\0\0€¬!Œƒ6A\ßW^‘£GºŸrc\ß\Õ)®¸-û¯\İ2•†h\Ë\Î\Ö\ÈR\Ç\É\ÅUr¦ªÑ„Yo•T\Ë\î+õ2\æH¥	À6_ª3Á˜¾\ê<{œõL9^%.Ô™yuY\r\Ğ4€[\è|^}¾\Îa¯\í¿a\æ\×\ïWœ«5á†xóOW› o³¼¶°\Ûq¹^\ÎT7\Êøc7e]i\Ì=Um\æ\×\ékKke[Y½)£.w¹\î®	ü¦¿)œ\Ï:\Ï9g\ÙÁ*LYJœòu\Ê}¼ò¶,9S#‹µ\Ü:ï¢’\Z\äµiS6­f\ZKù\í¥-—\"\ÛaÄ†q\"Uk\í\Ñ;JÁlZN4Jù\Î)\Òk²·6\çFiHl»”©5H`{Î¾–»Ó“d(o\Ñd«\Õ\Ö\ã}dQ\Ô@6÷ª¤x\Ù`\ì{\ÖZ|Ø–ñûŠ5¾Q\n;\Ù-UYœj:\Òâ”S’ûU¶b°l)“Œ§©o{}dùUwzd\Æ)Y\è\àk\Å\×RQ\Î>£—o`–\ãòZ®\æ†q\çğ\å ·¹0._¿ù£m„q%2¯‹·.\ç÷`r\Ì#ªŠdfO»\Ë~\Èy“\Ç0._¿U9á–¿C\ÏY\ã\\;d¦QJûG\ê¾\Óşm\Ï\ç«35Xo·¶\Ép\ëû¸V…¥kdpgk]„q\0\0\0Í‚0\Ú=/\ÖI\áµnix¶\Ïy?İ¹0^]ZkZ¬¼mÂªñGoÊšóµ²İ™\ïl\ÕYv®Æ„kK\Î\ÖÈ‘·d×•\ÄiĞ¦\Ó4\Ü\Ó@Lƒµ7W\ÊTgW\ê\îHß½\×e\×\åz°ÿ†Œ9rS¶;\ï5UT)\ë\å–Ô˜Vzkœ\í—\Ö\Ü1¡Ù¡ò[\Î:*dÎ©jyË™w´3ï²³µ\Æ\İ\Îvµ\åƒ\Z\ÂiùV«•£N™4¨\Óm\ë´~û®›ı}¤R†L„tº=\r\Û¾–3\êK\ãe[IUzÀv«Ü„J\íğ.SK›\áVz+¨\Î\ró6)¹Rw\ÎöK¶Ì”]\Ü\É\ä\ÍK\êF©\Ã\Ë²¼°4ıAù÷\Z¥l\çx\én•=ô\æ&Syƒ!‘0:¿PJCÌ¯I.+^O%\æõ‡\nÂ¶Œ\ß\ëÍœÿ¸upn\\·•”§kÎ¾——l“™½‘fSû•¼!|Jö±—v\Ëx««\Ùcı\Ödß9@\Öaœ’i@‡\"ÿ\ë;ô›)…¥©‡Õ›g\êù\â»IM˜©¾›u³\Ïr5\'Œ<>ª»o,yŒò\Æ\å\ç7#´0.ğNô™eÿ=7J\İ\Õ\Ù6c€ÿ÷\Û\Ø\ÂaœC>~«r\ÂW·\ÎöºñË¶Iqi•\ïß†Æº*3h\Í_8\é¨ÿ)\åÎ“ ¿.\Ã8\çWvM?\ë{\çßš‚µ%\â\\²$pêª®´0ñLO{=\Æ&\Ö\0\0\0\ã\Ú:À‚ÀP]Ue\\È«\Î:›2\nj[`“\Æiø¥-Ü´Å™W\İ4Aœ]\ZÆ­½P\'£W\ÊÉ›²\ì\\­/Œ\Ó\îSŠ«\äô\Í\Ûf\ÚòM[\Åi\×\Ğ¶_“•\ç­\à&ß”•\çjLH¦-\×4ô\Ó\ï4¬[z¶\Öl\Û\ã4Ì›\äÌ¯\İZ5¸[ë¶+(ª4­\ät{³OV;\ß\'Ê˜\ãœõi+¸w–\ËX§\Ü:\ï\çU÷S[\Âi ¨\Û\ÓuiK¼öñ”»ô\çt\ï »tN6º¦ss0>ÓˆŒ™\Â-%­”k‡©\í»–\Ï\äÍ‹ÿFÉ³C\'w\Ù\Î!ej˜Myƒ!‘\çS\îö\ÃFqõ‡\n™Â¶L\ß+\ÇÍ¹\ï\è\Õ[Ø¾[û•vC¨Zõ\î¸A\Í4\Âir\n\ãÒ‚\âNNÙ“§\\•lh}g‡>\Ò\'‡ún\Ş\Ív\ËÕŒ0®d†ÿ\Ü\è\Ğ9u~\Æ9\ÓnT•\ÇÀ(oaœ\Ò\ìßŒü\ÑV\Â8©\Ø(\Â~—B\ìĞ¯Oüy•\ã¶3\Û\æÿVå„¯ns´óx\ë7\Æ\ã~„qÁrc\ì\ì\Ó\Ôs\\›Xo\0\0\0` ŒkG4\Ô7\Èöm\ÛdÜ˜±2qü„¼:vÌ˜\È\Ñ]\Û:›.Ö›\Öe[\Ë\ê\Í3\Ö4œÒJ[ºi@·şB­¯¸mÂ¸\Õ\ç­\å\ÎUß‘\Ågj\Ís\Ş©1!\Û\Î\Ëõ²ùR½y›s\ÚJN[´i¦\Ëjh¦­ğ4›q¢\ÊiCT˜.±uh\Ë5\rŞ–»!ŸvE=«\İTeõ™n\Zªiw\ÖI\ÎrSuı\Ú2NË£-\ã4À\Ûy\ÅnwÛ„w“\İ4ÁÛ«ûn˜r©=w•›\Öq\Ú\êî¼³¶>€CŠ:)	¶z‹³ó`Y~*‹v6Ù„[Jc©¬bu\ïË ¶t˜Y\èµÏª’¢i?c\ì<d¹”D=\Ûò¦uõŠW[\ìm,±[\î\ä#ŒS\Z¥tmÇ­Cg0£0Ù²­\êĞ”dË½Œf{\Ìc\È5Œ½‰¾Í™\êRW$S\ìV{!v\è9SŠœxò|³¯r5#Œó\Õuúö=Q^\Ã8¥Y¿ù£Í„quES|­\Ó\í ½fIÕ½\ço\Û\Î\î\Ø6\ï·*\'\Z«¤xmô	ûO¤H;H\ç1Û¤<¤e\Ş²\n\ã\Ê6\ä´uö\ÚRi\Ìö\ß.\0\0\0\Èa\\;¢¼¼\\úô~E\Ş÷\ï•ı\ç÷\å\Õ÷¾\ç\ï\å\ĞÁƒr\ç\Îwkí‡½\×]7µ5™v\ë|£ğ†\Ì>Ye\Ş\ëó\á4@\Ól\ÃU˜÷#W˜Vg\Zfm¿œh=§\İL—ŸK<cN\Ã<\r\Û\Æ9\Ë\ê`\nú¼9m\r·\ÂY¿v\r\ÕAôùq\Z\é648\Ó\Öy«œ\ï5 3-\çœ÷.\Ô\Ë.gı÷\ß0]N\'9\Û\Ñ\àğ­’\ZY\êlKÃ¿™\Îvô9q\Z¨i¼½Wd×•z\ZjµªnC×©\İauy¦û5\Íİ¾>?Nƒ¼vÅ­2\ç&f\ï—Ş²D[\Öô>O\Ö+Ov¹\ËH7%²m~\èh]¦­ôz‚ùk¤8\ê\Ùp\Î\rXÉ\å2sxŸ´V^Ù·\Ëpk—ky/\ÊòÃ¥O—@+2m¡\Óo¸\Ì\\¶[J*\ÂÊ›¯0\ÎE÷}\Ë<)\Ø+­c‡Î½d@·¨g\Ã5JU\É\îğı\Ğ\Ö~\Î~\Ì\ÛRš\Õs2‘{\çi@‡{URª]{vLu\×r\ê¿\×À™¾\îÖ­\Z\Æ)ù(a\\\Æs¿Y¿y -…q†ªR\Óµ—õ;Ğ¡“ó0c›õ[t?\Â8—fıV\åN\ãõÙ½lf\âß´`\ë;\Óú»Ÿo\×M÷/ŒS\Z¯jwT\ç\ß5\ë\ß\äû˜G”y\İV	\ã\0\0\0òa\0´\Ú\Û\r74\0\0\0\0\0\0-„q\0\Ğş\É\Ôú£­\Ñ\Ş\Ê\0\0\0\0\0\0yƒ0\0\Ú=¾şú,—rwz[¥½•\0\0\0\0\0\0òa\0´c\Z¥|\Ëpßƒ§û¬\Íÿ\Ã\ÓóG{+/\0\0\0\0\0\0\ä\Â8\0hGJZĞ¥³1md\ÓN\ã¥\È{\Ğt› ½•\0\0\0\0\0\0Z\Z\Â8\0hGØ£\Ç\ì\\ Û®»³µ\Ú[y\0\0\0\0\0 ¥!Œ€vD‘\Ì\ì\Ô!h=\ŞA:÷ 3·”J\Õ=w–6E{+/\0\0\0\0\0\0´4„q\0\0\0\0\0\0\0\0\0­a\0\0\0\0\0\0\0\0@+A\0\0\0\0\0\0\0\0\ĞJ\Æ\0\0\0\0\0\0\0\0´„q\0\0\0\0\0\0\0\0\0­a\0\0\0\0\0\0\0\0@+A\0\0\0\0\0\0\0\0\ĞJ\Æ\0\0\0\0\0\0\0\0´„q\0\0\0\0\0\0\0\0\0­a\0\0\0\0\0\0\0\0@+A\0\0\0\0\0\0\0\0\ĞJ\Æ\0\0\0\0\0\0\0\0´„q\0\0\0\0\0\0\0\0\0­D‹„qcÆŒADDDDDDDDÄ€´Œ\0\0\0\0\0\0\0\0h%\ã\0\0\0\0\0\0\0\0\0Z	\Â8\0\0\0\0\0\0\0\0€V‚0\0\0\0\0\0\0\0\0 • Œ\0\0\0\0\0\0\0\0h%\ã\0\0\0\0\0\0\0\0\0Z	\Â8\0\0\0\0\0\0\0\0€V‚0\0\0\0\0\0\0\0\0 • Œ\0\0\0\0\0\0\0\0h%\ã\0\0\0\0\0\0\0\0\0Z	\Â8\0\0\0\0\0\0\0\0€V‚0\0\0\0\0\0\0\0\0 • Œ\0\0\0\0\0\0\0\0h%\ã\0\0\0\0\0\0\0\0\0Z	\Â8\0\0\0\0\0\0\0\0€V‚0\0\0\0\0\0\0\0\0 • Œ\0\0\0\0\0\0\0\0h%\ã\0\0\0\0\0\0\0\0\0Z	\Â8\0\0\0\0\0\0\0\0€V‚0\0\0\0\0\0\0\0\0 • Œ\0\0\0\0\0\0\0\0h%\ã\0\0\0\0\0\0\0\0\0Z	\Â8\0\0\0\0\0\0\0\0€V¢EÂ¸1c\Æ \"\"\"\"\"\"\"\"bÀ\ã._¾œ\æó‹\å·#\ãƒ\ê\È\Ãò˜ójYd¦%\Ş\Û™\×\ßY\Ó~÷f‘óYMLW\×i!\êô ¿ı>\è¾÷G¤CÁ‘\ä4}õ¦\Å:\Ú{-JN{Ò™–ğhòıS\ê}=šxŸœ\æ|v¦?\í¼z\ê4ûs”ÏŒ=*õ\Õ{ÿì¸„ú\Şşœ\æø\Äk\'çµ“¾;\æL;\æ|8\á˜<ç¨¯ú9hgu¢û\ê½w??\ï¼z¾\à½N*\Î\Ê.“=»:\ïUoº÷¹Û”\ã\ÑN=.İWõE\ç}œ/M;‘4lšg\é\éö4¯\'¥\çŒp{9¾l<!/\Ït^Uoš÷Ù²÷¬pû\Ì>•Ñ¾sR¯ı\æú_=_{\ÚU\ß\'>÷Ÿ\ç×6Àñµù	\Íg÷}˜”$}ı-\ç\Õ\Óıt\Ğ\Ây\ÃyUõ}”CIs\è\â³Æ°i¶Ã–„;|\éYa<xM¼¹\ÌQ_=\Ïo\ê4}]~\ÖUß«\ç“\ïG­8/£œ\Ï\æ5\à\è•\Ù;fU©Œ\rqœ\ãø\Õ\áNX“z\r:q\í¿\ëR\ï\'9Nv>G9eıEŸSm7¤;mc¸\Ó7]2\Î\Øè¼ª\îç™›Ó\æ–K2\ÛrÎ–2c\âı%™»µ,\İm®\Îûy\Û.\Ë|G}\Õiú>\éöË²`G´o\íô»p\ÇY¸Su\Ş\ïrt\Ş/r^\íò¦\ëç„‹w_‘%.\İs\Õ÷~™¥ù¼7õy¹ó\Şv\Å\Şk²b_Â•\î«ıy\ÕşhW–×¸¯\É\Ï®™ik=\è´\Ä\ëÚƒ	\×¼\î\è½&Ş¯w\Üp\èz\Òõ\êa÷½ûªn<|#\ÍME\Ñn>’p‹\ãÖ£©× \Û\ÔcÎ«\ë1¦¯~wÇ»óxeš»’Ş”\İ\'ü\î9Y\ï©\Ä<ûœ\×0÷ŸNü\\xº\Ê\Ñy-Q÷,Ú©–ƒg\İW\ÇCgSv¦2&\Ş>ç¼†Xt¾Z8¯F}o¬15¯\Õ\æõhi\Âc¶¯Åªó>\Ì\ãj“¸\è¼^¬1¯\'/¥{ª,|šz\ÚX—ğr\êµ\ÄöJœq\Õ÷ögÏ³úz\Õy½Z/\ç\Ï^qu?Û¿\æ·4ğ\ŞX^/\Ê^\×Wı\ìNs>_ñ’\ç\r\Û[I\ËÔŠ†Ä«óy\ïx¹\â–\Ï+je\Ğ\Ûr\Õx+\áMW\çı5gºñ¦š˜®¯	oK¹Z\å|\çª\ïË«o\Ëu\çõzUc\Âj}½-7ô\ÕU\ß­¨‰·²6İ›µw|\ïo\Ö9š÷R¥\ï½W\ï}U}\Âj\ç½\Ñ{¯¯I\ïJóZ\Óà¨¯úÙ±¶á®£¾Z\Şr¦¹\ÖY¯¶õúz;a½¾š\Ï÷œ\éjbZƒû]½Nwl0\êt\ï½c\ã=¹\åªï“Ÿ\ïÜ“Ûúšøşmó9\ÊÆ¤‰ù\Z\ï&\Ş\'§\ß}[\îDy/\å][\ç;crš˜\×{®\Şg3\ímI\éL7ºŸ\ß~\Ûûşmó>©8ß™D!3\É7\Íş>ôZ)-ƒh§\Æa~\Õp\Íy%Œ#Œ#ŒKHG4,t‹’0.D+ˆ#Œ#Œ³%Œ#Œ#Œ»E§\Ö\Æy\ÆÁƒ†^+¥e\íT\Â8Ì¯\Z®9¯„q„q„q		\ãã‚†…nQÆ…hq„q„q¶„q„q„q·\ã\Ôz\Â8O\Â8x\Ğ\Ğk¥´¢\Ú\êaÜ‡\ß!ˆˆˆˆˆˆˆˆˆ¥„qˆˆˆˆˆˆˆˆˆ­$a\"\"\"\"\"\"\"\"b+I‡ˆˆˆˆˆˆˆˆ\ØJ\Æ!\"\"\"\"\"\"\"\"¶’„qˆˆˆˆˆˆˆˆˆ­$a\"\"\"\"\"\"\"\"b+I‡\Ø:ç¸\é\'&>÷/N|\Ş\ç¼\çÅ‡\×É•‰óbË†\Ä\ç\ß;¯\æ<q¦ÿ>0/\"\"\"\"\"\">\Æ!6A\Â8\ÌF\Â8DDDDDDJ‡ˆˆˆˆˆˆˆˆ\ØJ¶ù0\Îk¥\×2\É6\Ùú\Ä3¢µR²5S\Äz’>+²\Å^_ˆ\É\åóz-bl\í\íªı½\ï\â¶cíƒ¯N‚-l¬uø¶a¢ö?X\Ö4­\ígš7¸´\ãdi\æÍ¢\Ş=\';ó\ê:\íº‰=¦®öü\É\ã ¶¬\Ë,\Êu.¤\Ò:Ê®“\à¹u\ŞdúI;ò…Í§F\ÕY¶SQz-\Ä|\Úûo—)dİ‘\Ç\É3¸O!uë™±,f:¿ƒ\å\Ê\å¸\äú·“ÁıŒZG\Î®q¿\Şß£š\Ëoˆgd\İ\åxŞ…­\'\í\ïÁ5XN{\Ôd}Ê›ñ\ÜT\ã~¬}\ÊGÂŒ\ÚgO{»i\çI†¿Í M9—›ZşĞ¿e5XN{,“e\Éòøxf<?#¶¦9gâ¶¯·\Ú\Üc\Ö\Ü\ßt_„,\\sB©g»NšTWö1	–\'°\İ\à:3j¦c\î[Ö€ió\"\"\"b›·]…q‘7:\Ã.\ĞÃ–½@³»(\Z¼À\n™?x¡–V6û‚Ë¾xs\r.\ï+»µ}\ß\rL\Ì>\Ä\Õq\Öu\ä5¯==\ì¦*\Ûm\ÄUö±\ÏT^5j\ß\í\éQõ›Ó¹`\Ï8G\ì\íF\í£\ï\Æ&‡\ã4²~œ÷a\ëö\Ìöo*£Qu\âm_\ÍpÎ‡m\×>‡<ƒAFš¹KÇ¨ó4ªNs9.MıÛ‰4pC\êU\Íùo ğ]\Ï\Éó\Ô\ÚV¶ßª\ï<”\×\Ûf\Æ\ã\êh¯\'\êX×“v¶Ÿ\\6p®\ärœ3\ç­R†cQ†2Z—==x.\çZş¸ó$¹ˆ²6g_›z~\ÆnSµÿ^\íckOw´\ë¦9û¡6÷7\İ>fa\Ë\×o\×K\Æú\ÈB{ı¾uxûn\Õc“\ê*\Ëcúû§\ê=\íüˆZ„¹\ì/\"\"\"¶¼0.p¡\ävÁ—õa.M!Û·\×\í»XsM\Û/\ï\âJ\r\\Ğ©Á‹`5¹kû¾¸}ˆù.—‹\æ\Èy3\Ô_¶Û°\ë®%\Ã8{i\ÛÉ°/>›P¯¡û\è|\ïMSƒ\çK¶#q7\n“\éiûd\ï‡e6õ›fT\ØûR¶Lûö7u$\Í\åX:F§vÙ­õd{\\Ô¦ş\íDö;£fª;\ïû¸¿»¬Qu¼\Ğ:†\Ùş}Ï³°²\ê~……>›x.\Ù\åô´Ë›¬“Àq\È\å8g*[«”!\Ä\Øc”¡\ÌA#\×s.\ç³“óD|\×\ä}m\Æù»M5¦n¢–m\Ö1\ì‹gh\Ù\"´™\êû-°·\ïš\Ï0.\×ËšTW\Ç\Ä\ŞoßºušñüˆX˜¹\î/\"\"\"¶¸0Î¾h\ÑB\ï}\ØL\Ö„9\\4\ç5\ï­m››)oºk\Ú~E]º&\ë\ÄY\ÏB]Ÿó>y!lm\ßwqœaštÁ0r^{ÛÁı\Ívö±\n\ì!\ãM»cğüò]ô†\ÔSs\Î{^{Ÿ\í}	\Û\ÇÈ‹\×lÿF¢¶™\É\\ş¦2\ZU\'\Î~Å­7v­e·8\Ë\æ\ãø„™\ëù\íqQ›ú·¥ıw`³lÎŸL¾u‡¬/h¶ß¾s ‹\ãe¦ß€¨òø¦{\ï­r$\×([.\Ç9\Óy\Ş*e1öe(s\Ğ\ÈuÅœË¹”?\Óñ\Íd“÷\Õş.Pÿ™Œİ¦j\×M`\İö²ö\ïvsY>~Ó“\Ç\Ì)¯)»Un¯l[\"U\Æú\È`TDÙ¤º\n9&özš}~\Äó ¹\î/\"\"\"¶¸0Î¾P\×ù\ã–\Ïú‚0‡‹&ß¼\Îú½ò˜m»\ß\é\ÅT\ì~E]º\ÚÁ¿·æµ·¡Ÿ}m™ö!b›Y×‘c\ä¼öºC¶\í6Â‚ª ¹Ş¨ùƒ]Nı2“Ï…À¼v9\í}\î£=_\Ô>gû7\âY\ÔL\åw\Í\åo*£Qub\×}\Ü9\ïÜ¦}ş\è1\Ïú\È\åX:F§\ëÉ¥šú·ª]­\Ë\\\êÖW?\æU\í²\ZC\Öi›\íß·¯Ü®M	[2\Ö{D}\Ï#o=^™“\çU\à8\ärœ3‹V)Cˆ±\Ç(C™ƒF®\Ë^OS\ËoŸ#udk“÷µ\çg\ì6Õ˜ı²\Ï\ìe›s\Ìòñ›\\\ÆY—¶\Ê\Ò÷^}˜\ïœiQ¿\Å\ë#ƒ¹ş[Ö¤º\n“şö6Ã¶g\Ï\ï\Z{~\ÖWş¦şÛˆˆˆm\ÛvÆ…\é»p´/nÜ‹ª¸‹°¬/C.²|\ÚF2xQ\Z¤xÛ³o²Ô´‹ß¨‹CWû\"X·\ë]ğš°\ÆÚ¾/¼±\Ëv!go\ÓúŞ®£0\íz‹ªÏ¨›	\ÏlC0¨\n›\Ç^W67JQ\çW\ä²v=†i\×mTGÔµšv\Ñ\írx\æò77oh\Úû\à–!\Û\ãj6u²¯q/Á¿‡l\ÎcTY\"Œ\Üïˆ²\çr\\šú·¦½ÿ\Ş2Y\Õ_À¦ş\r\Ëi\ï[˜öü±ófqŒ‚eKûmUí…­\ÓŞ¶\î{²\İy’\Ç\"P¸ºM\ÓŞ¶u®x\æ£af*W\Ôùg\ÌP\æ Q\ëŠ;—³.¿]–@dksö\Õ^6Í˜ò\ÄnSµ\Ï[{=1û\Û\äı°·\å~—±|!&™–\ËÛ³\ïœ\Õõ\Ø\Ç\Üş=‰­G\Çl\Êw\Î÷›TWv=Œú{Šİ¯\àù³~c`ş\\öÛ‡TË¸°›Ğ¸‹Ò¬/@£.”\Ã^\èzŸ\å¼W]>v¿bÊ¬ú.‚ó÷·¶\ï»@Ë´ö6­\ïs¹Ho\êv¶Û°o\ÔÅ§½®\È0Á2ò7¬\ÔLõhk\Ïf\Èòö>ª›\\şF\Ô\Ø\ã(S®Sª¿\ëŒ\ÜGk¹\ä9‘\í1\Ê\åX:F§Qe\Ë\å¸4õo\'Lû\Ø\Ûn\Ü\ßX\Î®övÒ´aÜ¶Cµi˜±×¿¹\Ğz·\×o\í£]No^\İh¹³	\Â2\çL\çy«”!\Ä\Øc”¡\ÌA\íu…vd]~»,\Ç.iDY›½¯ö<!†Ÿ±\ÛT\çmš\ã­6u?òõ›<fnÙ¼\Ï^\×T=Ù„q¡õ‘¥¡\Ç\İ3\âüÈº®\âI\\\Ù\ë1YöúCo˜\Ù\î/\"\"\"¶¨0.jŞ¨\éY_\ær\Ñd\Ï\ë^°…m\'v¿¢.]“Ë†]l:Ó¼\í79Œ³¶™u9¦\Ík¯\Ó1\êøe»\\Ã¸L\ç‹jİ¶½|\è6šz.¸ó\Ú7\'a\ë÷…qºŒ½Ç°}Š=—²0ª\Ø7MQ\ënò6£\ê\Ï>Wœc\\.j{Q7{Q\Ó}F•%Bû\ÜH3‡2‡\ÙÔ¿4£\ê1¦~\írfõ7¡½\Õ+sÚ¾Y\Ëdc0 \ÎT¦ŒõQv9“\çŒ5oòùWs%—\ãw\ÔV)Cˆ±\Ç(C™ƒ¦­\Ë^\Ş1¬|Y—?\Ãß¬\ï\\‰(k>÷U\Í\æüŒİ¦\Z²_™ş­h\ê~D\Õu®\çPr~·¼aÿ>Gıg¬&\ZõoY“\ê\Ê>&º.{ıÙ–;òü9\æÁe3µ¿ˆˆˆ\Ø>|p\Â8û‚*Fû*\ë\Â\\.š\ìy½;«l\Ş>\Äî—½/öÅ¡kğ\"\ØL··\ëê»€Ï°Qu‘\ËEsØ¼ö´¨º\ËvaûA\íu\åtC\á\Í¨Ç´ò4õ\\ğ\æÍ°ş°}\ÌT‡Yÿ\Äz“\á¼z\Ó\âŒ;fiFÕŸ½-gƒË…\îc .£Œ:Wr:–Ù§¹—°ug:\îaú–‰\Ñ.O\Î1\Ú\ë\Ê\êF8K}7´\Îú\Â\æñŒ\n\0<£\ÊcO·—\ŞğEN\Îö’\ë	ÙV)Cˆ±\Ç(C™ƒ†­Ëv.\çRş°s\Ì3›ó$Ÿû\ê™i»±\ÛTıHû-²§…,×¤ı°§\ÇZÆ€\É\ãR^\ï¸Dı-f¬föoY“\ê*\ì˜\Øó:Ï¿(CÏ°õ7Á°ıEDD\Äö\á\Æ5\åb+\ë\Â\\.š\ìy\í»€±ûQ^Ï´‹`W{\Ô\\Â¸lÖ™\éB/j^{_\Ãö\'\Ûm„U\Í5\ì8ø.œ­\éÆ¦Ö¼Áõ\ÛôQûh—3¸\ïaû¦\Ös\Ô\ÍC\ØMS\ìq\ÉpFj×‰½\\\Ôt×°ó3ö|°\×uœ2l3h.j¶\ÇEm\ê\ßNĞ¸mf³lşô\\‰ÚŸ°ue]o\ÎwQ×±\Ç:¨³o\Şl\Ï%\Õ.§\ï\ï\Ä^_\Èrquf†²µJB´\ë7\îo=c\İ;6\å\\\ÎWú\ÎÛúU#\ëXY·~\×\Ôó3\ã\ß@\Ä\ïUğ\ï\Ğ.oSYl9¬e¢\ê\Î6\ê\ïÈ¶¥\Â8]>\íØ¹†m³I\çw\Ä1±\Ë\î\Ûwg=9\ë3\×ıEDD\Äö\á\Æeš/\ìû¬/s¸h\Êö?¶¼\Ö\Åa\Ø:\"/‚\ím;fsa©Æ•%—‹\æ\Èy\å\n®\'\Ûmdº\áQ\í\ÓL\åU£ö\İ^¯¾šz.\æµ÷\Ùş.r}I\Î\ïh\ï[\ì¹d™\Üf ,Q\ÛÌ´\Şl·kk\ïwğ\ÆÁşÎ·>k\ß\íı\Ît’\éû¸²„i\Ïßœs+\Ì\Èu\Û\çPğ» V=…şöD|Ÿ\ë\ß@rz`Qûu½Y\åó»¬r\ÄuówNÄQu¡\æôwq<[¥&\×(—]¦l\Öy¼\í\ãø.\×ò\Û\Ç\×.o\Ôô¤vÂ¾;>\Öw¹Ÿÿb\Öa/y\Üe:f™\ê9—ãœ7bŸÕ¨¿·Œõ‘Á\äòmGşû\é˜k]\Å»’\ë\ËõüˆYĞ¦\ì/\"\"\"¶}Œ0.\î\ÚÕ¾\àò.Z\ìi¡z\ë²/š\"L^P\ÚóF”E\rİ¯¸\íXëŠ»\ÛOc†}ˆº \ÎXGV\ìyƒ\ëó\İ$¹\ß§Ù†•\'›Oû\â?jŸl#Ï¯`}yõ\ß\Ôs!\äXù.\è\İ\ï\ãö1x,¼~\ßzB´\×9o°|\Î>$¿óö=`\ä¹fk¯\Ç2\êo9\î|ó\Ïu«ú\Î/İ‡\Ë4\îü3—\ã’\ëßı½g6\å³\Ëvş4ûoÀ›\Ç2\î˜\Z­\ã7¯\ï7KÃAÔ¹jo;m[ö¹8\ß2gs,²¬³–*C\ä\ßgÀ¸õ\ä\ã\ï$\ê\\njù£–³\ç÷…˜!\ß›p|‚ÆŸqub´·ò{\æ\Û\Ï½\ï˜\ÙçµO¶v933\Éí†”\×3›0.Ô˜uzF\îwÌ²Y×•\ZwL\ìºtô\ê*§ó\Ã^„ö¹Ò”ıEDDÄ¶m›\ã	\ã[I\Â8DDDDDDDD\ÄV’0±•$ŒCDDDDDDDDl%	\ã[I\Â8DDDDDDDD\ÄV’0±•$ŒCDDDDDDDDl%[=ŒCDDDDDDDD|Xmõ0\îù‰\Åò\Û‡ñAu\äay\Ìy5,2\Ó\ïm‹\Ì\ë\ï¬i¿{³\Èù¬&¦«\ë´uz\ĞßŠ~ô	\ßû#Ò¡\àHrš¾z\Ób\í½%§=\éLKx4ùş)uŒ¾M¼ONs>;ÓŸv^=ušı9\Êg\Æ•ú\ê½v\\B}oNs|âµ“ó\ÚI_\Çs¦s>œpLs\ÔWOı´³:\Ñ}õŞ»ŸŸw^=_ğ^\'ge—ÉÇ]÷ª7\İû\Üm\Êñh§—\îÎ«ú¢ó>Î—¦H\Z6Í³\Çôt{š×“\ÒsF¸½_6—g:¯ª7\Íûl\Ù{V¸}fŸ\Êh\ß9©W\Ï~sı¯¯\Î=\íª\ïŸû\ÏókO\àø\Úü„\æ³û>ÌJ’¾ş–ó\ê\é~:ha‰¼á¼ªú>\Ê!‹Î¤9tñYc\Ø4\ÛaK\Â¾ô¬Œ0¼&Ş\\æ¨¯\Î\ç7uš¾.?\ëª\ï\Õó\É÷£Vœ—Q\Îgó\Zpô\Ê\ì³ªTÆ†8\Îqü\êp\'¬I½¸ö‚\ßu©÷“\';Ÿ£œ²ş¢Ï©¶Ò¶1\Ü\é›.glt^U÷ó\Ì\Í\é\Î\ns\Ë%™m9gK™1ñş’\Ì\İZ–\î6W\çı¼m—e¾£¾\ê4}ŸtûeY°#Ú·vú]¸\ãŠ,Ü©:\ïw9:\ï9¯‹vy\Óõs\ÂÅ»¯È’—\î¹\ê{¿\Ì\Ò|Ş›ú¼\Üyo»b\ï5Y±/\áJ÷\Õş¼j´«Ëk\Ü\×\ä\ç\×Ì´µtZ\âu\íÁ„\ë^wô^\ï\×;n8t=\ézõ°û\Ş}U7¾‘æ¦¢h7I¸\Åq\ë\Ñ\Ôk\Ğm\ê±\n\ç\Õõ˜N\ÓW¿;Š\ã\İy¼2\Í]Io\Ê\î~÷œ¬Œ÷Tb}\Îk˜ûO§~.<]\åè¼–¨\Î{\Ç–m\ÏT\ËÁ³\î«ã¡³);\Ó\ïŸs^C,:_-GœW£¾7\Öš\×józ´4\á1\Û‰\×b\Õy\æñµIO\\t^/Ö˜WÏ“—\Ò=U>M=m¬Kx9õZb{¥NÎ¸\ê{û³\çY}½\ê¼^­—sg¯¸ºŸm\Ï_ó[\Zxo,¯—\å\r	¯\ë«~v§9Ÿ/†x\Éó†\í­¤ejEC\â\ÕùÎ¼w¼\\q\Ë\çµ2\èm¹j¼•ğ¦«óşš3\İxSML\××„·¥\\­r¾s\Õ÷\åÕ·\åºóz½ª1aµ¾Ş–ú\êª\ïƒV\Ô\Ä[Y›\î\Í\Ú;¾÷7\ë\ÍûF©\Ò÷Ş«÷¾ª>aµó\Ş\è½\××¤w¥\Æy­ip\ÔWOı\ìX\Ûp\×Q_-o9\Ó\\\ë¬W\Ûz}½°^_\Í\ç{\Ît51­Áı®^§;6uº÷Ş±ñ\Ür\Õ÷\É\Ïw\î\ÉmG}M|ÿ¶ùec\Ò\Ä|w\ï“\Ó\ï¾-w¢¼—ò®­ó19M\Ì\ë=Wï³™ö¶¤t¦\İ\Ïo¿\í}ÿ¶yŸTœ\ïL¢À™\ä›fz­”–A´S	\ã0¿j¸\æ¼\Æ\Æ\Æ%$Œ#Œ\ZºEI¢\Ä\Æ\Æ\Ù\Æ\Æ\Æ\İ\"ŒS\ë	\ã<	\ã\àAC¯•\Ò2ˆv*a\æW\r×œW\Â8\Â8Â¸„„q„qA\ÃB·(	\ãB´‚8\Â8\Â8[\Â8\Â8Â¸[„qj=aœ\'a<h\èµRZ\ÑNmõ0ña•0±•$ŒCDDDDDDDDl%	\ã[I\Â8DDDDDDDD\ÄV’0±•$ŒCDDDDDDDDl%	\ã[I\Â8DDDDDDDD\ÄV’0±•$ŒCDDDDDDDDl%	\ã[I\Â8DDDDDDDD\ÄV’0±•$ŒCDDDDDDDDl%	\ã[I\Â8DDDDDDDD\ÄV’0±•$ŒCDDDDDDDDl%	\ã[I\Â8DDDDDDDD\ÄV²\ÕÃ¸\â\âbDDDDDDDDÄ‡\Òû\Æ\0\0\0\0\0\0\0\0<l\Ü\×0\î\Úõáˆˆˆˆˆˆˆˆˆ¼„qˆˆˆˆˆˆˆˆˆ-¬a\"\"\"\"\"\"\"\"b\ëA‡ˆˆˆ˜“¯IÁw>,\ïx\Çw¤\àp\Ø÷\áûg™Ü—CDDD\ÄC\Â8DDD|h\\\ÑUÃ°¿ó”	Y&\ÍU&\æ\ï\ÚÃ\æ…sºó5-Œ\ë!İ‚\ëó4\å\Íô½»¯\Ì!~c\ìk\Î<1û\ÜÏ„¡uUw‘\Û\r¯{İ‰rY\ß\Û\ëòm/U\İVYó‡Ö»\İ\ÃO\É7Ò¾.ˆˆˆ˜_=\ãñ\á\Õ\nx²\rb¼À(nşüµ‚KJi\áT\ä÷V°\æi\ÉıŒ*O\È2©ıxTV\Øó[aVl½…m7²Îƒ\áY`›v\ç˜\Úß0.t\î>ZA^2ü‹\nó¨a\"\"\">¤Z\áO õW¤^\ŞXA•ù[“\å\Ğ5%Œ³B4¯œM\ã\Ôd\Ù\í\é\Í	\ã¬m…–\ÙÒ·\î\äº•n¦L^X\ã\â\ê\Ì\ÙvW\Â8DDD¼?z\Æ!\"\"\âC¨>[`\Å\èF\áÁ˜j|Á€\'c fS\Â8«\Ílg´B°d=5+Œ+³û¡ ]wû‰\åS\ë3eI–-s=\Æ!\"\"bk\êA‡ˆˆˆv+¬\Ø0É§úD‡w©p!AP3Ã¸ Á *]«œ\Ém§›\Øÿl\Â8«\Ü\Í	\ã\ìPÍ›/¸¾,–KCı>Æ…-!a\"\"\"¶¦„qˆˆˆøpi?\á­\Í\"tC\Èe’!PD@•CH”24…o\×ş¾‡\Õ\Ú/P†Œ\Ûn\é–qAıfz(²\ßi\åp\ç\éú¨?Œ£e\"\"\"¶Q=\ãñ!\Ò\nr\n`¼\å¢Tx”fy¶x§\ß[å°·ÓŒ0.X\ÙÓ›\Ó2.M»\Ì!z\Ç)-ŒK\Î\\¢,qu\æ\ì\'ÏŒCDD\Äû¤a\"\"\">4&Ã—\\C)/|\n\rÚ¬e-¾|¦S™‚¶l\æ	ù\Ş\nÊ’\åib—\n»û•\Ï0.j\ätw\É\ÏvYìº·\Ê\\Ö\×\n\Ş\ã±5õ ŒCDDÄ‡\Ä-°L\ÈJy¡Mhğ\ä¿BLk\Ù\Õ\Âaœj…Qf¿|Ÿı&–ó‡Z\éß§¶™\n4-£Â¬´}jm7m\Öñ\Òc‘\\W ´ö\Í|Â·[ˆcz|ó¤a\"\"\"b¬n¨\Ó\Ü\ÖSQa\"\"\"\">z\Æ!\"\"\"\Æ\èuÕŒn½–\É.Ÿt‰DDDD|(õ ŒCDDDlAıƒ\Ä<;\rh=\ã[X\Â8DDDDDDDD\ÄÖƒ0\Z½î‚‰óôP~\Ä(\İü£•¶ö\à\r\íú\Êœ÷·M‡@\ê1R\Â8DD|h$Œ\ÃV•0®mIH\Ô:RÏˆˆˆ‘z\Æ!\"\"\"\"\"\"\"\"¶°„qˆˆ\íÁ\ÃO\É7´—¥×²eEWwZ …W\Ôô¤në…¨\ÑS#@ú[4ø§{­¢\ÕrúG“ô\ëk¥f–\Çş.¬uE¾ÊnvË¤\Ê\ç“ø\éõv\í\áû.®.’\Ç\Ô]&ù\Ù6\ãñ™\Çş\Î]wó\ê\Ë:N¾s×™n}ö­\'dzz¼úˆ9\æú\Ìn?\"\ÖQ—¡õn«e°\ë4`ğ|ğŒ.kğ¼\Ïöœ‹û\ÛğÖ™ıù–4xL­ï²ªkş„v\æ\é|\Î|<²?§\Â\Ë<Fj†ó*Y¦Ào^`z\Î\ç[^\ê\ÃZ\Ş5«ó3\ãz³9\'\ãõ•#\æ\Ø\Øûa\×arzDY£\Ò\ç\Éõ·#e\çP\ä1M-›^Ö:¹~H-\ë/j¿¬u¦¯\éF3ˆˆ˜®a\"b»2ıF#y“¸øš4ya¸tº¸¾\è¿	Š_\Æ\Ócb/ŸZ6ny\Ï\æ”!\İ\Ğe\Ò\ê-j›QÓƒ7oÁú÷×…}ü’\ÇÔ¾\n·‚ún¤\ìm\Ê\ã®;?õe­\ÛÛÂ¸¤iun­×ª‹°2g\Ük»a\ç]lF”Ã˜\á\ï+\ÌĞ²†\ÖK¶\ç\\LùB–1f:\ßS\åL\è/ƒg6\ÛöŒÚŸs<Ÿ3°òZÓ¼z	]Oªü\Éc”\ÍyU¦È²\Æ\Ôi\Ş\ë#İ°ó35\Í]O\Æõ†\ïC\Æ¯’ö\'m;!\ç’U7\ŞñIn\Ï÷»\à.\ë–!ô\ïÑ¶©¿¡urù©½ôy3–\Õ1¼ƒõrlc\Ï}DD\ÌU\Â8D\ÄveúF\ÔMLÆ››\ÖQ÷\Ñı!7A®™oR\Ëúç‹¾Q·9eH7|™\àP\Ô6#¦n°\â–\ë\Ö51o\Ú\r¤}#b\Ù·\ë­\ÃZŞú\n½\á*o\Ü~¤«\á7ôj°2\îGr\İ!\ß;\ß\Å\ÖiL9\ÒËœ\ÙÈ²¦•1\Ûs.¦|!\Ëdu¾Yó\'\rı\ÉfÛQûc²NÛˆ8Ÿ3ˆòú\ê>¦œÁc”v\Ìüóš:*S\Ôô¬Î·À÷M®t³ú=Ì¸\Şl\êÙ?`p?cÿ¬ıOÍ—*Cúù\æ|\×5q>·\ÌoG\ÓÎ¡n\æo\Ñ\ÛN Îi\Ë\ê~M`Õ…ó÷¯u\å•+¹\ÎÂ¸´e1M\Â8D\Äveú…|øvôô¤.¬£.\î£/ú£o22\ß(XËº7\æ&\Ã\ÜH=*—÷lN\Ò\r[&5Í«·¨m†O·\Ë\no]¾c”Z®\Û*÷F\Éı>4‰±l­\ãİ­«n7±Ofœ›\Ï\à\rrs\ë+ò˜E•7n?\Ò\ÎÕˆzß¼\ÖşYŸ}óª\ÖvC\×k6åˆ¾q\r\Z]Vûœğ?\çb\Ê²LVç›½_«¼º\Û\Çl¶\íµ?1\æx>g>\á\åõ“\ä¹²\àù›\ÍyU¦È²fw¾\å§>\Ò\r=?ƒûİ¤z¶¦Eı{\åš\Ë\ï\ç7\Æ>y^%\×c/kôß£kS~;r9‡’u™:÷ûaÿ\Í&–\ÍXVG»\îRõ•ª{]wb\ëÜ±\ç\Ï\âœI[\Óô ŒCDlW¦ß´†_`GOOš\á\Â:\ê\â>ú¢?ú†:µLPo\ÛşeMÙ\ï5z›A›S†t£—±\×µÍ°\éiÁ›¯À<öM½ÎŸ<¦öM_\è:Bô\ï\Ä6º­ò^\ÓoóV_ÁÔ¨ò\Æ\íGÚ¹š](¡óf³‘ód¼¡Ì¦\éF§T92ım¥>G™˜\Ï*_\Ğ\ä¾\åv¾ùWbö?ö» 1ûµl\çs\æ\ãV\Ş\Ô4SŸi\ç¡m iÏ«˜2%n\'¦Nó^é†Ÿ\ÉiY\ìSZ=§V¯¶©:6\Ç#ô7#5Oüz\Ã\æK˜ñøY\ë\ËxŒƒ\ær%\çM\Ôwb[©ã›œ/ù]j^ÿzúÿv½\és\Ü+ƒs\ä~l1=\ãÛ•©‹ğÄ…s{\ã¢n\ËZız‘ŸÍF\Â\æ”!]\ß2öˆ¯N£¶™>=½a7×©\å¼œÄ±ôº*\Ùó:6)Œ³\ÎS–ôr4¯¾ü7Œ¾ziµ0.Q\îœ÷\Ã*‡\Z<üfSğ¿¯0£\Ë\Z<\'²=\çb\Ê²L\Æó-\äE—9›m{F\íOŒ9Ï™‡µLÀd™’û²¸ó7ğ}rQeŠ,kö\ç[ó\ë#\İÔ±hÿ\æR\ÏNYR\å\Ì|\ì\ÓÏµ°úHK:-Û¿»Ş¼\Ù.›4›ß\\Î¡d]z\Ûw÷­«ó·i\Ï\ç|—MY“û\èû÷+U‡^y\ëòZXZó7\áœAD\Ät=\ãÛ•\é7­É‹ğ@\è~\ám™\é\Â:\íF aôEô\ru\æ…\à²\Ş\ç\Äü\Ù\Üh$lN\Ò\r.“úì˜¼ùK¿™I,‹u\ãªW®\ÔrÉ›úÀM^j\Ûş\ïBC\0\Ï\àñö>›u¥\ß\Ôæ»¾Re\Ù?5n?\Ò\ÎÕ°›ğ„\Éó>\Ëı82öÑó?zı~c\æ\Ëô÷bdY\Óş£\Îó˜s.r?²?\ß\ì\ã¦ÿ¸e[‡j\ÔşÄ˜\ãùœùx\äVWi\å£¬Î«¨2E–5¦ŒÁe¼\ÏM®t3ı-3®7X\ë³c\Ú\ß~\Ør¡Fım¤>§ş-t¦\ëO\r”½e~;²?‡\Ò>;ÿ½ú\Ê\æ\Ød\Æù\êÌ¿	\ç\"\"¦\ëA‡ˆØ»¹`¿À˜\é\Â:yC\îÿ>v¤Œ¾\É\È|£sƒ\â˜\ÕM ±9eH7l™\äş[\Û­“`ıE…M\Öô\ÄúRû`Ï—*‹c\èv\ândcwú\rd~\êË¾ö¶qn†\Ç	\Óo\"\ÓË«†•9\Ó~x\ßûÊ’mF”Ã˜\é\ï+\ÄĞ²†–%\ê<N)_\È2ñ\ç[Ôº¬\é7ù\Ñ\ÛöŒş»4\Çó9óñÈ²¼a\ë	9FYWQeŠ,kLó^\éfú[2f\\o\Ø>¤\ärQ“\ÖôD]‡œK\É29šmzóø÷#ø;“i³:\Æ\ÖüI\Ã\ê(l¹\ä|öö­ú³\æ\Í\æØ¤ÿª©õùöÃ®³Â¸d9|\Û@DD[\Â8D\Ä6n\ê\"\Û3ıB8}×¬n*\Ó\r½‰±\r½Ğ¾¡,Ÿc\âf\"şf<›„\Í)Cº\á\Ûõ\ß%¶\ãŸf\ë­;\â÷ÁZ\Ö\Ôkjü\åJM÷kj–Q7A±7RV\Üuç­¾¬›\ÌÔ¶­}ñ\é}RŸ¾ıŠ®\ïÜ{Ôº2kjz½%\Í\æ\ï+`dYÓi\Ôyœ]O©ı\Ëò|³ö\'xüS\å¶Ï­˜ºI3\ê|p\Ì\Óùœùx4·¼1\×QóE\íC\ä¾Å”1\ïõ\\G\Ä\ßwĞ¦\Ös\è\ïDÊ¦ü~\Úû\áû­\Ô\íF”\Ó^¦e;²8‡’eŒšú[Œ-\ët»n­\é}ğ÷`½ú·\Ô[6Y¨¿[DD4Y˜B‡ˆˆˆˆˆˆˆˆ\Ø\Âz\Æ!\"\"\"\"\"\"\"\"¶°„qˆˆˆˆˆˆˆˆˆ-¬a\"\"\"\"\"\"\"\"b\ëq_\Ã8\0\0\0\0\0\0\0\0€‡	\Â8\0\0\0\0\0\0\0\0€V‚0\0\0\0\0\0\0\0\0 •h{aÜ…ò\È;\Ş!\ïúƒrÙ¥y\\–?\Ğuö•î”¶Àå™˜ı\ì»Ó\0\0\0\0\Ğ\Ê\ìxÅ¾şò_+y\×*ö5Kôr\ŞuW\æ\ï™~¥\ç­;ó5\Ò\é«\ëz¥-]\á\0\0\0¤\Óv\Ã8ûBjg\ßÄ…š™–¸\ĞJ\\\Ùï³…0\0\0\0 \r÷z+Š¹Á–÷Ÿ¡¾\ë³ÀµT\Ìr¾\ë›À5^\"ds\×\á~—\ÈYÿI{\ä]+Z\ë\0\0\0h«´0.¯Z\Û\ã\0\0\0\0\Úá›ˆEÿ\'¢9_\à\æû.ö9˜y=!\ìwQa\\²\Å\Ş	¹†\0\0\0h{´\Ï0\Îú_RÿÅ™wa\×Wúšù‘œÉ¾ÿ-‘\Æe\îvñˆô}%1\Ï#3—.C\Â={{^nù’¦—!±\íu\0\0\0´\Z\î5‹w=\æ»>‹»Nñ/\İ2.\"Œ¹z\äö5R:º\rÓ¢.ô\Z\0\0\0 \í\Ñ>\Â8/\Ü\Òi\ïy^\à\å…]!˜w±—\Ê{ş\ÌÁ»ğs»Ixÿ#›\ê6¼x\\†.Ÿø\Îw‘º„q\0\0\0pŸ‰µ¼ë¬ˆk”¨\å’\×^ş\ï¼ÿğ¿†s¯…œùÓ®Õ¢ˆ,7\0\0\0@Û¢\í†qA\İ«´2wşDø\Ê\á˜?\èr\ß\Ûó¦ù/•ø0.m~wûZ\Ş\Äw	ƒ”Y_h\0\0\0´¾k\Z\ßõV\ØõQ\nû»\Äõ7_\Ô5TbşD/w^sıd¯ƒ0\0\0\0\ÚG\Ë8\ï‚,M3z—~g‡g!\á\ïû°‹\ÍlÂ¸t\Í\ÅkH\Ğ\è]\Ô\Æ\0\0@›\ÂúM¨\æÿ.\äw‡\×H\ÖuV\æÏº>‹ú\Ø(\ã\0\0\0 \ĞnÃ¸ğ²p-\íb\Ñ\Ï\Ü÷aaœ;­ia\\øE¦·Ş¼„q\0\0\0Ğ¦p¯¡ôÚ¤)a\\ß\é\×Y\Ñ\×IÖ¼\îòa&>oš}½H\0\0\0\í„v\Æ¿÷‡Xa-\İÓ’x‰ğ,-\\\\¦_4úÃ·dy¼Ï‘\Ë–K~Vôy\0\0\0Z’\Øk\ïúÉ½ş²¯\â–K\Ìv~=•¼³H»V‹‚0\0\0\0\Ú	\í/ŒS’X\Â\ÔÿÊ†…qöüMM\Õ÷?¸öÿØ†¬\Ï÷½o}Ş…§gj½„q\0\0\0p¿ñÂ³„\ë\ßõÿ\Ú(n9\ßwaÿa\ê\Z\Ú\ÊÎ0\0\0\04\Ú^\0\0\0\0\0\0\0\0ğ€B\0\0\0\0\0\0\0\0\ĞJ\Æ\0\0\0\0\0\0\0\0´„q\0\0\0\0\0\0\0\0\0­a\0\0\0\0\0\0\0\0@+A\0\0\0\0\0\0\0\0\ĞJ\Æ\0\0\0\0\0\0\0\0´„q\0\0\0\0\0\0\0\0\0­a\0\0\0\0\0\0\0\0@+\ÑöÂ¸3\ä‘w¼CŞ‘\æ#2\ã‚ÈWR\ïcñ\Öó\ÊwB4Y¯\Ó\Ç\é«\ëÿÁ¹\ì|º<óSÎ¾;\ß\æBÓ¶\0\0\0Ğ’ø¯u2²³¯¹J\Ø\×Y:[\Ü\í›{=d¯\ëò\ÈÌ¬J\0\0\0Ğª´\İ0.\"Dkjg–y¯\Æ\0\0\0\É!Œs¯»¼ğ+qm“M wYfü µ\ì—K \×_©k/w]öõ\×W\0\0\0\Ğiwa\\Ö´r\Ë8\0\0\0€‹\ì¯u\ÒşSÒ½\ËøŸ”\Ïk]—\Ín¦m3‡e\0\0\0\î\'\í¾eœw!æ™¼˜K[û¿¥Ş¼\Öú}\ëô–K^xú»;¤ş·6¦eœ{1ø\È\ÌÖ²\Îúwº\ë6¦ş\××¿O„|\0\0\0p°¯«’\×1¡\×D}e†u\íÆ™\ë2¯ûj\àš\Éş.t9‡\Èòx\ëôt®\ëóFÿçª½.\Õ\Úy\×\\‡\0\0@Ò¾Ã¸À\\h¨f\Ö\ãqn\0¸\ĞK-\ç]dzA™¿\ë„™Ã¸\är\ÉFw½\Şgw	\ã\0\0\0\à¾¸K†W\î5I\èõŠ£¹ö‰Z\Öw­\ã\Ì;Ó/\ìúI±×“¡<Áe\Û\è+}\İm\Ùß¥mÇ½K\\®÷|\ß\0\0\0äŸ¶\Æõ]\Ìy‚	’gÆ0.p1¼\èò.}\Ëû°ÿ\'\ØÑ¬\'‹0\Î\Û^pû\Ïaû\0\0\0Ğš¤V¾kôÿ,Œ\n¸\×@}ó\'¯½\ìk©\Ô5O\Ú:¬k¤øò¤/\ë]Ï¥ÿgk l3\Ø\Ó\Ü÷ºn®\Ç\0\0\0 x Z\Æy-\Î|\ß\Ù\ëñŞ§i/—2õ?¡©‹33\ÍW¶\Ìa\\r=Á}\n|ö•\0\0\0\à>~=b]\ë¯e\Ò\Ã2w~»u™7¿/s¯™‚aœ.[\çSpû‰\Ï\Öü\Éë±¥¾\åx\×x^–¡û\0\0\0\Úu¼Hó}¶×“\Õ:õ¢+pa\\\Î÷™0\0\0\0\Ò\Ã5ûZ\Çİ£¤\Ïo²é´°k¤\ägk¹øò„|\Üfòz\ì\Õ\n\Î\Ãn\çÇ».L^\0\0\0\ä™ Œs/º’y!aœwÁ²ù\Â0û;\ï½{¡–¼83ËµT—~±\0\0\0\Ğ\â®O¼kÿuP\àz\Å1\ì\Ú\ÇÌ›¼–ñ®\ÃtYo9o=şP,±ğ\ëµ`y\Ò\Â7¯L!\×WQÁ]¢¼Ák¯\è \0\0\0 ´\ë0.yñ\ä\Ú÷\ë¢,m=Ş… «u\å_gø\Å[b™¾\Ò7yq\æ¿p#Œ\0\0€v{\r“¸	¦j_KùGS5\ß\Ú\×LV«2oz°õ[j½öõ\\\êz\Ì[k¹,\Ö\å/Ÿ\Ì\ì\åTZ\Å\0\0@\Ë\ÑöÂ¸ƒ3\0\0\0\0h}|ÿ\Ù*ğ–\0\0\0ğ`\ĞN\Ã8ş·\0\0\0\à~B\0\0\0\Ğ4\ÚO\çu\ítLvs\0\0\0\0€ûa\0\0\0@\Óhw-\ã\0\0\0\0\0\0\0\0\0\Ú+„q\0\0\0\0\0\0\0\0\0­a\0\0\0\0\0\0\0\0@+q_Ã¸k×‡#\"\"\"\"\"\"\"\">ğz\Æ!\"\"\Æxd\ìw\ä\ïø°t[¥Ÿ{H7\çı;¾ó”	™1_r\Ş!b~õÿøc±µô ŒCDDŒ‘Pï‡œwˆ˜_	\ãÛ‚„qˆˆˆˆˆˆˆˆˆ-¬a\"¢O÷m»ö0\ßyÿ‹üw<*+¬e¢¦§Y§§\İ\ÒeÕ£\áó8~c\ìk\Î<¯IÁw\Üin™\Ô\ÔöıÓ¯~J¾\áM÷¶¬±·÷½^Õ·\î\à~[\åt´ÿ\×=YVo[‘ûü)8œZ.eX]·}s\İ__\İoMÃ¾Çœ‰\ã¾N¿Ş¾\Û\ë²\ë\Î^65}EWoš­·®ğó,lz\èz\Üı‹</ß™}\r;Wõ—K\Íòo\Ï6òœL—ôıNÿÛ·\çñO{ÿÓ—óŸnbÿSûe¯;z›Q\çG\ÂøòDœ\æ˜Fÿw\î6C\ë\Ö+Ot“û8Œ\çNJ]Wx}E\Õcúz\Ó\ë%ı¥\×k¤9ş\îÅKÆˆ:W;Y—\Í>^3ı$Ë›Xgú\ßS@g\Ù\ĞyÂ¶P\Ï\Éì–µqğ\ØG\Ôoğo1¾\ë,K\Ä6R†Ÿ\Ù\Öq6\Ç\Ë^¯\Ñ>‚ó\Ø\ßş.Ã‡ÿ\\ŒøMQ#\×\åÿL›,Ox=!\"¶%=\ãCµ.İ‹Ã¬/\n\Ó»\áK_\æ‹Ée¬xûb7´Liç¾/{»‹\å\ÛñÚ©2$—ó.\ìC÷9¬¾2\Ï\ëÔ¸:®\'|3Û 9\ì{\Ä~&oÖ’ó…\ìG\è|\Ö\ÍV\Èş¦\İ8\Ú\ÇÔ/Qğ\íEN·\ÎAûø\Ï»ş¬28\Æï»šK\r¯\ãXCÏ³p£\Ïÿ>¿\Ït^eú>t¿Òµ¥\ï¼wô\×l¶\çZ/crN\Å.\ã+G Î¬cš</\åN3ò\ØE\Ñ\çGªNÂ¿O\Z¹\ÍÃ–±\ê\Ëü²=—\Â\ê8\æxF‡\Ğı	«§\èºó\Öar¿\Âş-2F®kbö7\ëe­2~W\ÂŸü\ÇÇ®ÿş[e‹(K\ÒÎ©\ì\ë8óñJ\Ó:\'\Ã\Ï/\×\ä±\n?~\É2&\ë-\Ã|V]…MC!\"\Şo=\ãCM¿X\Ìú¢0\Íğ‹\à\är\ŞjÆ‹\É`™¬›\0\ë‚6\îB?z›õX\ëğM7úo>Œ¾›“T9¿\ÑõQ³o¿³\Ş\ç\\n$’\ë\Ö\Èû›ù\Ø\Ía\ß#÷\ÉZ‡™²j\Ø~û\ê3d¹´zµt¾\ë·½¨\éVİ…\ß\ä&L\îc\à\Øû)Œ\Ë\\§AcÎ›(}uò½e\Ôù\Üw5>\0ğ›\éû´ı²Aú~Z\Ç-iTy£¶\çZ/Áu§¾KË¸e|\çWjŸº9\ÇÙ¼ºu\Öúa\\jzÒ¨s,‡ó%i†º´Ë’\é\\Š«›N=FÏ¨\ãµ?i¿Qu—2Yö\ï<*\İt[^FşE®kbö7\ËeS\çmúº\ÂŸ‚çŠ·\\ğo\ÃZ_DY’\æpNe_Ç™Wš\Ér¸z\Ç\Ä*¿==ú8\Ï\í\è\ã<Ÿ£Ö™6½)‡ˆˆ÷I\Â8D\ÄP\Ó/³¾(L3\ì\"Øº€÷.F3^L\Úez*òb6µò·a}\î\ÖU÷#±ŒÙ§¨m\Ø\ëX¼\àWıŞ‰‹kk½:¿w\Ã¹Ï‹÷´\Ë\È›ş÷7ó±\ršÃ¾\Ç\Üù\ç\r\Ù{š\ï\ÆĞ¾™ô´\Ë¸q,›0l{1\Ó#\êß®»nZ&w[Z¾oŒ}*tß“e÷•+—:\rÚœĞs-`øùá¯§\ä>Yu¾\\\ÊL\ßû÷+¼.“úOj¹œÃŒ\Ğz±÷\Õ9\Î\Îk¢ºg¾±™–±\Ï/»l\î<\Ö9“>ˆ‘\Ç.\ê<ˆ˜n¯\'ô7\Î2‡ó%i\è2ae\É\å\\J\Z\î„\Zq\"÷\'5\êÛŸ\íy&Ë¦\Ç\Ñ]¯)_\ä\ïyÔ¹\áš\ÅoM\äù›Å²\ÖşûdÕƒûŸ©}ŒXgDY’\æpNe_Ç™WšV9²ù÷2\î\ï\Ô_w1\Ç9¹Mk[\Ögo¾´\é9\Ô\"\âıÖƒ01\Ôô‹Å¬/\n\ÓL]§k-“¼˜L7qÁn•)\í»”±\å	^ û.`\åônØ“7\Äú½uÁœù¢:5\Íw\Ó\æ|Ÿ,›w3yXo\ì…vª~ıuR¶÷7U—A\ÃÊ¡\æ°\ï17Gşch•+Í°rø\çO»Ù‹<Ï¼ó%n{®^}ªY\Ü\ä&¹\ä”\Õ©º\×\ï\í}¿\ÙÍ¥Nƒ¦¶“¦½¶‘õ“^\×ş\ã\äN\ÖGÈ¹ºœe\êû \Ş:\Âö+½|şu%¶VÇ™\Êcı´\Î\ïx8\ë]\á¾z\á@\Ü2©m¤ö\ÉÔ›[z\Ì\ãnò}†nO\r?ß¢¦g¨‘ÛŒ1l™\ä´\ÜÎ¥¸¿Wÿ¾Ø¯\Èı	ÎŸùo+y^¹\çZ¢^ıK\îW¦m\Ø\ß9\ëÃı÷S—qË†m\Û1ü÷\É™yœ\å½\×Ğ¿­ˆ²$\Í\áœÊ¾3¯4}\åH,ı\ïeü±ó—3f\ŞÀ¾‡ÖŸc\Úô\êñ~\ëA‡ˆjú\Åb\Ö…i\Ú\ë=R\ëuô]ˆg¼˜´Ê¤´Qó\'§‡”\'¸L\àsòf\Ã,rÁr‘¾ÿ©å¼›Á\Ä<\Şÿ®;\ßy73‘ûXGÚ…e\äMHùs\Ü\ß\Ì\Ç6hû¤–ñ\æõ—+U\æô\åÂ—Oÿ>e\à\Í\ìwH½#¦GÔ¿¿\î¬eM™\Â÷=¹o¾r\çR§A£\ë8\Ò\Ès2]ÿ>&¦¥\ïCzÂ–³\Íô½\ï¸9\Ç\"zşıÙ¿\Ì\Ûs­—À9af{\Ù,“\ÜFª¬\Şy”¨K·ee\Úü!F»¨ó dzV¿q–9œ/I“\Ëõ¯?›s)hª¬j\\™\"C\äşÿs(‹W~·n½dq\Û=\ÖYı\ÖXó\Ûf\\V\Ë¿O\á¿Oe¬c«\Û	-[DY’\æpNe_Ç™Wšr$÷\ß\ìKú±J~r\ìüusœ“\ÛL\ÔWÔ±M›C!\"\Şo=\ãC\r¹X\\$zóF],¦^§>û.3^L\Ëd}¶·s¡Ÿv\áÜ¦÷9¸~·Rû\Znb{©\åRıö>;Fm\ß\Ì\ë˜\ÜozÌD\Äq‰?†¹\îoÔ±\ršÃ¾G\îSpÁrYŸ\Ãn\æÒ³§³¿aógw£1=\ãMn¢\î¼Ï‰}\n\ß÷ğ›\İ`}è´¨:\r\Zs\ŞDuN†˜~~\Ê\Ô-g¦ó*\Ó÷\éûem×®‹ä¾„\ë\ÕI\æ\í9†\ÖKÔ¹øûŠ]Æ›Ú‡\äyd[\éó‡y\ì\Â\Î!5ıüH\ÕE¸i?9œ/I³Z&›s\ÉÙ¯®!\ç~Ì¿)#CT\ÙrùMvMÖ¥uN¦{]Q\ç†k–¿5¾e<sü\nÎ§†ÿ>\ëÁû\\ŸU¶L\Ç\'‡s*û:\Î|¼\Ò–\Ãû\ìû[÷>\Ç‡\à\ß_ôqN–İ›,ƒi\ÛÊ¡\Î\ï·„qˆˆa†],§İŒ$L»xL3\ä\"\ØZö“!°öz¬‹ñĞ‹\â°õ\Çn3¸½¨hkºwƒ\è~ö]ô\'·\å\ÍgO³·q\Ó6o\ÜMM\Øw9\ío\Ü\ÍE”9\ì{\Ä~¦\ßğ…\Õ{jÙ°}	»A3z\åğ¿`9Â¶§FL8ñu—\í¾«¹\ÔiĞˆs)\Î\Øs\Ä6¤>¢–µÊªu”\é¼\Ê|Ş…\ì—]ny\Â\ëÓš\î®?«ó<tß¢\Î×œ–I\íSøyœ?Ä¨úwıN»\ŞüQe³¦G\Õerz†:QcÊ™q\ät­\'o[şy²:Q\å\İn\Ø\ßQæ¿­d9|u–Z.}ÿ3\Ô]“~k\\³^\Ö*C |\áOñõZ¶ˆ²$\Í\æüpÍ¾3¯4c\Ëv¬Â_¶#ñuq,¼\ås¨3D\Äû­a\"¢§u“\ã™v¡2\Ñw!4\â\"Ø·.\ç\â3jİ‰\å2]À:\Ú\å°.øC¿Wc/`Û³\Ê¬—Tt=©\åüı\Öú¼rD\îs\ÔM•}“2o\Èú|e\Íei¾º\rze­#ã¾‡\îKBÿº\Ó\Ëeô_ÿş„ß %L\Ş\Äø´—\Ø^\Èô\Ğu¹\Û½±J\Zø›;WõK®\ã\ÈebÏ‘õ%\ë(®<\Ör\Îü™Î«\Ì\ç] ş\Ü\íøG‡_&\ë\Ô_o¿\åø\íYûekö;ıœß[—!Ÿ©zN\í“ÿü÷×oıA³ıû˜\Ü^ ^\ì\åSuôMù\ÕWü\Ëû·WŞ°2¸Æ–S\Íş\\ŠúÛ‰­«¸\ãú\Zü;¶\Ê\Ô-s²\Îûª\Ë\àşGŸOMÿ­iÂ²Á\ßÖµq¿O©zHû;s®?®,\É\å2)³¯\ã\Ì\Ç\Ë^¯1¶\Ñ\Ç*µí”‘¿İ±ó¹F“v¹#\ÏÛˆu\"\"\ŞG=\ãó¡\nd\nñ¡Ôƒ01&ZenÑ„ˆˆˆ§„qˆˆˆˆˆ\Í\Ö\í~G«8DDDŒĞƒ0±…õ¸¯a\0\0\0\0\0\0\0\0À\Ãa\0\0\0\0\0\0\0\0@+q\ß\Â8DDDDDDDDÄ‡\ÑV\ãV	\ã[I\Â8DDDDDDDD\ÄV’0±•$ŒCDDDDDDDDl%	\ã[I\Â8DDDDDDDD\ÄV’0±•$ŒCDDDDDDDDl%	\ã[I\Â8DDDDDDDD\ÄV’0±•$ŒCDDDDDDDDl%	\ã[I\Â8DDDDDDDD\ÄV’0±•$ŒCDDDDDDDDl%	\ã[\Éû\Æ}¶S\'DDDDDDDDÄ‡\ÎûÆ…MGDDDDDDDD|P%ŒCDDDDDDDDl%	\ãñ¡·¬¬pÃ;\"\"\"\âığ¾‡q\0\0\0\0­\Å\Ûo¿ôŞ½{r÷\î]|\È\Ô\ãnŸ\0\0\0\0­…‰\Æ\0\0À¾İ¨®–/\É\î§dı\á#²²ğ ,\ÛWˆ¸zœõx\ëq\×\ã¯\ç\Î\0\0\0´4v&F\0\0\0$^w\ëömÀ¬?|T\Ö>\"ûÏœ—³×®KEmÜºsGˆblôø\êq\Ö\ã­\Ç]¿z>\èy¡\ç¡\0\0\0´4v&F\0\0\0^w\ç\Î¶h«¨½§\ÏÈµªjóı{oKÃ»R{ûT74J•z\Ë}\åóù¹\Úù¬\Ç[»E\Ï=/ôü\ĞóD\ÏB9\0\0\0h)\ìLŒ0\0\0\0¼ \îzU•l>Z,;Oœ2-¢\î\Ş{Û„1u·¤¼Vm\àõ!~\Õó@\Ï=/ôü\Ø\áœ\'z¾\èyC \0\0\0-‰\Æ\0\0À(ú°sW®šç„º|U\î9Ó´UÔµ\Ú¹V\ã\È+¯W=?ô<\ÑóE\Ï=ô<\"\0\0€|bgb„q\0\0\0\Ğ\î\Ñ\àD»¹tYV<lº j—D\r[®\Ö$´\ßó™\Ïög}o\Î\ç¼\ÑóG\Ï#=Ÿ\ä\0\0\0 _Ø™a\0\0\0´k¼qg/”Éª\íû¤²¶Ş´vºRÓ°\Ú}\å3Ÿ3|\ÖóF\Ï=ô|¢…\0\0\0\ä;#Œ\0\0€v‹\Ä]»Q!K7í’«Ur³¡Q.W×›p…W^s}\ÕóG\Ï#=Ÿô¼\"\0\0€|`gb„q\0\0\0\ĞnÑ‡\íß¾}[6\î=,\'/”™‘35PAlz\éù¤ç•_z\0\0\04;#Œ\0\0€v‰¶V\Ò\çz;}N¶*6£c–U\ÕKYµ#¯¼6óU\Ï\'=¯ôü\âùq\0\0\0\Ğ\\\ìLŒ0\0\0\0\Ú%\ÚZ©¶®NVl\İ#\×n\ÖÈ¥ªzÄ¼ªç•_z\Ñ:\0\0\0šƒ‰\Æ\0\0@»C[)566Ê±\Óge×‘“r½ö–\\¬ª—‹7\ëx\å5o¯z^\éù¥ç™o´\0\0€¦bgb„q\0\0\0\Ğ\î\ĞVJ·nİ’u»\È\ÅòJ¹p³±E\ÔóK\Ï3=\ßh\0\0\0M\Å\Î\Ä\ã\0\0\0 ]\á=+\îòµrY»ó€”\×İ’\Ò\Ê:)½\éx¿_O/‘N]{\Ë#ƒ÷„|Ÿ\áuı\äÄ²¼¾Dd1\äk3\ËÁk\êU\Ï/=\Ïô|\ã\Ùq\0\0\0\ĞT\ìLŒ0\0\0\0\Ú\Z†\è—GN‘}\ÇJ\ä|e]Û±dQ2²\'\äû¦Â¸Er \äû¬mf9Ğ¯gz¾\éyG\0\0\0MÁ\Î\Ä\ã\0\0\0 ]\áuQ\İ~\àˆœ¸pÅ„%\ç*j\Û\Æ\ëi>\ßY™şººM\Ú\éû>Æ…/Ÿ\ÅkV\å\à5\ÛW=\Ïô|£«*\0\0\04;#Œ\0\0€v\Åİ»w¥¾¾^\Ö\î,”³\å•r¶¢¶\íh…`ƒ÷„|o,‘™^7y‡\ï»uVWhM\ÏÙ¬ÊY\ëœgz¾\éy§\ç\0\0\0@®Ø™a\0\0\0´´‹ †!µµµ²b\ë)­¨1a\É749s\Ã}½_Ÿ!˜~¿v’°©“Ö¤Z\Åù*\ÓOùÃ¸ör\î÷©\í	Y\Ï$Y\ã}o—cùbyÖo\Ò\Îdy\×x\Ûx}±\ì\×\åœ\å÷/\ê\Îk­Ï\ß\Û~r¹‹eº¯œ“d­7ÿ©Àv=­\í›õ…\Î\ç®\'bû­ıY\Ï3=\ßô¼\Óó®ª\0\0\0+v&F\0\0\0\í\rAô!ú555²t\Ó.Ó…P\rOÌ«\çıúl‡`»Ï»&¥¦\É;\ä\Â\Íj)­:\åkw¡ª\ÊXZi…qºün\Íûúb\Ùg¶·S™y†\È\Ì3‰e®\â.—\Ğ\ìrh°wP·±w¢;Oo¤es\æóµ\Ä3ë®•\Â\åŞº&\Ê:wZp\Ó\ËY•\êb;\Ğ)§Î¯eğ¶m\Ü!C\ÜeL §\ëJ\ÖOj_óY\ÛV³­ÿú¬ç™oz\Ş1ˆ\0\0\04;#Œ\0\0€vƒ\ÆUWW›p¤\äFcm\Ûyj‘¦¡\Ô\Íjw¾™a…qöòv8v R§WKa2h›(kùöz-\×4@«L,w\Î\Z°ağ.9†ì­–sºş\ÊT\ÖiyI\Úö4Œ\Órø\Ã8w¿¯\éå¬‘ó{Ra\ß\à]º½j¹P¥\Ûö–«ö=o¯3}µ÷Y·\å®G\ç+­ª’ó!Û½_¯gœW=\ßô¼#Œ\0\0€¦`gb„q\0\0\0\Ğn†q§o\Ô\È\é\ëm\å\Õn‘–t¢¬¯ª–³\ÉùNû\Â8{ùµVXµß¾\ß\n\Ç\Ö\Ş(‰\è\æšrğng9;\Ô\Ïfı;d°;­\Ór\çš.«\í\ér\Şò©×°\åÒ¶©Ó£ºªºË¥‚?\ÛI²*b»÷ó•0\0\0\0šƒ‰\Æ\0\0@»Á\ãVl\Ùóÿ·w\ï;r\\w~ÀJ\'¯\ÂG\Ø\İÿ¨WH‚d©ğ:»H 0@ÀXk9„\×ñ\Êòeu\ãE)R”,Ù².¦\è‹d+TúœªS}n\Õ\Õ=3l\Î?_\àƒQW\×\åÔ©\Ó\Ã:?uOwû\åpÿó?œ÷{Å¸¿ûi¶^YŒË·¯‹\\aYQË·İ¬³ı\èÖ‡7\Ûe\í…±qÿe1n¿\ã¥mK½\í\êcş\ì{\éoÏ…w\çm\Ë\ß¶{ÿ\Ë\Íò\ì\ã³[;üı½ò˜\ÏRga¼)Æ‰ˆˆ\ÈI“\×\Ä\ãDDD\ä\Â$\ã\Â\ß\î\n\ßny\ë\ãÏ†{Ÿıa¸÷y\æY>\Î\nR¡\05Ÿ6ş\ãO\Óúe1.\ß>/rırZöË¢8V~lõq\Û\í£ğ¸*ŒÏ•Å¸°lıx\Óş¦\ç¢\Í\ãb»ôü\ÏRQ\í¿ÿı½\Ã?dE\Ã7\ëôw\ïqVL\Ì\nss»{\çw\ä\Çaœ…ñ\æoÆ‰ˆˆ\ÈI“\×\Ä\ãDDD\ä\Â$\ãÂ·Zş\ä_o¯?ø(L\Şı\ì÷\ã\Ïgú¸*‚½ÿeö¥Wÿnø~\\ÿ÷EQ\êµlûº\È–Å±\Í\ã‡ù>¿ójvü\Ãwÿ\ÃXô«\Û1>_\ã\ÂñòwÁı \ï\Õ\é\Ë!\Æe\áx½ó­‹j\ï~ö\Şğİ¬Àø\èw\Ù9\Æ}‡\í\ÓOlL\ç÷ı\ïL\íöÿZÖ>\Ş¯>ş±‡q\Æ[wŠq\"\"\"r’\ä51\Å8¹0	Eû·şô§?\ro½soø—›÷‡»Ÿışü(Š`aÙ“\áƒ\âc˜\ßşq³^Y¤şvø\î»e‘\î\Ó>Q\ã\â>ó|V\âq›ve1.,{ğ8û¶\Ö\è;\ÃË¿0bjCm[h«|7|cì“¸\Îû_¶ûş\Ï\Õùu÷³y.|üöı\ìx\ÏZga¼…qÆŸbœˆˆˆš¼&¦\'\"\"\"*\ß~û\íğõ\×_ü\ê\ã\áŸ~úz,–¼ó\éX4y\æ?¿x¿	4|\äòƒ\Ç\Óòüc˜S‘\éOÇ‚Z¾<¼›\ìaøj\Ó\ã\Ó~d\Û?Ìÿ\ŞÚ´<\Ûk\ÇT\Ä\Ë>\Ü,Kûy4-K-/ÿùƒ¬¨Vüİº©—Ö«÷ıAu~ùù\æ\Ş[8\î³ú\ÆYoaÜ…ñ\'\"\"\"rhòš˜bœˆˆˆ\\¨„b\È7\ß|3<~üxøÁ«›˜GŸÄ¢Ipg\âñ\Ó}œ\ã~\Şyş2=\ã+Œ³0\ŞÂ¸SŒ‘“$¯‰)Æ‰ˆˆÈ…Jú»q\á›-ß¼ó\îğ\Ïo\Ş\îüöI,œÜ~züt\×Å¸³\Şÿyz\ÆWg¾IUDDDN“¼&¦\'\"\"\"*\é\ï\Æ}õ\ÕW\Ão?ıtø\Çÿ|x\ã\ÃOc\á„\ã\È?^z¿óüe\ÆU_aœ…ñ\æ\ïÅ‰ˆˆ\ÈI“\×\Ä\ãDDD\ä\Â%}TõÉ“\'\Ã·\î7şõöp\ë·O†[Ÿlø\é\çı\ã*Œ¯0\Î|DUDDDN“¼&¦\'\"\"\".\é\İq\á\Û-?û\ì³á‡¯½1¼z÷\Ñpó“\'p&\Âx\n\ã*Œ/ß¢*\"\"\"§M^SŒ‘™ü\İq}8|\ïG¯\r¿xø›\á\íOoÿ\æK?ı<ñ\Ï0\Âx\n\ãÊ»\âDDD\ä,’\×\Ä\ãDDD\äB&½;\îë¯¿~÷»\ß\r7\ï\Ş¾ÿ“_?ô\Û\á­\ß|	\'\ÆOGa<…qÆ—wÅ‰ˆˆ\Èi“\×\Ä\ãDDD\ä\Â&H\Â7\\†~şù\ç\Ã·\ßş\áÿ¾:ü\äşÇ±°ò\æ¯\Ç‹Ÿ~\îó3Œ›0~\Â8\n\ã)Œ+ß *\"\"\"g‘¼&¦\'\"\"\":\á\ãƒù\Ë_†?şñ±€ò‹\Ûw‡\ïüÓ‡\Şz0¼ñ\ë/£Pl	<öx\éq/aÜ„ñ\ÆQOa\\ùxªˆˆˆœEòš˜bœˆˆˆ\\ø\Ô¹w\Ş{8ü\Ïÿlø_?}sxõ\á\'\Ã?E—×§Ÿ{œ‡ñ\ÆI/a\Ü(Ä‰ˆˆ\È\ÓH^SŒ‘Ÿğ1Â¼ ş\ÖW¸\×øñ7‡ÿú\ÊO†ÿıó›\Ãÿ»ÿQ,¾@\ÆCa|„q\ÆK7y!\Î\ÇSEDDä¬’\×\Ä\ãDDD\ä\Ò$P\Â\ßøúê«¯†/¿ürøô\ÓO‡õ«XlyùG¯\r/ÿóÏ†WŞ¼;üò\áG\Ã\İ\ß|1<úü\Ã\ÇO¾\Úú2ûo/\Í\ãG_ü!^\ï_>ø(^ÿ0\Âx\ã\"Œ0N\Âx	\ã&Œ\ïˆ‘³N^SŒ‘K•ğn¦ğ\í—\ß|óM|—\Ó\ãÇc±\å×¿şõpûş{Ã_{øŞ¿ürø?zmøûş$ş0.·p\Ãõ\×=\\ÿ0\Âx\ã\"Œ0N\Âxñ­©\"\"\"ò´’\×\Ä\ãDDD\ä\Ò%}l5¼\Ë\é\ÏşsüV\Ì\'O_|ñE,À|ò\É\'±óñ\Ç}ô—\\¸\Î\áz‡\ë®a<„q\ÆGz7œBœˆˆˆ<­\ä5±gZŒ\0xšò‚Û‡~8<zôhxøğ\áğ\Ş{\ï\r÷\ï\ß\î\İ\Û\Ü×¼û.—\\¸\Î\áz‡\ë®a<ä…º\Şø\08kÏ´\0pTó7Ã¿Oşú¯·şê¯†Ç¥®oq½§1\ÆCwœ\0\0<eÏ¤\0ğ¬„wAñ|\ë\0€cQŒ\0\0\0€#yª\Å8\0\0\0\0 ôTŠq\"\"\"\"\"\"\"\"\"\ÒF1NDDDDDDDD\äHQŒ9R\ãDDDDDDDDD\Å8‘#E1NDDDDDDDD\äHQŒ9R\ãDDDDDDDDD\Å8‘#E1NDDDDDDDD\äHQŒ9R\ãDDDDDDDDD\Å8‘#E1NDDDDDDDD\äHQŒ9R\ãDDDDDDDDD\Å8‘#E1NDDDDDDDD\äHQŒ9R\ãDDDDDDDDD\Å8‘#E1NDDDDDDDD\äHQŒ9RJ1.ü\0\0\0\0ZŠq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$\çºw\ã¥+\Ã/¼\Ğu\å¥\İm\ë\Ã\Õ\Íq¯¾\Ü{nO¯\\®¼pe¸öJZvc¸şòö<®¿¸9·¯ÏO\æ\Æp\íJ\Õ_W®\r7º\ëv\Ä6–ÛŸ\êœ\Ï\Èa}³ßµºñòõ\İıR÷E§c»\æu®×«\ç\ë1Ü\Û\êzr­‚—¯n¶kU\ã\íl\Æ\×(\×\Şm-¯\Ça\Ûj\é\Úoûùh¿;Šş?\ä÷\Çü®9@9†;Âµj~w\'cm®\ÆùYı}\ìÕ§\íN£x]5\×\ëiü[S+q&\Î`Üµ¿o®o\ÚY®³fõ\ß\n\0\08\Ğù/\Æõ&-ñ½š¬fE‰§3\Ñ8\ë	òX8\Ó\Â@\ìƒvŸ±÷hû8¬&>S_¿øy\Z\ë\×jµ \Ôc±²m\Æ~\İ\ÂÖO\í\Êû²\Üf*2v(\Æ\íz~µ?N¥¼\í±²\×\ÂZ›Wõ®}*\Ä-ô\Ó\Ór\êsyy›q…ë±§óoÂ\ÎSŸN\ËÎ¾?\Úcœ‰3\ï»\Ãÿº¿\0x^]\Ìb\Ü\Æñ\'W‡\ß\Ä\ïvÆ“—|\Ò2MP\Çwa\ä\ËvLjbQg\áù]ÏK\ë\×jm‚\Õ}¾\è\Ã\Ş1òeı\ë[\ì·wMÖ®S\í4Å¸£)û\ê\éNn\ë\ë2f]ˆ\ÎMÿ\à‚µyq,U\ç¡§7Zÿ·¡öt_\0ğ¼º<Å¸\é]aI>)ˆûyñ\Ú4)ŸKû¾ö“¶‹ûo\ÖÓ²\íMûtÿR˜ô\Åve\ÏE¬yb‘\n“\é\ësÚ¹¯JXw<\ç\Ğ\Îl½\Ğ/\Óş\Ç~\èOÀšş\\³\Ö\ßu\ß\Î\×q:÷\êXùñ\Çs¹6_‡\Ğ\ÇMûb_\Ï\Çu\âuI\ç½ûZ\Åö\ÍË—û´‘O&‰\Û\ëP.OR\ßÄ¾\è\Ò\Æş\Ù{²x@1n­›\ë_]\ãüù\â<¢jLm*\'À‡m»±£­üXi¿ıS\ïwc{\í\Ò~ÆŸ\íó£Ø§\Ùóı\×{¾¿ğ\ßõùnÏ—ı5^·\í\ï¯ ¶£¸~õX\\\é\Ó%\ãº=—\Í¿”úo\Úw=‚\ìZ¥ñWôY1‚\Ã\Ú=¾–\×Ï­×‡»\Ç\Ñ\Æ\Îñq€}š\í­=Ó¸Ø¶eü\Ù}]\ÍÇ¬úsz~Ÿş(®S\Ô9‡¨Œø\\Õ‡«ıWõIù{}lSıoCZ¶©Û¹í—²ÿ\æó\İ1n\Çñ•–/pØ¸]:\åşª÷¿5o;\íwû\\\Ù\Ş\æ˜ÿ)«n\çxœ\í\ï—êœ›e½vm÷û¯º÷\n\Ë\Ëv»ú\0\àrº˜Å¸é†µ˜„7•\ãMwºñK7\ÔùMkZ6\ß\ì\Î7\äÕ\äü8\İ\ÈgÇ‰\í\Ø\ŞD¶\ínTÓ²\âF6»\éÖ7¨ù$`×¾\n\á¹i¿¡MK“ºpü\Å\íË¶\ì2öKvó<õ]\İ\ß\ÛvLm/&8\íõ*\'V\å\Íy\Ş7õõ\İ^›´\ÍI®Õº¢\İqù9Œ\Êv\Ö:ıĞ´\á°k±Ô¨š8m«ú£n[½m}Ê¶\××£¾Æ§\Øv¥­ôüt>{öM07-÷Sl¿:†¦c¦e\Å1v·;^›ªO\Ê\×C¶mlG¾~û\å\ë±C§_\Ú\åS\ß\ç\Ş9¿©‹\çÑ´ó$\í\Ú2É·Í­»²:>\Ğ\ëÓµ\×_£~>\ï\í9\ã±8\æ¸n~®kı±:¶\í1\Úk·\Ò\ç\Íó\é\Únûil÷J¿\í|û¬\Ï{ûx£\Z·m_\Ô\ÚójÏ½Ô\Ç\áı÷1·k½\ÚcvöŸ›Ş¸­–\Å}cv\ÜgZ6SÙ¿m®-\0€\Ë\éü\ãÂ]\Çö\æn¼‘+n¦ƒx#:\Ş\ØönŒ\Ûe\íd\"\ßG÷¦}£½-7ûLö\İW!´mjghó\â>²õ\n}\Ø\Õé§¼m½şnoò³\ãı\\O2²eù\r~\İ\ÅÄ£3É¨®\ßr_.ˆû_ns²\ë\Z\Æ\ç²múm\è÷ï¢…vD;&Ná¿›c\ä\ëı\Ù*\Ú\Ö\İy;ú~mÛ•v´\Æc\Å\ßW®\Äq\Ö\îA\Ñ_\ëc¨§8·\Îşz\Û\ÆmŠkX®¯[q\í¾»ùòJ5fú\Ë{}Ó³v\å˜<M»\Ç>\Ü\ì+“÷\Ï\ê±÷±\Ô7k:Û…c7\ç´kÿñuP½\Î\ãú\Ûó\\{m¤?Šı7\êcŒókõ\Îc\Ò\İõúo\ÚÏ³\İ_~.\å~—_‡[\å:»\Ï{\ã\ã¶\íÿ\Ãú+¶)_¾G?´\ÇlÏ­x\Ü½e•¦\ï;\íª­ö1\0À%t1\ßWoœ\ë‰\Øh¼	\ì\í§]Ö¹y.n„\ÃqÚ›\Ğn\ãvY;\ÒóûL\ê\É\ĞÒ¾\na_i¿U;ó›ôğß‹\Û/OJ“™\ì8ı\ë–o7¯˜$d\ç\İ\ë‡|Y·ŸŠ¾\íµ±\\¶\ßØšL\×`ylluÛ––W\ã§ß†C®\Å\ÆB;¢¢Oò¶Mı¿9§VZ¿Z§:§¼\íñ¿‹}l\ç±\Ü÷\ë\Û\înGk<\ÖÜ¯±võ\ç´şlÿ14\Û\ëõ¾k\Ûr\\\Ô\ë¶cª\İ\×a}ºİ®Q™şò…s‰Ú±µ|\å²Sµ»0¶¯)\â\ì8ö²´¯¤\Ó7kš>\İ\çõWÊ¯\ïvyyŠuŠc\Ç\Ëûp\ïşX\ZÛúu¿\åú¿¯ºÇ¯ú®Y§n_nZ¯ì»¥±»<nû}¿u’qÛ\ëı\Õû±G?¬÷ou\r›q»°l£\éƒn\ßWö[\0\0—\Ó\Å/\ÆÅ›Ã¥‰á¨·ŸvY;aoÓp¸Y^¸	öÿ;\ŞXn\×+³\ë\Æw#¿Y^\İW%l[\ŞDO7¸õöõ\Íø¤{£>\Û:öñ\Âd&\ë«~;«\í\æõ\ÛıõÚ’/ë¶µ\è\Û^\Ëe»ú²0MšI\ÕÂ¤¤¸Ù²\î$»_I\Ş\×{ˆ\í¨÷\Ñn\Ûoc_4\ç´d\êƒh\ê÷¼ÿ\â~wö\årß¯o›é´£\Õ^ûx¼jYş\Z)_7¡¸\ê5–\ÎgmS\Êc\åº\Û\ë\Ö>8qŸÖŠ6/-_\î›òÚ¬G¹\ìT\ínŒ\ÇN\×v\íØ\é\Ú,4Û•m\ÛG1®feÿ.½\İÿ\Öô–­\íFuŒ©ÿ\Ê1²[÷zT}W¯3¶s\á÷ß¤lw\Ùg\éñ®q»û¼§6\íx¾§9\×}ûka½}ú¡Û¿ùu‹û\ÎöQõ}oY\Üg\ì¿Ş¿3ı¾\Û\Z¶\Ùwl\0\\N—\æq»&6‹7„Å²v\ÂRK\ê›ø\ÑöÆ³³}z>§¸‘\İ5A\Úc_µŞóY=ûa¹\İAŞŸñ¿\ç~›4ûı¹yÿ|¹n~3\ß[\ÖE{\×\ê°	V4ú¤õc±\İu_$½>_»N©;\ë\×\çX¯ºWe¯‡\Õ\ë]X\îûõm;Š\×e­w]¦óÍ¶©û&:h\íñ\Z-®e½¿ñq½}ş\\Z·}=´m;uŸ&K\ão\ç¹lô®I\Üf\×y”\Ëo÷®>,¯\ÏÚ±k\ë\ã\ã\0MŸ\àõ·Gÿm.Ù\Õ\İı±\Ç\Øn\Ô\Û\ìº6}ûôy\Ó\î=®I¹\ßj\ìÚ¯ñùz+\Úşß§¿v¬³G?ô®y\Î/~\áRş|3n7Š\ãT}•c»\í»“Œ-\0€\Ë\é\ã\Ò\ÍpyÓ˜\ß\Üõö³\×Mbq£>\Şx7\İÅiy\ZŒ\í\Ên2«›\Ûú\æxûx}õ\Äö´7ºi\Ûò¦¹_\ß|O“|Ÿ\ãş²õªu\æ¶\Î\ío\Ï\'·°|\ç²zR’®MjSo’P-+®mG5!\ë\Ïs»\Ø\Æ\ìú\Ô\Ï÷”\Ûôûi\ÍØ\Õq:\í/úp\Z+ùóE{‹±=Ê·\ë\Î\íú?owqü²\ï\Úv¥­Şµß˜ö™\Û\\›ôü\Şc\è\Ğ\×{gÛ¹j\å±\Ûóm\Ûv\ØõØ¡hó\Òòöø\íušÚ­×»n\å²\ÃÛú¼y¾z}¯»´>>\Ğ\ëÓµ\×_£o\Ó\ãl\Å¨YŸ\ë\îş\Øclw\Ôû·)\Ï;®³2\î—¯÷\Ú\İ{-•û)úeZ>\Æ\ã¶K­\Ã\Çm¯ÿw÷W\ï<s\ëı\Ğ;f¾^û:ª\Ïk:\Æ\Ü\ÆrÿA<F¶M\Ù÷\Ù>²v\ì3¶\0\0.£KQŒ\æº$Û®·Ÿ¥›\ÄüÆ²¼	o<¯¾”&eAy\ãœ\ß\Ô\Îm\Èoö\ëI\Ù4!K\Ç(o–Wö5³–n˜«m»\ëv\Ìm\Ú\êN(ªõò~K}ÿO{Z§7	˜öQ\ï¿7ih–Í“\ã\Ñx]\ÊIBob±]¶\í\ß\ŞùÍ“Š|ır½|\ÂV]¿B¾^u½ªk\Õë‹füo¬öks­\Ë	\ça¯©ö|\ë¾N\Ûvw;Z\å±\n\é|§>(¯];\ã¶\ãX\î\í§^Vµ;´+£÷zÏ¶mú}«w\ìv´m;´OÕ¿£º\Ë\Û\ãõuš¿\Ñ6\ï\ïj,/[¹Ÿ\íú]\Õï‚¨\Z#«\Ç\îœw|~\Şgxnl[ú]\×\Ûg\×RŸ®¼şZe\ß\\\Ùü\ÎË¯C1\êc\Î\Ç\êı[3*—U×¡\Û\Ùv³\êa\Ùa¯İ <nù{}©\Ï\Ûózÿ¥\ã\Îmš–­Û¼M\Ëc±ê¯\ë.\ÅşZı¶\ß\İ»\Æk|.»n³âµµ¹/W\ãª~\ímö?Ã¸¯º\ïG\'[\0\0—Ğ¹.\Æ]:K“²É®›å‹¤\ŞoÀ\×& {Š}{Fû:W6—3\Zg9¾ö¾\ÆÀSŠ\Z\ÛO¼&ûô\0\0\ç‘b\Ü1\í,>ÿW;ÿ?\ÙÕ¾“ŸP:\Éù\ÆııX¿“\áÙŒ™³g;¾.K\á.„\Î;‡\âk0û=\ë5Ù§_\0\08\ãbûñ‘n1$N´\Âó—\ã]«Å¸ôÑ–S¼[!N°\Ò\Ç\\‚K:Ùºñ\Ò\Õ\Ót\ç,\Ç\×ü±$)‚c\Zÿ\'Dö;/ışôš\ì\Ó/\0\0œcŠq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$Šq\0\0\0\0p$ªwı\Å†^¼\Ş}n‡oc¸şò\Îò§\åúpõ…†«/÷{V\Úóò\Õ\á…\ÍóË®\×^\él\Ç\é¤~?\Åk!¹ñÒ•¸¯+/fœ\ã\ä…®×»\Ï :·³i_+ş.ˆm®>fW\ÛøÊµ\áJ\Ø÷•kÃ\Şó¬zZ\ã`\'\×\r\0\0xJ\ã\İ®]9ò\ä\ï\Ü\ãV\\\Äb\\˜`_ô\ÉõE)Æ…v\Ú\Æg^Œò\Z<wÅ¸\Ë0\Æ+Šq\0\0Àe¢·H1\î0gøî¨§%zãºT<9\ïÅ¸úµ6\é#\çªwY\Æ8\0\0À%vq‹qq‚[½óª·,“o\'\ĞÕ„u»l,\Ä\ÅIm5±\'\ëQy¬´ıµ|x¼T¨\Z-\Û:Å¸4‘O²\â\ÆØ–¼\rS»óóJ“óI^0H\í½>Fy1\í\â\àB1n\Çñó\"\Å\Üg¡\íYA!\ï\Ëq\Ûü\Úô®ÿvı\í6›\çªv‹çµ«Íì¼‹\íÚ¢d*\Ú$ùñ\ÓsW^º6•~Û³\ãdc¡c‹}Sõõÿ™[ë ¾/¯}}M[r+\ç¶\í—\å~‹sªó\ã¨x¾”^\Ç\íH\ç\Øy]\Íû/¯m\ŞÆ¸l>§iY\ß\Ïm\Ú5V7\æöm\ÆCZ/¶õ¤c¼z.?VÑ¾b½\×-\Ú\İ/µm?]/¶[j\Ëò8\í]£lÜ¥±±\Ò\Ç\İuz\×h\åº\Õc¨§\ç\0\0\ã²\ç\Ëe\ã„o;y›&€y N\\·\Ç\ÛN6§m\æ‰\Ûv’:®³4i\n\å:?Ÿº\r\Ó\ã©\Íõ¾\Ç\Ç\ÙöS{Rûšö6û¯Ú³SY‰\Ë:Å\âx‰m<ö\Âv]óõªŠ1³\éü;û\ì\×Z›K\Ç\r\êkÑ®“\Ú\Ğ{>>·«/\Òu\êõ\ãd>Ç…¾n\ÆÀ©ú~<\ßö\\^“{œ\ÛÜ¾+mÿl¯\É\Â5¨^ß¹\åb\\ı\Üôš\È÷µ\×6¶g\î\çöu·÷X\Í\ÚP>w\Â1¾6¦wŒŸ\å>\\\ï—ZoŒ\';\Û\Ò§õ\ãm{R®÷ñ\ây§s®¯\Ûb?m÷¹t½q\0\0<¿\ã²\ç\Ëe\ãä®œ$¶\ÍfŸ\Å:\Õ>‚81^š°\È4qû.¶\r\êsœ&ˆW_\'\Ü\ÛI_\ç\Øù9¶\í­û l\Ïniò›ö·¬o·¯Ö™\Ú\ŞLV\ç\âA:\Ï\í¾Ú‰ñR_vŸö[]÷\Û4\çUK\Ï\ç}]/K\Û\ëV^‹ö8sQ&û¼/¦eó:\Ùy\Íûkú«\ì\ë´\Ş\Üöõ}\ÛGóñ\çv·ö9·^¿\Ôû\î+\í»W™]Ï§\çbŸt\ÆL\İgó\ã¯ö\Çsu­\ç\å³v\Üõ®i«3^›övÖ©¯Wol\Ì\ã ³=ú¥6_§lŸÍ²}\Çiİ§§\é\ãfüMcÿ\àc¬¿\Î\Ûm\0\0€\ç‘b\\ö|¹lœ˜µEŠ\Å}Vû˜÷³0Á&s\ãdq;yl•\ç8Oh³bD¹¯L\ì£ñø\ë}°°®j‚??\î©&»ut&úE$.«—´ı6·¿³\ß\Òm^Ü¦lGqM\æó\ìÉ®Ex\\\\Ãª8–§óˆ\ë.¬3·kw_§\ã6\ãü ¾oû >¹}\Îma?\Õ:sQ¥£x\íe\Ò6½±Ÿ\ï|üº³\êœR\ß7\ãny¬¶}¾\ßv\íõ\ÛcLw\ÇF\\\'ûô\Ë\Ò6\å9pœnŒ}4n\×\ßw°\ÔWK¯›Ls\İ\Ú}\×tn{O¿\0€\ç“b\\ö|¹lœx¥\É\İ8\Ù\Û=¡j÷Y\î#Š“\å¥ıŒ\Óq²8şw;¹l¥‰{y\ì|_™\ìø\ë}°°®4©N\ç–÷T\ïª\rmAa{Û¶,/=\ŞNœ\çm:û-\í\Ñ\æ\Åm\Êk:—\Íò0\Şö˜¤§õ\Ë\ë½P0H\ç\Çò\Â:s»v÷us\Ü3\éû\êü§e¥}\Îm¡_ªu\æñß±ôúi\Ï))\Ç\Í|=U{\ÏEM\ß\×ıÕ\Õ~ûÖ·k¯_Ú¦g\×\Øh¯inŸ~YÚ¦¼&\é8\Ó`:\×\íß \Ë\Ç\ÒZ_-Œ¿\ÜB[ò}%qŸiı®~?\0\0Ï§ó[Œ‹›r¢&¨ód¬óü89[\\\Å	n>®&Yñùy\Ù8áš·²\ï \İgµ \îgib6N ‹\É\â\Â\Äv6MH¯¾<n»=V\ç\Øy{}P.\ËÛ³fmòÛ±4Ù\Î)_\Ş\'\Ê\ã\Åv‡\Çs¥\ç³m\'\×\ÉmnlS÷ıvYZgyü¤ö\×\×+÷ö¼¶ûN\Ë\æu²óšû#-[8÷\æ¸\'\èûöñF\ÚÏñ»Ï¹uû¥\Úw{\í×µ\ç4jú­\Óµ²1Tõ}\Û\Şv¬öÚ·\Ïv\íu\ŞcLw\ÇF\çš\æö\è—\Ú\Üş\Ş8I\Ëö§\Ñöü£\ìú\Ò\Ç\Ûuª¾ZhK®<N:\Æ\î\'\0\0\0\Îñ;\ãÆ‰\Ívò5>\ŞN(§‰O3‘Ú¯—&Ë“\Øjı´ÿÎ„5µ1NÌŠ\ç\Çm\ÚB\Â\Â·>Çº\ã\ä/m_õQ\\{ş\ãºYL\ç¸\Ü\ŞzY\İ\ç»L\×#?·y¢]Iû_š\ì¦\í²\åmq¢:\ŞÒ±6šk\\/Ï­µ¹‘\ÚÑ³\í‹ñZtÖ™\ÆWz¾+Áóš\Çfu^¹\æÜ«óh{’¾_½ö¯\É=Î­\Û/i»ùµ¹t\rV~t·m\Ïu[ YZ§ic\İ\×õ\ã\çö\Ùöù~\Ûu\Çø\ÒvK\í‹:×´°\Ş/µ\Å\×À\Æb\ßU\ÛÖ¯ü:¶¯¶¦s>Áu[<\Çy¬\0\0œ÷©V“¥z\"V>¿™x¿¯LÀ³IQ1q\ÚL¸®‡\Çù$p|¥	i;\Í\Û÷WL\"OYŒš	`Õ–j\Ò:NN³ıW\Û\ïno½¬ÓE“÷ºıùñ&\Şó6\Ùò¶8\Ñ/Ÿ˜\Ç\ëœö3_óòú5\ã)\Ù\Õ\æFÖb<Vı°\ÑL\Ô;c±Û¦¢=›ı6\ç¤v$\Õ\ë`¡¯›ã¨\ï{×¾l\Ï\âZ9·n¿œ\äü+\ÅX)´×­÷º\ÏÏ§\×Æ´ÿ¸¬\Ó÷kcµ\íóı¶[\ãE?o\ä\ã ;6z×´¶»_jy?\å\çQ\\\Û}\Çi2¿\æ\Úv®÷U¾}’\í§×–fı¶M©­³üx\0\0\0\ç»\ç\Ş>E`± \0\0ğœQŒƒSQŒƒ}(\Æ\0\0Œ\ã\àT\ã`Šq\0\0\0#\Å8\0\0\0\08\Å8\0\0\0\08\Å8\0\0\0\08\Å8\0\0\0\08\Å8\0\0\0\08\Å8\0\0\0\08\Å8\0\0\0\08\Å8\0\0\0\08’ÃŠq\ï*\Æ\0\0\0ÀIA1\îu\Å8\0\0\0\0\Ø\ÃXŒ{}¥÷0\ã\îNÅ¸›Šq\0\0\0\0p ¶w3+\Æm<zÿaQŒ{\ç\Î\í\áV,Æ½¥\0\0\0\0(‹qo\Å:[SŒ{?\ãŞ»7\ÜKÅ¸[c1\îÍ¬|û\í·İƒ\0\0\0\0Àó.\Õ\ĞB=-\Ô\Õb1\îVVŒ=\Z‹qŞ»?\ãŞ¹Wzû\í·†7\ß\Ü\ã\ÂÏ¯¾úª{ \0\0\0\0x\Ş\åu´PWõµ¦÷A,\Æ=ˆÅ¸û÷\Ş\î¾sg¸}\ë\ÖTŒ7nû1\ÕO?ı´9\0\0\0\00\nu´POuµP_u¶©7}T5\ã\Ş0<x0\ã\î¾3Ü¹}küF\ÕXŒÛ¾;\îÎ;İƒ\0\0\0\0Àó.½+.ş½¸7\ÇoR\ru¶XŒ›ÿnÜ£‡\ã7ª>H_\âğNüF\Õô%õß\ë\0\0\0\0w©7ÿ½¸›7c­,\Æm¤/qx¾Ä¡óQ\Õ\×_WŒ\0\0\0€%¡~VD5\ÔÙŠb\\ñw\ãzU}«ü¨j\ï@\0\0\0\0ğ¼›?¢ú\Öö#ª¡Î–\ãúUm¿Uu[\ë\0\0\0\0w¡~–\Ş\êj¡¾\êls1.½;.~T5¾;.|T5w\Ü\í\áfú\Ûqo¾1¼¡\0\0\0\0]¡~\êh¡\êj¡¾\êlM1n×»\ãngW\r|®w \0\0\0\0xŞ¥§†zZzW\\¨³Å¸TÛ¾;nú\Ûq÷ßß¬úÎ\Û\Ã\í[7‡›o¹Ş\0\0\0\0\ày\êg¡\êi¡®\êk¡\Î\Ö-\Æ\å\ï\Ë?®únø¸\êf\ás®© ?²:ı\r¹ô-«\é\Ë|\Ñ\0\0\0\0—E¨s¥\ïQH5°PK_\Ö0~4õ\ÍX7õ³PGõ´PWõµPgkŠq½‚\\ü¸\ê{÷¶?.½C.~duû¥\á\ëZÇ¢\ÜX„\0\0\0€\Ë(\ÕÀB=,}Y\Ãø7\â\ÆwÄ…úYú;q¡®\êk¡\Î\Ö-\Æ\éãª¡ ÷~U½ø‘\Õø7\ä\ÆoY\ß%7ş-¹º0WJC\0\0\0\08\ï\Úú\Ö\\€›‹pã·¦†:Yüq\Ù;\âR!.\Ô\×Bmg1n|w\Üô÷\ã\ê‚\\ør\ïÜ‰\ß?¶zó\í©(·Šr\ÑØ¨±8\0\0\0\0\×X|›\np±÷\ÖT„›>–zûv¬—Å¿W\âB}-\Ô\Ù‹qÁRA.ş\r¹û\ï\Æoo·‹r·†Û·n\r·nnssq.\Z«„\0\0\0\0pñŒ5®TóŠ¸ğN¸[·b],\Ô\ÇB,\Ô\Ë\â—5¼w¿)Ä…:\Û\Îb\\\äŠ/uxp?~k¨òE¹;·\Ç\Â\ÜF¨F±@7\é\0\0\0\0\àb\ë[©\Ö\ê^¡ş\ê`E.¼\îş½X7õ³PGõ´TˆÛ«\Ì¹X”K¹\í»\äò¢\\x^hÀ\İMCBc\ÂgdƒX¤\0\0\0€(Õ¸bñm*À…:XQ„K\ï†{ø`[ˆ›\êjA¨³\íUŒ>ü —\Ü\Ãøöºô.¹X”{psÀ{sa.\ç\Æ]262ü;\0\0\0\08\×R-kªm¥ZWª}¸ñpcn|7\Üø±Ô‡s--\Ô\Õ\Æ\ZÛ£\áÿ§#Œ† ¤†\0\0\0\0IEND®B`‚',NULL,NULL,1.00),(4,'test',12.01,'test',2,5,3,2,'2021-01-01 01:00:00',NULL,NULL,'',1,NULL,1.50),(5,'FINAL TESTT',12.00,'jnde',2,5,3,2,'2021-01-01 01:00:00',NULL,NULL,_binary 'Today, 20:11\r\n\r\nHi! So I suffer from hormonal acne that is placed on my jaw and around my mouth and occasionally on the sides of my cheeks. My skin type is combination, with an oily t-zone by the end of the day. I mostly feel the dry side of it and i cant live without moisturizer. At the moment, except for acne, I have a lot of scars that are red, texture irregularities and blackheads on my t-zone. I would like to build a simple regimen with ordinary products\r\n\r\nToday, 20:11Seen\r\n\r\nManjit:\r\nThanks. When an ambassador responds, you\'ll be notified here and by email.\r\n\r\nToday, 20:12\r\n\r\nManjit:\r\nManjit joined the conversation\r\n\r\nVancouver, Downtown Store\r\n\r\n\r\nManjit:\r\nHi Ina! I’m Manjit, a team member at Deciem :-)\r\n\r\n Sent from Mobile9 minutes ago\r\n\r\nHi :)\r\n\r\n8 minutes agoSeen\r\n\r\nManjit:\r\nI would recommend using Niacinamide, Salicylic acid masque, hyaluronic acid, and azelaic acid\r\n\r\n Sent from Mobile8 minutes ago\r\n\r\nNiacinamide is great for regulating oil production and minimizing pores, also showing signs of brightening \r\n\r\nSalicylic acid masque is a clay and charcoal wash off masque which acts like a magnet for the dirt/oil build up on the face, exfoliating the inside of the pore to clear up active breakouts and blemishes \r\n\r\nHyaluronic acid is a hydration serum which essentially acts like water for the skin, it’s great for hydration support so you don’t feel dry and dehydrated throughout the day\r\n\r\nAzelaic acid targets textural and tone irregularities!\r\n\r\nProduct image\r\nNiacinamide 10% + Zinc 1%\r\n\r\n\r\nView\r\nProduct image\r\nSalicylic Acid 2% Masque\r\n\r\n\r\nView\r\nProduct image\r\nHyaluronic Acid 2% + B5\r\n\r\n\r\nView\r\nManjit:\r\nProduct image\r\nAzelaic Acid Suspension 10%\r\n\r\n\r\nView\r\n Recommended by Manjit5 minutes ago\r\n\r\n can i also use this  https://theordinary.deciem.com/product/rdn-aha-30pct-bha-2pct-peeling-solution-30ml\r\n\r\nor is it too much\r\n\r\n4 minutes agoSeen\r\n\r\nSo your routine would look like \r\n\r\nAM\r\n1. Cleanser\r\n2. Hyaluronic acid\r\n3. Niacinamide \r\n4. Moisturizer \r\n\r\nPM\r\n1. Cleanser \r\n2. Hyaluronic acid \r\n3. Azelaic acid\r\n4. Moisturizer \r\n\r\nPM (1-3x a week)\r\n1. Cleanser\r\n2. Salicylic acid masque (wash off)\r\n3. Hyaluronic acid\r\n4. Moisturizer\r\n\r\nManjit:\r\nThe peeling solution is a great chemical exfoliator but I would only recommend it if you’re experienced with exfoliating acids and if you have tough skin as it is very strong!\r\n\r\n Sent from Mobile2 minutes ago\r\n\r\nso azelaic acid should be up to 3 times a week?\r\n\r\n2 minutes agoSeen\r\n\r\nManjit:\r\nYes!\r\n\r\n Sent from Mobile2 minutes ago\r\n\r\ni understand, i have used previously a toner with aha bha and pha but not sure how strong it was\r\n\r\n1 minute agoSeen\r\n\r\nWhenever you’re not using the salicylic acid!\r\n\r\nYou may wish to get the peel and do a patch test\r\n\r\nManjit:\r\n Patch tests can be done in several different ways. We have a comprehensive guide on how to perform a patch test on The Ordinary website - https://theordinary.com/patchtest\r\n\r\n Sent from Mobile1 minute ago\r\n\r\nokay thank you very much!\r\n\r\n1 minute agoSeen\r\n\r\nManjit:\r\n And if it is too strong, you can view our return policy and other return details here: https://deciem.com/document/returns ??\r\n\r\n Sent from MobileJust now\r\n\r\nat the moment i cant order because youve stopped shipping in my country because of corona so Ill save everything for a later time\r\n\r\nOne last question\r\n\r\nhow often should be the mask used? 2 times per week?\r\n\r\nManjit:\r\nOne a week max!\r\n\r\n\r\n\r\n// TO-BUY from boots.com\r\nvaseline\r\nanti frizz hair products, \r\nshampoo,\r\nargan oil,\r\nmaybe a hair straightener,\r\nmoisturizer,\r\n\r\n\r\n// Glowy Skin\r\nPurito BHA Dead Skin Moisture Gel\r\nIsnTree Clear Skin PHA Sleeping Mask\r\n------keto te dyja alla Isntree AHA Clear Skin qe ty tpelqen------\r\nHyaluronic Acid stuff:\r\nIsnTree Hyaluronic Acid Water Sleeping Mask (20mij 100ml)\r\nIsnTree Hyaluronic Acid Moist Cream (22mij 100ml)\r\n',1,NULL,0.35),(6,'FINAL second TESTT',12.00,'second test',2,5,3,2,'2021-01-01 01:00:00',NULL,NULL,_binary 'Today, 20:11\r\n\r\nHi! So I suffer from hormonal acne that is placed on my jaw and around my mouth and occasionally on the sides of my cheeks. My skin type is combination, with an oily t-zone by the end of the day. I mostly feel the dry side of it and i cant live without moisturizer. At the moment, except for acne, I have a lot of scars that are red, texture irregularities and blackheads on my t-zone. I would like to build a simple regimen with ordinary products\r\n\r\nToday, 20:11Seen\r\n\r\nManjit:\r\nThanks. When an ambassador responds, you\'ll be notified here and by email.\r\n\r\nToday, 20:12\r\n\r\nManjit:\r\nManjit joined the conversation\r\n\r\nVancouver, Downtown Store\r\n\r\n\r\nManjit:\r\nHi Ina! I’m Manjit, a team member at Deciem :-)\r\n\r\n Sent from Mobile9 minutes ago\r\n\r\nHi :)\r\n\r\n8 minutes agoSeen\r\n\r\nManjit:\r\nI would recommend using Niacinamide, Salicylic acid masque, hyaluronic acid, and azelaic acid\r\n\r\n Sent from Mobile8 minutes ago\r\n\r\nNiacinamide is great for regulating oil production and minimizing pores, also showing signs of brightening \r\n\r\nSalicylic acid masque is a clay and charcoal wash off masque which acts like a magnet for the dirt/oil build up on the face, exfoliating the inside of the pore to clear up active breakouts and blemishes \r\n\r\nHyaluronic acid is a hydration serum which essentially acts like water for the skin, it’s great for hydration support so you don’t feel dry and dehydrated throughout the day\r\n\r\nAzelaic acid targets textural and tone irregularities!\r\n\r\nProduct image\r\nNiacinamide 10% + Zinc 1%\r\n\r\n\r\nView\r\nProduct image\r\nSalicylic Acid 2% Masque\r\n\r\n\r\nView\r\nProduct image\r\nHyaluronic Acid 2% + B5\r\n\r\n\r\nView\r\nManjit:\r\nProduct image\r\nAzelaic Acid Suspension 10%\r\n\r\n\r\nView\r\n Recommended by Manjit5 minutes ago\r\n\r\n can i also use this  https://theordinary.deciem.com/product/rdn-aha-30pct-bha-2pct-peeling-solution-30ml\r\n\r\nor is it too much\r\n\r\n4 minutes agoSeen\r\n\r\nSo your routine would look like \r\n\r\nAM\r\n1. Cleanser\r\n2. Hyaluronic acid\r\n3. Niacinamide \r\n4. Moisturizer \r\n\r\nPM\r\n1. Cleanser \r\n2. Hyaluronic acid \r\n3. Azelaic acid\r\n4. Moisturizer \r\n\r\nPM (1-3x a week)\r\n1. Cleanser\r\n2. Salicylic acid masque (wash off)\r\n3. Hyaluronic acid\r\n4. Moisturizer\r\n\r\nManjit:\r\nThe peeling solution is a great chemical exfoliator but I would only recommend it if you’re experienced with exfoliating acids and if you have tough skin as it is very strong!\r\n\r\n Sent from Mobile2 minutes ago\r\n\r\nso azelaic acid should be up to 3 times a week?\r\n\r\n2 minutes agoSeen\r\n\r\nManjit:\r\nYes!\r\n\r\n Sent from Mobile2 minutes ago\r\n\r\ni understand, i have used previously a toner with aha bha and pha but not sure how strong it was\r\n\r\n1 minute agoSeen\r\n\r\nWhenever you’re not using the salicylic acid!\r\n\r\nYou may wish to get the peel and do a patch test\r\n\r\nManjit:\r\n Patch tests can be done in several different ways. We have a comprehensive guide on how to perform a patch test on The Ordinary website - https://theordinary.com/patchtest\r\n\r\n Sent from Mobile1 minute ago\r\n\r\nokay thank you very much!\r\n\r\n1 minute agoSeen\r\n\r\nManjit:\r\n And if it is too strong, you can view our return policy and other return details here: https://deciem.com/document/returns ??\r\n\r\n Sent from MobileJust now\r\n\r\nat the moment i cant order because youve stopped shipping in my country because of corona so Ill save everything for a later time\r\n\r\nOne last question\r\n\r\nhow often should be the mask used? 2 times per week?\r\n\r\nManjit:\r\nOne a week max!\r\n\r\n\r\n\r\n// TO-BUY from boots.com\r\nvaseline\r\nanti frizz hair products, \r\nshampoo,\r\nargan oil,\r\nmaybe a hair straightener,\r\nmoisturizer,\r\n\r\n\r\n// Glowy Skin\r\nPurito BHA Dead Skin Moisture Gel\r\nIsnTree Clear Skin PHA Sleeping Mask\r\n------keto te dyja alla Isntree AHA Clear Skin qe ty tpelqen------\r\nHyaluronic Acid stuff:\r\nIsnTree Hyaluronic Acid Water Sleeping Mask (20mij 100ml)\r\nIsnTree Hyaluronic Acid Moist Cream (22mij 100ml)\r\n',1,NULL,0.60),(7,'test request part',12.00,'second test',2,5,3,2,'2021-01-01 01:00:00',NULL,NULL,_binary 'Today, 20:11\r\n\r\nHi! So I suffer from hormonal acne that is placed on my jaw and around my mouth and occasionally on the sides of my cheeks. My skin type is combination, with an oily t-zone by the end of the day. I mostly feel the dry side of it and i cant live without moisturizer. At the moment, except for acne, I have a lot of scars that are red, texture irregularities and blackheads on my t-zone. I would like to build a simple regimen with ordinary products\r\n\r\nToday, 20:11Seen\r\n\r\nManjit:\r\nThanks. When an ambassador responds, you\'ll be notified here and by email.\r\n\r\nToday, 20:12\r\n\r\nManjit:\r\nManjit joined the conversation\r\n\r\nVancouver, Downtown Store\r\n\r\n\r\nManjit:\r\nHi Ina! I’m Manjit, a team member at Deciem :-)\r\n\r\n Sent from Mobile9 minutes ago\r\n\r\nHi :)\r\n\r\n8 minutes agoSeen\r\n\r\nManjit:\r\nI would recommend using Niacinamide, Salicylic acid masque, hyaluronic acid, and azelaic acid\r\n\r\n Sent from Mobile8 minutes ago\r\n\r\nNiacinamide is great for regulating oil production and minimizing pores, also showing signs of brightening \r\n\r\nSalicylic acid masque is a clay and charcoal wash off masque which acts like a magnet for the dirt/oil build up on the face, exfoliating the inside of the pore to clear up active breakouts and blemishes \r\n\r\nHyaluronic acid is a hydration serum which essentially acts like water for the skin, it’s great for hydration support so you don’t feel dry and dehydrated throughout the day\r\n\r\nAzelaic acid targets textural and tone irregularities!\r\n\r\nProduct image\r\nNiacinamide 10% + Zinc 1%\r\n\r\n\r\nView\r\nProduct image\r\nSalicylic Acid 2% Masque\r\n\r\n\r\nView\r\nProduct image\r\nHyaluronic Acid 2% + B5\r\n\r\n\r\nView\r\nManjit:\r\nProduct image\r\nAzelaic Acid Suspension 10%\r\n\r\n\r\nView\r\n Recommended by Manjit5 minutes ago\r\n\r\n can i also use this  https://theordinary.deciem.com/product/rdn-aha-30pct-bha-2pct-peeling-solution-30ml\r\n\r\nor is it too much\r\n\r\n4 minutes agoSeen\r\n\r\nSo your routine would look like \r\n\r\nAM\r\n1. Cleanser\r\n2. Hyaluronic acid\r\n3. Niacinamide \r\n4. Moisturizer \r\n\r\nPM\r\n1. Cleanser \r\n2. Hyaluronic acid \r\n3. Azelaic acid\r\n4. Moisturizer \r\n\r\nPM (1-3x a week)\r\n1. Cleanser\r\n2. Salicylic acid masque (wash off)\r\n3. Hyaluronic acid\r\n4. Moisturizer\r\n\r\nManjit:\r\nThe peeling solution is a great chemical exfoliator but I would only recommend it if you’re experienced with exfoliating acids and if you have tough skin as it is very strong!\r\n\r\n Sent from Mobile2 minutes ago\r\n\r\nso azelaic acid should be up to 3 times a week?\r\n\r\n2 minutes agoSeen\r\n\r\nManjit:\r\nYes!\r\n\r\n Sent from Mobile2 minutes ago\r\n\r\ni understand, i have used previously a toner with aha bha and pha but not sure how strong it was\r\n\r\n1 minute agoSeen\r\n\r\nWhenever you’re not using the salicylic acid!\r\n\r\nYou may wish to get the peel and do a patch test\r\n\r\nManjit:\r\n Patch tests can be done in several different ways. We have a comprehensive guide on how to perform a patch test on The Ordinary website - https://theordinary.com/patchtest\r\n\r\n Sent from Mobile1 minute ago\r\n\r\nokay thank you very much!\r\n\r\n1 minute agoSeen\r\n\r\nManjit:\r\n And if it is too strong, you can view our return policy and other return details here: https://deciem.com/document/returns ??\r\n\r\n Sent from MobileJust now\r\n\r\nat the moment i cant order because youve stopped shipping in my country because of corona so Ill save everything for a later time\r\n\r\nOne last question\r\n\r\nhow often should be the mask used? 2 times per week?\r\n\r\nManjit:\r\nOne a week max!\r\n\r\n\r\n\r\n// TO-BUY from boots.com\r\nvaseline\r\nanti frizz hair products, \r\nshampoo,\r\nargan oil,\r\nmaybe a hair straightener,\r\nmoisturizer,\r\n\r\n\r\n// Glowy Skin\r\nPurito BHA Dead Skin Moisture Gel\r\nIsnTree Clear Skin PHA Sleeping Mask\r\n------keto te dyja alla Isntree AHA Clear Skin qe ty tpelqen------\r\nHyaluronic Acid stuff:\r\nIsnTree Hyaluronic Acid Water Sleeping Mask (20mij 100ml)\r\nIsnTree Hyaluronic Acid Moist Cream (22mij 100ml)\r\n',1,NULL,0.75);
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
