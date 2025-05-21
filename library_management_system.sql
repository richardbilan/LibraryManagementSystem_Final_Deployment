-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: library_management_system
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `author_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'J.K. Rowling'),(2,'George Orwell'),(3,'J.R.R. Tolkien'),(4,'Agatha Christie'),(5,'Dan Brown'),(6,'Ernest Hemingway'),(7,'Mark Twain'),(8,'Jane Austen'),(9,'Stephen King'),(10,'F. Scott Fitzgerald'),(11,'J.K. Rowling'),(12,'George Orwell'),(13,'J.R.R. Tolkien'),(14,'Agatha Christie'),(15,'Dan Brown'),(16,'Ernest Hemingway'),(17,'Mark Twain'),(18,'Jane Austen'),(19,'Stephen King'),(20,'F. Scott Fitzgerald');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_delete_log`
--

DROP TABLE IF EXISTS `book_delete_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_delete_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_delete_log`
--

LOCK TABLES `book_delete_log` WRITE;
/*!40000 ALTER TABLE `book_delete_log` DISABLE KEYS */;
INSERT INTO `book_delete_log` VALUES (1,1,'The Hobbit','2025-03-24 23:11:16'),(2,1,'Test Book','2025-03-24 23:26:36'),(3,2,'To Kill a Mockingbird','2025-03-25 00:00:11'),(4,139,'Book With Availability','2025-03-25 00:02:37'),(5,1,'Test Book','2025-03-25 00:21:51'),(6,158,'Book Without Availability','2025-03-25 00:23:30'),(7,162,'Test Book','2025-03-25 00:25:57');
/*!40000 ALTER TABLE `book_delete_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_insert_log`
--

DROP TABLE IF EXISTS `book_insert_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_insert_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `inserted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_insert_log`
--

LOCK TABLES `book_insert_log` WRITE;
/*!40000 ALTER TABLE `book_insert_log` DISABLE KEYS */;
INSERT INTO `book_insert_log` VALUES (1,111,'New Book','2025-03-24 23:13:31'),(2,112,'Updated Book','2025-03-24 23:27:13'),(3,113,'New Book','2025-03-24 23:30:39'),(4,114,'New Book','2025-03-24 23:30:39'),(5,115,'New Book','2025-03-24 23:30:39'),(6,116,'New Book','2025-03-24 23:30:46'),(7,117,'Test Book','2025-03-24 23:31:34'),(8,118,'Test Book','2025-03-24 23:31:34'),(9,119,'Tes','2025-03-24 23:32:33'),(10,120,'Negative Availability Book','2025-03-24 23:37:25'),(11,121,'BUbook','2025-03-24 23:45:24'),(12,122,'BUbook','2025-03-24 23:45:24'),(13,123,'New Book','2025-03-24 23:46:27'),(14,124,'New Book','2025-03-24 23:46:27'),(15,125,'Negative Availability Book','2025-03-24 23:51:33'),(16,126,'Negative Availability Book','2025-03-24 23:51:40'),(17,127,'New Book','2025-03-24 23:53:22'),(18,128,'New Book','2025-03-24 23:53:28'),(19,129,'Negative Availability Book','2025-03-24 23:54:06'),(20,130,'Negative Availability Book','2025-03-24 23:54:18'),(21,131,'Negative Availability Book','2025-03-24 23:54:18'),(22,132,'Negative Availability Book','2025-03-24 23:54:30'),(23,133,'Negative Availability Book','2025-03-24 23:54:45'),(24,134,'Negative Availability Book','2025-03-24 23:54:45'),(25,135,'Negative Availability Book','2025-03-24 23:54:45'),(26,136,'New Book','2025-03-24 23:57:56'),(27,137,'New Book','2025-03-24 23:58:01'),(28,138,'Book With Availability','2025-03-25 00:02:27'),(29,139,'Book With Availability','2025-03-25 00:02:37'),(30,140,'New Book','2025-03-25 00:06:15'),(31,141,'New Book','2025-03-25 00:06:34'),(32,142,'Negative Availability Book','2025-03-25 00:08:53'),(33,143,'Negative Availability Book','2025-03-25 00:08:58'),(34,144,'Negative Availability Book','2025-03-25 00:08:58'),(35,145,'Negative Availability Book','2025-03-25 00:08:58'),(36,1,'Test Book','2025-03-25 00:10:18'),(37,146,'New Book','2025-03-25 00:12:30'),(38,147,'New Book','2025-03-25 00:12:38'),(39,148,'New Book','2025-03-25 00:12:54'),(40,149,'New Book','2025-03-25 00:12:54'),(41,150,'Negative Availability Book','2025-03-25 00:13:52'),(42,151,'Negative Availability Book','2025-03-25 00:13:52'),(43,152,'Negative Availability Book','2025-03-25 00:14:00'),(44,153,'Negative Availability Book','2025-03-25 00:14:23'),(45,154,'Negative Availability Book','2025-03-25 00:14:23'),(46,155,'Negative Availability Book','2025-03-25 00:15:00'),(47,156,'Negative Availability Book','2025-03-25 00:15:00'),(48,157,'Test','2025-03-25 00:20:40'),(49,158,'Book Without Availability','2025-03-25 00:23:26'),(50,159,'Book Without Availability','2025-03-25 00:24:21'),(51,160,'Book Without Availability','2025-03-25 00:24:21'),(52,161,'Test Book','2025-03-25 00:24:59'),(53,162,'Test Book','2025-03-25 00:25:06');
/*!40000 ALTER TABLE `book_insert_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_update_log`
--

DROP TABLE IF EXISTS `book_update_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_update_log` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `old_title` varchar(45) DEFAULT NULL,
  `new_title` varchar(45) DEFAULT NULL,
  `old_author_id` int DEFAULT NULL,
  `new_author_id` int DEFAULT NULL,
  `old_genre_id` int DEFAULT NULL,
  `new_genre_id` int DEFAULT NULL,
  `old_availability` int DEFAULT NULL,
  `new_availability` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_update_log`
--

LOCK TABLES `book_update_log` WRITE;
/*!40000 ALTER TABLE `book_update_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_update_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `Books_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `author_id` int DEFAULT NULL,
  `genre_id` int DEFAULT NULL,
  `published_year` year NOT NULL,
  `availability` tinyint DEFAULT '1',
  PRIMARY KEY (`Books_id`,`title`),
  KEY `fk_books_authors` (`author_id`),
  KEY `fk_books_genres` (`genre_id`),
  CONSTRAINT `fk_books_authors` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`),
  CONSTRAINT `fk_books_genres` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (3,'1984',3,3,2018,0),(4,'The Great Gatsby',4,4,2021,0),(5,'Moby-Dick',5,5,2022,0),(6,'Pride and Prejudice',6,6,2020,0),(7,'War and Peace',7,7,2019,0),(8,'Crime and Punishment',8,8,2018,0),(9,'Brave New World',9,9,2021,0),(10,'The Catcher in the Rye',10,10,2022,0),(71,'Harry Potter and the Sorcerer\'s Stone',1,1,1997,1),(72,'1984',2,2,1949,1),(73,'The Hobbit',3,8,1937,1),(74,'Murder on the Orient Express',4,3,1934,1),(75,'The Da Vinci Code',5,4,2003,1),(76,'The Old Man and the Sea',6,6,1952,1),(105,'richard',5,5,2025,1),(106,'richard',5,5,2025,1),(107,'richard',5,5,2025,1),(108,'TARZAN',2,3,2025,3),(109,'Test Book',1,1,2024,0),(110,'Test Book',1,1,2024,0),(111,'New Book',1,1,2025,5),(112,'Updated Book',1,1,2022,10),(113,'New Book',1,1,2023,5),(114,'New Book',1,1,2023,5),(115,'New Book',1,1,2023,5),(116,'New Book',1,1,2023,5),(117,'Test Book',1,1,2024,0),(118,'Test Book',1,1,2024,0),(119,'Tes',1,1,2024,5),(120,'Negative Availability Book',1,1,2023,0),(121,'BUbook',1,1,2024,5),(122,'BUbook',1,1,2024,5),(123,'New Book',1,1,2023,5),(124,'New Book',1,1,2023,5),(125,'Negative Availability Book',1,1,2023,0),(126,'Negative Availability Book',1,1,2023,0),(127,'New Book',1,1,2023,5),(128,'New Book',1,1,2023,5),(129,'Negative Availability Book',1,1,2023,0),(130,'Negative Availability Book',1,1,2023,0),(131,'Negative Availability Book',1,1,2023,0),(132,'Negative Availability Book',1,1,2023,5),(133,'Negative Availability Book',1,1,2023,0),(134,'Negative Availability Book',1,1,2023,0),(135,'Negative Availability Book',1,1,2023,0),(136,'New Book',1,1,2023,5),(137,'New Book',1,1,2023,5),(138,'Book With Availability',1,1,2023,5),(140,'New Book',1,1,2023,5),(141,'New Book',1,1,2023,5),(142,'Negative Availability Book',1,1,2023,5),(143,'Negative Availability Book',1,1,2023,5),(144,'Negative Availability Book',1,1,2023,5),(145,'Negative Availability Book',1,1,2023,5),(146,'New Book',1,1,2023,5),(147,'New Book',1,1,2023,5),(148,'New Book',1,1,2023,5),(149,'New Book',1,1,2023,5),(150,'Negative Availability Book',1,1,2023,0),(151,'Negative Availability Book',1,1,2023,0),(152,'Negative Availability Book',1,1,2023,0),(153,'Negative Availability Book',1,1,2023,5),(154,'Negative Availability Book',1,1,2023,5),(155,'Negative Availability Book',1,1,2023,0),(156,'Negative Availability Book',1,1,2023,0),(157,'Test',2,1,2024,15),(159,'Book Without Availability',1,1,2023,0),(160,'Book Without Availability',1,1,2023,0),(161,'Test Book',1,1,2024,5);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_book_availability` BEFORE INSERT ON `books` FOR EACH ROW BEGIN
    IF NEW.availability < 0 THEN
        SET NEW.availability = 0;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_book` AFTER INSERT ON `books` FOR EACH ROW BEGIN
    -- Insert the new book information into the log table
    INSERT INTO book_insert_log (book_id, title, inserted_at)
    VALUES (NEW.books_id, NEW.title, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_book_availability` BEFORE UPDATE ON `books` FOR EACH ROW BEGIN
    IF NEW.availability < 0 THEN
        SET NEW.availability = 0;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_book_availability` AFTER UPDATE ON `books` FOR EACH ROW BEGIN
    -- Check if the availability value has changed
    IF OLD.availability != NEW.availability THEN
        INSERT INTO book_update_log (book_id, old_availability, new_availability, update_time)
        VALUES (NEW.books_id, OLD.availability, NEW.availability, NOW());
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_book` AFTER UPDATE ON `books` FOR EACH ROW BEGIN
    -- Insert the old and new book information into the log table
    INSERT INTO book_update_log (
        book_id, 
        old_title, new_title,
        old_author_id, new_author_id,
        old_genre_id, new_genre_id,
        old_availability, new_availability,
        updated_at  -- Correct column name for timestamp
    )
    VALUES (
        OLD.books_id, OLD.title, NEW.title,
        OLD.author_id, NEW.author_id,
        OLD.genre_id, NEW.genre_id,
        OLD.availability, NEW.availability,
        NOW()  -- Correct timestamp
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_delete_book` AFTER DELETE ON `books` FOR EACH ROW BEGIN
    -- Insert the deleted book information into the log table
    INSERT INTO book_delete_log (book_id, title, deleted_at)
    VALUES (OLD.books_id, OLD.title, NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `borrowed_books`
--

DROP TABLE IF EXISTS `borrowed_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `borrowed_books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Books_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `member_id` int NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `borrow_date` date NOT NULL,
  `due_date` date NOT NULL,
  `returned` tinyint(1) DEFAULT '0',
  `fine` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowed_books`
--

LOCK TABLES `borrowed_books` WRITE;
/*!40000 ALTER TABLE `borrowed_books` DISABLE KEYS */;
INSERT INTO `borrowed_books` VALUES (1,1,'Harry Potter',101,'John','Doe','2024-03-15','2024-03-25',0,8980.00),(2,2,'The Hobbit',102,'Jane','Smith','2024-03-20','2024-03-30',0,8980.00),(3,3,'1984',103,'Alice','Johnson','2024-03-10','2024-03-20',1,0.00);
/*!40000 ALTER TABLE `borrowed_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fines`
--

DROP TABLE IF EXISTS `fines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fines` (
  `fine_id` int NOT NULL AUTO_INCREMENT,
  `loan_id` int DEFAULT NULL,
  `fine_date` date DEFAULT NULL,
  `fine_amount` decimal(5,2) NOT NULL,
  `paid` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`fine_id`),
  KEY `loan_id_idx` (`loan_id`),
  CONSTRAINT `loan_id` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`loan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fines`
--

LOCK TABLES `fines` WRITE;
/*!40000 ALTER TABLE `fines` DISABLE KEYS */;
INSERT INTO `fines` VALUES (83,3,'2024-01-26',6.00,0),(84,4,'2024-01-29',4.00,0),(85,5,'2024-02-01',8.00,0),(86,6,'2024-02-03',3.50,0),(87,7,'2024-02-06',10.00,0),(88,8,'2024-02-08',9.00,0),(89,9,'2024-02-11',6.50,0),(90,10,'2024-02-14',5.00,0),(94,4,'2024-01-29',4.00,0),(95,5,'2024-02-01',8.00,0),(96,6,'2024-02-03',3.50,0),(97,7,'2024-02-06',10.00,0),(98,8,'2024-02-08',9.00,0),(99,9,'2024-02-11',6.50,0),(100,10,'2024-02-14',5.00,0);
/*!40000 ALTER TABLE `fines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `genre_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`genre_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (8,'Adventure'),(9,'Biography'),(1,'Fantasy'),(6,'Historical Fiction'),(7,'Horror'),(3,'Mystery'),(10,'Philosophy'),(5,'Romance'),(2,'Science Fiction'),(4,'Thriller');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `librarians`
--

DROP TABLE IF EXISTS `librarians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `librarians` (
  `librarian_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`librarian_id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `librarians`
--

LOCK TABLES `librarians` WRITE;
/*!40000 ALTER TABLE `librarians` DISABLE KEYS */;
INSERT INTO `librarians` VALUES (1,'Sarah Johnson','sarah.johnson@email.com'),(2,'David Martinez','david.martinez@email.com'),(3,'Emily Brown','emily.brown@email.com'),(4,'Christopher Wilson','chris.wilson@email.com'),(5,'Jessica Adams','jessica.adams@email.com'),(6,'Matthew Thomas','matthew.thomas@email.com'),(7,'Laura Garcia','laura.garcia@email.com'),(8,'Daniel Harris','daniel.harris@email.com'),(9,'Sophia Robinson','sophia.robinson@email.com'),(10,'James Clark','james.clark@email.com');
/*!40000 ALTER TABLE `librarians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans` (
  `loan_id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `librarian_id` int DEFAULT NULL,
  `loan_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `returned` tinyint(1) DEFAULT '0',
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`loan_id`),
  KEY `Members_idx` (`member_id`),
  KEY `Books_idx` (`book_id`),
  KEY `librarian_id_idx` (`librarian_id`),
  CONSTRAINT `Books` FOREIGN KEY (`book_id`) REFERENCES `books` (`Books_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `librarian_id` FOREIGN KEY (`librarian_id`) REFERENCES `librarians` (`librarian_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Members` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` VALUES (3,3,3,3,'2024-01-15','2024-01-25',0,NULL),(4,4,4,4,'2024-01-18','2024-01-28',0,NULL),(5,5,5,5,'2024-01-20','2024-01-30',0,NULL),(6,6,6,6,'2024-01-25','2024-02-04',0,NULL),(7,7,7,7,'2024-01-28','2024-02-07',0,NULL),(8,8,8,8,'2024-01-30','2024-02-09',0,NULL),(9,9,9,9,'2024-02-02','2024-02-12',0,NULL),(10,10,10,10,'2024-02-05','2024-02-15',0,NULL),(73,3,3,3,'2024-01-15','2024-01-25',0,NULL),(74,4,4,4,'2024-01-18','2024-01-28',0,NULL),(75,5,5,5,'2024-01-20','2024-01-30',0,NULL),(76,6,6,6,'2024-01-25','2024-02-04',0,NULL),(77,7,7,7,'2024-01-28','2024-02-07',0,NULL),(78,8,8,8,'2024-01-30','2024-02-09',0,NULL),(79,9,9,9,'2024-02-02','2024-02-12',0,NULL),(80,10,10,10,'2024-02-05','2024-02-15',0,NULL),(83,3,3,3,'2024-01-15','2024-01-25',0,NULL),(84,4,4,4,'2024-01-18','2024-01-28',0,NULL),(85,5,5,5,'2024-01-20','2024-01-30',0,NULL),(86,6,6,6,'2024-01-25','2024-02-04',0,NULL),(87,7,7,7,'2024-01-28','2024-02-07',0,NULL),(88,8,8,8,'2024-01-30','2024-02-09',0,NULL),(89,9,9,9,'2024-02-02','2024-02-12',0,NULL),(90,10,10,10,'2024-02-05','2024-02-15',0,NULL),(93,3,3,3,'2024-01-15','2024-01-25',0,NULL),(94,4,4,4,'2024-01-18','2024-01-28',0,NULL),(95,5,5,5,'2024-01-20','2024-01-30',0,NULL),(96,6,6,6,'2024-01-25','2024-02-04',0,NULL),(97,7,7,7,'2024-01-28','2024-02-07',0,NULL),(98,8,8,8,'2024-01-30','2024-02-09',0,NULL),(99,9,9,9,'2024-02-02','2024-02-12',0,NULL),(100,10,10,10,'2024-02-05','2024-02-15',0,NULL),(101,NULL,NULL,NULL,'2025-03-14','2025-03-19',0,NULL),(102,NULL,NULL,NULL,'2025-03-14','2025-03-19',1,NULL),(201,NULL,NULL,NULL,'2025-03-14','2025-03-19',0,NULL),(999,NULL,NULL,NULL,'2025-03-14','2025-03-19',0,NULL),(1000,NULL,1,NULL,'2025-03-14','2025-03-19',0,NULL);
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_insert_loan` BEFORE INSERT ON `loans` FOR EACH ROW BEGIN
    DECLARE book_available INT;
    SELECT availability INTO book_available
    FROM books
    WHERE Books_id = NEW.book_id;

    IF book_available = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'This book is not available for borrowing!';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_insert_loan` AFTER INSERT ON `loans` FOR EACH ROW BEGIN
    UPDATE books
    SET availability = 0
    WHERE books_id = NEW.book_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_loan_check_fine` BEFORE UPDATE ON `loans` FOR EACH ROW BEGIN
    IF NEW.returned = 1 THEN
        IF EXISTS (
            SELECT 1
            FROM fines
            WHERE loan_id = NEW.loan_id AND paid = 0
        ) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Cannot update loan: Unpaid fine exists.';
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_update_loan_check` BEFORE UPDATE ON `loans` FOR EACH ROW BEGIN
    -- Example check: prevent setting returned = 1 if already returned
    IF OLD.returned = 1 AND NEW.returned = 1 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'This loan was already returned.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_update_loan_add_fine` AFTER UPDATE ON `loans` FOR EACH ROW BEGIN
    -- Check if the loan is marked returned
    IF NEW.returned = 1 THEN
        -- Check if it was returned after the due date
        IF CURDATE() > NEW.due_date THEN
            INSERT INTO fines (loan_id, member_id, fine_amount)
            VALUES (NEW.loan_id, NEW.member_id, 50.00); -- fixed fine
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_delete_loan_check_fines` BEFORE DELETE ON `loans` FOR EACH ROW BEGIN
    DECLARE unpaid_fines INT;

    SELECT COUNT(*)
    INTO unpaid_fines
    FROM fines
    WHERE loan_id = OLD.loan_id AND paid = 0;

    IF unpaid_fines > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete loan: Unpaid fine exists.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_delete_loan_check` BEFORE DELETE ON `loans` FOR EACH ROW BEGIN
    IF OLD.returned = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete a loan that has not been returned.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_delete_loan_remove_fines` AFTER DELETE ON `loans` FOR EACH ROW BEGIN
    DELETE FROM fines WHERE loan_id = OLD.loan_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_delete_loan_cleanup` AFTER DELETE ON `loans` FOR EACH ROW BEGIN
    DELETE FROM fines WHERE loan_id = OLD.loan_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `full_name` varchar(100) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'John','Doe','john.doe@example.com','09123456789','123 Main St, City, Country',1,'John Doe','123456'),(2,'Jane','Smith','jane.smith@example.com','234-567-8901','456 Elm St, City, Country',1,'Jane Smith',NULL),(3,'Sam','Johnson','sam.johnson@example.com','345-678-9012','789 Oak St, City, Country',1,'Sam Johnson',NULL),(4,'Alice','Brown','alice.brown@example.com','456-789-0123','101 Pine St, City, Country',1,'Alice Brown',NULL),(5,'Bob','Davis','bob.davis@example.com','567-890-1234','202 Maple St, City, Country',0,'Bob Davis',NULL),(6,'Emma','Wilson','emma.wilson@example.com','678-901-2345','303 Birch St, City, Country',1,'Emma Wilson',NULL),(7,'Chris','Moore','chris.moore@example.com','789-012-3456','404 Cedar St, City, Country',1,'Chris Moore',NULL),(8,'Olivia','Taylor','olivia.taylor@example.com','890-123-4567','505 Redwood St, City, Country',1,'Olivia Taylor',NULL),(9,'Ethan','Anderson','ethan.anderson@example.com','901-234-5678','606 Willow St, City, Country',1,'Ethan Anderson',NULL),(10,'Sophia','Thomas','sophia.thomas@example.com','012-345-6789','707 Spruce St, City, Country',1,'Sophia Thomas',NULL),(102,'chad','bilan','Chardz@gmail.com','09519084022','Camalig,albay',1,'Richard Bilan','123456'),(103,'za','quin','@za@gmail.com','12345678910','legaspi',1,'zaro Quin','123456'),(104,'\r\na','a','a','123','a',1,'aa','123');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returns` (
  `return_id` int NOT NULL AUTO_INCREMENT,
  `loan_id` int DEFAULT NULL,
  `return_date` date NOT NULL,
  PRIMARY KEY (`return_id`),
  KEY `Loans_idx` (`loan_id`),
  CONSTRAINT `Loans` FOREIGN KEY (`loan_id`) REFERENCES `loans` (`loan_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returns`
--

LOCK TABLES `returns` WRITE;
/*!40000 ALTER TABLE `returns` DISABLE KEYS */;
INSERT INTO `returns` VALUES (33,3,'2024-01-24'),(34,4,'2024-01-27'),(35,5,'2024-01-29'),(36,6,'2024-02-03'),(37,7,'2024-02-06'),(38,8,'2024-02-08'),(39,9,'2024-02-11'),(40,10,'2024-02-14'),(43,3,'2024-01-24'),(44,4,'2024-01-27'),(45,5,'2024-01-29'),(46,6,'2024-02-03'),(47,7,'2024-02-06'),(48,8,'2024-02-08'),(49,9,'2024-02-11'),(50,10,'2024-02-14');
/*!40000 ALTER TABLE `returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `updatable_books_view`
--

DROP TABLE IF EXISTS `updatable_books_view`;
/*!50001 DROP VIEW IF EXISTS `updatable_books_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `updatable_books_view` AS SELECT 
 1 AS `Books_id`,
 1 AS `title`,
 1 AS `author_id`,
 1 AS `genre_id`,
 1 AS `published_year`,
 1 AS `availability`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `updatable_members_view`
--

DROP TABLE IF EXISTS `updatable_members_view`;
/*!50001 DROP VIEW IF EXISTS `updatable_members_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `updatable_members_view` AS SELECT 
 1 AS `member_id`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `phone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_active_loans`
--

DROP TABLE IF EXISTS `view_active_loans`;
/*!50001 DROP VIEW IF EXISTS `view_active_loans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_active_loans` AS SELECT 
 1 AS `loan_id`,
 1 AS `book_title`,
 1 AS `member_name`,
 1 AS `loan_date`,
 1 AS `due_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_member_loan_history`
--

DROP TABLE IF EXISTS `view_member_loan_history`;
/*!50001 DROP VIEW IF EXISTS `view_member_loan_history`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_member_loan_history` AS SELECT 
 1 AS `loan_id`,
 1 AS `member_name`,
 1 AS `book_title`,
 1 AS `loan_date`,
 1 AS `due_date`,
 1 AS `return_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_overdue_loans`
--

DROP TABLE IF EXISTS `view_overdue_loans`;
/*!50001 DROP VIEW IF EXISTS `view_overdue_loans`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_overdue_loans` AS SELECT 
 1 AS `loan_id`,
 1 AS `book_title`,
 1 AS `member_name`,
 1 AS `due_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'library_management_system'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `increase_fine_fast` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `increase_fine_fast` ON SCHEDULE EVERY 10 SECOND STARTS '2025-04-04 20:56:04' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE borrowed_books
  SET fine = fine + 1.00
  WHERE returned = FALSE AND due_date < CURDATE() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'library_management_system'
--
/*!50003 DROP FUNCTION IF EXISTS `GetBookAvailability` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetBookAvailability`(bookID INT) RETURNS char(10) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE book_status CHAR(10);

    SELECT 
        CASE 
            WHEN availability = 1 THEN 'Available' 
            ELSE 'Borrowed' 
        END 
    INTO book_status
    FROM books 
    WHERE books_id = bookID;
    
    RETURN book_status;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetMemberLoanCount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetMemberLoanCount`(memberID INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE loanCount INT;
    
    SELECT COUNT(*) INTO loanCount 
    FROM loans 
    WHERE member_id = memberID;
    
    RETURN loanCount;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetMemberStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetMemberStatus`(memberID INT) RETURNS char(10) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE member_status CHAR(10);
    
    SELECT 
        CASE 
            WHEN is_active = 1 THEN 'Active'
            ELSE 'Inactive'
        END
    INTO member_status
    FROM members
    WHERE member_id = memberID;
    
    RETURN member_status;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetTotalLateFees` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetTotalLateFees`(memberID INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE totalFee DECIMAL(10,2);

    SELECT IFNULL(SUM(f.fine_amount), 0) INTO totalFee
    FROM fines f
    JOIN loans l ON f.loan_id = l.loan_id
    WHERE l.member_id = memberID;

    RETURN totalFee;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetTotalMembers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetTotalMembers`() RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE member_count INT;

    -- Count distinct members from the loans table
    SELECT COUNT(DISTINCT member_id) INTO member_count
    FROM loans;

    RETURN member_count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Apply_Late_Fees` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Apply_Late_Fees`(IN loan_id_param INT, IN fine_amount DECIMAL(5,2))
BEGIN
    INSERT INTO Fines (return_id, fine_amount)
    SELECT r.return_id, fine_amount
    FROM Returns r
    WHERE r.loan_id = loan_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetBorrowedBooks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBorrowedBooks`()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE bookTitle VARCHAR(255);
    DECLARE loanDate DATE;
    DECLARE cur CURSOR FOR 
        SELECT title, loan_date FROM books 
        JOIN loans ON books.books_id = loans.book_id 
        WHERE loans.due_date >= NOW();

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO bookTitle, loanDate;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT CONCAT('Borrowed: ', bookTitle, ' on ', loanDate) AS BorrowedBooks;
    END LOOP;

    CLOSE cur;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Member_Loans` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Member_Loans`(IN member_id_param INT)
BEGIN
    SELECT 
        l.loan_id, 
        b.title AS book_title, 
        l.loan_date, 
        l.due_date
    FROM Loans l
    JOIN Books b ON l.book_id = b.book_id
    WHERE l.member_id = member_id_param;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertBook` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertBook`(
    IN book_title VARCHAR(255),
    IN author INT,
    IN genre INT,
    IN year_published INT,
    IN is_available INT
)
BEGIN
    INSERT INTO books (title, author_id, genre_id, published_year, availability)
    VALUES (book_title, author, genre, year_published, is_available);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MarkOverdueBooks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MarkOverdueBooks`()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE bookID INT;
    DECLARE cur CURSOR FOR 
        SELECT book_id FROM loans 
        WHERE due_date < NOW() AND (returned = 0 OR returned IS NULL);

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN cur;

    update_loop: LOOP
        FETCH cur INTO bookID;
        IF done THEN
            LEAVE update_loop;
        END IF;

        -- Mark book as unavailable due to overdue
        UPDATE books SET availability = 0 WHERE books_id = bookID;
    END LOOP;

    CLOSE cur;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateBookAvailability` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateBookAvailability`(
    IN bookID INT,
    IN newAvailability INT
)
BEGIN
    UPDATE books 
    SET availability = newAvailability 
    WHERE books_id = bookID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `updatable_books_view`
--

/*!50001 DROP VIEW IF EXISTS `updatable_books_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `updatable_books_view` AS select `books`.`Books_id` AS `Books_id`,`books`.`title` AS `title`,`books`.`author_id` AS `author_id`,`books`.`genre_id` AS `genre_id`,`books`.`published_year` AS `published_year`,`books`.`availability` AS `availability` from `books` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `updatable_members_view`
--

/*!50001 DROP VIEW IF EXISTS `updatable_members_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `updatable_members_view` AS select `members`.`member_id` AS `member_id`,`members`.`first_name` AS `first_name`,`members`.`last_name` AS `last_name`,`members`.`phone` AS `phone` from `members` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_active_loans`
--

/*!50001 DROP VIEW IF EXISTS `view_active_loans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_active_loans` AS select `l`.`loan_id` AS `loan_id`,`b`.`title` AS `book_title`,concat(`m`.`first_name`,' ',`m`.`last_name`) AS `member_name`,`l`.`loan_date` AS `loan_date`,`l`.`due_date` AS `due_date` from ((`loans` `l` join `books` `b` on((`l`.`book_id` = `b`.`Books_id`))) join `members` `m` on((`l`.`member_id` = `m`.`member_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_member_loan_history`
--

/*!50001 DROP VIEW IF EXISTS `view_member_loan_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_member_loan_history` AS select `l`.`loan_id` AS `loan_id`,concat(`m`.`first_name`,' ',`m`.`last_name`) AS `member_name`,`b`.`title` AS `book_title`,`l`.`loan_date` AS `loan_date`,`l`.`due_date` AS `due_date`,if((`r`.`return_date` is null),'Not Returned',`r`.`return_date`) AS `return_status` from (((`loans` `l` join `books` `b` on((`l`.`book_id` = `b`.`Books_id`))) join `members` `m` on((`l`.`member_id` = `m`.`member_id`))) left join `returns` `r` on((`l`.`loan_id` = `r`.`return_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_overdue_loans`
--

/*!50001 DROP VIEW IF EXISTS `view_overdue_loans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_overdue_loans` AS select `l`.`loan_id` AS `loan_id`,`b`.`title` AS `book_title`,concat(`m`.`first_name`,' ',`m`.`last_name`) AS `member_name`,`l`.`due_date` AS `due_date` from ((`loans` `l` join `books` `b` on((`l`.`book_id` = `b`.`Books_id`))) join `members` `m` on((`l`.`member_id` = `m`.`member_id`))) where (`l`.`due_date` < curdate()) */;
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

-- Dump completed on 2025-05-14  0:48:29
