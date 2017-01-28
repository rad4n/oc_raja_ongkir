-- --------------------------------------------------------
-- Host:                         srv6.niagahoster.com
-- Server version:               5.5.52-cll - MySQL Community Server (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_address
CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `kecamatan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_address: 2 rows
DELETE FROM `oc_address`;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`, `kecamatan`) VALUES
	(10, 10, 'test', 'test', '', 'test', '', '151', '14120', 100, 0, '', '2092'),
	(11, 11, 'Panji', 'jaya', 'oce', 'jln raya serpong, tangerang selatan', '', '457', '15325', 100, 0, '', '6315');
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_affiliate
CREATE TABLE IF NOT EXISTS `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_affiliate: 0 rows
DELETE FROM `oc_affiliate`;
/*!40000 ALTER TABLE `oc_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_affiliate_activity
CREATE TABLE IF NOT EXISTS `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_affiliate_activity: 0 rows
DELETE FROM `oc_affiliate_activity`;
/*!40000 ALTER TABLE `oc_affiliate_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_activity` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_affiliate_login
CREATE TABLE IF NOT EXISTS `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_affiliate_login: 0 rows
DELETE FROM `oc_affiliate_login`;
/*!40000 ALTER TABLE `oc_affiliate_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_login` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_affiliate_transaction
CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_affiliate_transaction: 0 rows
DELETE FROM `oc_affiliate_transaction`;
/*!40000 ALTER TABLE `oc_affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_transaction` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_api
CREATE TABLE IF NOT EXISTS `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_api: 1 rows
DELETE FROM `oc_api`;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` (`api_id`, `username`, `firstname`, `lastname`, `password`, `status`, `date_added`, `date_modified`) VALUES
	(1, 'P3cqfWf9OA56GLMpXsRtu7nOcuOwMbicN2j1NYtEZ0Brgi30wYUF3qxfFQQtEfMz', '', '', 'EOiYxxzhdC80zTcZDbQy4wzKkKJDx6rjw8aTPkyXZmyW9b4UN1E4xPuL7a5uZvFqXFKljuokNkgOC6OnPpuYjFhkMEkz37VL0jwRwRXL44Gf7yaUJzSPMTMWUFGQPgdDLbRT0L9JdmjIvEeX5Xtds4tgUefFecdSZpntxdce4r3JarbykTBFG2JCMPvSkwW5eR2gnIyMNJGh8rPmHlMDXOb67Y51jdH4cRArUKCRZ9MSYE6ygRQZf6lNj46yahuR', 1, '2016-11-07 08:45:50', '2016-11-07 08:45:50');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_attribute
CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_attribute: 11 rows
DELETE FROM `oc_attribute`;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
	(1, 6, 1),
	(2, 6, 5),
	(3, 6, 3),
	(4, 3, 1),
	(5, 3, 2),
	(6, 3, 3),
	(7, 3, 4),
	(8, 3, 5),
	(9, 3, 6),
	(10, 3, 7),
	(11, 3, 8);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_attribute_description
CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_attribute_description: 11 rows
DELETE FROM `oc_attribute_description`;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
	(1, 1, 'Description'),
	(2, 1, 'No. of Cores'),
	(4, 1, 'test 1'),
	(5, 1, 'test 2'),
	(6, 1, 'test 3'),
	(7, 1, 'test 4'),
	(8, 1, 'test 5'),
	(9, 1, 'test 6'),
	(10, 1, 'test 7'),
	(11, 1, 'test 8'),
	(3, 1, 'Clockspeed');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_attribute_group
CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_attribute_group: 4 rows
DELETE FROM `oc_attribute_group`;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
	(3, 2),
	(4, 1),
	(5, 3),
	(6, 4);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_attribute_group_description
CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_attribute_group_description: 4 rows
DELETE FROM `oc_attribute_group_description`;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
	(3, 1, 'Memory'),
	(4, 1, 'Technical'),
	(5, 1, 'Motherboard'),
	(6, 1, 'Processor');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_banner
CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_banner: 3 rows
DELETE FROM `oc_banner`;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
	(6, 'HP Products', 1),
	(7, 'Home Page Slideshow', 1),
	(8, 'Manufacturers', 1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_banner_image
CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_banner_image: 14 rows
DELETE FROM `oc_banner_image`;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
	(79, 7, 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
	(87, 6, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
	(94, 8, '', 'catalog/demo/manufacturer/nfl.png', 0),
	(95, 8, '', 'catalog/demo/manufacturer/redbull.png', 0),
	(96, 8, '', 'catalog/demo/manufacturer/sony.png', 0),
	(91, 8, '', 'catalog/demo/manufacturer/cocacola.png', 0),
	(92, 8, '', 'catalog/demo/manufacturer/burgerking.png', 0),
	(93, 8, '', 'catalog/demo/manufacturer/canon.png', 0),
	(88, 8, '', 'catalog/demo/manufacturer/harley.png', 0),
	(89, 8, '', 'catalog/demo/manufacturer/dell.png', 0),
	(90, 8, '', 'catalog/demo/manufacturer/disney.png', 0),
	(80, 7, '', 'catalog/demo/banners/MacBookAir.jpg', 0),
	(97, 8, '', 'catalog/demo/manufacturer/starbucks.png', 0),
	(98, 8, '', 'catalog/demo/manufacturer/nintendo.png', 0);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_banner_image_description
CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_banner_image_description: 14 rows
DELETE FROM `oc_banner_image_description`;
/*!40000 ALTER TABLE `oc_banner_image_description` DISABLE KEYS */;
INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
	(79, 1, 7, 'iPhone 6'),
	(87, 1, 6, 'HP Banner'),
	(93, 1, 8, 'Canon'),
	(92, 1, 8, 'Burger King'),
	(91, 1, 8, 'Coca Cola'),
	(90, 1, 8, 'Disney'),
	(89, 1, 8, 'Dell'),
	(80, 1, 7, 'MacBookAir'),
	(88, 1, 8, 'Harley Davidson'),
	(94, 1, 8, 'NFL'),
	(95, 1, 8, 'RedBull'),
	(96, 1, 8, 'Sony'),
	(97, 1, 8, 'Starbucks'),
	(98, 1, 8, 'Nintendo');
