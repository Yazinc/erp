-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.35 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5174
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table vm2.account_sys
CREATE TABLE IF NOT EXISTS `account_sys` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) NOT NULL DEFAULT '0',
  `sub_account_id` int(11) NOT NULL DEFAULT '0',
  `account_type_id` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Charts of Accounts';

-- Dumping data for table vm2.account_sys: ~0 rows (approximately)
/*!40000 ALTER TABLE `account_sys` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_sys` ENABLE KEYS */;

-- Dumping structure for table vm2.bill
CREATE TABLE IF NOT EXISTS `bill` (
  `bill_no` int(11) NOT NULL AUTO_INCREMENT,
  `po_no` int(11) DEFAULT '0',
  `term_id` int(11) DEFAULT '0',
  `bill_due` date DEFAULT '0000-00-00',
  `ref_no` varchar(255) DEFAULT '0000-00-00',
  `memo` varchar(255) DEFAULT '0000-00-00',
  `status_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`bill_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Enter Bills for Receipt Items';

-- Dumping data for table vm2.bill: ~0 rows (approximately)
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;

-- Dumping structure for table vm2.bill_product
CREATE TABLE IF NOT EXISTS `bill_product` (
  `bill_line_no` int(11) NOT NULL AUTO_INCREMENT,
  `po_no` int(11) NOT NULL DEFAULT '0',
  `bill_no` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT '0',
  `rate` int(11) NOT NULL DEFAULT '0',
  `purchase_description` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bill_line_no`),
  KEY `virtuemart_product_id` (`product_id`),
  KEY `bill_no` (`bill_no`),
  KEY `po_no` (`po_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table vm2.bill_product: ~2 rows (approximately)
/*!40000 ALTER TABLE `bill_product` DISABLE KEYS */;
INSERT INTO `bill_product` (`bill_line_no`, `po_no`, `bill_no`, `product_id`, `qty`, `rate`, `purchase_description`) VALUES
	(1, 1, 0, 1, 10, 850, '0'),
	(2, 1, 0, 2, 20, 300, '0');
/*!40000 ALTER TABLE `bill_product` ENABLE KEYS */;

-- Dumping structure for table vm2.products
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_product_id` int(11) DEFAULT '0',
  `product_name` varchar(50) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `purchase_description` varchar(255) DEFAULT '0',
  `account_id` int(11) DEFAULT '0',
  `sale_description` varchar(255) DEFAULT '0',
  `cost` int(11) DEFAULT '0',
  `sale_price` int(11) DEFAULT '0',
  `po_qty` int(11) DEFAULT '0',
  `so_qty` int(11) DEFAULT '0',
  `reorder_point` int(11) DEFAULT '0',
  `type_id` int(11) DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table vm2.products: ~1 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`product_id`, `sub_product_id`, `product_name`, `product_code`, `description`, `purchase_description`, `account_id`, `sale_description`, `cost`, `sale_price`, `po_qty`, `so_qty`, `reorder_point`, `type_id`) VALUES
	(1, 0, 'Panasonic Camera', '12336', 'Nothing', 'Nothing', 1, 'Nothing', 5000, 3000, 0, 0, 2, 1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table vm2.p_orders
CREATE TABLE IF NOT EXISTS `p_orders` (
  `po_no` int(11) NOT NULL AUTO_INCREMENT,
  `po_enter_dt` date DEFAULT '0000-00-00',
  `vendor_id` int(11) DEFAULT '0',
  `entered_by` int(11) DEFAULT '0' COMMENT 'Employee ID',
  `ship_to` int(11) DEFAULT '0' COMMENT 'Customer ID',
  `memo` varchar(255) DEFAULT '0',
  `instruc` varchar(255) DEFAULT '0' COMMENT 'Instructions',
  `status_id` int(11) DEFAULT NULL COMMENT 'Pending/Issed/Closed',
  PRIMARY KEY (`po_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Data of Purcahse orders';

-- Dumping data for table vm2.p_orders: ~1 rows (approximately)
/*!40000 ALTER TABLE `p_orders` DISABLE KEYS */;
INSERT INTO `p_orders` (`po_no`, `po_enter_dt`, `vendor_id`, `entered_by`, `ship_to`, `memo`, `instruc`, `status_id`) VALUES
	(1, '2017-09-27', 1, 1, 2, 'its my first', '0', NULL);
/*!40000 ALTER TABLE `p_orders` ENABLE KEYS */;

-- Dumping structure for table vm2.vendor_info
CREATE TABLE IF NOT EXISTS `vendor_info` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_company_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `ctc` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `active` varchar(50) DEFAULT '0',
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`company_id`),
  KEY `sub_vendor_id` (`sub_company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1 COMMENT='Containg Vendor Information Status';

-- Dumping data for table vm2.vendor_info: ~9 rows (approximately)
/*!40000 ALTER TABLE `vendor_info` DISABLE KEYS */;
INSERT INTO `vendor_info` (`company_id`, `sub_company_id`, `role_id`, `title`, `ctc`, `email`, `reg_date`, `active`, `order`) VALUES
	(1, NULL, NULL, 'Fototrade', 'Mr. Hafiz', 'foto@gamil.com', NULL, NULL, NULL),
	(2, NULL, NULL, 'Khawaja Fotos', 'Mr. Ahmed', 'khawaj@gmail.com', NULL, NULL, NULL),
	(3, NULL, 1, 'MBM', 'Wajahat', 'Waj@gmail..com', NULL, NULL, NULL),
	(142, NULL, 1, 'Faheem Khan', 'Mr.', 'checking@gmail.com', NULL, '0', NULL),
	(143, NULL, 1, 'Faheem Khan', 'Mr.', 'checking@gmail.com', NULL, '0', NULL),
	(147, NULL, 1, 'Peter', 'Parker', 'peterparker@mail.com', NULL, '1', NULL),
	(148, NULL, 1, 'Peter', 'Parker', 'peterparker@mail.com', NULL, '1', NULL),
	(149, NULL, 1, '', '', 'peterparker@mail.com', NULL, '1', NULL),
	(150, NULL, 1, 'Yasir', 'yasir@mgial.com', 'peterparker@mail.com', NULL, '1', NULL);
/*!40000 ALTER TABLE `vendor_info` ENABLE KEYS */;

-- Dumping structure for table vm2.virtuemart_categories
CREATE TABLE IF NOT EXISTS `virtuemart_categories` (
  `virtuemart_category_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Belongs to vendor',
  `category_template` varchar(128) DEFAULT NULL,
  `category_layout` varchar(64) DEFAULT NULL,
  `category_product_layout` varchar(64) DEFAULT NULL,
  `products_per_row` varchar(1) NOT NULL DEFAULT '',
  `limit_list_step` varchar(32) DEFAULT NULL,
  `limit_list_initial` smallint(1) unsigned DEFAULT NULL,
  `hits` int(1) unsigned NOT NULL DEFAULT '0',
  `cat_params` varchar(15359) NOT NULL DEFAULT '',
  `metarobot` varchar(40) NOT NULL DEFAULT '',
  `metaauthor` varchar(64) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_category_id`),
  KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  KEY `published` (`published`),
  KEY `shared` (`shared`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Product Categories are stored here';

-- Dumping data for table vm2.virtuemart_categories: 0 rows
/*!40000 ALTER TABLE `virtuemart_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtuemart_categories` ENABLE KEYS */;

-- Dumping structure for table vm2.virtuemart_category_categories
CREATE TABLE IF NOT EXISTS `virtuemart_category_categories` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `category_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `category_child_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_parent_id` (`category_parent_id`,`category_child_id`),
  KEY `category_child_id` (`category_child_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Category child-parent relation list';

-- Dumping data for table vm2.virtuemart_category_categories: 0 rows
/*!40000 ALTER TABLE `virtuemart_category_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtuemart_category_categories` ENABLE KEYS */;

-- Dumping structure for table vm2.virtuemart_category_medias
CREATE TABLE IF NOT EXISTS `virtuemart_category_medias` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_category_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_category_id` (`virtuemart_category_id`,`virtuemart_media_id`),
  KEY `ordering` (`virtuemart_category_id`,`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table vm2.virtuemart_category_medias: 0 rows
/*!40000 ALTER TABLE `virtuemart_category_medias` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtuemart_category_medias` ENABLE KEYS */;

-- Dumping structure for table vm2.virtuemart_manufacturercategories
CREATE TABLE IF NOT EXISTS `virtuemart_manufacturercategories` (
  `virtuemart_manufacturercategories_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are assigned to these categories';

-- Dumping data for table vm2.virtuemart_manufacturercategories: 0 rows
/*!40000 ALTER TABLE `virtuemart_manufacturercategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtuemart_manufacturercategories` ENABLE KEYS */;

-- Dumping structure for table vm2.virtuemart_manufacturers
CREATE TABLE IF NOT EXISTS `virtuemart_manufacturers` (
  `virtuemart_manufacturer_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_manufacturercategories_id` int(1) DEFAULT NULL,
  `metarobot` varchar(400) DEFAULT NULL,
  `metaauthor` varchar(400) DEFAULT NULL,
  `hits` int(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`virtuemart_manufacturer_id`),
  UNIQUE KEY `virtuemart_manufacturercategories_id` (`virtuemart_manufacturer_id`,`virtuemart_manufacturercategories_id`),
  KEY `published` (`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are those who deliver products';

-- Dumping data for table vm2.virtuemart_manufacturers: 0 rows
/*!40000 ALTER TABLE `virtuemart_manufacturers` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtuemart_manufacturers` ENABLE KEYS */;

-- Dumping structure for table vm2.virtuemart_manufacturer_medias
CREATE TABLE IF NOT EXISTS `virtuemart_manufacturer_medias` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_manufacturer_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_manufacturer_id` (`virtuemart_manufacturer_id`,`virtuemart_media_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table vm2.virtuemart_manufacturer_medias: 0 rows
/*!40000 ALTER TABLE `virtuemart_manufacturer_medias` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtuemart_manufacturer_medias` ENABLE KEYS */;

-- Dumping structure for table vm2.virtuemart_products
CREATE TABLE IF NOT EXISTS `virtuemart_products` (
  `product_id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `product_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `product_sku` varchar(255) DEFAULT NULL,
  `product_gtin` varchar(64) DEFAULT NULL,
  `product_mpn` varchar(64) DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` varchar(7) DEFAULT NULL,
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` varchar(7) DEFAULT NULL,
  `product_url` varchar(255) DEFAULT NULL,
  `product_in_stock` int(1) NOT NULL DEFAULT '0',
  `product_ordered` int(1) NOT NULL DEFAULT '0',
  `product_stockhandle` varchar(24) NOT NULL DEFAULT '0',
  `low_stock_notification` int(1) unsigned NOT NULL DEFAULT '0',
  `product_available_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_availability` varchar(32) DEFAULT NULL,
  `product_special` tinyint(1) DEFAULT NULL,
  `product_discontinued` tinyint(1) DEFAULT NULL,
  `product_sales` int(1) unsigned NOT NULL DEFAULT '0',
  `product_unit` varchar(8) DEFAULT NULL,
  `product_packaging` decimal(8,4) unsigned DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `pordering` int(1) unsigned NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`),
  KEY `product_parent_id` (`product_parent_id`),
  KEY `product_special` (`product_special`),
  KEY `product_discontinued` (`product_discontinued`),
  KEY `product_in_stock` (`product_in_stock`),
  KEY `product_ordered` (`product_ordered`),
  KEY `published` (`published`),
  KEY `pordering` (`pordering`),
  KEY `created_on` (`created_on`),
  KEY `modified_on` (`modified_on`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='All products are stored here.';

-- Dumping data for table vm2.virtuemart_products: 1 rows
/*!40000 ALTER TABLE `virtuemart_products` DISABLE KEYS */;
INSERT INTO `virtuemart_products` (`product_id`, `product_parent_id`, `product_sku`, `product_gtin`, `product_mpn`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_ordered`, `product_stockhandle`, `low_stock_notification`, `product_available_date`, `product_availability`, `product_special`, `product_discontinued`, `product_sales`, `product_unit`, `product_packaging`, `published`, `pordering`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
	(1, 0, '321201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'www.panasonic.com', 15, 0, '0', 2, '2017-09-21 00:00:00', 'Y', NULL, NULL, 0, NULL, NULL, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
/*!40000 ALTER TABLE `virtuemart_products` ENABLE KEYS */;

-- Dumping structure for table vm2.virtuemart_product_categories
CREATE TABLE IF NOT EXISTS `virtuemart_product_categories` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_category_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_product_id` (`product_id`,`virtuemart_category_id`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

-- Dumping data for table vm2.virtuemart_product_categories: 0 rows
/*!40000 ALTER TABLE `virtuemart_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtuemart_product_categories` ENABLE KEYS */;

-- Dumping structure for table vm2.virtuemart_product_medias
CREATE TABLE IF NOT EXISTS `virtuemart_product_medias` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_media_id`),
  KEY `virtuemart_media_id` (`virtuemart_media_id`),
  KEY `ordering` (`virtuemart_product_id`,`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table vm2.virtuemart_product_medias: 0 rows
/*!40000 ALTER TABLE `virtuemart_product_medias` DISABLE KEYS */;
/*!40000 ALTER TABLE `virtuemart_product_medias` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
