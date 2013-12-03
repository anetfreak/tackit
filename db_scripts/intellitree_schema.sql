-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2013 at 02:18 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `intellitree_schema`
--
CREATE DATABASE IF NOT EXISTS `intellitree_schema` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `intellitree_schema`;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_users`
--

CREATE TABLE IF NOT EXISTS `affiliate_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `domain` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_affiliate_email_idx` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Truncate table before insert `affiliate_users`
--

TRUNCATE TABLE `affiliate_users`;
-- --------------------------------------------------------

--
-- Table structure for table `tack`
--

CREATE TABLE IF NOT EXISTS `tack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tack_category_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `media` varchar(500) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `is_private` tinyint(4) NOT NULL,
  `tack_rating` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tack_category_id_idx` (`tack_category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=334 ;

--
-- Truncate table before insert `tack`
--

TRUNCATE TABLE `tack`;
--
-- Dumping data for table `tack`
--

INSERT INTO `tack` (`id`, `tack_category_id`, `title`, `description`, `url`, `media`, `is_active`, `created_date`, `modified_date`, `is_private`, `tack_rating`) VALUES
(1, 4, 'Tangy Chicken', 'Chicken Gourmet', 'http://www.lovethispic.com/image/29063/sweet-and-sour-chicken', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '4.0'),
(2, 4, 'Chocolate Desert', 'Chocolate Cake', 'http://media-cache-ak0.pinimg.com/originals/6b/5e/2d/6b5e2dd91b174846c8adabe365809c91.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '4.5'),
(3, 4, 'Mini Pizza', 'Pizza Bites', 'http://media-cache-ak0.pinimg.com/originals/60/78/44/60784459ec019e6b1e9efb30785f1dc0.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '3.0'),
(4, 4, 'Big Burger', 'Burger King! ', 'http://media-cache-ak0.pinimg.com/originals/95/fc/35/95fc35ee49aeff43643aac943c4d642c.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '3.5'),
(5, 4, 'Quiche', 'Quiche Lorraine', 'http://media-cache-ec0.pinimg.com/originals/d4/76/21/d476210cde3648cc93ae22b2df30d930.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '4.0'),
(6, 5, 'Thailand', 'Child in Thailand ', 'http://media-cache-ak0.pinimg.com/originals/63/1f/57/631f57803724eeca25ef4ded25e1e9d2.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '4.0'),
(7, 5, 'India', 'Taj Mahal', 'http://www.itsgoodforus.com/wp-content/uploads/2011/04/beata-taj-mahal.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '3.0'),
(8, 5, 'China', 'Great Wall Of China', 'http://jinshanlinggreatwall.com/wp-content/uploads/2013/11/great-wall-china2.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '4.0'),
(9, 5, 'Tanzania', 'The Great Migration - Serengiti ', 'http://media1.s-nbcnews.com/j/MSNBC/Components/Photo/_new/100921-Serengeti-hmed-1a.grid-10x2.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '3.6'),
(11, 5, 'Canada', 'Niagra Falls', 'http://freshadda.com/images_adda/Niagara_Falls/Niagara%20Falls%202.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '4.0'),
(12, 6, 'Flowers and Mountains', 'Bachalpseeflowers', 'http://upload.wikimedia.org/wikipedia/commons/1/1a/Bachalpseeflowers.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '4.0'),
(13, 6, 'Sunrise', 'Cape Sounion', 'http://wordlesstech.com/wp-content/uploads/2011/04/sunrise-cape-sounion.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '4.0'),
(14, 6, 'Beach', 'Sunny Beach', 'http://fc08.deviantart.net/fs71/f/2010/327/4/c/sunny_beach_14475003_by_stockproject1-d33h5n6.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '3.0'),
(15, 6, 'Valley', 'Hanging Valley', 'http://0.tqn.com/d/geology/1/0/w/V/1/hangingvalley.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '3.2'),
(16, 6, 'Sunset', 'Miami Sunset', 'http://tropicalsailin.wpengine.netdna-cdn.com/wp-content/uploads/2012/03/sunset08.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '4.0'),
(17, 6, 'Sunset', 'Sunset with Birds', 'http://farm1.staticflickr.com/104/250558323_88fd7e59d4_o.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '4.3'),
(18, 6, 'Sunrise', 'Amazing Sunrise', 'http://www.graphicfetish.com/wp-content/uploads/2011/01/peru5.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '4.7'),
(19, 6, 'Streams', 'Pristine Waters', 'http://m9.i.pbase.com/o5/29/714229/1/69027109.LwCdXyQE.TremontStreamColors.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '4.0'),
(20, 4, 'Indian Food', 'Silver Thali', 'http://www.fuzzychef.org/uploads/food_pictures/india/silver_thali.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '4.0'),
(21, 4, 'Thai Cuisine', 'Krua Thai Food', 'http://blogs.phoenixnewtimes.com/bella/KruaThaiFoodJackieMercandetti.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '4.8'),
(22, 4, 'Japanese Cuisine', 'Sushi Platter', 'http://0.tqn.com/d/saltlakecity/1/0/L/L/-/-/Benihana-Sushi.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-25 22:00:19', 0, '4.0'),
(23, 4, 'Ravioli', 'Pumpkin Ravioli', 'http://secretrecipeclub.com/wp-content/uploads/2012/09/Pumpkin-Ravioli-with-Garlic-Butter.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-24 22:00:19', 0, '4.0'),
(24, 4, 'Icecream', 'Icecream with Strawberry', 'http://www.photo-dictionary.com/photofiles/list/11488/16308strawberry_ice-cream.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-24 22:00:19', 0, '4.0'),
(25, 5, 'Egypt', 'Pyramid Of Giza', 'http://globalpridetravel.com/wp-content/uploads/2013/02/Pyramids-of-Giza-Egypt-History.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-24 22:00:19', 0, '4.0'),
(26, 5, 'Dubai', 'Burh Khalifa', 'http://www.constructionweekonline.com/pictures/Burj-Khalifa.gif', NULL, 1, '2013-11-23 22:00:19', '2013-11-24 22:00:19', 0, '3.9'),
(27, 5, 'Paris', 'Eiffel Tower', 'http://www.glsvlsi.org/paris_pic.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-24 22:00:19', 0, '4.8'),
(28, 6, 'Mountains', 'Himalayas', 'http://www.bestourism.com/img/items/big/97/243.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-24 22:00:19', 0, '4.2'),
(29, 6, 'Fall Colours', 'Trees - Fall Colours', 'http://wmbf.images.worldnow.com/images/23595841_BG1.jpg', NULL, 1, '2013-11-23 22:00:19', '2013-11-24 22:00:19', 0, '4.6'),
(30, 6, 'Lake', 'Lake Langlois', 'http://your.kingcounty.gov/dnrp/wlr/water-resources/small-lakes/data/Images/Langlois.JPG', NULL, 1, '2013-11-23 22:00:19', '2013-11-24 22:00:19', 0, '4.0'),
(31, 1, '2013 Nissan IDx Freeflow', 'Nissan', 'http://www.pinterest.com/pin/537476536750467896/', NULL, 1, '2013-11-26 14:54:00', '2013-11-26 14:54:00', 0, '5.0'),
(32, 1, '1968 Alfa Romeo Carabo', 'Carabo', 'http://www.pinterest.com/pin/294704369337492444/', NULL, 1, '2013-11-26 14:54:01', '2013-11-26 14:54:01', 0, '4.0'),
(34, 1, 'Lamborghini Veneno', 'Lamborghini', 'http://www.pinterest.com/pin/515873332288003530/', NULL, 1, '2013-11-26 14:54:03', '2013-11-26 14:54:03', 0, '5.0'),
(35, 1, 'Land Rover Defender', 'Land Rover', 'http://www.pinterest.com/pin/42010208998006277/', NULL, 1, '2013-11-26 14:54:04', '2013-11-26 14:54:04', 0, '1.0'),
(36, 2, 'Science', 'This is Science Section', 'http://the-libertarian.co.uk/wp-content/uploads/enjoy_science.jpg', NULL, 1, '2013-11-26 14:54:05', '2013-11-26 14:54:05', 0, '3.2'),
(37, 2, 'Mathematics', 'This is Math Section', 'http://www.clare.cam.ac.uk/data/uploads/admissions/undergraduate/subjects/Mathematics.jpg', NULL, 1, '2013-11-26 14:54:06', '2013-11-26 14:54:06', 0, '5.0'),
(38, 2, 'Politics', 'This is Politics Section', 'http://queens-politics.com/wp-content/uploads/2013/11/vote.jpg', NULL, 1, '2013-11-26 14:54:07', '2013-11-26 14:54:07', 0, '2.0'),
(39, 2, 'Economics', 'This is Economic Section', 'http://www.cascadesoft.net/siteimages/economy.jpg', NULL, 1, '2013-11-26 14:54:08', '2013-11-26 14:54:08', 0, '4.0'),
(40, 2, 'Software', 'This is Software Section', 'http://www.isgtw.org/images/2010/SoftwareEcosystemLarge.jpg', NULL, 1, '2013-11-26 14:54:09', '2013-11-26 14:54:09', 0, '3.0'),
(41, 3, 'Portrait', 'Close Up ', 'https://scontent-b-pao.xx.fbcdn.net/hphotos-frc3/s720x720/315660_452789464802758_814556720_n.jpg', NULL, 1, '2013-11-26 14:54:10', '2013-11-26 14:54:10', 0, '5.0'),
(42, 3, 'Model', 'Fashion', 'https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-prn2/1400497_554232237991813_702431457_o.jpg', NULL, 1, '2013-11-26 14:54:11', '2013-11-26 14:54:11', 0, '4.0'),
(43, 3, 'Landscape', 'Beach', 'https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-ash4/1276744_525564347525269_1589536373_o.jpg', NULL, 1, '2013-11-26 14:54:12', '2013-11-26 14:54:12', 0, '5.0'),
(44, 3, 'Paranormal', 'Ghost Pics', 'http://collider.com/wp-content/uploads/paranormal-activity-4-kathryn-newton.jpg', NULL, 1, '2013-11-26 14:54:13', '2013-11-26 14:54:13', 0, '3.0'),
(45, 3, 'Wedding', 'Western', 'http://www.sandhillsweddingexpo.com/Portals/92/wedding-rings-wallpaper1.jpg', NULL, 1, '2013-11-26 14:54:14', '2013-11-26 14:54:14', 0, '5.0'),
(46, 1, 'Cruiser Bikes', 'Yamaha', 'http://www.thefosterguide.com/wp-content/uploads/2013/03/b9933__2014-Star-Motorcycle-Bolt-studio.jpg', NULL, 1, '2013-11-26 14:54:15', '2013-11-26 14:54:15', 0, '4.0'),
(47, 1, 'Dirt Bikes', 'Norton', 'http://www.motorcyclemuseum.org/asp/membersonly/museum/images/b92/NortonManx_600.jpg', NULL, 1, '2013-11-26 14:54:16', '2013-11-26 14:54:16', 0, '5.0'),
(48, 1, 'Sports Bikes', 'BMW', 'http://thekneeslider.com/images/imme1200.jpg', NULL, 1, '2013-11-26 14:54:17', '2013-11-26 14:54:17', 0, '2.0'),
(49, 1, 'Bicycles', 'A-bike ', 'http://greenlinebicycles.com/upload/product/original/BC-706M-11-Burgundy_1.jpg', NULL, 1, '2013-11-26 14:54:18', '2013-11-26 14:54:18', 0, '2.0'),
(50, 1, 'Tri Cycles', 'Bajaj', 'https://s3.amazonaws.com/assets.svpply.com/large/285345.jpg?1383836287', NULL, 1, '2013-11-26 14:54:19', '2013-11-26 14:54:19', 0, '2.0'),
(51, 2, 'Chemistry', 'This is Chemistry Section', 'http://sciencespot.net/Media/atom2.jpg', NULL, 1, '2013-11-26 14:54:21', '2013-11-26 14:54:21', 0, '3.0'),
(52, 2, 'Arts', 'This is Arts Section', 'http://www.creativeeducation.co.uk/blog/wp-content/uploads/2010/11/arts-pic.jpg', NULL, 1, '2013-11-26 14:54:22', '2013-11-26 14:54:22', 0, '4.0'),
(53, 2, 'Commerce', 'This is Commerce Section', 'http://likemindtech.com/images/e-commerce.jpg', NULL, 1, '2013-11-26 14:54:23', '2013-11-26 14:54:23', 0, '5.0'),
(54, 2, 'Psycology', 'This is Psycology Section', 'http://bama.ua.edu/~sprentic/Head%20psychology%20logo.jpg', NULL, 1, '2013-11-26 14:54:24', '2013-11-26 14:54:24', 0, '1.0'),
(55, 2, 'Statistics', 'This is Statistics Section', 'http://louisehsu.files.wordpress.com/2011/10/statistics.jpg', NULL, 1, '2013-11-26 14:54:25', '2013-11-26 14:54:25', 0, '1.0'),
(56, 3, 'Nude', NULL, 'http://beauty-health-art.com/gallery/Michele_Clement/image/04.jpg', NULL, 1, '2013-11-26 14:54:26', '2013-11-26 14:54:26', 0, '2.0'),
(57, 3, 'Wildlife', NULL, 'http://infotech4you.com/wp-content/uploads/2013/04/Info-Tech-pic1.jpg', NULL, 1, '2013-11-26 14:54:27', '2013-11-26 14:54:27', 0, '3.0'),
(58, 3, 'Macro', NULL, 'http://www.thisiscolossal.com/wp-content/uploads/2012/09/chambon-4.jpg', NULL, 1, '2013-11-26 14:54:28', '2013-11-26 14:54:28', 0, '3.0'),
(59, 3, 'Silhouette', NULL, 'http://www.smashingapps.com/wp-content/uploads/2010/05/Silhouette-Photography/silhouette5.jpg', NULL, 1, '2013-11-26 14:54:29', '2013-11-26 14:54:29', 0, '4.0'),
(60, 3, 'Free Style', NULL, 'http://darkroom.baltimoresun.com/wp-content/uploads/2012/08/REU-OLY-WRES-WRMF55-ROUNDS-.jpg', NULL, 1, '2013-11-26 14:54:30', '2013-11-26 14:54:30', 0, '5.0'),
(333, 1, 'Honda CRX', 'Honda', 'http://www.pinterest.com/pin/365706432212790491/', NULL, 1, '2013-11-26 14:54:02', '2013-11-26 14:54:02', 0, '3.0');

-- --------------------------------------------------------

--
-- Table structure for table `tack_board_mapping`
--

CREATE TABLE IF NOT EXISTS `tack_board_mapping` (
  `tack_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  KEY `fk_board_id_tack_mapping_idx` (`board_id`),
  KEY `fk_tack_id_board_mapping_idx` (`tack_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tack_board_mapping`
--

TRUNCATE TABLE `tack_board_mapping`;
-- --------------------------------------------------------

--
-- Table structure for table `tack_category`
--

CREATE TABLE IF NOT EXISTS `tack_category` (
  `tack_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` enum('FOOD','TRAVEL','PHOTOGRAPHY','NATURE','AUTOMOBILE','EDUCATION') DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tack_category_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Truncate table before insert `tack_category`
--

TRUNCATE TABLE `tack_category`;
--
-- Dumping data for table `tack_category`
--

INSERT INTO `tack_category` (`tack_category_id`, `name`, `description`) VALUES
(1, 'AUTOMOBILE', 'For Automobile Lovers'),
(2, 'EDUCATION', 'Education Today'),
(3, 'PHOTOGRAPHY', 'The Photography Blog'),
(4, 'FOOD', 'Foodies Paradise'),
(5, 'TRAVEL', 'Around the World'),
(6, 'NATURE', 'Tranquility Unfolds');

-- --------------------------------------------------------

--
-- Table structure for table `tack_category_mapping`
--

CREATE TABLE IF NOT EXISTS `tack_category_mapping` (
  `tack_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`tack_id`),
  KEY `fk_category_id_tack_mapping_idx` (`category_id`),
  KEY `fk_tack_id_category_mapping_idx` (`tack_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tack_category_mapping`
--

TRUNCATE TABLE `tack_category_mapping`;
--
-- Dumping data for table `tack_category_mapping`
--

INSERT INTO `tack_category_mapping` (`tack_id`, `category_id`) VALUES
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(24, 4),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(11, 5),
(25, 5),
(26, 5),
(27, 5),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(28, 6),
(29, 6),
(30, 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `account_type` enum('NORMAL','PREMIUM') NOT NULL DEFAULT 'NORMAL',
  `user_type` enum('NORMAL','AFFILIATE','ADMIN') NOT NULL DEFAULT 'NORMAL',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `bookmarks` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `password`, `account_type`, `user_type`, `is_active`, `bookmarks`) VALUES
(1, 'abb@gmail.com', 'sheetal', 'p', 'blah', 'NORMAL', 'NORMAL', 1, NULL),
(2, 'johndoe@gmail.com', 'john', 'doe', 'aaa', 'NORMAL', 'NORMAL', 1, NULL),
(3, 'jdoe@gmail.com', 'johnny', 'doe', 'bbb', 'NORMAL', 'NORMAL', 1, NULL),
(9, 'p.s@g.com', 'purva', 'sabnis', 'ps', 'NORMAL', 'NORMAL', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_boards`
--

CREATE TABLE IF NOT EXISTS `user_boards` (
  `board_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  `is_private` tinyint(4) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `user_boards`
--

TRUNCATE TABLE `user_boards`;
-- --------------------------------------------------------

--
-- Table structure for table `user_board_mapping`
--

CREATE TABLE IF NOT EXISTS `user_board_mapping` (
  `user_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  KEY `fk_user_id_tack_mapping_idx` (`user_id`),
  KEY `fk_board_id_mapping_idx` (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `user_board_mapping`
--

TRUNCATE TABLE `user_board_mapping`;
-- --------------------------------------------------------

--
-- Table structure for table `user_categories_mapping`
--

CREATE TABLE IF NOT EXISTS `user_categories_mapping` (
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `user_categories_mapping`
--

TRUNCATE TABLE `user_categories_mapping`;
-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `members` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Truncate table before insert `user_groups`
--

TRUNCATE TABLE `user_groups`;
-- --------------------------------------------------------

--
-- Table structure for table `user_group_mapping`
--

CREATE TABLE IF NOT EXISTS `user_group_mapping` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  KEY `fk_group_id_mapping_idx` (`group_id`),
  KEY `fk_user_id_mapping_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `user_group_mapping`
--

TRUNCATE TABLE `user_group_mapping`;
-- --------------------------------------------------------

--
-- Table structure for table `user_security_profile`
--

CREATE TABLE IF NOT EXISTS `user_security_profile` (
  `email` varchar(100) NOT NULL,
  `security_question_1` varchar(100) NOT NULL,
  `security_answer_1` varchar(100) NOT NULL,
  `security_question_2` varchar(100) NOT NULL COMMENT '		',
  `security_answer_2` varchar(100) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `user_security_profile`
--

TRUNCATE TABLE `user_security_profile`;
-- --------------------------------------------------------

--
-- Table structure for table `user_tacks_mapping`
--

CREATE TABLE IF NOT EXISTS `user_tacks_mapping` (
  `user_id` int(11) NOT NULL,
  `tack_id` int(11) NOT NULL,
  KEY `fk_tack_id_mapping_idx` (`tack_id`),
  KEY `fk_user_tack_mapping_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `user_tacks_mapping`
--

TRUNCATE TABLE `user_tacks_mapping`;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `affiliate_users`
--
ALTER TABLE `affiliate_users`
  ADD CONSTRAINT `fk_affiliate_email` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tack`
--
ALTER TABLE `tack`
  ADD CONSTRAINT `fk_tack_category_id` FOREIGN KEY (`tack_category_id`) REFERENCES `tack_category` (`tack_category_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tack_board_mapping`
--
ALTER TABLE `tack_board_mapping`
  ADD CONSTRAINT `fk_board_id_tack_mapping` FOREIGN KEY (`board_id`) REFERENCES `user_boards` (`board_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tack_id_board_mapping` FOREIGN KEY (`tack_id`) REFERENCES `tack` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tack_category_mapping`
--
ALTER TABLE `tack_category_mapping`
  ADD CONSTRAINT `fk_category_id_tack_mapping` FOREIGN KEY (`category_id`) REFERENCES `tack_category` (`tack_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tack_id_category_mapping` FOREIGN KEY (`tack_id`) REFERENCES `tack` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_board_mapping`
--
ALTER TABLE `user_board_mapping`
  ADD CONSTRAINT `fk_board_id_mapping` FOREIGN KEY (`board_id`) REFERENCES `user_boards` (`board_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_id_tack_mapping` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_categories_mapping`
--
ALTER TABLE `user_categories_mapping`
  ADD CONSTRAINT `user_categories_mapping_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_categories_mapping_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tack_category` (`tack_category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_group_mapping`
--
ALTER TABLE `user_group_mapping`
  ADD CONSTRAINT `fk_group_id_mapping` FOREIGN KEY (`group_id`) REFERENCES `user_groups` (`group_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_id_mapping` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_security_profile`
--
ALTER TABLE `user_security_profile`
  ADD CONSTRAINT `fk_security_email` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_tacks_mapping`
--
ALTER TABLE `user_tacks_mapping`
  ADD CONSTRAINT `fk_tack_id_mapping` FOREIGN KEY (`tack_id`) REFERENCES `tack` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_tack_mapping` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
