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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'coryldwhite@gmail.com:Spi16der ','Spotify Premium','CA',NULL,NULL,NULL,NULL,NULL,1,0),(2,'jillsummer1@gmail.com:morsyd1057 ','Spotify Premium Family Owner','US','3/5','15938 N 114th Way, Scottsdale, AZ 85255, USA','https://www.spotify.com/family/join/invite/Yzx64Z7453xC6Ba',NULL,NULL,2,0),(3,'embs2@k12albemarle.org:Burtram1','Spotify Free','US',NULL,NULL,NULL,NULL,NULL,2,0),(4,'jmqg99011234@gmail.com:Jjoonnaatthhaann01','Spotify Premium Duo','US',NULL,NULL,NULL,NULL,NULL,2,1),(5,'macedosgustavo@gmail.com:Tabathas2','Premium for Students','BR',NULL,NULL,NULL,NULL,NULL,NULL,0),(6,'payan.marisol@gmail.com:501352Mp','Premium for Students with Hulu','US',NULL,NULL,NULL,NULL,NULL,NULL,0),(7,'ithomsonvirtue21@gmail.com:Rocky1721!','Premium for Students + Headspace','GB',NULL,NULL,NULL,NULL,NULL,NULL,2),(8,'payan.marisol@gmail.com:501352Mp','Spotify Premium with Hulu','US',NULL,NULL,NULL,NULL,NULL,NULL,0),(9,'chesterkyle99@gmail.com:Greatwall99!','Premium + Headspace','GB',NULL,NULL,NULL,NULL,NULL,NULL,3),(10,'pasehwani@gmail.com:Kobe1999','Spotify Premium Family Member','PH',NULL,NULL,NULL,NULL,NULL,NULL,1),(11,'chesterkyle99@gmail.com:Greatwall99!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(12,'inapanci@gmail.com:Spi16der ','Spotify Premium','CA',NULL,'new test for post method',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'test','1',1,'0','2021-03-04 00:00:00'),(2,'posttt','1',1,'0','2021-03-04 16:21:58');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2021-03-03 00:00:00','1',NULL,1,25.00,2),(2,'2021-03-02 00:00:00','2',NULL,1,36.00,4),(3,'2021-03-03 23:04:03','2',NULL,1,15.00,2),(4,'2021-03-03 23:21:02','2',NULL,1,15.00,2);
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_status`
--

LOCK TABLES `product_status` WRITE;
/*!40000 ALTER TABLE `product_status` DISABLE KEYS */;
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
  PRIMARY KEY (`id`),
  KEY `fk_status_id_idx` (`status_id`),
  CONSTRAINT `fk1_status_id` FOREIGN KEY (`status_id`) REFERENCES `product_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'test',12.00,'jnde',2,5,3,2,'2021-01-02 00:00:00',NULL,NULL,NULL,NULL,NULL),(2,'iuhreig',26.00,'jbnh',2,4,2,2,'2021-03-03 00:00:00',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_status`
--

LOCK TABLES `ticket_status` WRITE;
/*!40000 ALTER TABLE `ticket_status` DISABLE KEYS */;
INSERT INTO `ticket_status` VALUES (1,'ongoing'),(2,'finished'),(3,'canceled');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'test','1','2021-03-01 00:00:00','2021-03-04 17:10:01',3,'heiu'),(2,'test267','1','2021-02-01 00:00:00','2021-02-01 00:00:00',NULL,'jiuh');
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
INSERT INTO `transactions` VALUES (1,'1',NULL,12.25,1,'2021-03-02 00:00:00','test for get all',NULL),(2,'1',NULL,35.25,1,'2021-03-05 22:55:32','test for post',NULL);
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
INSERT INTO `users` VALUES ('1','ina','UPDATEDina@test.com','user',NULL,NULL,NULL,NULL,'1','inaina'),('2','test','test@test.com','admin',NULL,NULL,NULL,NULL,'1',NULL),('njhgvuwe','test per post method','ina@test.com','user','2021-03-06 21:07:38','2021-03-06 21:07:39',0.00,NULL,'1','inaina');
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

-- Dump completed on 2021-03-08 21:13:03