/*!40000 ALTER TABLE `oc_banner_image_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_category
CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_category: 38 rows
DELETE FROM `oc_category`;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
	(25, '', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2011-05-30 12:14:55'),
	(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2010-08-22 06:32:15'),
	(20, 'catalog/demo/compaq_presario.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2011-07-16 02:14:42'),
	(24, '', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2011-05-30 12:15:18'),
	(18, 'catalog/demo/hp_2.jpg', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2011-05-30 12:13:55'),
	(17, '', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2011-05-30 12:15:11'),
	(28, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2010-08-22 06:32:46'),
	(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2010-08-22 06:31:45'),
	(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2010-08-22 06:32:39'),
	(30, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2010-08-22 06:33:00'),
	(31, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2010-08-22 06:33:06'),
	(32, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2010-08-22 06:33:12'),
	(33, '', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2011-05-30 12:15:25'),
	(34, 'catalog/demo/ipod_touch_4.jpg', 0, 1, 4, 7, 1, '2009-02-03 14:18:11', '2011-05-30 12:15:31'),
	(35, '', 28, 0, 0, 0, 1, '2010-09-17 10:06:48', '2010-09-18 14:02:42'),
	(36, '', 28, 0, 0, 0, 1, '2010-09-17 10:07:13', '2010-09-18 14:02:55'),
	(37, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:39', '2011-04-22 01:55:08'),
	(38, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:51', '2010-09-18 14:03:51'),
	(39, '', 34, 0, 0, 0, 1, '2010-09-18 14:04:17', '2011-04-22 01:55:20'),
	(40, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:36', '2010-09-18 14:05:36'),
	(41, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:49', '2011-04-22 01:55:30'),
	(42, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:34', '2010-11-07 20:31:04'),
	(43, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:49', '2011-04-22 01:55:40'),
	(44, '', 34, 0, 0, 0, 1, '2010-09-21 15:39:21', '2010-11-07 20:30:55'),
	(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2011-04-26 08:52:11'),
	(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2011-04-26 08:52:23'),
	(47, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:16', '2010-11-07 11:13:16'),
	(48, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:33', '2010-11-07 11:13:33'),
	(49, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:04', '2010-11-07 11:14:04'),
	(50, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:23', '2011-04-22 01:16:01'),
	(51, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:38', '2011-04-22 01:16:13'),
	(52, '', 34, 0, 0, 0, 1, '2010-11-07 11:16:09', '2011-04-22 01:54:57'),
	(53, '', 34, 0, 0, 0, 1, '2010-11-07 11:28:53', '2011-04-22 01:14:36'),
	(54, '', 34, 0, 0, 0, 1, '2010-11-07 11:29:16', '2011-04-22 01:16:50'),
	(55, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:32', '2010-11-08 10:31:32'),
	(56, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:50', '2011-04-22 01:16:37'),
	(57, '', 0, 1, 1, 3, 1, '2011-04-26 08:53:16', '2011-05-30 12:15:05'),
	(58, '', 52, 0, 0, 0, 1, '2011-05-08 13:44:16', '2011-05-08 13:44:16');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_category_description
CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_category_description: 38 rows
DELETE FROM `oc_category_description`;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
	(28, 1, 'Monitors', '', '', '', ''),
	(33, 1, 'Cameras', '', '', '', ''),
	(32, 1, 'Web Cameras', '', '', '', ''),
	(31, 1, 'Scanners', '', '', '', ''),
	(30, 1, 'Printers', '', '', '', ''),
	(29, 1, 'Mice and Trackballs', '', '', '', ''),
	(27, 1, 'Mac', '', '', '', ''),
	(26, 1, 'PC', '', '', '', ''),
	(17, 1, 'Software', '', '', '', ''),
	(25, 1, 'Components', '', '', '', ''),
	(24, 1, 'Phones &amp; PDAs', '', '', '', ''),
	(20, 1, 'Desktops', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', '', 'Example of category description', ''),
	(35, 1, 'test 1', '', '', '', ''),
	(36, 1, 'test 2', '', '', '', ''),
	(37, 1, 'test 5', '', '', '', ''),
	(38, 1, 'test 4', '', '', '', ''),
	(39, 1, 'test 6', '', '', '', ''),
	(40, 1, 'test 7', '', '', '', ''),
	(41, 1, 'test 8', '', '', '', ''),
	(42, 1, 'test 9', '', '', '', ''),
	(43, 1, 'test 11', '', '', '', ''),
	(34, 1, 'MP3 Players', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', '', '', ''),
	(18, 1, 'Laptops &amp; Notebooks', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', '', '', ''),
	(44, 1, 'test 12', '', '', '', ''),
	(45, 1, 'Windows', '', '', '', ''),
	(46, 1, 'Macs', '', '', '', ''),
	(47, 1, 'test 15', '', '', '', ''),
	(48, 1, 'test 16', '', '', '', ''),
	(49, 1, 'test 17', '', '', '', ''),
	(50, 1, 'test 18', '', '', '', ''),
	(51, 1, 'test 19', '', '', '', ''),
	(52, 1, 'test 20', '', '', '', ''),
	(53, 1, 'test 21', '', '', '', ''),
	(54, 1, 'test 22', '', '', '', ''),
	(55, 1, 'test 23', '', '', '', ''),
	(56, 1, 'test 24', '', '', '', ''),
	(57, 1, 'Tablets', '', '', '', ''),
	(58, 1, 'test 25', '', '', '', '');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_category_filter
CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_category_filter: 0 rows
DELETE FROM `oc_category_filter`;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_category_path
CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_category_path: 71 rows
DELETE FROM `oc_category_path`;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
	(25, 25, 0),
	(28, 25, 0),
	(28, 28, 1),
	(35, 25, 0),
	(35, 28, 1),
	(35, 35, 2),
	(36, 25, 0),
	(36, 28, 1),
	(36, 36, 2),
	(29, 25, 0),
	(29, 29, 1),
	(30, 25, 0),
	(30, 30, 1),
	(31, 25, 0),
	(31, 31, 1),
	(32, 25, 0),
	(32, 32, 1),
	(20, 20, 0),
	(27, 20, 0),
	(27, 27, 1),
	(26, 20, 0),
	(26, 26, 1),
	(24, 24, 0),
	(18, 18, 0),
	(45, 18, 0),
	(45, 45, 1),
	(46, 18, 0),
	(46, 46, 1),
	(17, 17, 0),
	(33, 33, 0),
	(34, 34, 0),
	(37, 34, 0),
	(37, 37, 1),
	(38, 34, 0),
	(38, 38, 1),
	(39, 34, 0),
	(39, 39, 1),
	(40, 34, 0),
	(40, 40, 1),
	(41, 34, 0),
	(41, 41, 1),
	(42, 34, 0),
	(42, 42, 1),
	(43, 34, 0),
	(43, 43, 1),
	(44, 34, 0),
	(44, 44, 1),
	(47, 34, 0),
	(47, 47, 1),
	(48, 34, 0),
	(48, 48, 1),
	(49, 34, 0),
	(49, 49, 1),
	(50, 34, 0),
	(50, 50, 1),
	(51, 34, 0),
	(51, 51, 1),
	(52, 34, 0),
	(52, 52, 1),
	(58, 34, 0),
	(58, 52, 1),
	(58, 58, 2),
	(53, 34, 0),
	(53, 53, 1),
	(54, 34, 0),
	(54, 54, 1),
	(55, 34, 0),
	(55, 55, 1),
	(56, 34, 0),
	(56, 56, 1),
	(57, 57, 0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_category_to_layout
CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_category_to_layout: 0 rows
DELETE FROM `oc_category_to_layout`;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_category_to_store
CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_category_to_store: 38 rows
DELETE FROM `oc_category_to_store`;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
	(17, 0),
	(18, 0),
	(20, 0),
	(24, 0),
	(25, 0),
	(26, 0),
	(27, 0),
	(28, 0),
	(29, 0),
	(30, 0),
	(31, 0),
	(32, 0),
	(33, 0),
	(34, 0),
	(35, 0),
	(36, 0),
	(37, 0),
	(38, 0),
	(39, 0),
	(40, 0),
	(41, 0),
	(42, 0),
	(43, 0),
	(44, 0),
	(45, 0),
	(46, 0),
	(47, 0),
	(48, 0),
	(49, 0),
	(50, 0),
	(51, 0),
	(52, 0),
	(53, 0),
	(54, 0),
	(55, 0),
	(56, 0),
	(57, 0),
	(58, 0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_country
CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_country: 253 rows
DELETE FROM `oc_country`;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
	(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
	(2, 'Albania', 'AL', 'ALB', '', 0, 1),
	(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
	(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
	(5, 'Andorra', 'AD', 'AND', '', 0, 1),
	(6, 'Angola', 'AO', 'AGO', '', 0, 1),
	(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
	(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
	(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
	(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
	(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
	(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
	(13, 'Australia', 'AU', 'AUS', '', 0, 1),
	(14, 'Austria', 'AT', 'AUT', '', 0, 1),
	(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
	(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
	(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
	(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
	(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
	(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
	(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
	(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
	(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
	(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
	(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
	(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
	(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
	(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
	(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
	(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
	(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
	(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
	(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
	(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
	(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
	(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
	(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
	(38, 'Canada', 'CA', 'CAN', '', 0, 1),
	(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
	(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
	(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
	(42, 'Chad', 'TD', 'TCD', '', 0, 1),
	(43, 'Chile', 'CL', 'CHL', '', 0, 1),
	(44, 'China', 'CN', 'CHN', '', 0, 1),
	(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
	(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
	(47, 'Colombia', 'CO', 'COL', '', 0, 1),
	(48, 'Comoros', 'KM', 'COM', '', 0, 1),
	(49, 'Congo', 'CG', 'COG', '', 0, 1),
	(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
	(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
	(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
	(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
	(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
	(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
	(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
	(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
	(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
	(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
	(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
	(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
	(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
	(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
	(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
	(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
	(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
	(67, 'Estonia', 'EE', 'EST', '', 0, 1),
	(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
	(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
	(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
	(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
	(72, 'Finland', 'FI', 'FIN', '', 0, 1),
	(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
	(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
	(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
	(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
	(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
	(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
	(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
	(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
	(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
	(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
	(84, 'Greece', 'GR', 'GRC', '', 0, 1),
	(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
	(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
	(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
	(88, 'Guam', 'GU', 'GUM', '', 0, 1),
	(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
	(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
	(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
	(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
	(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
	(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
	(95, 'Honduras', 'HN', 'HND', '', 0, 1),
	(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
	(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
	(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
	(99, 'India', 'IN', 'IND', '', 0, 1),
	(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
	(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
	(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
	(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
	(104, 'Israel', 'IL', 'ISR', '', 0, 1),
	(105, 'Italy', 'IT', 'ITA', '', 0, 1),
	(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
	(107, 'Japan', 'JP', 'JPN', '', 0, 1),
	(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
	(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
	(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
	(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
	(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
	(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
	(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
	(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
	(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
	(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
	(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
	(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
	(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
	(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
	(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
	(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
	(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
	(125, 'Macau', 'MO', 'MAC', '', 0, 1),
	(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
	(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
	(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
	(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
	(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
	(131, 'Mali', 'ML', 'MLI', '', 0, 1),
	(132, 'Malta', 'MT', 'MLT', '', 0, 1),
	(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
	(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
	(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
	(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
	(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
	(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
	(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
	(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
	(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
	(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
	(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
	(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
	(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
	(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
	(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
	(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
	(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
	(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
	(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
	(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
	(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
	(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
	(155, 'Niger', 'NE', 'NER', '', 0, 1),
	(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
	(157, 'Niue', 'NU', 'NIU', '', 0, 1),
	(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
	(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
	(160, 'Norway', 'NO', 'NOR', '', 0, 1),
	(161, 'Oman', 'OM', 'OMN', '', 0, 1),
	(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
	(163, 'Palau', 'PW', 'PLW', '', 0, 1),
	(164, 'Panama', 'PA', 'PAN', '', 0, 1),
	(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
	(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
	(167, 'Peru', 'PE', 'PER', '', 0, 1),
	(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
	(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
	(170, 'Poland', 'PL', 'POL', '', 0, 1),
	(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
	(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
	(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
	(174, 'Reunion', 'RE', 'REU', '', 0, 1),
	(175, 'Romania', 'RO', 'ROM', '', 0, 1),
	(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
	(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
	(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
	(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
	(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
	(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
	(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
	(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
	(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
	(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
	(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
	(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
	(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
	(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
	(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
	(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
	(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
	(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
	(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
	(195, 'Spain', 'ES', 'ESP', '', 0, 1),
	(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
	(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
	(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
	(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
	(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
	(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
	(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
	(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
	(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
	(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
	(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
	(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
	(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
	(209, 'Thailand', 'TH', 'THA', '', 0, 1),
	(210, 'Togo', 'TG', 'TGO', '', 0, 1),
	(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
	(212, 'Tonga', 'TO', 'TON', '', 0, 1),
	(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
	(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
	(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
	(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
	(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
	(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
	(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
	(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
	(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
	(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
	(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
	(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
	(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
	(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
	(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
	(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
	(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
	(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
	(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
	(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
	(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
	(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
	(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
	(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
	(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
	(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
	(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
	(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
	(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
	(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
	(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
	(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
	(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
	(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
	(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
	(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
	(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
	(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
	(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
	(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
	(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
	(257, 'Jersey', 'JE', 'JEY', '', 0, 1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_coupon
CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_coupon: 3 rows
DELETE FROM `oc_coupon`;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
	(4, '-10% Discount', '2222', 'P', 10.0000, 0, 0, 0.0000, '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
	(5, 'Free Shipping', '3333', 'P', 0.0000, 0, 1, 100.0000, '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
	(6, '-10.00 Discount', '1111', 'F', 10.0000, 0, 0, 10.0000, '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_coupon_category
CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_coupon_category: 0 rows
DELETE FROM `oc_coupon_category`;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_coupon_history
CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_coupon_history: 0 rows
DELETE FROM `oc_coupon_history`;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_coupon_product
CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_coupon_product: 0 rows
DELETE FROM `oc_coupon_product`;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_currency
CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_currency: 2 rows
DELETE FROM `oc_currency`;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
	(2, 'Rupiah', 'IDR', 'Rp', '', '0', 1.00000000, 1, '2016-12-19 07:07:08'),
	(6, 'Dollar', 'USD', '$', '', '', 0.00010000, 1, '2016-12-19 07:07:08');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_customer
CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_customer: 2 rows
DELETE FROM `oc_customer`;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `date_added`) VALUES
	(10, 1, 0, 'test', 'test', 'test@test.com', '123123', '', '5444a169a487e9d2e10a05690ad36756e6045263', '531ce12ec', 'a:1:{s:40:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQwO30=";i:1;}', '', 0, 10, '', '::1', 1, 1, 0, '', '2016-12-04 10:14:30'),
	(11, 1, 0, 'Panji', 'jaya', 'panjijayasutra@yahoo.co.id', '081348888625', '81348888625', '594e0ebe1dae87cdd0106f374380db69d294de16', 'c6b3200e0', 'a:1:{s:40:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQwO30=";i:1;}', '', 0, 11, '', '36.71.118.152', 1, 1, 0, '', '2016-12-18 09:55:32');
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_customer_activity
CREATE TABLE IF NOT EXISTS `oc_customer_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_customer_activity: 15 rows
DELETE FROM `oc_customer_activity`;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
INSERT INTO `oc_customer_activity` (`activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
	(1, 0, 'order_guest', 'a:2:{s:4:"name";s:9:"test test";s:8:"order_id";i:13;}', '::1', '2016-12-03 19:18:08'),
	(2, 1, 'register', 'a:2:{s:11:"customer_id";i:1;s:4:"name";s:9:"test test";}', '::1', '2016-12-04 06:15:01'),
	(3, 2, 'register', 'a:2:{s:11:"customer_id";i:2;s:4:"name";s:9:"test test";}', '::1', '2016-12-04 07:18:54'),
	(4, 3, 'register', 'a:2:{s:11:"customer_id";i:3;s:4:"name";s:9:"test test";}', '::1', '2016-12-04 08:21:01'),
	(5, 4, 'register', 'a:2:{s:11:"customer_id";i:4;s:4:"name";s:9:"test test";}', '::1', '2016-12-04 08:25:45'),
	(6, 5, 'register', 'a:2:{s:11:"customer_id";i:5;s:4:"name";s:9:"test test";}', '::1', '2016-12-04 08:36:31'),
	(7, 6, 'register', 'a:2:{s:11:"customer_id";i:6;s:4:"name";s:9:"test test";}', '::1', '2016-12-04 08:40:19'),
	(8, 7, 'register', 'a:2:{s:11:"customer_id";i:7;s:4:"name";s:9:"test test";}', '::1', '2016-12-04 08:54:03'),
	(9, 8, 'register', 'a:2:{s:11:"customer_id";i:8;s:4:"name";s:9:"test test";}', '::1', '2016-12-04 09:09:03'),
	(10, 9, 'register', 'a:2:{s:11:"customer_id";i:9;s:4:"name";s:9:"test test";}', '::1', '2016-12-04 09:20:26'),
	(11, 10, 'register', 'a:2:{s:11:"customer_id";i:10;s:4:"name";s:9:"test test";}', '::1', '2016-12-04 10:14:31'),
	(12, 11, 'register', 'a:2:{s:11:"customer_id";i:11;s:4:"name";s:10:"Panji jaya";}', '36.71.118.152', '2016-12-18 09:55:32'),
	(13, 11, 'order_account', 'a:3:{s:11:"customer_id";s:2:"11";s:4:"name";s:10:"Panji jaya";s:8:"order_id";i:17;}', '36.71.118.152', '2016-12-18 10:04:02'),
	(14, 11, 'order_account', 'a:3:{s:11:"customer_id";s:2:"11";s:4:"name";s:10:"Panji jaya";s:8:"order_id";i:18;}', '36.71.118.152', '2016-12-18 10:06:20'),
	(15, 11, 'login', 'a:2:{s:11:"customer_id";s:2:"11";s:4:"name";s:10:"Panji jaya";}', '36.71.118.152', '2016-12-19 13:34:12');
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_customer_ban_ip
CREATE TABLE IF NOT EXISTS `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_customer_ban_ip: 0 rows
DELETE FROM `oc_customer_ban_ip`;
/*!40000 ALTER TABLE `oc_customer_ban_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ban_ip` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_customer_group
CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_customer_group: 1 rows
DELETE FROM `oc_customer_group`;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
	(1, 0, 1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_customer_group_description
CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_customer_group_description: 1 rows
DELETE FROM `oc_customer_group_description`;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
	(1, 1, 'Default', 'test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_customer_history
CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_customer_history: 0 rows
DELETE FROM `oc_customer_history`;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_customer_ip
CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_customer_ip: 2 rows
DELETE FROM `oc_customer_ip`;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
	(10, 10, '::1', '2016-12-04 10:14:32'),
	(11, 11, '36.71.118.152', '2016-12-18 09:55:32');
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_customer_login
CREATE TABLE IF NOT EXISTS `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_customer_login: 0 rows
DELETE FROM `oc_customer_login`;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_customer_online
CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_customer_online: 0 rows
DELETE FROM `oc_customer_online`;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_customer_reward
CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_customer_reward: 0 rows
DELETE FROM `oc_customer_reward`;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_customer_transaction
CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_customer_transaction: 0 rows
DELETE FROM `oc_customer_transaction`;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_custom_field
CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_custom_field: 0 rows
DELETE FROM `oc_custom_field`;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_custom_field_customer_group
CREATE TABLE IF NOT EXISTS `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_custom_field_customer_group: 0 rows
DELETE FROM `oc_custom_field_customer_group`;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_custom_field_description
CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_custom_field_description: 0 rows
DELETE FROM `oc_custom_field_description`;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_custom_field_value
CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_custom_field_value: 0 rows
DELETE FROM `oc_custom_field_value`;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_custom_field_value_description
CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_custom_field_value_description: 0 rows
DELETE FROM `oc_custom_field_value_description`;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_download
CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_download: 0 rows
DELETE FROM `oc_download`;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_download_description
CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_download_description: 0 rows
DELETE FROM `oc_download_description`;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_event
CREATE TABLE IF NOT EXISTS `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_event: 0 rows
DELETE FROM `oc_event`;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_extension
CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=431 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_extension: 21 rows
DELETE FROM `oc_extension`;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
	(23, 'payment', 'cod'),
	(22, 'total', 'shipping'),
	(57, 'total', 'sub_total'),
	(58, 'total', 'tax'),
	(59, 'total', 'total'),
	(410, 'module', 'banner'),
	(426, 'module', 'carousel'),
	(390, 'total', 'credit'),
	(387, 'shipping', 'flat'),
	(349, 'total', 'handling'),
	(350, 'total', 'low_order_fee'),
	(389, 'total', 'coupon'),
	(413, 'module', 'category'),
	(408, 'module', 'account'),
	(393, 'total', 'reward'),
	(398, 'total', 'voucher'),
	(407, 'payment', 'free_checkout'),
	(427, 'module', 'featured'),
	(419, 'module', 'slideshow'),
	(428, 'shipping', 'indoship'),
	(430, 'module', 'journal2');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_filter
CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_filter: 0 rows
DELETE FROM `oc_filter`;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_filter_description
CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_filter_description: 0 rows
DELETE FROM `oc_filter_description`;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_filter_group
CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_filter_group: 0 rows
DELETE FROM `oc_filter_group`;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_filter_group_description
CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_filter_group_description: 0 rows
DELETE FROM `oc_filter_group_description`;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_geo_zone
CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_geo_zone: 1 rows
DELETE FROM `oc_geo_zone`;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
	(4, 'Indonesia', 'Indonesia', '2016-12-03 09:03:47', '2009-06-23 01:14:53');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_information
CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_information: 4 rows
DELETE FROM `oc_information`;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
	(3, 1, 3, 1),
	(4, 1, 1, 1),
	(5, 1, 4, 1),
	(6, 1, 2, 1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_information_description
CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_information_description: 4 rows
DELETE FROM `oc_information_description`;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
	(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', ''),
	(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', ''),
	(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', ''),
	(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', '');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_information_to_layout
CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_information_to_layout: 0 rows
DELETE FROM `oc_information_to_layout`;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_information_to_store
CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_information_to_store: 4 rows
DELETE FROM `oc_information_to_store`;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
	(3, 0),
	(4, 0),
	(5, 0),
	(6, 0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_journal2_blog_category
CREATE TABLE IF NOT EXISTS `oc_journal2_blog_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_journal2_blog_category: 0 rows
DELETE FROM `oc_journal2_blog_category`;
/*!40000 ALTER TABLE `oc_journal2_blog_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_journal2_blog_category` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_journal2_blog_category_description
CREATE TABLE IF NOT EXISTS `oc_journal2_blog_category_description` (
  `category_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(256) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(256) DEFAULT NULL,
  `meta_keywords` varchar(256) DEFAULT NULL,
  `meta_description` text,
  `keyword` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`category_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_journal2_blog_category_description: 0 rows
DELETE FROM `oc_journal2_blog_category_description`;
/*!40000 ALTER TABLE `oc_journal2_blog_category_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_journal2_blog_category_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_journal2_blog_category_to_layout
CREATE TABLE IF NOT EXISTS `oc_journal2_blog_category_to_layout` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `layout_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`,`store_id`),
  KEY `layout_id` (`layout_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_journal2_blog_category_to_layout: 0 rows
DELETE FROM `oc_journal2_blog_category_to_layout`;
/*!40000 ALTER TABLE `oc_journal2_blog_category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_journal2_blog_category_to_layout` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_journal2_blog_category_to_store
CREATE TABLE IF NOT EXISTS `oc_journal2_blog_category_to_store` (
  `category_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_journal2_blog_category_to_store: 0 rows
DELETE FROM `oc_journal2_blog_category_to_store`;
/*!40000 ALTER TABLE `oc_journal2_blog_category_to_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_journal2_blog_category_to_store` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_journal2_blog_comments
CREATE TABLE IF NOT EXISTS `oc_journal2_blog_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `website` varchar(256) DEFAULT NULL,
  `comment` text,
  `status` tinyint(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_journal2_blog_comments: 0 rows
DELETE FROM `oc_journal2_blog_comments`;
/*!40000 ALTER TABLE `oc_journal2_blog_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_journal2_blog_comments` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_journal2_blog_post
CREATE TABLE IF NOT EXISTS `oc_journal2_blog_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `comments` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_journal2_blog_post: 0 rows
DELETE FROM `oc_journal2_blog_post`;
/*!40000 ALTER TABLE `oc_journal2_blog_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_journal2_blog_post` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_journal2_blog_post_description
CREATE TABLE IF NOT EXISTS `oc_journal2_blog_post_description` (
  `post_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(256) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(256) DEFAULT NULL,
  `meta_keywords` varchar(256) DEFAULT NULL,
  `meta_description` text,
  `keyword` varchar(256) DEFAULT NULL,
  `tags` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`post_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_journal2_blog_post_description: 0 rows
DELETE FROM `oc_journal2_blog_post_description`;
/*!40000 ALTER TABLE `oc_journal2_blog_post_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_journal2_blog_post_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_journal2_blog_post_to_category
CREATE TABLE IF NOT EXISTS `oc_journal2_blog_post_to_category` (
  `post_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_journal2_blog_post_to_category: 0 rows
DELETE FROM `oc_journal2_blog_post_to_category`;
/*!40000 ALTER TABLE `oc_journal2_blog_post_to_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_journal2_blog_post_to_category` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_journal2_blog_post_to_layout
CREATE TABLE IF NOT EXISTS `oc_journal2_blog_post_to_layout` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `layout_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`post_id`,`store_id`),
  KEY `layout_id` (`layout_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_journal2_blog_post_to_layout: 0 rows
DELETE FROM `oc_journal2_blog_post_to_layout`;
/*!40000 ALTER TABLE `oc_journal2_blog_post_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_journal2_blog_post_to_layout` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_journal2_blog_post_to_product
CREATE TABLE IF NOT EXISTS `oc_journal2_blog_post_to_product` (
  `post_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_journal2_blog_post_to_product: 0 rows
DELETE FROM `oc_journal2_blog_post_to_product`;
/*!40000 ALTER TABLE `oc_journal2_blog_post_to_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_journal2_blog_post_to_product` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_journal2_blog_post_to_store
CREATE TABLE IF NOT EXISTS `oc_journal2_blog_post_to_store` (
  `post_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_journal2_blog_post_to_store: 0 rows
DELETE FROM `oc_journal2_blog_post_to_store`;
/*!40000 ALTER TABLE `oc_journal2_blog_post_to_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_journal2_blog_post_to_store` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_journal2_config
CREATE TABLE IF NOT EXISTS `oc_journal2_config` (
  `key` varchar(64) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`key`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_journal2_config: 1 rows
DELETE FROM `oc_journal2_config`;
/*!40000 ALTER TABLE `oc_journal2_config` DISABLE KEYS */;
INSERT INTO `oc_journal2_config` (`key`, `store_id`, `value`, `serialized`) VALUES
	('mega_menu', 0, '{"items":[{"type":"categories","categories":{"type":"custom","show":"both","image_position":"right","links_type":"categories","items":[{"menu_type":"opencart","menu_item":[],"data":{"id":"24","name":"Phones &amp; PDAs"}},{"menu_type":"opencart","menu_item":[],"data":{"id":"57","name":"Tablets"}}],"render_as":"dropdown"},"products":{"source":"category","module_type":"featured","items":[]},"manufacturers":{"type":"all","show":"image","items":[]},"custom":{"top":{"menu_type":"custom","menu_item":[]},"target":0,"items":[]},"mixed_columns":[],"icon":{"options":{"font_size":"---"}},"hide_text":"0","is_open":false,"status":1,"items_per_row":{"range":"1,10","step":"1","hide_columns":true,"value":{"mobile":{"value":"2","range":"1,10","step":"1"},"mobile1":{"value":"3","range":"1,10","step":"1"},"tablet":{"value":"4","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"6","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"6","range":"1,10","step":"1"},"large_desktop1":{"value":"3","range":"1,10","step":"1"},"large_desktop2":{"value":"2","range":"1,10","step":"1"}}},"items_limit":5,"html_blocks":[],"html_menu_link":{"menu_type":"custom","menu_item":[]},"title":[],"float":"left","image_width":"","image_height":"","image_type":"fit","enable_on_phone":"1","enable_on_tablet":"1","enable_on_desktop":"1","name":{"value":{"1":"Menu"}}},{"type":"custom","categories":{"type":"existing","show":"both","image_position":"right","links_type":"categories","items":[{"menu_type":"opencart","menu_item":[]}],"render_as":"dropdown"},"products":{"source":"category","module_type":"featured","items":[]},"manufacturers":{"type":"all","show":"image","items":[]},"custom":{"top":{"menu_type":"custom","menu_item":{"url":"#"}},"target":"0","items":[{"menu":{"menu_type":"opencart","menu_item":{"page":"login"}},"target":"1","is_open":1,"name":{"value":{"1":"login"}},"sort_order":"1"},{"menu":{"menu_type":"opencart","menu_item":{"page":"register"}},"target":"1","is_open":1,"name":{"value":{"1":"Register"}},"sort_order":"2"},{"menu":{"menu_type":"opencart","menu_item":{"page":"account\\/order"}},"target":"1","is_open":1,"name":{"value":{"1":"Order Hostory"}},"sort_order":"3"},{"menu":{"menu_type":"opencart","menu_item":{"page":"affiliate\\/account"}},"target":"1","is_open":1,"name":{"value":{"1":"Affiliates"}},"sort_order":"4"}]},"mixed_columns":[],"icon":{"options":{"font_size":"13px","color":{"value":{"color":"rgb(255, 255, 255)"}}},"icon_type":"icon","icon":{"icon":"&#xe61d;","class":"play"}},"hide_text":"0","is_open":true,"status":"1","items_per_row":{"range":"1,10","step":"1","hide_columns":true,"value":{"mobile":{"value":"2","range":"1,10","step":"1"},"mobile1":{"value":"3","range":"1,10","step":"1"},"tablet":{"value":"4","range":"1,10","step":"1"},"tablet1":{"value":"2","range":"1,10","step":"1"},"tablet2":{"value":"1","range":"1,10","step":"1"},"desktop":{"value":"6","range":"1,10","step":"1"},"desktop1":{"value":"3","range":"1,10","step":"1"},"desktop2":{"value":"2","range":"1,10","step":"1"},"large_desktop":{"value":"6","range":"1,10","step":"1"},"large_desktop1":{"value":"3","range":"1,10","step":"1"},"large_desktop2":{"value":"2","range":"1,10","step":"1"}}},"items_limit":5,"html_blocks":[],"html_menu_link":{"menu_type":"custom","menu_item":[]},"title":[],"float":"left","image_width":"","image_height":"","image_type":"fit","enable_on_phone":"1","enable_on_tablet":"1","enable_on_desktop":"1","name":{"value":{"1":"Akun"}}}],"close_others":false,"options":{"display":"table","table_layout":"fixed","is_open":false}}', 1);
