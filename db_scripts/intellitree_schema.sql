CREATE DATABASE  IF NOT EXISTS `intellitree_schema` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `intellitree_schema`;
-- MySQL dump 10.13  Distrib 5.6.13, for osx10.6 (i386)
--
-- Host: 127.0.0.1    Database: intellitree_schema
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `affiliate_users`
--

DROP TABLE IF EXISTS `affiliate_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliate_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `domain` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_affiliate_email_idx` (`email`),
  CONSTRAINT `fk_affiliate_email` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tack`
--

DROP TABLE IF EXISTS `tack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tack_category_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `media` blob,
  `is_active` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `is_private` tinyint(4) NOT NULL,
  `tack_rating` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tack_category_id_idx` (`tack_category_id`),
  CONSTRAINT `fk_tack_category_id` FOREIGN KEY (`tack_category_id`) REFERENCES `tack_category` (`tack_category_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tack_board_mapping`
--

DROP TABLE IF EXISTS `tack_board_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tack_board_mapping` (
  `tack_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  KEY `fk_board_id_tack_mapping_idx` (`board_id`),
  KEY `fk_tack_id_board_mapping_idx` (`tack_id`),
  CONSTRAINT `fk_board_id_tack_mapping` FOREIGN KEY (`board_id`) REFERENCES `user_boards` (`board_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tack_id_board_mapping` FOREIGN KEY (`tack_id`) REFERENCES `tack` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tack_category`
--

DROP TABLE IF EXISTS `tack_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tack_category` (
  `tack_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` enum('FOOD','TRAVEL','PHOTOGRAPHY','NATURE','AUTOMOBILE','EDUCATION') DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tack_category_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tack_category_mapping`
--

DROP TABLE IF EXISTS `tack_category_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tack_category_mapping` (
  `tack_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  KEY `fk_category_id_tack_mapping_idx` (`category_id`),
  KEY `fk_tack_id_category_mapping_idx` (`tack_id`),
  CONSTRAINT `fk_category_id_tack_mapping` FOREIGN KEY (`category_id`) REFERENCES `tack_category` (`tack_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tack_id_category_mapping` FOREIGN KEY (`tack_id`) REFERENCES `tack` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_board_mapping`
--

DROP TABLE IF EXISTS `user_board_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_board_mapping` (
  `user_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  KEY `fk_user_id_tack_mapping_idx` (`user_id`),
  KEY `fk_board_id_mapping_idx` (`board_id`),
  CONSTRAINT `fk_board_id_mapping` FOREIGN KEY (`board_id`) REFERENCES `user_boards` (`board_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_id_tack_mapping` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_boards`
--

DROP TABLE IF EXISTS `user_boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_boards` (
  `board_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  `is_private` tinyint(4) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_group_mapping`
--

DROP TABLE IF EXISTS `user_group_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group_mapping` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  KEY `fk_group_id_mapping_idx` (`group_id`),
  KEY `fk_user_id_mapping_idx` (`user_id`),
  CONSTRAINT `fk_group_id_mapping` FOREIGN KEY (`group_id`) REFERENCES `user_groups` (`group_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_id_mapping` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `members` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_security_profile`
--

DROP TABLE IF EXISTS `user_security_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_security_profile` (
  `email` varchar(100) NOT NULL,
  `security_question_1` varchar(100) NOT NULL,
  `security_answer_1` varchar(100) NOT NULL,
  `security_question_2` varchar(100) NOT NULL COMMENT '		',
  `security_answer_2` varchar(100) NOT NULL,
  PRIMARY KEY (`email`),
  CONSTRAINT `fk_security_email` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_tacks_mapping`
--

DROP TABLE IF EXISTS `user_tacks_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tacks_mapping` (
  `user_id` int(11) NOT NULL,
  `tack_id` int(11) NOT NULL,
  KEY `fk_tack_id_mapping_idx` (`tack_id`),
  KEY `fk_user_tack_mapping_idx` (`user_id`),
  CONSTRAINT `fk_tack_id_mapping` FOREIGN KEY (`tack_id`) REFERENCES `tack` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_tack_mapping` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `account_type` enum('NORMAL','PREMIUM') NOT NULL DEFAULT 'NORMAL',
  `user_type` enum('NORMAL','AFFILIATE','ADMIN') NOT NULL DEFAULT 'NORMAL',
  `is_active` tinyint(4) NOT NULL,
  `bookmarks` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-11-26 15:31:19
