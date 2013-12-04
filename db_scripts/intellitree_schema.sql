-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	4.1.22-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema intellitree_schema
--

CREATE DATABASE IF NOT EXISTS intellitree_schema;
USE intellitree_schema;

--
-- Definition of table `affiliate_users`
--

DROP TABLE IF EXISTS `affiliate_users`;
CREATE TABLE `affiliate_users` (
  `id` int(11) NOT NULL auto_increment,
  `email` varchar(100) default NULL,
  `domain` varchar(100) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_affiliate_email_idx` (`email`),
  CONSTRAINT `fk_affiliate_email` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `affiliate_users`
--

/*!40000 ALTER TABLE `affiliate_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `affiliate_users` ENABLE KEYS */;


--
-- Definition of table `tack`
--

DROP TABLE IF EXISTS `tack`;
CREATE TABLE `tack` (
  `id` int(11) NOT NULL auto_increment,
  `tack_category_id` int(11) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `description` varchar(200) default NULL,
  `url` varchar(100) NOT NULL default '',
  `media` text,
  `is_active` tinyint(4) NOT NULL default '0',
  `created_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `is_private` tinyint(4) NOT NULL default '0',
  `tack_rating` decimal(2,1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_tack_category_id_idx` (`tack_category_id`),
  CONSTRAINT `fk_tack_category_id` FOREIGN KEY (`tack_category_id`) REFERENCES `tack_category` (`tack_category_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tack`
--

/*!40000 ALTER TABLE `tack` DISABLE KEYS */;
INSERT INTO `tack` (`id`,`tack_category_id`,`title`,`description`,`url`,`media`,`is_active`,`created_date`,`modified_date`,`is_private`,`tack_rating`) VALUES 
 (6,5,'Thailand','Child in Thailand','http://wikitravel.org/en/Thailand','http://media-cache-ak0.pinimg.com/originals/63/1f/57/631f57803724eeca25ef4ded25e1e9d2.jpg',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'4.0'),
 (7,5,'India','Taj Mahal','http://www.itsgoodforus.com/','http://www.itsgoodforus.com/wp-content/uploads/2011/04/beata-taj-mahal.jpg',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'3.0'),
 (8,5,'China','Great Wall Of China','http://jinshanlinggreatwall.com/','http://jinshanlinggreatwall.com/wp-content/uploads/2013/11/great-wall-china2.jpg',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'4.0'),
 (9,5,'Tanzania','The Great Migration - Serengiti','http://wikitravel.org/en/Tanzania','http://media1.s-nbcnews.com/j/MSNBC/Components/Photo/_new/100921-Serengeti-hmed-1a.grid-10x2.jpg',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'3.6'),
 (11,5,'Canada','Niagra Falls','http://freshadda.com/images_adda/Niagara_Falls/','http://freshadda.com/images_adda/Niagara_Falls/Niagara%20Falls%202.jpg',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'4.0'),
 (12,6,'Flowers and Mountains','Bachalpseeflowers','http://sweet-nature2.blogspot.com/2010/01/bachalpsee-flowers.html','http://upload.wikimedia.org/wikipedia/commons/1/1a/Bachalpseeflowers.jpg',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'4.0'),
 (13,6,'Sunrise','Cape Sounion','http://wordlesstech.com/','http://wordlesstech.com/wp-content/uploads/2011/04/sunrise-cape-sounion.jpg',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'4.0'),
 (14,6,'Beach','Sunny Beach','http://www.deviantart.com/','http://fc08.deviantart.net/fs71/f/2010/327/4/c/sunny_beach_14475003_by_stockproject1-d33h5n6.jpg',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'3.0'),
 (15,6,'Valley','Hanging Valley','http://www.miningco.com/','http://0.tqn.com/d/geology/1/0/w/V/1/hangingvalley.jpg',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'3.2'),
 (16,6,'Sunset','Miami Sunset','http://tropicalsailin.wpengine.netdna-cdn.com/wp-content/uploads/2012/03/sunset08.jpg','http://tropicalsailin.wpengine.netdna-cdn.com/',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'4.0'),
 (17,6,'Sunset','Sunset with Birds','http://news.nationalgeographic.com/news/2004/04/0415_040415_songbirdmigration_2.html','http://farm1.staticflickr.com/104/250558323_88fd7e59d4_o.jpg',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'4.3'),
 (18,6,'Sunrise','Amazing Sunrise','http://www.graphicfetish.com/','http://www.graphicfetish.com/wp-content/uploads/2011/01/peru5.jpg',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'4.7'),
 (19,6,'Streams','Pristine Waters','http://www.houzz.com/natural-pristine-water','http://m9.i.pbase.com/o5/29/714229/1/69027109.LwCdXyQE.TremontStreamColors.jpg',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'4.0'),
 (20,4,'Indian Food','Silver Thali','http://www.fuzzychef.org/','http://www.fuzzychef.org/uploads/food_pictures/india/silver_thali.jpg',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'4.0'),
 (21,4,'Thai Cuisine','Krua Thai Food','http://blogs.phoenixnewtimes.com/','http://blogs.phoenixnewtimes.com/bella/KruaThaiFoodJackieMercandetti.jpg',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'4.8'),
 (22,4,'Japanese Cuisine','Sushi Platter','http://www.miningco.com/','http://0.tqn.com/d/saltlakecity/1/0/L/L/-/-/Benihana-Sushi.jpg',1,'2013-11-23 22:00:19','2013-11-25 22:00:19',0,'4.0'),
 (23,4,'Ravioli','Pumpkin Ravioli','http://secretrecipeclub.com/','http://secretrecipeclub.com/wp-content/uploads/2012/09/Pumpkin-Ravioli-with-Garlic-Butter.jpg',1,'2013-11-23 22:00:19','2013-11-24 22:00:19',0,'4.0'),
 (24,4,'Icecream','Icecream with Strawberry','http://www.photo-dictionary.com/','http://www.photo-dictionary.com/photofiles/list/11488/16308strawberry_ice-cream.jpg',1,'2013-11-23 22:00:19','2013-11-24 22:00:19',0,'4.0'),
 (25,5,'Egypt','Pyramid Of Giza','http://globalpridetravel.com/','http://globalpridetravel.com/wp-content/uploads/2013/02/Pyramids-of-Giza-Egypt-History.jpg',1,'2013-11-23 22:00:19','2013-11-24 22:00:19',0,'4.0'),
 (26,5,'Dubai','Burh Khalifa','http://wikitravel.org/en/Dubai','http://www.constructionweekonline.com/pictures/Burj-Khalifa.gif',1,'2013-11-23 22:00:19','2013-11-24 22:00:19',0,'3.9'),
 (27,5,'Paris','Eiffel Tower','http://www.glsvlsi.org/','http://www.glsvlsi.org/paris_pic.jpg',1,'2013-11-23 22:00:19','2013-11-24 22:00:19',0,'4.8'),
 (31,1,'2013 Nissan IDx Freeflow','Nissan','http://www.pinterest.com/pin/537476536750467896/','http://www.supercars.net/Pics?p=2013_Nissan_IDxFreeflow-1&v=y&s=c&id=6247&res=y',1,'2013-11-26 14:54:00','2013-11-26 14:54:00',0,'5.0'),
 (32,1,'1968 Alfa Romeo Carabo','Carabo','http://www.pinterest.com/pin/294704369337492444/','http://4.bp.blogspot.com/-0BR5V0wiCb0/UmrqWO759rI/AAAAAAAACRk/RxosIbKWz4I/s1600/1968_Bertone_Alfa-Romeo_Carabo_Studio-Shot_03.jpg',1,'2013-11-26 14:54:01','2013-11-26 14:54:01',0,'4.0'),
 (34,1,'Lamborghini Veneno','Lamborghini','http://www.pinterest.com/pin/515873332288003530/','http://www.flickr.com/photos/sssupersports/9686892521/',1,'2013-11-26 14:54:03','2013-11-26 14:54:03',0,'5.0'),
 (36,2,'Science','This is Science Section','http://the-libertarian.co.uk/','http://the-libertarian.co.uk/wp-content/uploads/enjoy_science.jpg',1,'2013-11-26 14:54:05','2013-11-26 14:54:05',0,'3.2'),
 (37,2,'Mathematics','This is Math Section','http://www.clare.cam.ac.uk/Home/','http://www.clare.cam.ac.uk/data/uploads/admissions/undergraduate/subjects/Mathematics.jpg',1,'2013-11-26 14:54:06','2013-11-26 14:54:06',0,'5.0'),
 (38,2,'Politics','This is Politics Section','http://queens-politics.com/','http://queens-politics.com/wp-content/uploads/2013/11/vote.jpg',1,'2013-11-26 14:54:07','2013-11-26 14:54:07',0,'2.0'),
 (39,2,'Economics','This is Economic Section','http://www.cascadesoft.net/default.aspx','http://www.cascadesoft.net/siteimages/economy.jpg',1,'2013-11-26 14:54:08','2013-11-26 14:54:08',0,'4.0'),
 (40,2,'Software','This is Software Section','http://www.isgtw.org/','http://www.isgtw.org/images/2010/SoftwareEcosystemLarge.jpg',1,'2013-11-26 14:54:09','2013-11-26 14:54:09',0,'3.0'),
 (41,3,'Portrait','Close Up','http://www.picturecorrect.com/tips/close-up-portrait-photo-tips/','https://scontent-b-pao.xx.fbcdn.net/hphotos-frc3/s720x720/315660_452789464802758_814556720_n.jpg',1,'2013-11-26 14:54:10','2013-11-26 14:54:10',0,'5.0'),
 (42,3,'Model','Fashion','http://goykphoto.com/','https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-prn2/1400497_554232237991813_702431457_o.jpg',1,'2013-11-26 14:54:11','2013-11-26 14:54:11',0,'4.0'),
 (43,3,'Landscape','Beach','http://www.thisiscolossal.com/2013/09/joseph-ford-aerial-fashion/','https://fbcdn-sphotos-b-a.akamaihd.net/hphotos-ak-ash4/1276744_525564347525269_1589536373_o.jpg',1,'2013-11-26 14:54:12','2013-11-26 14:54:12',0,'5.0'),
 (44,3,'Paranormal','Ghost Pics','http://collider.com/','http://collider.com/wp-content/uploads/paranormal-activity-4-kathryn-newton.jpg',1,'2013-11-26 14:54:13','2013-11-26 14:54:13',0,'3.0'),
 (45,3,'Wedding','Western','http://www.sandhillsweddingexpo.com/','http://www.sandhillsweddingexpo.com/Portals/92/wedding-rings-wallpaper1.jpg',1,'2013-11-26 14:54:14','2013-11-26 14:54:14',0,'5.0'),
 (46,1,'Cruiser Bikes','Yamaha','http://www.thefosterguide.com/wp-content/uploads/2013/03/b9933__2014-Star-Motorcycle-Bolt-studio.jpg',NULL,1,'2013-11-26 14:54:15','2013-11-26 14:54:15',0,'4.0'),
 (47,1,'Dirt Bikes','Norton','http://www.motorcyclemuseum.org/asp/membersonly/museum/images/b92/NortonManx_600.jpg',NULL,1,'2013-11-26 14:54:16','2013-11-26 14:54:16',0,'5.0'),
 (48,1,'Sports Bikes','BMW','http://thekneeslider.com/images/imme1200.jpg',NULL,1,'2013-11-26 14:54:17','2013-11-26 14:54:17',0,'2.0'),
 (49,1,'Bicycles','A-bike','http://greenlinebicycles.com/upload/product/original/BC-706M-11-Burgundy_1.jpg',NULL,1,'2013-11-26 14:54:18','2013-11-26 14:54:18',0,'2.0'),
 (50,1,'Tri Cycles','Bajaj','https://s3.amazonaws.com/assets.svpply.com/large/285345.jpg?1383836287',NULL,1,'2013-11-26 14:54:19','2013-11-26 14:54:19',0,'2.0'),
 (51,2,'Chemistry','This is Chemistry Section','http://sciencespot.net/','http://sciencespot.net/Media/atom2.jpg',1,'2013-11-26 14:54:21','2013-11-26 14:54:21',0,'3.0'),
 (52,2,'Arts','This is Arts Section','http://www.creativeeducation.co.uk/blog/','http://www.creativeeducation.co.uk/blog/wp-content/uploads/2010/11/arts-pic.jpg',1,'2013-11-26 14:54:22','2013-11-26 14:54:22',0,'4.0'),
 (53,2,'Commerce','This is Commerce Section','http://likemindtech.com/','http://likemindtech.com/images/e-commerce.jpg',1,'2013-11-26 14:54:23','2013-11-26 14:54:23',0,'5.0'),
 (54,2,'Psycology','This is Psycology Section','https://mybama.ua.edu/cp/home/displaylogin','http://bama.ua.edu/~sprentic/Head%20psychology%20logo.jpg',1,'2013-11-26 14:54:24','2013-11-26 14:54:24',0,'1.0'),
 (55,2,'Statistics','This is Statistics Section','http://louisehsu.wordpress.com/','http://louisehsu.files.wordpress.com/2011/10/statistics.jpg',1,'2013-11-26 14:54:25','2013-11-26 14:54:25',0,'1.0'),
 (56,3,'Nude',NULL,'http://beauty-health-art.com/','http://beauty-health-art.com/gallery/Michele_Clement/image/04.jpg',1,'2013-11-26 14:54:26','2013-11-26 14:54:26',0,'2.0'),
 (57,3,'Wildlife',NULL,'http://infotech4you.com/','http://infotech4you.com/wp-content/uploads/2013/04/Info-Tech-pic1.jpg',1,'2013-11-26 14:54:27','2013-11-26 14:54:27',0,'3.0'),
 (58,3,'Macro',NULL,'http://www.thisiscolossal.com/','http://www.thisiscolossal.com/wp-content/uploads/2012/09/chambon-4.jpg',1,'2013-11-26 14:54:28','2013-11-26 14:54:28',0,'3.0'),
 (59,3,'Silhouette',NULL,'http://www.smashingapps.com/','http://www.smashingapps.com/wp-content/uploads/2010/05/Silhouette-Photography/silhouette5.jpg',1,'2013-11-26 14:54:29','2013-11-26 14:54:29',0,'4.0'),
 (60,3,'Free Style',NULL,'http://darkroom.baltimoresun.com/','http://darkroom.baltimoresun.com/wp-content/uploads/2012/08/REU-OLY-WRES-WRMF55-ROUNDS-.jpg',1,'2013-11-26 14:54:30','2013-11-26 14:54:30',0,'5.0'),
 (333,1,'Honda CRX','Honda','http://www.pinterest.com/pin/365706432212790491/',NULL,1,'2013-11-26 14:54:02','2013-11-26 14:54:02',0,'3.0');
/*!40000 ALTER TABLE `tack` ENABLE KEYS */;


--
-- Definition of table `tack_board_mapping`
--

DROP TABLE IF EXISTS `tack_board_mapping`;
CREATE TABLE `tack_board_mapping` (
  `tack_id` int(11) NOT NULL default '0',
  `board_id` int(11) NOT NULL default '0',
  KEY `fk_board_id_tack_mapping_idx` (`board_id`),
  KEY `fk_tack_id_board_mapping_idx` (`tack_id`),
  CONSTRAINT `fk_board_id_tack_mapping` FOREIGN KEY (`board_id`) REFERENCES `user_boards` (`board_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tack_id_board_mapping` FOREIGN KEY (`tack_id`) REFERENCES `tack` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tack_board_mapping`
--

/*!40000 ALTER TABLE `tack_board_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `tack_board_mapping` ENABLE KEYS */;


--
-- Definition of table `tack_category`
--

DROP TABLE IF EXISTS `tack_category`;
CREATE TABLE `tack_category` (
  `tack_category_id` int(11) NOT NULL auto_increment,
  `name` enum('FOOD','TRAVEL','PHOTOGRAPHY','NATURE','AUTOMOBILE','EDUCATION') default NULL,
  `description` varchar(200) default NULL,
  PRIMARY KEY  (`tack_category_id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tack_category`
--

/*!40000 ALTER TABLE `tack_category` DISABLE KEYS */;
INSERT INTO `tack_category` (`tack_category_id`,`name`,`description`) VALUES 
 (1,'AUTOMOBILE','For Automobile Lovers'),
 (2,'EDUCATION','Education Today'),
 (3,'PHOTOGRAPHY','The Photography Blog'),
 (4,'FOOD','Foodies Paradise'),
 (5,'TRAVEL','Around the World'),
 (6,'NATURE','Tranquility Unfolds');
/*!40000 ALTER TABLE `tack_category` ENABLE KEYS */;


--
-- Definition of table `tack_category_mapping`
--

DROP TABLE IF EXISTS `tack_category_mapping`;
CREATE TABLE `tack_category_mapping` (
  `tack_id` int(11) NOT NULL default '0',
  `category_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`tack_id`),
  KEY `fk_category_id_tack_mapping_idx` (`category_id`),
  KEY `fk_tack_id_category_mapping_idx` (`tack_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tack_category_mapping`
--

/*!40000 ALTER TABLE `tack_category_mapping` DISABLE KEYS */;
INSERT INTO `tack_category_mapping` (`tack_id`,`category_id`) VALUES 
 (31,1),
 (32,1),
 (33,1),
 (34,1),
 (36,2),
 (37,2),
 (38,2),
 (39,2),
 (40,2),
 (46,2),
 (47,2),
 (48,2),
 (49,2),
 (50,2),
 (51,2),
 (52,2),
 (53,2),
 (54,2),
 (55,2),
 (41,3),
 (42,3),
 (43,3),
 (44,3),
 (45,3),
 (56,3),
 (57,3),
 (58,3),
 (59,3),
 (60,3),
 (1,4),
 (2,4),
 (3,4),
 (4,4),
 (20,4),
 (21,4),
 (22,4),
 (23,4),
 (24,4),
 (6,5),
 (7,5),
 (8,5),
 (9,5),
 (11,5),
 (25,5),
 (26,5),
 (27,5),
 (12,6),
 (13,6),
 (14,6),
 (15,6),
 (16,6),
 (17,6),
 (18,6),
 (19,6);
/*!40000 ALTER TABLE `tack_category_mapping` ENABLE KEYS */;


--
-- Definition of table `user_board_mapping`
--

DROP TABLE IF EXISTS `user_board_mapping`;
CREATE TABLE `user_board_mapping` (
  `user_id` int(11) NOT NULL default '0',
  `board_id` int(11) NOT NULL default '0',
  KEY `fk_user_id_tack_mapping_idx` (`user_id`),
  KEY `fk_board_id_mapping_idx` (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_board_mapping`
--

/*!40000 ALTER TABLE `user_board_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_board_mapping` ENABLE KEYS */;


--
-- Definition of table `user_boards`
--

DROP TABLE IF EXISTS `user_boards`;
CREATE TABLE `user_boards` (
  `board_id` int(11) NOT NULL default '0',
  `title` varchar(100) NOT NULL default '',
  `description` varchar(200) default NULL,
  `is_active` tinyint(4) NOT NULL default '0',
  `is_private` tinyint(4) NOT NULL default '0',
  `created_date` datetime default NULL,
  `modified_date` datetime default NULL,
  PRIMARY KEY  (`board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_boards`
--

/*!40000 ALTER TABLE `user_boards` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_boards` ENABLE KEYS */;


--
-- Definition of table `user_categories_mapping`
--

DROP TABLE IF EXISTS `user_categories_mapping`;
CREATE TABLE `user_categories_mapping` (
  `user_id` int(11) NOT NULL default '0',
  `category_id` int(11) NOT NULL default '0',
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_categories_mapping`
--

/*!40000 ALTER TABLE `user_categories_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_categories_mapping` ENABLE KEYS */;


--
-- Definition of table `user_group_mapping`
--

DROP TABLE IF EXISTS `user_group_mapping`;
CREATE TABLE `user_group_mapping` (
  `user_id` int(11) NOT NULL default '0',
  `group_id` int(11) NOT NULL default '0',
  KEY `fk_group_id_mapping_idx` (`group_id`),
  KEY `fk_user_id_mapping_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group_mapping`
--

/*!40000 ALTER TABLE `user_group_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_group_mapping` ENABLE KEYS */;


--
-- Definition of table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE `user_groups` (
  `group_id` int(11) NOT NULL auto_increment,
  `title` varchar(100) NOT NULL default '',
  `description` varchar(100) default NULL,
  `created_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `is_active` tinyint(4) NOT NULL default '0',
  `members` int(11) NOT NULL default '0',
  PRIMARY KEY  (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_groups`
--

/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;


--
-- Definition of table `user_security_profile`
--

DROP TABLE IF EXISTS `user_security_profile`;
CREATE TABLE `user_security_profile` (
  `email` varchar(100) NOT NULL default '',
  `security_question_1` varchar(100) NOT NULL default '',
  `security_answer_1` varchar(100) NOT NULL default '',
  `security_question_2` varchar(100) NOT NULL default '' COMMENT '		',
  `security_answer_2` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_security_profile`
--

/*!40000 ALTER TABLE `user_security_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_security_profile` ENABLE KEYS */;


--
-- Definition of table `user_tacks_mapping`
--

DROP TABLE IF EXISTS `user_tacks_mapping`;
CREATE TABLE `user_tacks_mapping` (
  `user_id` int(11) NOT NULL default '0',
  `tack_id` int(11) NOT NULL default '0',
  KEY `fk_tack_id_mapping_idx` (`tack_id`),
  KEY `fk_user_tack_mapping_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_tacks_mapping`
--

/*!40000 ALTER TABLE `user_tacks_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tacks_mapping` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `email` varchar(100) NOT NULL default '',
  `first_name` varchar(100) default NULL,
  `last_name` varchar(100) default NULL,
  `password` varchar(100) NOT NULL default '',
  `account_type` enum('NORMAL','PREMIUM') NOT NULL default 'NORMAL',
  `user_type` enum('NORMAL','AFFILIATE','ADMIN') NOT NULL default 'NORMAL',
  `is_active` tinyint(4) NOT NULL default '1',
  `bookmarks` blob,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`email`,`first_name`,`last_name`,`password`,`account_type`,`user_type`,`is_active`,`bookmarks`) VALUES 
 (1,'abb@gmail.com','sheetal','p','blah','NORMAL','NORMAL',1,NULL),
 (2,'johndoe@gmail.com','john','doe','aaa','NORMAL','NORMAL',1,NULL),
 (3,'jdoe@gmail.com','johnny','doe','bbb','NORMAL','NORMAL',1,NULL),
 (9,'p.s@g.com','purva','sabnis','ps','NORMAL','NORMAL',1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