/*!40000 ALTER TABLE `oc_journal2_config` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_journal2_modules
CREATE TABLE IF NOT EXISTS `oc_journal2_modules` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_type` varchar(64) NOT NULL,
  `module_data` mediumtext NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_journal2_modules: 0 rows
DELETE FROM `oc_journal2_modules`;
/*!40000 ALTER TABLE `oc_journal2_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_journal2_modules` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_journal2_settings
CREATE TABLE IF NOT EXISTS `oc_journal2_settings` (
  `theme_id` int(11) NOT NULL DEFAULT '0',
  `key` varchar(64) NOT NULL,
  `category` varchar(64) NOT NULL,
  `value` mediumtext NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`key`,`theme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_journal2_settings: 0 rows
DELETE FROM `oc_journal2_settings`;
/*!40000 ALTER TABLE `oc_journal2_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_journal2_settings` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_journal2_skins
CREATE TABLE IF NOT EXISTS `oc_journal2_skins` (
  `skin_id` int(11) NOT NULL AUTO_INCREMENT,
  `skin_name` varchar(64) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`skin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_journal2_skins: 0 rows
DELETE FROM `oc_journal2_skins`;
/*!40000 ALTER TABLE `oc_journal2_skins` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_journal2_skins` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_language
CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_language: 1 rows
DELETE FROM `oc_language`;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
	(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_layout
CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_layout: 15 rows
DELETE FROM `oc_layout`;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
	(1, 'Home'),
	(2, 'Product'),
	(3, 'Category'),
	(4, 'Default'),
	(5, 'Manufacturer'),
	(6, 'Account'),
	(7, 'Checkout'),
	(8, 'Contact'),
	(9, 'Sitemap'),
	(10, 'Affiliate'),
	(11, 'Information'),
	(12, 'Compare'),
	(13, 'Search'),
	(14, 'Journal Blog'),
	(15, 'Journal Blog Post');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_layout_module
CREATE TABLE IF NOT EXISTS `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_layout_module: 10 rows
DELETE FROM `oc_layout_module`;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
	(2, 4, '0', 'content_top', 0),
	(3, 4, '0', 'content_top', 1),
	(20, 5, '0', 'column_left', 2),
	(69, 10, 'affiliate', 'column_right', 1),
	(68, 6, 'account', 'column_right', 1),
	(67, 1, 'carousel.29', 'content_top', 3),
	(66, 1, 'slideshow.27', 'content_top', 1),
	(65, 1, 'featured.28', 'content_top', 2),
	(72, 3, 'category', 'column_left', 1),
	(73, 3, 'banner.30', 'column_left', 2);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_layout_route
CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_layout_route: 15 rows
DELETE FROM `oc_layout_route`;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
	(38, 6, 0, 'account/%'),
	(17, 10, 0, 'affiliate/%'),
	(44, 3, 0, 'product/category'),
	(42, 1, 0, 'common/home'),
	(20, 2, 0, 'product/product'),
	(24, 11, 0, 'information/information'),
	(23, 7, 0, 'checkout/%'),
	(31, 8, 0, 'information/contact'),
	(32, 9, 0, 'information/sitemap'),
	(34, 4, 0, ''),
	(45, 5, 0, 'product/manufacturer'),
	(52, 12, 0, 'product/compare'),
	(53, 13, 0, 'product/search'),
	(54, 14, 0, 'journal2/blog'),
	(55, 15, 0, 'journal2/blog/post');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_length_class
CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_length_class: 3 rows
DELETE FROM `oc_length_class`;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
	(1, 1.00000000),
	(2, 10.00000000),
	(3, 0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_length_class_description
CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_length_class_description: 3 rows
DELETE FROM `oc_length_class_description`;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
	(1, 1, 'Centimeter', 'cm'),
	(2, 1, 'Millimeter', 'mm'),
	(3, 1, 'Inch', 'in');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_location
CREATE TABLE IF NOT EXISTS `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_location: 0 rows
DELETE FROM `oc_location`;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_manufacturer
CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_manufacturer: 6 rows
DELETE FROM `oc_manufacturer`;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
	(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
	(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
	(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
	(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
	(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
	(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_manufacturer_to_store
CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_manufacturer_to_store: 6 rows
DELETE FROM `oc_manufacturer_to_store`;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
	(5, 0),
	(6, 0),
	(7, 0),
	(8, 0),
	(9, 0),
	(10, 0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_marketing
CREATE TABLE IF NOT EXISTS `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_marketing: 0 rows
DELETE FROM `oc_marketing`;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_modification
CREATE TABLE IF NOT EXISTS `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_modification: 0 rows
DELETE FROM `oc_modification`;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_module
CREATE TABLE IF NOT EXISTS `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_module: 4 rows
DELETE FROM `oc_module`;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
	(30, 'Category', 'banner', 'a:5:{s:4:"name";s:17:"Banner - Category";s:9:"banner_id";s:1:"6";s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:6:"status";s:1:"1";}'),
	(29, 'Home Page', 'carousel', 'a:5:{s:4:"name";s:20:"Carousel - Home Page";s:9:"banner_id";s:1:"8";s:5:"width";s:3:"130";s:6:"height";s:3:"100";s:6:"status";s:1:"1";}'),
	(28, 'Home Page', 'featured', 'a:6:{s:4:"name";s:20:"Featured - Home Page";s:7:"product";a:4:{i:0;s:2:"43";i:1;s:2:"40";i:2;s:2:"42";i:3;s:2:"30";}s:5:"limit";s:1:"4";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
	(27, 'Home Page', 'slideshow', 'a:5:{s:4:"name";s:21:"Slideshow - Home Page";s:9:"banner_id";s:1:"7";s:5:"width";s:4:"1140";s:6:"height";s:3:"380";s:6:"status";s:1:"1";}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_option
CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_option: 11 rows
DELETE FROM `oc_option`;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
	(1, 'radio', 1),
	(2, 'checkbox', 2),
	(4, 'text', 3),
	(5, 'select', 4),
	(6, 'textarea', 5),
	(7, 'file', 6),
	(8, 'date', 7),
	(9, 'time', 8),
	(10, 'datetime', 9),
	(11, 'select', 10),
	(12, 'date', 11);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_option_description
CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_option_description: 11 rows
DELETE FROM `oc_option_description`;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
	(1, 1, 'Radio'),
	(2, 1, 'Checkbox'),
	(4, 1, 'Text'),
	(6, 1, 'Textarea'),
	(8, 1, 'Date'),
	(7, 1, 'File'),
	(5, 1, 'Select'),
	(9, 1, 'Time'),
	(10, 1, 'Date &amp; Time'),
	(12, 1, 'Delivery Date'),
	(11, 1, 'Size');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_option_value
CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_option_value: 14 rows
DELETE FROM `oc_option_value`;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
	(43, 1, '', 3),
	(32, 1, '', 1),
	(45, 2, '', 4),
	(44, 2, '', 3),
	(42, 5, '', 4),
	(41, 5, '', 3),
	(39, 5, '', 1),
	(40, 5, '', 2),
	(31, 1, '', 2),
	(23, 2, '', 1),
	(24, 2, '', 2),
	(46, 11, '', 1),
	(47, 11, '', 2),
	(48, 11, '', 3);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_option_value_description
CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_option_value_description: 14 rows
DELETE FROM `oc_option_value_description`;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
	(43, 1, 1, 'Large'),
	(32, 1, 1, 'Small'),
	(45, 1, 2, 'Checkbox 4'),
	(44, 1, 2, 'Checkbox 3'),
	(31, 1, 1, 'Medium'),
	(42, 1, 5, 'Yellow'),
	(41, 1, 5, 'Green'),
	(39, 1, 5, 'Red'),
	(40, 1, 5, 'Blue'),
	(23, 1, 2, 'Checkbox 1'),
	(24, 1, 2, 'Checkbox 2'),
	(48, 1, 11, 'Large'),
	(47, 1, 11, 'Medium'),
	(46, 1, 11, 'Small');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_order
CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_order: 18 rows
DELETE FROM `oc_order`;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
	(1, 0, 'INV-2013-00', 0, 'Your Store', 'http://localhost:82/pkl-3/', 0, 1, 'te', 'test', 'test@.com', '234', '', 'a:0:{}', 'te', 'test', '', 'test', '', 'Jakarta Utara', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'te', 'test', '', 'test', '', 'Jakarta Utara', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 'indoship.indoshipOngkos Kirim Ekonomis', '', 16101.0000, 0, 0, 0.0000, 0, '', 1, 4, 'IDR', 13440.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8', '2016-11-23 08:21:22', '2016-11-23 08:21:22'),
	(2, 0, 'INV-2013-00', 0, 'Your Store', 'http://localhost:82/pkl-3/', 0, 1, 'te', 'test', 'test@.com', '234', '', 'a:0:{}', 'te', 'test', '', 'test', '', 'Jakarta Utara', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'te', 'test', '', 'test', '', 'Jakarta Utara', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 'indoship.indoshipOngkos Kirim Ekonomis', '', 16101.0000, 0, 0, 0.0000, 0, '', 1, 4, 'IDR', 13440.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8', '2016-11-23 16:10:57', '2016-11-23 16:10:57'),
	(3, 0, 'INV-2013-00', 0, 'Your Store', 'http://localhost:82/pkl-3/', 0, 1, 'te', 'test', 'test@.com', '234', '', 'a:0:{}', 'te', 'test', '', 'test', '', 'Jakarta Utara', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'te', 'test', '', 'test', '', 'Jakarta Utara', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 'indoship.indoshipOngkos Kirim Ekonomis', '', 16101.0000, 0, 0, 0.0000, 0, '', 1, 4, 'IDR', 13440.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8', '2016-11-23 16:21:36', '2016-11-23 16:21:36'),
	(4, 0, 'INV-2013-00', 0, 'Your Store', 'http://localhost:82/pkl-3/', 0, 1, 'te', 'test', 'test@.com', '234', '', 'a:0:{}', 'te', 'test', '', 'test', '', 'Jakarta Utara', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'te', 'test', '', 'test', '', 'Jakarta Utara', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 'indoship.indoshipOngkos Kirim Ekonomis', '', 16101.0000, 0, 0, 0.0000, 0, '', 1, 4, 'IDR', 13440.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8', '2016-11-23 16:22:14', '2016-11-23 16:22:14'),
	(5, 0, 'INV-2013-00', 0, 'Your Store', 'http://localhost:82/pkl-3/', 0, 1, 'te', 'test', 'test@.com', '234', '', 'a:0:{}', 'te', 'test', '', 'test', '', 'Jakarta Utara', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'te', 'test', '', 'test', '', 'Jakarta Utara', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 'indoship.indoshipOngkos Kirim Ekonomis', '', 16101.0000, 0, 0, 0.0000, 0, '', 1, 4, 'IDR', 13440.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8', '2016-11-23 16:22:51', '2016-11-23 16:22:51'),
	(6, 0, 'INV-2013-00', 0, 'Your Store', 'http://localhost:82/pkl-3/', 0, 1, 'te', 'test', 'test@.com', '234', '', 'a:0:{}', 'te', 'test', '', 'test', '', 'Jakarta Utara', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'te', 'test', '', 'test', '', 'Jakarta Utara', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 'indoship.indoshipOngkos Kirim Ekonomis', '', 16101.0000, 0, 0, 0.0000, 0, '', 1, 4, 'IDR', 13440.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8', '2016-11-23 16:23:10', '2016-11-23 16:23:10'),
	(7, 0, 'INV-2013-00', 0, 'Your Store', 'http://localhost:82/pkl-3/', 0, 1, 'test', 'test', 'test@r.com', '324234', '', 'a:0:{}', 'test', 'test', '', 'test', '', '155', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'test', 'test', '', 'test', '', '155', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 'indoship.indoshipOngkos Kirim Ekonomis', 'test', 39101.0000, 0, 0, 0.0000, 0, '', 1, 4, 'IDR', 13500.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8', '2016-11-26 23:50:57', '2016-11-26 23:50:57'),
	(8, 0, 'INV-2013-00', 0, 'Your Store', 'http://localhost:82/pkl-3/', 0, 1, 'test', 'test', 'test@r.com', '324234', '', 'a:0:{}', 'test', 'test', '', 'test', '', '155', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'test', 'test', '', 'test', '', '155', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', '<b>Kurir: </b>POS Indonesia (POS), <b>Servis: </b>Surat Kilat Khusus, <b>Deskripsi: </b> Surat Kilat Khusus, <b>Catatan: </b> -', 'indoship.indoshipSurat Kilat Khusus', 'test', 27601.0000, 0, 0, 0.0000, 0, '', 1, 4, 'IDR', 13500.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8', '2016-11-26 23:51:28', '2016-11-26 23:51:28'),
	(9, 0, 'INV-2013-00', 0, 'Your Store', 'http://localhost:82/pkl-3/', 0, 1, 'test', 'test', 'test@r.com', '324234', '', 'a:0:{}', 'test', 'test', '', 'test', '', '155', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'test', 'test', '', 'test', '', '155', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', '<b>Kurir: </b>POS Indonesia (POS), <b>Servis: </b>Surat Kilat Khusus, <b>Deskripsi: </b> Surat Kilat Khusus, <b>Catatan: </b> -', 'indoship.indoshipSurat Kilat Khusus', 'test', 27601.0000, 0, 0, 0.0000, 0, '', 1, 4, 'IDR', 13500.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8', '2016-11-27 00:35:42', '2016-11-27 00:35:42'),
	(10, 0, 'INV-2013-00', 0, 'Your Store', 'http://localhost:82/pkl-3/', 0, 1, 'test', 'test', 'test@r.com', '324234', '', 'a:0:{}', 'test', 'test', '', 'test', '', '155', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'test', 'test', '', 'test', '', '155', '14120', 'Indonesia', 100, 'Jakarta Raya', 1513, '', 'a:0:{}', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 'indoship.indoshipOngkos Kirim Ekonomis', 'test', 39101.0000, 0, 0, 0.0000, 0, '', 1, 2, 'USD', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8', '2016-11-27 00:57:54', '2016-11-27 00:57:54'),
	(11, 0, 'INV-2013-00', 0, 'Your Store', 'http://lab.dadanh.com/oc_raja_ongkir/', 0, 1, 'test', 'test', 'radan_stromer@yahoo.co.id', '34535', '', 'a:0:{}', 'test', 'test', '', 'fgdg', '', '155', '14120', 'Indonesia', 100, '', 0, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'test', 'test', '', 'fgdg', '', '155', '14120', 'Indonesia', 100, '', 0, '', 'a:0:{}', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 'indoship.indoshipOngkos Kirim Ekonomis', '', 39101.0000, 0, 0, 0.0000, 0, '', 1, 4, 'IDR', 13530.00000000, '202.62.16.52', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8', '2016-11-29 07:20:01', '2016-11-29 07:20:01'),
	(12, 0, 'INV-2013-00', 0, 'Your Store', 'http://lab.dadanh.com/oc_raja_ongkir/', 0, 1, 'test', 'test', 'radan_stromer@yahoo.co.id', '34535', '', 'a:0:{}', 'test', 'test', '', 'fgdg', '', '154', '14120', 'Indonesia', 100, '', 0, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'test', 'test', '', 'fgdg', '', '154', '14120', 'Indonesia', 100, '', 0, '', 'a:0:{}', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>REG, <b>Deskripsi: </b> Layanan Reguler, <b>Catatan: </b> -', 'indoship.indoshipLayanan Reguler', '', 45202.0000, 0, 0, 0.0000, 0, '', 1, 2, 'USD', 1.00000000, '202.62.16.52', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8', '2016-11-29 07:23:29', '2016-11-29 07:23:29'),
	(13, 1, 'INV-2013-00', 0, 'Your Store', 'http://localhost/oc_raja_ongkir/', 0, 1, 'test', 'test', 'test@test.com', '34534535', '', 'a:0:{}', 'test', 'test', '', 'testdf', '', '151', '14120', 'India', 99, '', 0, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'test', 'test', '', 'testdf', '', '151', '14120', 'India', 99, '', 0, '', 'a:0:{}', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 'indoship.indoshipOngkos Kirim Ekonomis', 'test', 39101.0000, 1, 0, 0.0000, 0, '', 1, 2, 'USD', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-12-03 19:17:58', '2016-12-03 19:18:05'),
	(14, 0, 'INV-2013-00', 0, 'Your Store', 'http://localhost/oc_raja_ongkir/', 9, 1, 'test', 'test', 'test@test.com', '324324', '', 'b:0;', 'test', 'test', '', 'test', '', '151', '14120', 'Indonesia', 100, '', 0, '', 'b:0;', 'Cash On Delivery', 'cod', 'test', 'test', '', 'test', '', '151', '14120', 'Indonesia', 100, '', 0, '', 'b:0;', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 'indoship.indoshipOngkos Kirim Ekonomis', 'test', 39101.0000, 0, 0, 0.0000, 0, '', 1, 2, 'USD', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-12-04 09:44:10', '2016-12-04 09:44:10'),
	(15, 0, 'INV-2013-00', 0, 'Your Store', 'http://localhost/oc_raja_ongkir/', 0, 1, 'test', 'test', 'test@t.com', '234234', '', 'a:0:{}', 'test', 'test', '', 'test', '', '151', '14120', 'Indonesia', 100, '', 0, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'test', 'test', '', 'test', '', '151', '14120', 'Indonesia', 100, '', 0, '', 'a:0:{}', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 'indoship.indoshipOngkos Kirim Ekonomis', 'test', 39101.0000, 0, 0, 0.0000, 0, '', 1, 2, 'USD', 1.00000000, '::1', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-12-18 05:23:36', '2016-12-18 05:23:36'),
	(16, 0, 'INV-2013-00', 0, 'Your Store', 'http://lab.dadanh.com/oc_raja_ongkir/', 0, 1, 'testt', 'test', 'test@t.com', '234234234', '', 'a:0:{}', 'testt', 'test', '', 'test', '', '19', '14120', 'Indonesia', 100, '', 0, '', 'a:0:{}', 'Cash On Delivery', 'cod', 'testt', 'test', '', 'test', '', '19', '14120', 'Indonesia', 100, '', 0, '', 'a:0:{}', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 'indoship.indoshipOngkos Kirim Ekonomis', '', 39101.0000, 0, 0, 0.0000, 0, '', 1, 2, 'USD', 1.00000000, '202.62.18.61', '', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', 'en-US,en;q=0.8,id;q=0.6', '2016-12-18 06:28:37', '2016-12-18 06:28:37'),
	(17, 0, 'INV-2013-00', 0, 'Your Store', 'http://lab.dadanh.com/oc_raja_ongkir/', 11, 1, 'Panji', 'jaya', 'panjijayasutra@yahoo.co.id', '081348888625', '81348888625', 'b:0;', 'Panji', 'jaya', 'oce', 'jln raya serpong, tangerang selatan', '', '457', '15325', 'Indonesia', 100, '', 0, '', 'b:0;', 'Cash On Delivery', 'cod', 'Panji', 'jaya', 'oce', 'jln raya serpong, tangerang selatan', '', '457', '15325', 'Indonesia', 100, '', 0, '', 'b:0;', '<b>Kurir: </b>Citra Van Titipan Kilat (TIKI), <b>Servis: </b>ONS, <b>Deskripsi: </b> OVER NIGHT SERVICE, <b>Catatan: </b> -', 'indoship.indoshipOVER NIGHT SERVICE', '', 45601.0000, 1, 0, 0.0000, 0, '', 1, 2, 'USD', 1.00000000, '36.71.118.152', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8', '2016-12-18 10:03:58', '2016-12-18 10:04:01'),
	(18, 0, 'INV-2013-00', 0, 'Your Store', 'http://lab.dadanh.com/oc_raja_ongkir/', 11, 1, 'Panji', 'jaya', 'panjijayasutra@yahoo.co.id', '081348888625', '81348888625', 'b:0;', 'Panji', 'jaya', 'oce', 'jln raya serpong, tangerang selatan', '', '457', '15325', 'Indonesia', 100, '', 0, '', 'b:0;', 'Cash On Delivery', 'cod', 'Panji', 'jaya', 'oce', 'jln raya serpong, tangerang selatan', '', '457', '15325', 'Indonesia', 100, '', 0, '', 'b:0;', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>REG, <b>Deskripsi: </b> Layanan Reguler, <b>Catatan: </b> -', 'indoship.indoshipLayanan Reguler', '', 450101.0000, 1, 0, 0.0000, 0, '', 1, 2, 'USD', 1.00000000, '36.71.118.152', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', 'en-US,en;q=0.8', '2016-12-18 10:06:18', '2016-12-18 10:06:19');
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_order_custom_field
CREATE TABLE IF NOT EXISTS `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_order_custom_field: 0 rows
DELETE FROM `oc_order_custom_field`;
/*!40000 ALTER TABLE `oc_order_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_custom_field` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_order_history
CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_order_history: 3 rows
DELETE FROM `oc_order_history`;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
	(1, 13, 1, 0, '', '2016-12-03 19:18:05'),
	(2, 17, 1, 0, '', '2016-12-18 10:04:01'),
	(3, 18, 1, 0, '', '2016-12-18 10:06:19');
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_order_option
CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_order_option: 0 rows
DELETE FROM `oc_order_option`;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_order_product
CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_order_product: 18 rows
DELETE FROM `oc_order_product`;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
	(1, 1, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(2, 2, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(3, 3, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(4, 4, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(5, 5, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(6, 6, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(7, 7, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(8, 8, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(9, 9, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(10, 10, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(11, 11, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(12, 12, 40, 'iPhone', 'product 11', 2, 101.0000, 202.0000, 0.0000, 0),
	(13, 13, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(14, 14, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(15, 15, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(16, 16, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(17, 17, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0),
	(18, 18, 40, 'iPhone', 'product 11', 1, 101.0000, 101.0000, 0.0000, 0);
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_order_recurring
CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_order_recurring: 0 rows
DELETE FROM `oc_order_recurring`;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_order_recurring_transaction
CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_order_recurring_transaction: 0 rows
DELETE FROM `oc_order_recurring_transaction`;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_order_status
CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_order_status: 14 rows
DELETE FROM `oc_order_status`;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
	(2, 1, 'Processing'),
	(3, 1, 'Shipped'),
	(7, 1, 'Canceled'),
	(5, 1, 'Complete'),
	(8, 1, 'Denied'),
	(9, 1, 'Canceled Reversal'),
	(10, 1, 'Failed'),
	(11, 1, 'Refunded'),
	(12, 1, 'Reversed'),
	(13, 1, 'Chargeback'),
	(1, 1, 'Pending'),
	(16, 1, 'Voided'),
	(15, 1, 'Processed'),
	(14, 1, 'Expired');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_order_total
CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_order_total: 54 rows
DELETE FROM `oc_order_total`;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
	(1, 1, 'sub_total', 'Sub-Total', 101.0000, 1),
	(2, 1, 'shipping', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 16000.0000, 3),
	(3, 1, 'total', 'Total', 16101.0000, 9),
	(4, 2, 'sub_total', 'Sub-Total', 101.0000, 1),
	(5, 2, 'shipping', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 16000.0000, 3),
	(6, 2, 'total', 'Total', 16101.0000, 9),
	(7, 3, 'sub_total', 'Sub-Total', 101.0000, 1),
	(8, 3, 'shipping', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 16000.0000, 3),
	(9, 3, 'total', 'Total', 16101.0000, 9),
	(10, 4, 'sub_total', 'Sub-Total', 101.0000, 1),
	(11, 4, 'shipping', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 16000.0000, 3),
	(12, 4, 'total', 'Total', 16101.0000, 9),
	(13, 5, 'sub_total', 'Sub-Total', 101.0000, 1),
	(14, 5, 'shipping', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 16000.0000, 3),
	(15, 5, 'total', 'Total', 16101.0000, 9),
	(16, 6, 'sub_total', 'Sub-Total', 101.0000, 1),
	(17, 6, 'shipping', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 16000.0000, 3),
	(18, 6, 'total', 'Total', 16101.0000, 9),
	(19, 7, 'sub_total', 'Sub-Total', 101.0000, 1),
	(20, 7, 'shipping', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 39000.0000, 3),
	(21, 7, 'total', 'Total', 39101.0000, 9),
	(22, 8, 'sub_total', 'Sub-Total', 101.0000, 1),
	(23, 8, 'shipping', '<b>Kurir: </b>POS Indonesia (POS), <b>Servis: </b>Surat Kilat Khusus, <b>Deskripsi: </b> Surat Kilat Khusus, <b>Catatan: </b> -', 27500.0000, 3),
	(24, 8, 'total', 'Total', 27601.0000, 9),
	(25, 9, 'sub_total', 'Sub-Total', 101.0000, 1),
	(26, 9, 'shipping', '<b>Kurir: </b>POS Indonesia (POS), <b>Servis: </b>Surat Kilat Khusus, <b>Deskripsi: </b> Surat Kilat Khusus, <b>Catatan: </b> -', 27500.0000, 3),
	(27, 9, 'total', 'Total', 27601.0000, 9),
	(28, 10, 'sub_total', 'Sub-Total', 101.0000, 1),
	(29, 10, 'shipping', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 39000.0000, 3),
	(30, 10, 'total', 'Total', 39101.0000, 9),
	(31, 11, 'sub_total', 'Sub-Total', 101.0000, 1),
	(32, 11, 'shipping', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 39000.0000, 3),
	(33, 11, 'total', 'Total', 39101.0000, 9),
	(34, 12, 'sub_total', 'Sub-Total', 202.0000, 1),
	(35, 12, 'shipping', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>REG, <b>Deskripsi: </b> Layanan Reguler, <b>Catatan: </b> -', 45000.0000, 3),
	(36, 12, 'total', 'Total', 45202.0000, 9),
	(37, 13, 'sub_total', 'Sub-Total', 101.0000, 1),
	(38, 13, 'shipping', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 39000.0000, 3),
	(39, 13, 'total', 'Total', 39101.0000, 9),
	(40, 14, 'sub_total', 'Sub-Total', 101.0000, 1),
	(41, 14, 'shipping', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 39000.0000, 3),
	(42, 14, 'total', 'Total', 39101.0000, 9),
	(43, 15, 'sub_total', 'Sub-Total', 101.0000, 1),
	(44, 15, 'shipping', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 39000.0000, 3),
	(45, 15, 'total', 'Total', 39101.0000, 9),
	(46, 16, 'sub_total', 'Sub-Total', 101.0000, 1),
	(47, 16, 'shipping', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>OKE, <b>Deskripsi: </b> Ongkos Kirim Ekonomis, <b>Catatan: </b> -', 39000.0000, 3),
	(48, 16, 'total', 'Total', 39101.0000, 9),
	(49, 17, 'sub_total', 'Sub-Total', 101.0000, 1),
	(50, 17, 'shipping', '<b>Kurir: </b>Citra Van Titipan Kilat (TIKI), <b>Servis: </b>ONS, <b>Deskripsi: </b> OVER NIGHT SERVICE, <b>Catatan: </b> -', 45500.0000, 3),
	(51, 17, 'total', 'Total', 45601.0000, 9),
	(52, 18, 'sub_total', 'Sub-Total', 101.0000, 1),
	(53, 18, 'shipping', '<b>Kurir: </b>Jalur Nugraha Ekakurir (JNE), <b>Servis: </b>REG, <b>Deskripsi: </b> Layanan Reguler, <b>Catatan: </b> -', 450000.0000, 3),
	(54, 18, 'total', 'Total', 450101.0000, 9);
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_order_voucher
CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_order_voucher: 0 rows
DELETE FROM `oc_order_voucher`;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product
CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product: 19 rows
DELETE FROM `oc_product`;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
	(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/demo/htc_touch_hd_1.jpg', 5, 1, 100.0000, 200, 9, '2009-02-03', 146.40000000, 2, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 16:06:50', '2011-09-30 01:05:39'),
	(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/palm_treo_pro_1.jpg', 6, 1, 279.9900, 0, 9, '2009-02-03', 133.00000000, 2, 0.00000000, 0.00000000, 0.00000000, 3, 1, 1, 0, 1, 0, '2009-02-03 16:42:17', '2011-09-30 01:06:08'),
	(30, 'Product 3', '', '', '', '', '', '', '', 7, 6, 'catalog/demo/canon_eos_5d_1.jpg', 9, 1, 100.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 16:59:00', '2011-09-30 01:05:23'),
	(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/nikon_d300_1.jpg', 0, 1, 80.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 3, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2011-09-30 01:06:00'),
	(32, 'Product 5', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/ipod_touch_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 17:07:26', '2011-09-30 01:07:22'),
	(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/samsung_syncmaster_941bw.jpg', 0, 1, 200.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 17:08:31', '2011-09-30 01:06:29'),
	(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/ipod_shuffle_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2011-09-30 01:07:17'),
	(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, '', 0, 0, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 18:08:31', '2011-09-30 01:06:17'),
	(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/ipod_nano_1.jpg', 8, 0, 100.0000, 100, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2011-09-30 01:07:12'),
	(40, 'product 11', '', '', '', '', '', '', '', 970, 5, 'catalog/demo/iphone_1.jpg', 8, 1, 1500000.0000, 0, 9, '2009-02-03', 600.00000000, 2, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 22, '2009-02-03 21:07:12', '2016-12-19 14:02:48'),
	(41, 'Product 14', '', '', '', '', '', '', '', 977, 5, 'catalog/demo/imac_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-03', 5.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:26', '2011-09-30 01:06:44'),
	(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/apple_cinema_30.jpg', 8, 1, 100.0000, 400, 9, '2009-02-04', 12.50000000, 1, 1.00000000, 2.00000000, 3.00000000, 1, 1, 2, 0, 1, 2, '2009-02-03 21:07:37', '2011-09-30 00:46:19'),
	(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/demo/macbook_1.jpg', 8, 0, 500.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 21:07:49', '2011-09-30 01:05:46'),
	(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/macbook_air_1.jpg', 8, 1, 1000.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2011-09-30 01:05:53'),
	(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/macbook_pro_1.jpg', 8, 1, 2000.0000, 0, 100, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2011-09-15 22:22:01'),
	(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/sony_vaio_1.jpg', 10, 1, 1000.0000, 0, 9, '2009-02-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:29', '2011-09-30 01:06:39'),
	(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/hp_1.jpg', 7, 1, 100.0000, 400, 9, '2009-02-03', 1.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 0, 1, 0, 1, 0, '2009-02-03 21:08:40', '2011-09-30 01:05:28'),
	(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 995, 5, 'catalog/demo/ipod_classic_1.jpg', 8, 1, 100.0000, 0, 9, '2009-02-08', 1.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 2, 1, 1, 0, 1, 0, '2009-02-08 17:21:51', '2011-09-30 01:07:06'),
	(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/demo/samsung_tab_1.jpg', 0, 1, 199.9900, 0, 9, '2011-04-25', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 2, '2011-04-26 08:57:34', '2011-09-30 01:06:23');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product_attribute
CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product_attribute: 5 rows
DELETE FROM `oc_product_attribute`;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
	(43, 2, 1, '1'),
	(47, 4, 1, '16GB'),
	(43, 4, 1, '8gb'),
	(42, 3, 1, '100mhz'),
	(47, 2, 1, '4');
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product_description
CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product_description: 19 rows
DELETE FROM `oc_product_description`;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
	(35, 1, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', '', '', ''),
	(48, 1, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', ''),
	(28, 1, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', ''),
	(44, 1, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', '', '', ''),
	(45, 1, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', ''),
	(29, 1, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', ''),
	(36, 1, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', ''),
	(46, 1, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', '', '', ''),
	(47, 1, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', '', '', ''),
	(32, 1, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '', '', ''),
	(41, 1, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', '', '', ''),
	(33, 1, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', '', '', ''),
	(34, 1, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', ''),
	(43, 1, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', ''),
	(31, 1, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', ''),
	(49, 1, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', '', '', ''),
	(42, 1, 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there&amp;#39;s no limit to what you can achieve. &lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it&amp;#39;s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple&amp;#39;s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br /&gt;\r\n	&lt;br /&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br /&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170&amp;deg; horizontal; 170&amp;deg; vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br /&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br /&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50&amp;deg; to 95&amp;deg; F (10&amp;deg; to 35&amp;deg; C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40&amp;deg; to 116&amp;deg; F (-40&amp;deg; to 47&amp;deg; C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO &amp;#39;03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br /&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', ''),
	(30, 1, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', '', '', ''),
	(40, 1, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', '');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product_discount
CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product_discount: 3 rows
DELETE FROM `oc_product_discount`;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
	(440, 42, 1, 30, 1, 66.0000, '0000-00-00', '0000-00-00'),
	(439, 42, 1, 20, 1, 77.0000, '0000-00-00', '0000-00-00'),
	(438, 42, 1, 10, 1, 88.0000, '0000-00-00', '0000-00-00');
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product_filter
CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product_filter: 0 rows
DELETE FROM `oc_product_filter`;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product_image
CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2382 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product_image: 61 rows
DELETE FROM `oc_product_image`;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
	(2345, 30, 'catalog/demo/canon_eos_5d_2.jpg', 0),
	(2321, 47, 'catalog/demo/hp_3.jpg', 0),
	(2035, 28, 'catalog/demo/htc_touch_hd_2.jpg', 0),
	(2351, 41, 'catalog/demo/imac_3.jpg', 0),
	(2381, 40, 'catalog/demo/iphone_6.jpg', 0),
	(2001, 36, 'catalog/demo/ipod_nano_5.jpg', 0),
	(2000, 36, 'catalog/demo/ipod_nano_4.jpg', 0),
	(2005, 34, 'catalog/demo/ipod_shuffle_5.jpg', 0),
	(2004, 34, 'catalog/demo/ipod_shuffle_4.jpg', 0),
	(2011, 32, 'catalog/demo/ipod_touch_7.jpg', 0),
	(2010, 32, 'catalog/demo/ipod_touch_6.jpg', 0),
	(2009, 32, 'catalog/demo/ipod_touch_5.jpg', 0),
	(1971, 43, 'catalog/demo/macbook_5.jpg', 0),
	(1970, 43, 'catalog/demo/macbook_4.jpg', 0),
	(1974, 44, 'catalog/demo/macbook_air_4.jpg', 0),
	(1973, 44, 'catalog/demo/macbook_air_2.jpg', 0),
	(1977, 45, 'catalog/demo/macbook_pro_2.jpg', 0),
	(1976, 45, 'catalog/demo/macbook_pro_3.jpg', 0),
	(1986, 31, 'catalog/demo/nikon_d300_3.jpg', 0),
	(1985, 31, 'catalog/demo/nikon_d300_2.jpg', 0),
	(1988, 29, 'catalog/demo/palm_treo_pro_3.jpg', 0),
	(1995, 46, 'catalog/demo/sony_vaio_5.jpg', 0),
	(1994, 46, 'catalog/demo/sony_vaio_4.jpg', 0),
	(1991, 48, 'catalog/demo/ipod_classic_4.jpg', 0),
	(1990, 48, 'catalog/demo/ipod_classic_3.jpg', 0),
	(2380, 40, 'catalog/demo/iphone_2.jpg', 0),
	(2379, 40, 'catalog/demo/iphone_5.jpg', 0),
	(2344, 30, 'catalog/demo/canon_eos_5d_3.jpg', 0),
	(2320, 47, 'catalog/demo/hp_2.jpg', 0),
	(2034, 28, 'catalog/demo/htc_touch_hd_3.jpg', 0),
	(2350, 41, 'catalog/demo/imac_2.jpg', 0),
	(2378, 40, 'catalog/demo/iphone_3.jpg', 0),
	(2377, 40, 'catalog/demo/iphone_4.jpg', 0),
	(1989, 48, 'catalog/demo/ipod_classic_2.jpg', 0),
	(1999, 36, 'catalog/demo/ipod_nano_2.jpg', 0),
	(1998, 36, 'catalog/demo/ipod_nano_3.jpg', 0),
	(2003, 34, 'catalog/demo/ipod_shuffle_2.jpg', 0),
	(2002, 34, 'catalog/demo/ipod_shuffle_3.jpg', 0),
	(2008, 32, 'catalog/demo/ipod_touch_2.jpg', 0),
	(2007, 32, 'catalog/demo/ipod_touch_3.jpg', 0),
	(2006, 32, 'catalog/demo/ipod_touch_4.jpg', 0),
	(1969, 43, 'catalog/demo/macbook_2.jpg', 0),
	(1968, 43, 'catalog/demo/macbook_3.jpg', 0),
	(1972, 44, 'catalog/demo/macbook_air_3.jpg', 0),
	(1975, 45, 'catalog/demo/macbook_pro_4.jpg', 0),
	(1984, 31, 'catalog/demo/nikon_d300_4.jpg', 0),
	(1983, 31, 'catalog/demo/nikon_d300_5.jpg', 0),
	(1987, 29, 'catalog/demo/palm_treo_pro_2.jpg', 0),
	(1993, 46, 'catalog/demo/sony_vaio_2.jpg', 0),
	(1992, 46, 'catalog/demo/sony_vaio_3.jpg', 0),
	(2327, 49, 'catalog/demo/samsung_tab_7.jpg', 0),
	(2326, 49, 'catalog/demo/samsung_tab_6.jpg', 0),
	(2325, 49, 'catalog/demo/samsung_tab_5.jpg', 0),
	(2324, 49, 'catalog/demo/samsung_tab_4.jpg', 0),
	(2323, 49, 'catalog/demo/samsung_tab_3.jpg', 0),
	(2322, 49, 'catalog/demo/samsung_tab_2.jpg', 0),
	(2317, 42, 'catalog/demo/canon_logo.jpg', 0),
	(2316, 42, 'catalog/demo/hp_1.jpg', 0),
	(2315, 42, 'catalog/demo/compaq_presario.jpg', 0),
	(2314, 42, 'catalog/demo/canon_eos_5d_1.jpg', 0),
	(2313, 42, 'catalog/demo/canon_eos_5d_2.jpg', 0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product_option
CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product_option: 12 rows
DELETE FROM `oc_product_option`;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
	(224, 35, 11, '', 1),
	(225, 47, 12, '2011-04-22', 1),
	(223, 42, 2, '', 1),
	(217, 42, 5, '', 1),
	(209, 42, 6, '', 1),
	(218, 42, 1, '', 1),
	(208, 42, 4, 'test', 1),
	(219, 42, 8, '2011-02-20', 1),
	(222, 42, 7, '', 1),
	(221, 42, 9, '22:25', 1),
	(220, 42, 10, '2011-02-20 22:25', 1),
	(226, 30, 5, '', 1);
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product_option_value
CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product_option_value: 16 rows
DELETE FROM `oc_product_option_value`;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
	(1, 217, 42, 5, 41, 100, 0, 1.0000, '+', 0, '+', 1.00000000, '+'),
	(6, 218, 42, 1, 31, 146, 1, 20.0000, '+', 2, '-', 20.00000000, '+'),
	(7, 218, 42, 1, 43, 300, 1, 30.0000, '+', 3, '+', 30.00000000, '+'),
	(5, 218, 42, 1, 32, 96, 1, 10.0000, '+', 1, '+', 10.00000000, '+'),
	(4, 217, 42, 5, 39, 92, 1, 4.0000, '+', 0, '+', 4.00000000, '+'),
	(2, 217, 42, 5, 42, 200, 1, 2.0000, '+', 0, '+', 2.00000000, '+'),
	(3, 217, 42, 5, 40, 300, 0, 3.0000, '+', 0, '+', 3.00000000, '+'),
	(8, 223, 42, 2, 23, 48, 1, 10.0000, '+', 0, '+', 10.00000000, '+'),
	(10, 223, 42, 2, 44, 2696, 1, 30.0000, '+', 0, '+', 30.00000000, '+'),
	(9, 223, 42, 2, 24, 194, 1, 20.0000, '+', 0, '+', 20.00000000, '+'),
	(11, 223, 42, 2, 45, 3998, 1, 40.0000, '+', 0, '+', 40.00000000, '+'),
	(12, 224, 35, 11, 46, 0, 1, 5.0000, '+', 0, '+', 0.00000000, '+'),
	(13, 224, 35, 11, 47, 10, 1, 10.0000, '+', 0, '+', 0.00000000, '+'),
	(14, 224, 35, 11, 48, 15, 1, 15.0000, '+', 0, '+', 0.00000000, '+'),
	(16, 226, 30, 5, 40, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
	(15, 226, 30, 5, 39, 2, 1, 0.0000, '+', 0, '+', 0.00000000, '+');
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product_recurring
CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product_recurring: 0 rows
DELETE FROM `oc_product_recurring`;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product_related
CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product_related: 4 rows
DELETE FROM `oc_product_related`;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
	(40, 42),
	(41, 42),
	(42, 40),
	(42, 41);
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product_reward
CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product_reward: 18 rows
DELETE FROM `oc_product_reward`;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
	(515, 42, 1, 100),
	(519, 47, 1, 300),
	(379, 28, 1, 400),
	(329, 43, 1, 600),
	(339, 29, 1, 0),
	(343, 48, 1, 0),
	(539, 30, 1, 200),
	(331, 44, 1, 700),
	(333, 45, 1, 800),
	(337, 31, 1, 0),
	(425, 35, 1, 0),
	(345, 33, 1, 0),
	(347, 46, 1, 0),
	(545, 41, 1, 0),
	(351, 36, 1, 0),
	(353, 34, 1, 0),
	(355, 32, 1, 0),
	(521, 49, 1, 1000);
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product_special
CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=440 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product_special: 3 rows
DELETE FROM `oc_product_special`;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
	(419, 42, 1, 1, 90.0000, '0000-00-00', '0000-00-00'),
	(439, 30, 1, 2, 90.0000, '0000-00-00', '0000-00-00'),
	(438, 30, 1, 1, 80.0000, '0000-00-00', '0000-00-00');
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product_to_category
CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product_to_category: 30 rows
DELETE FROM `oc_product_to_category`;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
	(28, 20),
	(28, 24),
	(29, 20),
	(29, 24),
	(30, 20),
	(30, 33),
	(31, 33),
	(32, 34),
	(33, 20),
	(33, 28),
	(34, 34),
	(35, 20),
	(36, 34),
	(40, 20),
	(40, 24),
	(41, 27),
	(42, 20),
	(42, 28),
	(43, 18),
	(43, 20),
	(44, 18),
	(44, 20),
	(45, 18),
	(46, 18),
	(46, 20),
	(47, 18),
	(47, 20),
	(48, 20),
	(48, 34),
	(49, 57);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product_to_download
CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product_to_download: 0 rows
DELETE FROM `oc_product_to_download`;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product_to_layout
CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product_to_layout: 1 rows
DELETE FROM `oc_product_to_layout`;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
	(40, 0, 0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_product_to_store
CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_product_to_store: 19 rows
DELETE FROM `oc_product_to_store`;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
	(28, 0),
	(29, 0),
	(30, 0),
	(31, 0),
	(32, 0),
	(33, 0),
	(34, 0),
	(35, 0),
	(36, 0),
	(40, 0),
	(41, 0),
	(42, 0),
	(43, 0),
	(44, 0),
	(45, 0),
	(46, 0),
	(47, 0),
	(48, 0),
	(49, 0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_recurring
CREATE TABLE IF NOT EXISTS `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_recurring: 0 rows
DELETE FROM `oc_recurring`;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_recurring_description
CREATE TABLE IF NOT EXISTS `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_recurring_description: 0 rows
DELETE FROM `oc_recurring_description`;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_return
CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_return: 0 rows
DELETE FROM `oc_return`;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_return_action
CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_return_action: 3 rows
DELETE FROM `oc_return_action`;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
	(1, 1, 'Refunded'),
	(2, 1, 'Credit Issued'),
	(3, 1, 'Replacement Sent');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_return_history
CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_return_history: 0 rows
DELETE FROM `oc_return_history`;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_return_reason
CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_return_reason: 5 rows
DELETE FROM `oc_return_reason`;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
	(1, 1, 'Dead On Arrival'),
	(2, 1, 'Received Wrong Item'),
	(3, 1, 'Order Error'),
	(4, 1, 'Faulty, please supply details'),
	(5, 1, 'Other, please supply details');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_return_status
CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_return_status: 3 rows
DELETE FROM `oc_return_status`;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
	(1, 1, 'Pending'),
	(3, 1, 'Complete'),
	(2, 1, 'Awaiting Products');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_review
CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_review: 0 rows
DELETE FROM `oc_review`;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_setting
CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1520 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_setting: 160 rows
DELETE FROM `oc_setting`;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
	(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
	(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
	(3, 0, 'sub_total', 'sub_total_status', '1', 0),
	(4, 0, 'tax', 'tax_status', '1', 0),
	(5, 0, 'total', 'total_sort_order', '9', 0),
	(6, 0, 'total', 'total_status', '1', 0),
	(7, 0, 'tax', 'tax_sort_order', '5', 0),
	(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
	(9, 0, 'cod', 'cod_sort_order', '5', 0),
	(10, 0, 'cod', 'cod_total', '0.01', 0),
	(11, 0, 'cod', 'cod_order_status_id', '1', 0),
	(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
	(13, 0, 'cod', 'cod_status', '1', 0),
	(14, 0, 'shipping', 'shipping_status', '1', 0),
	(15, 0, 'shipping', 'shipping_estimator', '1', 0),
	(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
	(28, 0, 'coupon', 'coupon_status', '1', 0),
	(34, 0, 'flat', 'flat_sort_order', '1', 0),
	(35, 0, 'flat', 'flat_status', '1', 0),
	(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
	(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
	(41, 0, 'flat', 'flat_cost', '5.00', 0),
	(42, 0, 'credit', 'credit_sort_order', '7', 0),
	(43, 0, 'credit', 'credit_status', '1', 0),
	(53, 0, 'reward', 'reward_sort_order', '2', 0),
	(54, 0, 'reward', 'reward_status', '1', 0),
	(146, 0, 'category', 'category_status', '1', 0),
	(158, 0, 'account', 'account_status', '1', 0),
	(159, 0, 'affiliate', 'affiliate_status', '1', 0),
	(1517, 0, 'config', 'config_google_captcha_secret', '', 0),
	(1516, 0, 'config', 'config_google_captcha_public', '', 0),
	(1515, 0, 'config', 'config_google_analytics_status', '0', 0),
	(1507, 0, 'config', 'config_maintenance', '0', 0),
	(1508, 0, 'config', 'config_password', '1', 0),
	(1509, 0, 'config', 'config_encryption', '3feecff10cd30a2e93023e5fd0fb8376', 0),
	(1510, 0, 'config', 'config_compression', '0', 0),
	(1511, 0, 'config', 'config_error_display', '1', 0),
	(1512, 0, 'config', 'config_error_log', '1', 0),
	(1513, 0, 'config', 'config_error_filename', 'error.log', 0),
	(1514, 0, 'config', 'config_google_analytics', '', 0),
	(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
	(95, 0, 'voucher', 'voucher_status', '1', 0),
	(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
	(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
	(1503, 0, 'config', 'config_seo_url', '0', 0),
	(1504, 0, 'config', 'config_file_max_size', '300000', 0),
	(1505, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
	(1506, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
	(1501, 0, 'config', 'config_shared', '0', 0),
	(1502, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
	(1500, 0, 'config', 'config_secure', '0', 0),
	(1499, 0, 'config', 'config_mail_alert', '', 0),
	(1498, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
	(1496, 0, 'config', 'config_mail_smtp_password', '', 0),
	(1497, 0, 'config', 'config_mail_smtp_port', '25', 0),
	(1495, 0, 'config', 'config_mail_smtp_username', '', 0),
	(1494, 0, 'config', 'config_mail_smtp_hostname', '', 0),
	(1493, 0, 'config', 'config_mail_parameter', '', 0),
	(1492, 0, 'config', 'config_mail_protocol', 'mail', 0),
	(1491, 0, 'config', 'config_ftp_status', '0', 0),
	(1490, 0, 'config', 'config_ftp_root', '', 0),
	(1489, 0, 'config', 'config_ftp_password', '', 0),
	(1488, 0, 'config', 'config_ftp_username', '', 0),
	(1487, 0, 'config', 'config_ftp_port', '21', 0),
	(1486, 0, 'config', 'config_ftp_hostname', 'localhost', 0),
	(1484, 0, 'config', 'config_image_location_width', '268', 0),
	(1485, 0, 'config', 'config_image_location_height', '50', 0),
	(1483, 0, 'config', 'config_image_cart_height', '47', 0),
	(1482, 0, 'config', 'config_image_cart_width', '47', 0),
	(1481, 0, 'config', 'config_image_wishlist_height', '47', 0),
	(1480, 0, 'config', 'config_image_wishlist_width', '47', 0),
	(1478, 0, 'config', 'config_image_compare_width', '90', 0),
	(1479, 0, 'config', 'config_image_compare_height', '90', 0),
	(1477, 0, 'config', 'config_image_related_height', '80', 0),
	(1476, 0, 'config', 'config_image_related_width', '80', 0),
	(1473, 0, 'config', 'config_image_product_height', '228', 0),
	(1475, 0, 'config', 'config_image_additional_height', '74', 0),
	(1474, 0, 'config', 'config_image_additional_width', '74', 0),
	(1472, 0, 'config', 'config_image_product_width', '228', 0),
	(1471, 0, 'config', 'config_image_popup_height', '500', 0),
	(1469, 0, 'config', 'config_image_thumb_height', '228', 0),
	(1470, 0, 'config', 'config_image_popup_width', '500', 0),
	(1468, 0, 'config', 'config_image_thumb_width', '228', 0),
	(1467, 0, 'config', 'config_image_category_height', '80', 0),
	(1466, 0, 'config', 'config_image_category_width', '80', 0),
	(1465, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
	(1464, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
	(1463, 0, 'config', 'config_return_status_id', '2', 0),
	(284, 0, 'filter', 'filter_status', '1', 0),
	(1284, 0, 'indoship', 'indoship_status', '1', 0),
	(1283, 0, 'indoship', 'indoship_geo_zone_id', '0', 0),
	(1282, 0, 'indoship', 'indoship_tax_class_id', '0', 0),
	(1281, 0, 'indoship', 'indoship_services', 'all', 0),
	(1280, 0, 'indoship', 'indoship_destinasi', '1', 0),
	(1278, 0, 'indoship', 'indoship_type_api', '3', 0),
	(1279, 0, 'indoship', 'indoship_origins', '151', 0),
	(1462, 0, 'config', 'config_return_id', '0', 0),
	(1461, 0, 'config', 'config_affiliate_mail', '0', 0),
	(1460, 0, 'config', 'config_affiliate_id', '4', 0),
	(1459, 0, 'config', 'config_affiliate_commission', '5', 0),
	(1458, 0, 'config', 'config_affiliate_auto', '0', 0),
	(1456, 0, 'config', 'config_stock_checkout', '0', 0),
	(1457, 0, 'config', 'config_affiliate_approval', '0', 0),
	(1455, 0, 'config', 'config_stock_warning', '0', 0),
	(1454, 0, 'config', 'config_stock_display', '0', 0),
	(1453, 0, 'config', 'config_order_mail', '0', 0),
	(1452, 0, 'config', 'config_complete_status', 'a:1:{i:0;s:1:"5";}', 1),
	(1451, 0, 'config', 'config_processing_status', 'a:1:{i:0;s:1:"2";}', 1),
	(1450, 0, 'config', 'config_order_status_id', '1', 0),
	(1449, 0, 'config', 'config_checkout_id', '5', 0),
	(1448, 0, 'config', 'config_checkout_guest', '1', 0),
	(1447, 0, 'config', 'config_cart_weight', '1', 0),
	(1445, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
	(1446, 0, 'config', 'config_api_id', '1', 0),
	(1441, 0, 'config', 'config_customer_price', '0', 0),
	(1443, 0, 'config', 'config_account_id', '3', 0),
	(1444, 0, 'config', 'config_account_mail', '0', 0),
	(1442, 0, 'config', 'config_login_attempts', '5', 0),
	(1440, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
	(1439, 0, 'config', 'config_customer_group_id', '1', 0),
	(1438, 0, 'config', 'config_customer_online', '0', 0),
	(1437, 0, 'config', 'config_tax_customer', 'shipping', 0),
	(1435, 0, 'config', 'config_tax', '1', 0),
	(1436, 0, 'config', 'config_tax_default', 'shipping', 0),
	(1434, 0, 'config', 'config_voucher_max', '1000', 0),
	(1433, 0, 'config', 'config_voucher_min', '1', 0),
	(1432, 0, 'config', 'config_review_mail', '0', 0),
	(1431, 0, 'config', 'config_review_guest', '1', 0),
	(1430, 0, 'config', 'config_review_status', '1', 0),
	(1429, 0, 'config', 'config_limit_admin', '20', 0),
	(1428, 0, 'config', 'config_product_description_length', '100', 0),
	(1427, 0, 'config', 'config_product_limit', '15', 0),
	(1426, 0, 'config', 'config_product_count', '1', 0),
	(1425, 0, 'config', 'config_weight_class_id', '2', 0),
	(1423, 0, 'config', 'config_currency_auto', '1', 0),
	(1424, 0, 'config', 'config_length_class_id', '1', 0),
	(1422, 0, 'config', 'config_currency', 'IDR', 0),
	(1421, 0, 'config', 'config_admin_language', 'en', 0),
	(1419, 0, 'config', 'config_zone_id', '0', 0),
	(1420, 0, 'config', 'config_language', 'en', 0),
	(1417, 0, 'config', 'config_layout_id', '4', 0),
	(1418, 0, 'config', 'config_country_id', '100', 0),
	(1416, 0, 'config', 'config_template', 'journal2', 0),
	(1415, 0, 'config', 'config_meta_keyword', '', 0),
	(1414, 0, 'config', 'config_meta_description', 'My Store', 0),
	(1413, 0, 'config', 'config_meta_title', 'Your Store', 0),
	(1412, 0, 'config', 'config_comment', '', 0),
	(1411, 0, 'config', 'config_open', '', 0),
	(1410, 0, 'config', 'config_image', '', 0),
	(1409, 0, 'config', 'config_fax', '', 0),
	(1408, 0, 'config', 'config_telephone', '123456789', 0),
	(1277, 0, 'indoship', 'indoship_key_api', 'da8cdc722b1b1aaec7e0b4144799adaa', 0),
	(1285, 0, 'indoship', 'indoship_sort_order', '', 0),
	(1407, 0, 'config', 'config_email', 'admin@a.com', 0),
	(1406, 0, 'config', 'config_geocode', '', 0),
	(1405, 0, 'config', 'config_address', 'Address 1', 0),
	(1404, 0, 'config', 'config_owner', 'Your Name', 0),
	(1403, 0, 'config', 'config_name', 'Your Store', 0),
	(1518, 0, 'config', 'config_google_captcha_status', '0', 0),
	(1519, 0, 'config', 'journal_db_check_journal2_newsletter_store_id', '1', 0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_stock_status
CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_stock_status: 4 rows
DELETE FROM `oc_stock_status`;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
	(7, 1, 'In Stock'),
	(8, 1, 'Pre-Order'),
	(5, 1, 'Out Of Stock'),
	(6, 1, '2-3 Days');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_store
CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_store: 0 rows
DELETE FROM `oc_store`;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_tax_class
CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_tax_class: 2 rows
DELETE FROM `oc_tax_class`;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
	(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
	(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_tax_rate
CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_tax_rate: 2 rows
DELETE FROM `oc_tax_rate`;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
	(86, 3, 'VAT (20%)', 20.0000, 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
	(87, 3, 'Eco Tax (-2.00)', 2.0000, 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_tax_rate_to_customer_group
CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_tax_rate_to_customer_group: 2 rows
DELETE FROM `oc_tax_rate_to_customer_group`;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
	(86, 1),
	(87, 1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_tax_rule
CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_tax_rule: 4 rows
DELETE FROM `oc_tax_rule`;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
	(121, 10, 86, 'payment', 1),
	(120, 10, 87, 'store', 0),
	(128, 9, 86, 'shipping', 1),
	(127, 9, 87, 'shipping', 2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_upload
CREATE TABLE IF NOT EXISTS `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_upload: 0 rows
DELETE FROM `oc_upload`;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_url_alias
CREATE TABLE IF NOT EXISTS `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=850 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_url_alias: 67 rows
DELETE FROM `oc_url_alias`;
/*!40000 ALTER TABLE `oc_url_alias` DISABLE KEYS */;
INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
	(824, 'product_id=48', 'ipod-classic'),
	(836, 'category_id=20', 'desktops'),
	(834, 'category_id=26', 'pc'),
	(835, 'category_id=27', 'mac'),
	(730, 'manufacturer_id=8', 'apple'),
	(772, 'information_id=4', 'about_us'),
	(768, 'product_id=42', 'test'),
	(789, 'category_id=34', 'mp3-players'),
	(781, 'category_id=36', 'test2'),
	(774, 'category_id=18', 'laptop-notebook'),
	(775, 'category_id=46', 'macs'),
	(776, 'category_id=45', 'windows'),
	(777, 'category_id=25', 'component'),
	(778, 'category_id=29', 'mouse'),
	(779, 'category_id=28', 'monitor'),
	(780, 'category_id=35', 'test1'),
	(782, 'category_id=30', 'printer'),
	(783, 'category_id=31', 'scanner'),
	(784, 'category_id=32', 'web-camera'),
	(785, 'category_id=57', 'tablet'),
	(786, 'category_id=17', 'software'),
	(787, 'category_id=24', 'smartphone'),
	(788, 'category_id=33', 'camera'),
	(790, 'category_id=43', 'test11'),
	(791, 'category_id=44', 'test12'),
	(792, 'category_id=47', 'test15'),
	(793, 'category_id=48', 'test16'),
	(794, 'category_id=49', 'test17'),
	(795, 'category_id=50', 'test18'),
	(796, 'category_id=51', 'test19'),
	(797, 'category_id=52', 'test20'),
	(798, 'category_id=58', 'test25'),
	(799, 'category_id=53', 'test21'),
	(800, 'category_id=54', 'test22'),
	(801, 'category_id=55', 'test23'),
	(802, 'category_id=56', 'test24'),
	(803, 'category_id=38', 'test4'),
	(804, 'category_id=37', 'test5'),
	(805, 'category_id=39', 'test6'),
	(806, 'category_id=40', 'test7'),
	(807, 'category_id=41', 'test8'),
	(808, 'category_id=42', 'test9'),
	(809, 'product_id=30', 'canon-eos-5d'),
	(840, 'product_id=47', 'hp-lp3065'),
	(811, 'product_id=28', 'htc-touch-hd'),
	(812, 'product_id=43', 'macbook'),
	(813, 'product_id=44', 'macbook-air'),
	(814, 'product_id=45', 'macbook-pro'),
	(816, 'product_id=31', 'nikon-d300'),
	(817, 'product_id=29', 'palm-treo-pro'),
	(818, 'product_id=35', 'product-8'),
	(819, 'product_id=49', 'samsung-galaxy-tab-10-1'),
	(820, 'product_id=33', 'samsung-syncmaster-941bw'),
	(821, 'product_id=46', 'sony-vaio'),
	(837, 'product_id=41', 'imac'),
	(849, 'product_id=40', 'iphone'),
	(825, 'product_id=36', 'ipod-nano'),
	(826, 'product_id=34', 'ipod-shuffle'),
	(827, 'product_id=32', 'ipod-touch'),
	(828, 'manufacturer_id=9', 'canon'),
	(829, 'manufacturer_id=5', 'htc'),
	(830, 'manufacturer_id=7', 'hewlett-packard'),
	(831, 'manufacturer_id=6', 'palm'),
	(832, 'manufacturer_id=10', 'sony'),
	(841, 'information_id=6', 'delivery'),
	(842, 'information_id=3', 'privacy'),
	(843, 'information_id=5', 'terms');
/*!40000 ALTER TABLE `oc_url_alias` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_user
CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_user: 1 rows
DELETE FROM `oc_user`;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
	(1, 1, 'admin', '6436e34182b62724841628f3b8519c19a1ff0c4f', 'fb13b6380', 'John', 'Doe', 'admin@admin.com', '', '', '36.71.118.152', 1, '2016-11-07 08:45:50');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_user_group
CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_user_group: 2 rows
DELETE FROM `oc_user_group`;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
	(1, 'Administrator', 'a:2:{s:6:"access";a:185:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:13:"design/banner";i:17;s:13:"design/layout";i:18;s:14:"extension/feed";i:19;s:15:"extension/fraud";i:20;s:19:"extension/installer";i:21;s:22:"extension/modification";i:22;s:16:"extension/module";i:23;s:17:"extension/openbay";i:24;s:17:"extension/payment";i:25;s:18:"extension/shipping";i:26;s:15:"extension/total";i:27;s:16:"feed/google_base";i:28;s:19:"feed/google_sitemap";i:29;s:15:"feed/openbaypro";i:30;s:18:"fraud/fraudlabspro";i:31;s:13:"fraud/maxmind";i:32;s:20:"localisation/country";i:33;s:21:"localisation/currency";i:34;s:21:"localisation/geo_zone";i:35;s:21:"localisation/language";i:36;s:25:"localisation/length_class";i:37;s:21:"localisation/location";i:38;s:25:"localisation/order_status";i:39;s:26:"localisation/return_action";i:40;s:26:"localisation/return_reason";i:41;s:26:"localisation/return_status";i:42;s:25:"localisation/stock_status";i:43;s:22:"localisation/tax_class";i:44;s:21:"localisation/tax_rate";i:45;s:25:"localisation/weight_class";i:46;s:17:"localisation/zone";i:47;s:19:"marketing/affiliate";i:48;s:17:"marketing/contact";i:49;s:16:"marketing/coupon";i:50;s:19:"marketing/marketing";i:51;s:14:"module/account";i:52;s:16:"module/affiliate";i:53;s:20:"module/amazon_button";i:54;s:19:"module/amazon_login";i:55;s:17:"module/amazon_pay";i:56;s:13:"module/banner";i:57;s:17:"module/bestseller";i:58;s:15:"module/carousel";i:59;s:15:"module/category";i:60;s:19:"module/ebay_listing";i:61;s:15:"module/featured";i:62;s:13:"module/filter";i:63;s:22:"module/google_hangouts";i:64;s:11:"module/html";i:65;s:18:"module/information";i:66;s:13:"module/latest";i:67;s:16:"module/pp_button";i:68;s:15:"module/pp_login";i:69;s:16:"module/slideshow";i:70;s:14:"module/special";i:71;s:12:"module/store";i:72;s:14:"openbay/amazon";i:73;s:22:"openbay/amazon_listing";i:74;s:22:"openbay/amazon_product";i:75;s:16:"openbay/amazonus";i:76;s:24:"openbay/amazonus_listing";i:77;s:24:"openbay/amazonus_product";i:78;s:12:"openbay/ebay";i:79;s:20:"openbay/ebay_profile";i:80;s:21:"openbay/ebay_template";i:81;s:12:"openbay/etsy";i:82;s:20:"openbay/etsy_product";i:83;s:21:"openbay/etsy_shipping";i:84;s:17:"openbay/etsy_shop";i:85;s:23:"payment/amazon_checkout";i:86;s:24:"payment/amazon_login_pay";i:87;s:24:"payment/authorizenet_aim";i:88;s:24:"payment/authorizenet_sim";i:89;s:21:"payment/bank_transfer";i:90;s:22:"payment/bluepay_hosted";i:91;s:24:"payment/bluepay_redirect";i:92;s:14:"payment/cheque";i:93;s:11:"payment/cod";i:94;s:17:"payment/firstdata";i:95;s:24:"payment/firstdata_remote";i:96;s:21:"payment/free_checkout";i:97;s:14:"payment/g2apay";i:98;s:17:"payment/globalpay";i:99;s:24:"payment/globalpay_remote";i:100;s:22:"payment/klarna_account";i:101;s:22:"payment/klarna_invoice";i:102;s:14:"payment/liqpay";i:103;s:14:"payment/nochex";i:104;s:15:"payment/paymate";i:105;s:16:"payment/paypoint";i:106;s:13:"payment/payza";i:107;s:26:"payment/perpetual_payments";i:108;s:18:"payment/pp_express";i:109;s:18:"payment/pp_payflow";i:110;s:25:"payment/pp_payflow_iframe";i:111;s:14:"payment/pp_pro";i:112;s:21:"payment/pp_pro_iframe";i:113;s:19:"payment/pp_standard";i:114;s:14:"payment/realex";i:115;s:21:"payment/realex_remote";i:116;s:22:"payment/sagepay_direct";i:117;s:22:"payment/sagepay_server";i:118;s:18:"payment/sagepay_us";i:119;s:24:"payment/securetrading_pp";i:120;s:24:"payment/securetrading_ws";i:121;s:14:"payment/skrill";i:122;s:19:"payment/twocheckout";i:123;s:28:"payment/web_payment_software";i:124;s:16:"payment/worldpay";i:125;s:16:"report/affiliate";i:126;s:25:"report/affiliate_activity";i:127;s:22:"report/affiliate_login";i:128;s:24:"report/customer_activity";i:129;s:22:"report/customer_credit";i:130;s:21:"report/customer_login";i:131;s:22:"report/customer_online";i:132;s:21:"report/customer_order";i:133;s:22:"report/customer_reward";i:134;s:16:"report/marketing";i:135;s:24:"report/product_purchased";i:136;s:21:"report/product_viewed";i:137;s:18:"report/sale_coupon";i:138;s:17:"report/sale_order";i:139;s:18:"report/sale_return";i:140;s:20:"report/sale_shipping";i:141;s:15:"report/sale_tax";i:142;s:17:"sale/custom_field";i:143;s:13:"sale/customer";i:144;s:20:"sale/customer_ban_ip";i:145;s:19:"sale/customer_group";i:146;s:10:"sale/order";i:147;s:14:"sale/recurring";i:148;s:11:"sale/return";i:149;s:12:"sale/voucher";i:150;s:18:"sale/voucher_theme";i:151;s:15:"setting/setting";i:152;s:13:"setting/store";i:153;s:16:"shipping/auspost";i:154;s:17:"shipping/citylink";i:155;s:14:"shipping/fedex";i:156;s:13:"shipping/flat";i:157;s:13:"shipping/free";i:158;s:13:"shipping/item";i:159;s:23:"shipping/parcelforce_48";i:160;s:15:"shipping/pickup";i:161;s:19:"shipping/royal_mail";i:162;s:12:"shipping/ups";i:163;s:13:"shipping/usps";i:164;s:15:"shipping/weight";i:165;s:11:"tool/backup";i:166;s:14:"tool/error_log";i:167;s:11:"tool/upload";i:168;s:12:"total/coupon";i:169;s:12:"total/credit";i:170;s:14:"total/handling";i:171;s:16:"total/klarna_fee";i:172;s:19:"total/low_order_fee";i:173;s:12:"total/reward";i:174;s:14:"total/shipping";i:175;s:15:"total/sub_total";i:176;s:9:"total/tax";i:177;s:11:"total/total";i:178;s:13:"total/voucher";i:179;s:8:"user/api";i:180;s:9:"user/user";i:181;s:20:"user/user_permission";i:182;s:17:"shipping/indoship";i:183;s:15:"module/journal2";i:184;s:15:"module/journal2";}s:6:"modify";a:185:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:13:"design/banner";i:17;s:13:"design/layout";i:18;s:14:"extension/feed";i:19;s:15:"extension/fraud";i:20;s:19:"extension/installer";i:21;s:22:"extension/modification";i:22;s:16:"extension/module";i:23;s:17:"extension/openbay";i:24;s:17:"extension/payment";i:25;s:18:"extension/shipping";i:26;s:15:"extension/total";i:27;s:16:"feed/google_base";i:28;s:19:"feed/google_sitemap";i:29;s:15:"feed/openbaypro";i:30;s:18:"fraud/fraudlabspro";i:31;s:13:"fraud/maxmind";i:32;s:20:"localisation/country";i:33;s:21:"localisation/currency";i:34;s:21:"localisation/geo_zone";i:35;s:21:"localisation/language";i:36;s:25:"localisation/length_class";i:37;s:21:"localisation/location";i:38;s:25:"localisation/order_status";i:39;s:26:"localisation/return_action";i:40;s:26:"localisation/return_reason";i:41;s:26:"localisation/return_status";i:42;s:25:"localisation/stock_status";i:43;s:22:"localisation/tax_class";i:44;s:21:"localisation/tax_rate";i:45;s:25:"localisation/weight_class";i:46;s:17:"localisation/zone";i:47;s:19:"marketing/affiliate";i:48;s:17:"marketing/contact";i:49;s:16:"marketing/coupon";i:50;s:19:"marketing/marketing";i:51;s:14:"module/account";i:52;s:16:"module/affiliate";i:53;s:20:"module/amazon_button";i:54;s:19:"module/amazon_login";i:55;s:17:"module/amazon_pay";i:56;s:13:"module/banner";i:57;s:17:"module/bestseller";i:58;s:15:"module/carousel";i:59;s:15:"module/category";i:60;s:19:"module/ebay_listing";i:61;s:15:"module/featured";i:62;s:13:"module/filter";i:63;s:22:"module/google_hangouts";i:64;s:11:"module/html";i:65;s:18:"module/information";i:66;s:13:"module/latest";i:67;s:16:"module/pp_button";i:68;s:15:"module/pp_login";i:69;s:16:"module/slideshow";i:70;s:14:"module/special";i:71;s:12:"module/store";i:72;s:14:"openbay/amazon";i:73;s:22:"openbay/amazon_listing";i:74;s:22:"openbay/amazon_product";i:75;s:16:"openbay/amazonus";i:76;s:24:"openbay/amazonus_listing";i:77;s:24:"openbay/amazonus_product";i:78;s:12:"openbay/ebay";i:79;s:20:"openbay/ebay_profile";i:80;s:21:"openbay/ebay_template";i:81;s:12:"openbay/etsy";i:82;s:20:"openbay/etsy_product";i:83;s:21:"openbay/etsy_shipping";i:84;s:17:"openbay/etsy_shop";i:85;s:23:"payment/amazon_checkout";i:86;s:24:"payment/amazon_login_pay";i:87;s:24:"payment/authorizenet_aim";i:88;s:24:"payment/authorizenet_sim";i:89;s:21:"payment/bank_transfer";i:90;s:22:"payment/bluepay_hosted";i:91;s:24:"payment/bluepay_redirect";i:92;s:14:"payment/cheque";i:93;s:11:"payment/cod";i:94;s:17:"payment/firstdata";i:95;s:24:"payment/firstdata_remote";i:96;s:21:"payment/free_checkout";i:97;s:14:"payment/g2apay";i:98;s:17:"payment/globalpay";i:99;s:24:"payment/globalpay_remote";i:100;s:22:"payment/klarna_account";i:101;s:22:"payment/klarna_invoice";i:102;s:14:"payment/liqpay";i:103;s:14:"payment/nochex";i:104;s:15:"payment/paymate";i:105;s:16:"payment/paypoint";i:106;s:13:"payment/payza";i:107;s:26:"payment/perpetual_payments";i:108;s:18:"payment/pp_express";i:109;s:18:"payment/pp_payflow";i:110;s:25:"payment/pp_payflow_iframe";i:111;s:14:"payment/pp_pro";i:112;s:21:"payment/pp_pro_iframe";i:113;s:19:"payment/pp_standard";i:114;s:14:"payment/realex";i:115;s:21:"payment/realex_remote";i:116;s:22:"payment/sagepay_direct";i:117;s:22:"payment/sagepay_server";i:118;s:18:"payment/sagepay_us";i:119;s:24:"payment/securetrading_pp";i:120;s:24:"payment/securetrading_ws";i:121;s:14:"payment/skrill";i:122;s:19:"payment/twocheckout";i:123;s:28:"payment/web_payment_software";i:124;s:16:"payment/worldpay";i:125;s:16:"report/affiliate";i:126;s:25:"report/affiliate_activity";i:127;s:22:"report/affiliate_login";i:128;s:24:"report/customer_activity";i:129;s:22:"report/customer_credit";i:130;s:21:"report/customer_login";i:131;s:22:"report/customer_online";i:132;s:21:"report/customer_order";i:133;s:22:"report/customer_reward";i:134;s:16:"report/marketing";i:135;s:24:"report/product_purchased";i:136;s:21:"report/product_viewed";i:137;s:18:"report/sale_coupon";i:138;s:17:"report/sale_order";i:139;s:18:"report/sale_return";i:140;s:20:"report/sale_shipping";i:141;s:15:"report/sale_tax";i:142;s:17:"sale/custom_field";i:143;s:13:"sale/customer";i:144;s:20:"sale/customer_ban_ip";i:145;s:19:"sale/customer_group";i:146;s:10:"sale/order";i:147;s:14:"sale/recurring";i:148;s:11:"sale/return";i:149;s:12:"sale/voucher";i:150;s:18:"sale/voucher_theme";i:151;s:15:"setting/setting";i:152;s:13:"setting/store";i:153;s:16:"shipping/auspost";i:154;s:17:"shipping/citylink";i:155;s:14:"shipping/fedex";i:156;s:13:"shipping/flat";i:157;s:13:"shipping/free";i:158;s:13:"shipping/item";i:159;s:23:"shipping/parcelforce_48";i:160;s:15:"shipping/pickup";i:161;s:19:"shipping/royal_mail";i:162;s:12:"shipping/ups";i:163;s:13:"shipping/usps";i:164;s:15:"shipping/weight";i:165;s:11:"tool/backup";i:166;s:14:"tool/error_log";i:167;s:11:"tool/upload";i:168;s:12:"total/coupon";i:169;s:12:"total/credit";i:170;s:14:"total/handling";i:171;s:16:"total/klarna_fee";i:172;s:19:"total/low_order_fee";i:173;s:12:"total/reward";i:174;s:14:"total/shipping";i:175;s:15:"total/sub_total";i:176;s:9:"total/tax";i:177;s:11:"total/total";i:178;s:13:"total/voucher";i:179;s:8:"user/api";i:180;s:9:"user/user";i:181;s:20:"user/user_permission";i:182;s:17:"shipping/indoship";i:183;s:15:"module/journal2";i:184;s:15:"module/journal2";}}'),
	(10, 'Demonstration', '');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_voucher
CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_voucher: 0 rows
DELETE FROM `oc_voucher`;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_voucher_history
CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_voucher_history: 0 rows
DELETE FROM `oc_voucher_history`;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_voucher_theme
CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_voucher_theme: 3 rows
DELETE FROM `oc_voucher_theme`;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
	(8, 'catalog/demo/canon_eos_5d_2.jpg'),
	(7, 'catalog/demo/gift-voucher-birthday.jpg'),
	(6, 'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_voucher_theme_description
CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_voucher_theme_description: 3 rows
DELETE FROM `oc_voucher_theme_description`;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
	(6, 1, 'Christmas'),
	(7, 1, 'Birthday'),
	(8, 1, 'General');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_weight_class
CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_weight_class: 4 rows
DELETE FROM `oc_weight_class`;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
	(1, 1.00000000),
	(2, 1000.00000000),
	(5, 2.20460000),
	(6, 35.27400000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_weight_class_description
CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_weight_class_description: 4 rows
DELETE FROM `oc_weight_class_description`;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
	(1, 1, 'Kilogram', 'kg'),
	(2, 1, 'Gram', 'g'),
	(5, 1, 'Pound ', 'lb'),
	(6, 1, 'Ounce', 'oz');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_zone
CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4231 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_zone: 0 rows
DELETE FROM `oc_zone`;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;

-- Dumping structure for table u2447560_oc_raja_ongkir.oc_zone_to_geo_zone
CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- Dumping data for table u2447560_oc_raja_ongkir.oc_zone_to_geo_zone: 109 rows
DELETE FROM `oc_zone_to_geo_zone`;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
	(110, 100, 0, 4, '2016-12-03 09:03:47', '0000-00-00 00:00:00'),
	(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
