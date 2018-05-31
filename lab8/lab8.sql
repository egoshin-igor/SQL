-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 31, 2018 at 10:40 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab8`
--

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `fill_product`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `fill_product` ()  BEGIN
  SET @counter = 0;
  WHILE (@counter < 100) DO
    INSERT INTO product
    VALUES
      (NULL,
      concat(substring('BCDFGHJKLMNPQRSTVWXZ', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1)),
      "Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.",
      FLOOR(RAND()*400000),
      FLOOR(1 + RAND()*2),
	  FLOOR(RAND()*4000),
	  FLOOR(1 + RAND()*6),
      FLOOR(1 + RAND()*2));
    SET @counter = @counter + 1;
  END WHILE;
END$$

DROP PROCEDURE IF EXISTS `fill_product_image`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `fill_product_image` ()  BEGIN
  SET @counter = 0;
  WHILE (@counter < 100) DO
    INSERT INTO product_image
    VALUES
      (NULL,
	  concat("../images/", substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), ".jpg"),
	  FLOOR(1 + RAND()*100));
	INSERT INTO product_image
    VALUES
      (NULL,
	  concat("../images/", substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), ".jpg"),
	  @counter + 1);
    SET @counter = @counter + 1;
  END WHILE;
END$$

DROP PROCEDURE IF EXISTS `fill_product_x_order`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `fill_product_x_order` ()  BEGIN
  SET @counter = 0;
  WHILE (@counter < 400) DO
    INSERT INTO product_x_order
    VALUES
      (NULL,
	  FLOOR(1 + RAND()*100),
	  FLOOR(1 + RAND()*100),
	  FLOOR(1 + RAND()*300),
      FLOOR(1 + RAND()*4),
      FLOOR(1 + RAND()*50000),
      FLOOR(1 + RAND()*4),
      FLOOR(1 + RAND()*3)
      );
    SET @counter = @counter + 1;
  END WHILE;
END$$

DROP PROCEDURE IF EXISTS `fill_seller_x_product`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `fill_seller_x_product` ()  BEGIN
  SET @counter = 0;
  WHILE (@counter < 400) DO
    INSERT INTO seller_x_product
    VALUES
      (NULL,
	  FLOOR(1 + RAND()*100),
	  FLOOR(1 + RAND()*100)
      );
    SET @counter = @counter + 1;
  END WHILE;
END$$

DROP PROCEDURE IF EXISTS `fill_user`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `fill_user` ()  BEGIN
  SET @counter = 0;
  WHILE (@counter < 100) DO
    INSERT INTO user
    VALUES
      (NULL,
      concat(substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1)),
	  md5(concat(substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1))),
      concat(substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), ".", substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), "@gmail.com"),
      concat(substring('7893', FLOOR(1 + RAND()*4), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1), substring('0123456789', FLOOR(1 + RAND()*10), 1)),
	  FLOOR(1 + RAND()*2),
	  concat("../images/", substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), substring('aeiouy', FLOOR(1 + RAND()*6), 1), substring('bcdfghjklmnpqrstvwxz', FLOOR(1 + RAND()*20), 1), ".jpg"),
      substring('ABCENGDUTRUSBEN', FLOOR(1 + RAND()*4)*3 + 1, 3)
      );
    SET @counter = @counter + 1;
  END WHILE;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id_category` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_category`),
  UNIQUE KEY `IU_category_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name`) VALUES
(5, 'Bags'),
(3, 'Computer'),
(2, 'Men\'s clothing'),
(4, 'Phone'),
(6, 'Toys'),
(1, 'Women\'s clothing');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE IF NOT EXISTS `currency` (
  `id_currency` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_currency`),
  UNIQUE KEY `IU_currency_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id_currency`, `name`) VALUES
(2, 'dollars'),
(1, 'rubles');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_firm`
--

DROP TABLE IF EXISTS `delivery_firm`;
CREATE TABLE IF NOT EXISTS `delivery_firm` (
  `id_delivery_firm` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  PRIMARY KEY (`id_delivery_firm`),
  UNIQUE KEY `IU_delivery_firm_mail` (`mail`) USING BTREE,
  UNIQUE KEY `IU_delivery_firm_phone` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `delivery_firm`
--

INSERT INTO `delivery_firm` (`id_delivery_firm`, `name`, `phone`, `mail`) VALUES
(1, 'Post of Russia', '88005553535', 'post.russia@mail.ru'),
(2, 'DPD', 'dpdpost555', 'dpd.post@gmail.com'),
(3, 'motodel', '1123312', 'motodel@gmail.com'),
(4, 'fastdelivery', 'fastdelivery666', 'fastdelivery@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
CREATE TABLE IF NOT EXISTS `order_status` (
  `id_order_status` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_order_status`),
  UNIQUE KEY `IU_order_status_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id_order_status`, `name`) VALUES
(3, 'delivered'),
(2, 'denied'),
(1, 'on the way');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE IF NOT EXISTS `payment_method` (
  `id_payment_method` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_payment_method`),
  UNIQUE KEY `IU_payment_method_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`id_payment_method`, `name`) VALUES
(2, 'MasterCard'),
(4, 'PayPal'),
(3, 'QIWI'),
(1, 'VISA');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id_product` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `id_product_status` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `id_category` int(11) UNSIGNED NOT NULL,
  `id_currency` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_product`),
  KEY `IN_product_id_category` (`id_category`) USING BTREE,
  KEY `IN_product_id_product_status` (`id_product_status`) USING BTREE,
  KEY `IN_product_id_currency` (`id_currency`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `name`, `description`, `price`, `id_product_status`, `quantity`, `id_category`, `id_currency`) VALUES
(1, 'Dacafuf', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 230040, 1, 650, 5, 2),
(2, 'Nyxybec', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 275121, 1, 3951, 2, 2),
(3, 'Zameroj', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 213675, 2, 747, 4, 2),
(4, 'Sivyfyl', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 119342, 1, 3386, 5, 1),
(5, 'Qyxubyl', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 187698, 1, 2710, 3, 2),
(6, 'Hetasih', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 392546, 1, 1323, 3, 1),
(7, 'Vuxupyr', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 309425, 2, 2761, 1, 1),
(8, 'Qusokiv', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 362088, 1, 2320, 5, 2),
(9, 'Gijifoc', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 351871, 1, 572, 2, 2),
(10, 'Hybehof', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 27216, 2, 3160, 4, 1),
(11, 'Jikihyt', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 9807, 2, 913, 4, 1),
(12, 'Xekedyv', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 242850, 2, 3967, 2, 1),
(13, 'Cejojoh', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 133420, 2, 2102, 6, 2),
(14, 'Fygicip', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 317765, 1, 2898, 6, 2),
(15, 'Gemowij', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 179421, 1, 233, 3, 1),
(16, 'Budakid', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 109517, 2, 388, 4, 1),
(17, 'Jibylir', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 122305, 1, 1426, 3, 1),
(18, 'Wevepen', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 318091, 1, 3715, 2, 1),
(19, 'Ryqibyr', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 238703, 2, 3073, 1, 1),
(20, 'Vipogex', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 309145, 1, 3470, 2, 2),
(21, 'Zekajif', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 242281, 1, 2055, 2, 1),
(22, 'Cipuxov', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 240615, 1, 2660, 6, 1),
(23, 'Pelelev', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 147295, 1, 3759, 3, 2),
(24, 'Hyliden', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 21360, 2, 1845, 1, 1),
(25, 'Begicel', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 29483, 1, 1805, 6, 2),
(26, 'Zehocor', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 244638, 1, 2133, 3, 2),
(27, 'Vajefad', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 110440, 2, 422, 4, 2),
(28, 'Wyxywiv', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 274914, 2, 2933, 5, 2),
(29, 'Kowobow', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 244967, 1, 1110, 1, 2),
(30, 'Mynuxox', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 30212, 2, 2047, 6, 1),
(31, 'Mewogez', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 13331, 1, 2993, 2, 2),
(32, 'Wuturyq', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 155550, 1, 315, 2, 2),
(33, 'Gekejoj', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 279774, 2, 1687, 4, 2),
(34, 'Vycunif', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 329218, 2, 1848, 4, 1),
(35, 'Gyciguw', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 54765, 1, 870, 5, 2),
(36, 'Kesewor', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 132066, 2, 1722, 1, 1),
(37, 'Talunim', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 42216, 1, 740, 4, 2),
(38, 'Zaquvyv', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 258178, 2, 2472, 6, 2),
(39, 'Vepixus', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 176302, 1, 3890, 5, 2),
(40, 'Nylajef', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 103038, 2, 3526, 2, 1),
(41, 'Nebebic', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 4861, 2, 1643, 3, 2),
(42, 'Josabyr', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 221318, 2, 45, 6, 1),
(43, 'Qiguhap', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 231820, 1, 999, 4, 2),
(44, 'Ryjybaf', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 318846, 1, 3070, 4, 1),
(45, 'Lygiqud', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 94973, 2, 721, 4, 1),
(46, 'Tygineb', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 63242, 2, 385, 3, 1),
(47, 'Byjyrog', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 70590, 1, 1779, 4, 2),
(48, 'Licyqav', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 310778, 1, 2433, 6, 2),
(49, 'Gebakor', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 310285, 2, 3098, 3, 2),
(50, 'Lypakuv', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 311247, 1, 2576, 1, 1),
(51, 'Cugasiz', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 185872, 1, 3649, 2, 1),
(52, 'Guxifum', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 386408, 1, 158, 1, 1),
(53, 'Fugukid', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 140576, 1, 2472, 1, 2),
(54, 'Ropifov', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 44689, 1, 748, 4, 2),
(55, 'Wucewon', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 329024, 1, 11, 4, 2),
(56, 'Ritydyx', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 41318, 2, 1189, 2, 2),
(57, 'Qahejyw', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 184018, 2, 3901, 6, 1),
(58, 'Kuhesoz', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 386705, 2, 3376, 3, 1),
(59, 'Pujemoj', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 384664, 2, 767, 4, 2),
(60, 'Lahalaw', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 112616, 2, 3990, 5, 1),
(61, 'Cabysuj', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 227342, 2, 2344, 3, 1),
(62, 'Bakomul', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 342576, 1, 1843, 2, 1),
(63, 'Kupusov', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 160316, 1, 285, 6, 2),
(64, 'Topelix', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 129824, 2, 509, 2, 2),
(65, 'Ziweqik', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 183553, 1, 2462, 3, 2),
(66, 'Kecobed', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 354269, 1, 2191, 4, 1),
(67, 'Kifised', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 365156, 1, 261, 6, 1),
(68, 'Pytajaw', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 387452, 1, 3742, 2, 1),
(69, 'Tuhecyg', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 209926, 2, 3418, 4, 2),
(70, 'Sadiqyt', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 20534, 2, 2636, 3, 1),
(71, 'Cewutyz', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 96380, 1, 3366, 2, 2),
(72, 'Hagalav', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 16599, 2, 2900, 2, 1),
(73, 'Cajiwep', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 47939, 2, 541, 6, 1),
(74, 'Nacylin', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 249814, 1, 2388, 4, 2),
(75, 'Dimegam', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 158137, 2, 1366, 2, 2),
(76, 'Cowinex', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 343828, 1, 2729, 1, 1),
(77, 'Zefahad', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 267283, 2, 2609, 3, 1),
(78, 'Mifyfat', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 248111, 2, 899, 5, 2),
(79, 'Lafogof', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 14060, 2, 1892, 2, 2),
(80, 'Sikizow', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 296859, 1, 413, 2, 1),
(81, 'Modajaq', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 289663, 2, 3231, 4, 2),
(82, 'Gocuhem', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 273512, 2, 2724, 4, 2),
(83, 'Gypeqiz', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 298467, 2, 3109, 3, 1),
(84, 'Vaqyxuj', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 19160, 1, 2109, 4, 2),
(85, 'Bicahal', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 351848, 1, 1260, 1, 1),
(86, 'Koqovof', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 89935, 2, 1887, 3, 2),
(87, 'Hohikov', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 140241, 1, 1333, 6, 1),
(88, 'Kitupof', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 41318, 2, 2525, 2, 1),
(89, 'Toqineg', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 288159, 2, 717, 2, 2),
(90, 'Sykaluq', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 339463, 1, 439, 4, 1),
(91, 'Pofarem', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 196022, 1, 2342, 6, 2),
(92, 'Xifulus', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 62366, 2, 2706, 3, 1),
(93, 'Ticawen', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 5876, 1, 1035, 6, 2),
(94, 'Fonuxov', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 237214, 1, 2513, 5, 2),
(95, 'Xugulom', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 322644, 2, 1832, 4, 1),
(96, 'Neceget', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 392697, 2, 238, 3, 1),
(97, 'Barymoq', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 138407, 2, 867, 4, 1),
(98, 'Lamywyx', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 342532, 2, 3774, 2, 1),
(99, 'Mufuzun', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 273684, 2, 3520, 1, 2),
(100, 'Ruxazij', 'Lorem ipsum dolor sit amet, ad esse latine ius, scaevola theophrastus no pri. Utamur conclusionemque ea per, adolescens comprehensam signiferumque eu est. Vis omnis oblique eripuit an. In sanctus tractatos duo, aperiri convenire nam ne, nam ex delicatissimi conclusionemque. Quo ne maiorum imperdiet.', 96680, 1, 2264, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
CREATE TABLE IF NOT EXISTS `product_image` (
  `id_product_image` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_uri` varchar(255) NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_product_image`),
  KEY `IN_product_image_id_product` (`id_product`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id_product_image`, `image_uri`, `id_product`) VALUES
(1, '../images/ucexyr.jpg', 76),
(2, '../images/ulymoj.jpg', 1),
(3, '../images/yqetut.jpg', 53),
(4, '../images/erobit.jpg', 2),
(5, '../images/utedun.jpg', 24),
(6, '../images/olehev.jpg', 3),
(7, '../images/abypat.jpg', 64),
(8, '../images/udevik.jpg', 4),
(9, '../images/uhijer.jpg', 31),
(10, '../images/owomid.jpg', 5),
(11, '../images/awejaq.jpg', 79),
(12, '../images/asocem.jpg', 6),
(13, '../images/eheqet.jpg', 80),
(14, '../images/udonun.jpg', 7),
(15, '../images/esygil.jpg', 99),
(16, '../images/ozakod.jpg', 8),
(17, '../images/owozer.jpg', 39),
(18, '../images/ylizid.jpg', 9),
(19, '../images/ivuqut.jpg', 58),
(20, '../images/ojyjyz.jpg', 10),
(21, '../images/uhuhyc.jpg', 33),
(22, '../images/ijehok.jpg', 11),
(23, '../images/axocob.jpg', 17),
(24, '../images/uhefel.jpg', 12),
(25, '../images/orocol.jpg', 58),
(26, '../images/odaqaj.jpg', 13),
(27, '../images/oxucah.jpg', 17),
(28, '../images/ygigyg.jpg', 14),
(29, '../images/aburew.jpg', 74),
(30, '../images/ajefag.jpg', 15),
(31, '../images/usonat.jpg', 56),
(32, '../images/ozeqec.jpg', 16),
(33, '../images/ycusew.jpg', 80),
(34, '../images/egegiv.jpg', 17),
(35, '../images/uzupys.jpg', 2),
(36, '../images/ygiryr.jpg', 18),
(37, '../images/ogasid.jpg', 26),
(38, '../images/ypeguq.jpg', 19),
(39, '../images/atofef.jpg', 77),
(40, '../images/imihet.jpg', 20),
(41, '../images/uwydug.jpg', 89),
(42, '../images/ukixic.jpg', 21),
(43, '../images/ecoxop.jpg', 100),
(44, '../images/ewysyv.jpg', 22),
(45, '../images/atuluw.jpg', 96),
(46, '../images/atonyg.jpg', 23),
(47, '../images/eqeqaz.jpg', 42),
(48, '../images/anabun.jpg', 24),
(49, '../images/ofelos.jpg', 74),
(50, '../images/opawac.jpg', 25),
(51, '../images/yqarev.jpg', 48),
(52, '../images/ymiwyv.jpg', 26),
(53, '../images/ohureb.jpg', 50),
(54, '../images/iqymuh.jpg', 27),
(55, '../images/ekabar.jpg', 94),
(56, '../images/ojygis.jpg', 28),
(57, '../images/exysaz.jpg', 73),
(58, '../images/umafom.jpg', 29),
(59, '../images/ogitiw.jpg', 10),
(60, '../images/ywycop.jpg', 30),
(61, '../images/acuxaz.jpg', 46),
(62, '../images/ehilyw.jpg', 31),
(63, '../images/uhajik.jpg', 56),
(64, '../images/okyver.jpg', 32),
(65, '../images/ohewil.jpg', 95),
(66, '../images/ihameq.jpg', 33),
(67, '../images/ijeriw.jpg', 25),
(68, '../images/ofatur.jpg', 34),
(69, '../images/adixej.jpg', 93),
(70, '../images/usomur.jpg', 35),
(71, '../images/yhudex.jpg', 88),
(72, '../images/ohofav.jpg', 36),
(73, '../images/yvocyg.jpg', 50),
(74, '../images/ulyzek.jpg', 37),
(75, '../images/eryfis.jpg', 31),
(76, '../images/enypev.jpg', 38),
(77, '../images/ebegig.jpg', 87),
(78, '../images/uxinid.jpg', 39),
(79, '../images/idagyp.jpg', 40),
(80, '../images/aqupyp.jpg', 40),
(81, '../images/evemuc.jpg', 39),
(82, '../images/ugakyq.jpg', 41),
(83, '../images/emotyh.jpg', 59),
(84, '../images/avyryp.jpg', 42),
(85, '../images/arajif.jpg', 65),
(86, '../images/okymux.jpg', 43),
(87, '../images/ogigyf.jpg', 91),
(88, '../images/alawel.jpg', 44),
(89, '../images/osulyj.jpg', 96),
(90, '../images/uxihef.jpg', 45),
(91, '../images/ajamek.jpg', 46),
(92, '../images/agucaf.jpg', 46),
(93, '../images/uxipob.jpg', 44),
(94, '../images/agyqoc.jpg', 47),
(95, '../images/obevof.jpg', 26),
(96, '../images/ufiwyj.jpg', 48),
(97, '../images/oxyvip.jpg', 73),
(98, '../images/uzifuv.jpg', 49),
(99, '../images/axesuk.jpg', 86),
(100, '../images/axixup.jpg', 50),
(101, '../images/uguwif.jpg', 66),
(102, '../images/ufezys.jpg', 51),
(103, '../images/yfeqov.jpg', 54),
(104, '../images/acaceq.jpg', 52),
(105, '../images/ovivul.jpg', 73),
(106, '../images/iwavyv.jpg', 53),
(107, '../images/osufyc.jpg', 63),
(108, '../images/ypejyv.jpg', 54),
(109, '../images/ecibuw.jpg', 95),
(110, '../images/aselew.jpg', 55),
(111, '../images/onuzus.jpg', 46),
(112, '../images/aceryk.jpg', 56),
(113, '../images/ebiriz.jpg', 68),
(114, '../images/ifiwyt.jpg', 57),
(115, '../images/ezafyz.jpg', 9),
(116, '../images/omubar.jpg', 58),
(117, '../images/ylohux.jpg', 45),
(118, '../images/itubet.jpg', 59),
(119, '../images/ejosan.jpg', 15),
(120, '../images/akekah.jpg', 60),
(121, '../images/aqucyq.jpg', 30),
(122, '../images/oxyper.jpg', 61),
(123, '../images/owuvyk.jpg', 9),
(124, '../images/evodat.jpg', 62),
(125, '../images/umawer.jpg', 58),
(126, '../images/ymycoz.jpg', 63),
(127, '../images/ytyriv.jpg', 94),
(128, '../images/emogob.jpg', 64),
(129, '../images/opidod.jpg', 9),
(130, '../images/adegab.jpg', 65),
(131, '../images/uqysux.jpg', 25),
(132, '../images/igyviq.jpg', 66),
(133, '../images/uhyten.jpg', 100),
(134, '../images/ihaseb.jpg', 67),
(135, '../images/enugul.jpg', 71),
(136, '../images/ezepyc.jpg', 68),
(137, '../images/olopeg.jpg', 59),
(138, '../images/ekakuj.jpg', 69),
(139, '../images/ijirig.jpg', 65),
(140, '../images/ogazoq.jpg', 70),
(141, '../images/umikux.jpg', 13),
(142, '../images/ybican.jpg', 71),
(143, '../images/adezaj.jpg', 56),
(144, '../images/ubynyv.jpg', 72),
(145, '../images/ogodyn.jpg', 55),
(146, '../images/enyryp.jpg', 73),
(147, '../images/axavyx.jpg', 2),
(148, '../images/ehisam.jpg', 74),
(149, '../images/avydut.jpg', 49),
(150, '../images/atufuh.jpg', 75),
(151, '../images/amemyc.jpg', 61),
(152, '../images/ykehoz.jpg', 76),
(153, '../images/ezicer.jpg', 82),
(154, '../images/awadeb.jpg', 77),
(155, '../images/exahes.jpg', 74),
(156, '../images/ojafup.jpg', 78),
(157, '../images/iqogic.jpg', 21),
(158, '../images/yqodum.jpg', 79),
(159, '../images/abuwyk.jpg', 89),
(160, '../images/ezugus.jpg', 80),
(161, '../images/ociqap.jpg', 49),
(162, '../images/uhawal.jpg', 81),
(163, '../images/enymil.jpg', 9),
(164, '../images/ajenuc.jpg', 82),
(165, '../images/eqodyw.jpg', 91),
(166, '../images/ulukuk.jpg', 83),
(167, '../images/unipoc.jpg', 65),
(168, '../images/agakyn.jpg', 84),
(169, '../images/uneqix.jpg', 48),
(170, '../images/osusec.jpg', 85),
(171, '../images/owoziz.jpg', 64),
(172, '../images/ereqar.jpg', 86),
(173, '../images/alutiv.jpg', 82),
(174, '../images/oqehut.jpg', 87),
(175, '../images/obevof.jpg', 36),
(176, '../images/exygac.jpg', 88),
(177, '../images/ypywub.jpg', 88),
(178, '../images/ezysuw.jpg', 89),
(179, '../images/ytikuz.jpg', 43),
(180, '../images/esakoq.jpg', 90),
(181, '../images/igujed.jpg', 92),
(182, '../images/elojys.jpg', 91),
(183, '../images/ybovix.jpg', 5),
(184, '../images/onareg.jpg', 92),
(185, '../images/ilywyh.jpg', 36),
(186, '../images/ytypyz.jpg', 93),
(187, '../images/apovub.jpg', 94),
(188, '../images/ojuqyx.jpg', 94),
(189, '../images/uxewil.jpg', 95),
(190, '../images/igyqoc.jpg', 95),
(191, '../images/udolix.jpg', 41),
(192, '../images/esajeh.jpg', 96),
(193, '../images/uqamep.jpg', 33),
(194, '../images/ufinir.jpg', 97),
(195, '../images/ajikiz.jpg', 64),
(196, '../images/egijiw.jpg', 98),
(197, '../images/ifufuw.jpg', 38),
(198, '../images/exajik.jpg', 99),
(199, '../images/ovigar.jpg', 27),
(200, '../images/eketed.jpg', 100);

-- --------------------------------------------------------

--
-- Table structure for table `product_status`
--

DROP TABLE IF EXISTS `product_status`;
CREATE TABLE IF NOT EXISTS `product_status` (
  `id_product_status` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_product_status`),
  UNIQUE KEY `IU_product_status_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_status`
--

INSERT INTO `product_status` (`id_product_status`, `name`) VALUES
(1, 'in stock'),
(2, 'not avaliable');

-- --------------------------------------------------------

--
-- Table structure for table `product_x_order`
--

DROP TABLE IF EXISTS `product_x_order`;
CREATE TABLE IF NOT EXISTS `product_x_order` (
  `id_product_x_order` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `id_payment_method` int(11) UNSIGNED NOT NULL,
  `order_price` double NOT NULL,
  `id_delivery_firm` int(11) UNSIGNED NOT NULL,
  `id_order_status` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_product_x_order`),
  KEY `IN_product_x_orde_id_delivery_firm` (`id_delivery_firm`) USING BTREE,
  KEY `IN_product_x_order_id_order_status` (`id_order_status`) USING BTREE,
  KEY `IN_product_x_order_id_user` (`id_user`) USING BTREE,
  KEY `IN_product_x_order_id_product` (`id_product`) USING BTREE,
  KEY `IN_product_x_order_id_payment_method` (`id_payment_method`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_x_order`
--

INSERT INTO `product_x_order` (`id_product_x_order`, `id_user`, `id_product`, `quantity`, `id_payment_method`, `order_price`, `id_delivery_firm`, `id_order_status`) VALUES
(1, 70, 38, 241, 4, 48534, 1, 1),
(2, 51, 81, 151, 1, 1086, 4, 3),
(3, 6, 64, 294, 1, 3912, 2, 3),
(4, 25, 19, 60, 2, 29730, 3, 2),
(5, 54, 15, 48, 2, 12827, 1, 2),
(6, 48, 7, 264, 1, 19111, 2, 2),
(7, 92, 50, 211, 1, 5269, 2, 3),
(8, 18, 86, 231, 2, 203, 1, 1),
(9, 13, 11, 49, 3, 622, 3, 3),
(10, 17, 54, 49, 1, 27252, 1, 3),
(11, 19, 24, 182, 2, 40087, 1, 3),
(12, 83, 77, 104, 2, 5591, 2, 1),
(13, 31, 45, 97, 2, 18722, 1, 1),
(14, 91, 84, 146, 4, 5799, 4, 3),
(15, 68, 86, 77, 3, 39836, 4, 3),
(16, 66, 76, 248, 4, 38696, 2, 1),
(17, 46, 44, 241, 3, 5853, 2, 1),
(18, 63, 10, 180, 3, 36423, 3, 2),
(19, 76, 37, 175, 4, 11861, 4, 1),
(20, 100, 15, 219, 1, 44027, 4, 1),
(21, 59, 41, 85, 1, 2753, 3, 2),
(22, 38, 35, 173, 4, 24121, 4, 1),
(23, 36, 77, 225, 2, 1618, 4, 3),
(24, 98, 27, 114, 1, 19407, 3, 3),
(25, 3, 18, 246, 3, 14550, 4, 1),
(26, 46, 76, 123, 4, 32861, 4, 3),
(27, 15, 34, 69, 1, 49649, 3, 3),
(28, 41, 56, 177, 2, 29859, 1, 1),
(29, 70, 35, 192, 1, 44472, 4, 1),
(30, 92, 10, 221, 2, 36062, 2, 1),
(31, 7, 7, 37, 2, 38245, 3, 2),
(32, 55, 40, 110, 3, 2693, 2, 3),
(33, 58, 65, 156, 3, 32449, 2, 3),
(34, 39, 93, 137, 3, 8324, 2, 1),
(35, 38, 69, 86, 2, 2779, 1, 2),
(36, 6, 82, 266, 4, 14398, 2, 2),
(37, 16, 23, 192, 3, 38202, 1, 3),
(38, 18, 60, 137, 2, 2216, 4, 3),
(39, 44, 92, 77, 3, 45700, 4, 1),
(40, 52, 33, 32, 3, 17246, 1, 2),
(41, 69, 58, 252, 2, 38468, 2, 1),
(42, 94, 44, 117, 3, 48975, 1, 1),
(43, 61, 64, 107, 4, 16109, 4, 3),
(44, 67, 58, 265, 3, 37918, 3, 2),
(45, 10, 7, 20, 1, 19075, 3, 2),
(46, 64, 17, 277, 1, 43194, 4, 1),
(47, 72, 25, 30, 3, 22597, 1, 3),
(48, 47, 23, 220, 4, 36448, 3, 1),
(49, 24, 38, 60, 4, 33209, 4, 3),
(50, 92, 5, 146, 2, 48479, 4, 1),
(51, 33, 43, 55, 3, 28108, 4, 1),
(52, 37, 70, 118, 4, 9478, 2, 1),
(53, 37, 61, 276, 4, 9291, 3, 1),
(54, 66, 47, 110, 2, 1052, 4, 1),
(55, 10, 12, 88, 1, 35268, 1, 3),
(56, 29, 16, 268, 1, 18190, 4, 3),
(57, 2, 45, 48, 2, 44164, 4, 2),
(58, 74, 65, 10, 1, 48374, 1, 1),
(59, 87, 5, 186, 4, 48204, 4, 3),
(60, 1, 74, 196, 1, 17279, 3, 3),
(61, 92, 45, 139, 4, 25216, 3, 2),
(62, 42, 76, 160, 2, 19567, 4, 2),
(63, 95, 80, 42, 2, 3615, 2, 1),
(64, 29, 99, 27, 2, 7980, 2, 1),
(65, 15, 2, 198, 1, 11347, 2, 2),
(66, 66, 15, 229, 2, 26941, 3, 2),
(67, 18, 67, 246, 1, 49779, 3, 2),
(68, 67, 67, 102, 3, 20303, 4, 3),
(69, 41, 5, 297, 4, 5720, 1, 1),
(70, 97, 5, 97, 2, 20194, 3, 3),
(71, 7, 100, 235, 4, 14217, 3, 2),
(72, 96, 64, 92, 3, 9154, 1, 3),
(73, 56, 55, 14, 3, 41355, 2, 1),
(74, 52, 61, 144, 3, 24683, 3, 1),
(75, 23, 90, 244, 2, 20840, 4, 2),
(76, 18, 4, 194, 1, 31903, 4, 1),
(77, 6, 31, 112, 4, 30143, 1, 1),
(78, 98, 56, 252, 3, 8611, 1, 3),
(79, 90, 29, 221, 4, 46742, 1, 1),
(80, 15, 28, 289, 4, 1956, 1, 1),
(81, 66, 5, 83, 1, 18157, 1, 2),
(82, 78, 61, 219, 4, 44723, 1, 2),
(83, 15, 41, 172, 3, 25709, 3, 2),
(84, 27, 42, 87, 1, 4645, 4, 1),
(85, 22, 53, 297, 2, 43723, 2, 3),
(86, 81, 86, 253, 3, 39025, 4, 1),
(87, 48, 64, 223, 4, 42455, 4, 2),
(88, 85, 88, 257, 3, 33069, 2, 3),
(89, 21, 44, 165, 2, 29844, 3, 2),
(90, 9, 22, 249, 2, 49268, 2, 1),
(91, 2, 29, 109, 4, 36014, 3, 2),
(92, 95, 47, 151, 1, 2012, 4, 1),
(93, 61, 30, 201, 2, 12923, 4, 3),
(94, 64, 51, 185, 3, 48984, 1, 1),
(95, 83, 86, 242, 2, 43990, 1, 2),
(96, 29, 4, 88, 2, 45916, 3, 3),
(97, 62, 58, 12, 2, 8025, 2, 3),
(98, 27, 19, 37, 1, 44849, 2, 3),
(99, 78, 1, 218, 3, 41786, 2, 2),
(100, 62, 6, 126, 4, 17659, 1, 3),
(101, 79, 4, 249, 1, 33416, 2, 1),
(102, 54, 89, 247, 2, 40653, 3, 1),
(103, 21, 85, 181, 2, 27817, 2, 1),
(104, 75, 20, 227, 1, 32875, 3, 3),
(105, 35, 58, 254, 3, 48637, 2, 3),
(106, 35, 6, 71, 1, 18239, 4, 3),
(107, 80, 50, 29, 4, 29695, 1, 2),
(108, 9, 9, 53, 3, 29034, 1, 2),
(109, 16, 43, 200, 1, 9170, 4, 2),
(110, 12, 4, 246, 4, 26207, 3, 2),
(111, 11, 72, 84, 1, 17985, 1, 1),
(112, 37, 88, 86, 4, 6068, 1, 3),
(113, 99, 75, 233, 3, 42778, 2, 1),
(114, 28, 56, 281, 1, 15294, 2, 2),
(115, 54, 52, 292, 2, 32292, 2, 2),
(116, 81, 42, 201, 1, 21518, 4, 1),
(117, 16, 29, 282, 4, 22665, 3, 1),
(118, 67, 85, 76, 3, 40890, 4, 1),
(119, 55, 89, 241, 2, 18694, 4, 3),
(120, 98, 26, 105, 4, 40418, 1, 1),
(121, 79, 23, 228, 1, 17568, 2, 3),
(122, 6, 78, 207, 1, 28964, 3, 3),
(123, 49, 2, 185, 1, 16227, 3, 2),
(124, 62, 16, 288, 2, 34389, 3, 2),
(125, 71, 22, 284, 1, 27681, 3, 1),
(126, 53, 54, 29, 4, 4957, 4, 1),
(127, 55, 66, 187, 1, 43362, 4, 3),
(128, 76, 10, 62, 3, 6102, 2, 2),
(129, 28, 95, 270, 3, 31140, 1, 3),
(130, 32, 39, 287, 3, 15238, 3, 1),
(131, 7, 77, 185, 4, 6392, 2, 3),
(132, 69, 76, 220, 2, 35686, 2, 3),
(133, 65, 29, 147, 3, 22064, 2, 3),
(134, 57, 86, 178, 2, 6323, 2, 1),
(135, 96, 52, 211, 4, 37538, 4, 3),
(136, 20, 17, 72, 3, 36177, 3, 2),
(137, 37, 2, 290, 4, 2854, 4, 2),
(138, 21, 88, 231, 1, 34564, 4, 1),
(139, 57, 16, 22, 4, 12238, 3, 1),
(140, 37, 83, 10, 3, 14127, 2, 1),
(141, 31, 26, 109, 1, 6336, 3, 1),
(142, 18, 49, 263, 4, 301, 2, 1),
(143, 46, 54, 99, 1, 7250, 3, 3),
(144, 11, 10, 46, 2, 48205, 2, 3),
(145, 60, 18, 30, 4, 24255, 3, 1),
(146, 96, 80, 37, 1, 35173, 4, 1),
(147, 78, 3, 235, 4, 44291, 4, 3),
(148, 33, 22, 37, 4, 19037, 1, 1),
(149, 57, 40, 88, 2, 19708, 1, 3),
(150, 75, 9, 65, 4, 18973, 2, 1),
(151, 97, 97, 277, 3, 42563, 1, 3),
(152, 14, 5, 248, 4, 20704, 1, 2),
(153, 86, 94, 24, 3, 38419, 1, 3),
(154, 32, 92, 187, 2, 126, 4, 2),
(155, 56, 43, 146, 1, 12863, 4, 2),
(156, 1, 48, 106, 2, 32038, 1, 1),
(157, 51, 50, 282, 1, 12321, 3, 1),
(158, 45, 51, 48, 2, 48348, 4, 3),
(159, 83, 28, 273, 3, 43873, 1, 2),
(160, 76, 32, 90, 3, 44890, 4, 2),
(161, 41, 94, 142, 3, 12723, 3, 2),
(162, 98, 10, 159, 2, 11726, 1, 3),
(163, 27, 23, 102, 1, 322, 1, 1),
(164, 38, 61, 269, 3, 32537, 2, 1),
(165, 79, 99, 177, 4, 6056, 3, 1),
(166, 6, 22, 271, 4, 31880, 3, 1),
(167, 31, 51, 179, 2, 27322, 2, 1),
(168, 10, 44, 269, 1, 5290, 1, 3),
(169, 64, 28, 148, 3, 33014, 2, 1),
(170, 35, 36, 225, 3, 6830, 3, 3),
(171, 32, 1, 21, 2, 25561, 3, 1),
(172, 86, 1, 140, 2, 7106, 4, 2),
(173, 28, 79, 31, 1, 22830, 4, 3),
(174, 33, 35, 226, 3, 16513, 3, 2),
(175, 10, 91, 71, 2, 32315, 4, 1),
(176, 34, 20, 294, 2, 28145, 4, 3),
(177, 74, 100, 223, 3, 24043, 1, 2),
(178, 73, 26, 36, 4, 37530, 2, 1),
(179, 11, 93, 95, 4, 3691, 4, 2),
(180, 98, 15, 250, 3, 3890, 1, 3),
(181, 20, 100, 128, 1, 17882, 2, 3),
(182, 64, 25, 104, 4, 41840, 2, 3),
(183, 24, 76, 23, 1, 15220, 1, 1),
(184, 97, 48, 145, 4, 23373, 2, 2),
(185, 57, 18, 52, 2, 11587, 1, 3),
(186, 90, 95, 17, 2, 48665, 3, 1),
(187, 26, 26, 163, 4, 344, 2, 1),
(188, 54, 90, 262, 3, 36400, 3, 3),
(189, 6, 31, 112, 4, 27612, 4, 1),
(190, 85, 78, 101, 2, 39154, 4, 3),
(191, 82, 49, 288, 2, 41334, 1, 1),
(192, 11, 26, 283, 4, 46756, 4, 1),
(193, 6, 37, 201, 1, 10798, 2, 1),
(194, 36, 53, 167, 1, 19773, 2, 2),
(195, 56, 25, 169, 1, 30390, 4, 2),
(196, 94, 18, 19, 4, 34546, 1, 2),
(197, 53, 86, 217, 1, 197, 4, 2),
(198, 19, 14, 48, 2, 17657, 3, 1),
(199, 48, 48, 281, 2, 24955, 3, 1),
(200, 23, 93, 280, 4, 31255, 2, 2),
(201, 7, 82, 268, 1, 19388, 4, 2),
(202, 2, 5, 57, 4, 22600, 4, 3),
(203, 88, 75, 26, 1, 34621, 4, 2),
(204, 29, 23, 86, 4, 45769, 2, 3),
(205, 14, 24, 234, 1, 29644, 2, 1),
(206, 2, 32, 169, 4, 27303, 1, 2),
(207, 9, 44, 269, 1, 11098, 3, 1),
(208, 13, 12, 65, 3, 971, 4, 2),
(209, 42, 81, 239, 3, 17814, 1, 2),
(210, 72, 72, 126, 4, 22507, 2, 3),
(211, 71, 12, 140, 4, 24934, 3, 1),
(212, 83, 22, 176, 2, 35461, 3, 1),
(213, 7, 69, 63, 1, 19826, 4, 2),
(214, 35, 79, 261, 4, 19653, 4, 2),
(215, 35, 77, 240, 3, 3287, 2, 1),
(216, 63, 91, 191, 2, 21341, 3, 2),
(217, 74, 53, 124, 2, 7996, 2, 2),
(218, 63, 11, 198, 4, 43066, 2, 2),
(219, 97, 52, 208, 4, 23693, 3, 3),
(220, 95, 41, 53, 3, 40637, 1, 3),
(221, 20, 37, 64, 4, 10143, 1, 3),
(222, 48, 48, 283, 2, 31615, 2, 2),
(223, 86, 64, 182, 1, 40097, 3, 3),
(224, 9, 2, 245, 1, 37261, 3, 3),
(225, 26, 84, 115, 2, 45672, 2, 3),
(226, 67, 52, 180, 2, 19806, 3, 1),
(227, 71, 10, 114, 3, 43237, 3, 1),
(228, 54, 61, 128, 2, 13110, 2, 1),
(229, 65, 75, 234, 3, 49367, 4, 3),
(230, 90, 27, 187, 2, 37072, 3, 2),
(231, 18, 44, 193, 4, 31579, 2, 1),
(232, 84, 53, 33, 4, 27356, 4, 2),
(233, 61, 79, 44, 2, 16159, 3, 3),
(234, 54, 13, 8, 4, 36312, 2, 2),
(235, 76, 9, 46, 3, 5458, 1, 3),
(236, 55, 57, 66, 2, 12713, 1, 3),
(237, 100, 34, 210, 2, 15821, 1, 3),
(238, 29, 20, 37, 1, 37144, 3, 1),
(239, 22, 96, 43, 4, 40230, 2, 1),
(240, 58, 86, 172, 2, 35819, 3, 2),
(241, 10, 13, 105, 2, 37279, 3, 1),
(242, 21, 94, 20, 3, 17003, 1, 3),
(243, 90, 80, 87, 1, 23670, 1, 2),
(244, 49, 24, 215, 4, 10868, 2, 3),
(245, 11, 42, 229, 3, 26851, 4, 2),
(246, 74, 66, 19, 2, 26291, 3, 2),
(247, 43, 78, 183, 3, 38493, 3, 1),
(248, 63, 72, 210, 2, 29895, 4, 1),
(249, 52, 33, 27, 2, 49762, 3, 1),
(250, 72, 25, 25, 3, 2420, 2, 1),
(251, 19, 35, 53, 4, 31288, 3, 1),
(252, 65, 31, 172, 4, 796, 1, 1),
(253, 10, 97, 170, 4, 45275, 4, 1),
(254, 31, 15, 246, 3, 41402, 1, 2),
(255, 35, 61, 299, 1, 39464, 2, 1),
(256, 81, 87, 277, 1, 14997, 2, 2),
(257, 59, 75, 292, 3, 11329, 1, 2),
(258, 2, 41, 295, 3, 28766, 4, 1),
(259, 16, 50, 12, 3, 17386, 3, 1),
(260, 34, 89, 129, 2, 4963, 1, 1),
(261, 100, 85, 70, 3, 24713, 3, 1),
(262, 83, 22, 189, 2, 26531, 1, 2),
(263, 53, 35, 49, 4, 16274, 2, 3),
(264, 65, 3, 55, 4, 32490, 3, 3),
(265, 35, 61, 295, 1, 26509, 2, 1),
(266, 12, 87, 293, 2, 21752, 2, 2),
(267, 40, 52, 107, 1, 8136, 1, 3),
(268, 22, 42, 133, 4, 21981, 2, 2),
(269, 88, 23, 155, 4, 47873, 1, 2),
(270, 49, 77, 113, 3, 39144, 1, 2),
(271, 3, 62, 295, 1, 19476, 3, 2),
(272, 62, 38, 2, 4, 27841, 1, 2),
(273, 51, 94, 52, 1, 37449, 3, 3),
(274, 68, 31, 156, 3, 40535, 1, 3),
(275, 54, 50, 265, 4, 47041, 4, 3),
(276, 84, 36, 81, 2, 28444, 1, 2),
(277, 97, 62, 49, 4, 19151, 4, 3),
(278, 11, 8, 16, 1, 1471, 1, 1),
(279, 38, 61, 263, 3, 10695, 2, 1),
(280, 84, 63, 185, 1, 8178, 1, 2),
(281, 20, 29, 249, 2, 47179, 4, 2),
(282, 85, 76, 68, 4, 35463, 4, 2),
(283, 49, 8, 280, 2, 17084, 2, 1),
(284, 30, 14, 232, 2, 49353, 3, 3),
(285, 41, 58, 203, 3, 10425, 1, 3),
(286, 9, 82, 239, 3, 15991, 4, 3),
(287, 64, 44, 77, 4, 8583, 4, 3),
(288, 10, 62, 241, 1, 18426, 2, 3),
(289, 78, 52, 74, 3, 35397, 2, 1),
(290, 84, 42, 170, 3, 10655, 2, 3),
(291, 90, 57, 38, 4, 15726, 4, 3),
(292, 97, 30, 166, 4, 37822, 1, 2),
(293, 68, 12, 166, 2, 19919, 4, 2),
(294, 80, 14, 86, 1, 13230, 1, 2),
(295, 51, 18, 112, 2, 25516, 3, 2),
(296, 3, 6, 68, 4, 4679, 3, 3),
(297, 92, 35, 290, 4, 3854, 1, 3),
(298, 92, 20, 80, 3, 43096, 1, 3),
(299, 58, 92, 257, 3, 4352, 4, 3),
(300, 28, 48, 175, 2, 29710, 3, 1),
(301, 58, 72, 255, 1, 45204, 2, 2),
(302, 1, 39, 270, 2, 573, 1, 1),
(303, 51, 17, 99, 1, 34044, 1, 3),
(304, 91, 59, 65, 2, 46010, 3, 2),
(305, 73, 3, 275, 3, 40989, 3, 2),
(306, 3, 10, 116, 3, 6863, 3, 1),
(307, 54, 26, 212, 3, 30131, 4, 1),
(308, 22, 72, 281, 3, 44778, 4, 2),
(309, 39, 16, 183, 3, 3604, 3, 3),
(310, 66, 58, 272, 4, 13495, 4, 3),
(311, 3, 17, 233, 2, 26066, 3, 3),
(312, 20, 14, 33, 1, 15822, 1, 1),
(313, 66, 15, 220, 1, 47174, 1, 2),
(314, 65, 19, 290, 2, 24649, 3, 3),
(315, 56, 69, 238, 4, 4013, 3, 2),
(316, 80, 77, 142, 1, 43204, 1, 1),
(317, 38, 36, 206, 2, 33787, 2, 3),
(318, 36, 74, 182, 4, 17274, 1, 1),
(319, 89, 7, 208, 2, 9932, 1, 2),
(320, 7, 67, 44, 3, 9960, 4, 2),
(321, 92, 18, 31, 4, 33410, 2, 3),
(322, 86, 90, 280, 4, 2464, 2, 2),
(323, 74, 5, 299, 4, 11816, 3, 2),
(324, 76, 15, 137, 4, 43527, 4, 2),
(325, 79, 62, 212, 3, 13343, 2, 3),
(326, 76, 56, 159, 4, 14833, 3, 3),
(327, 69, 82, 6, 3, 11377, 1, 1),
(328, 23, 70, 237, 4, 49011, 2, 2),
(329, 71, 98, 227, 4, 1252, 3, 3),
(330, 72, 56, 192, 3, 34455, 4, 2),
(331, 10, 45, 279, 2, 38948, 4, 2),
(332, 30, 17, 283, 1, 13841, 3, 3),
(333, 76, 41, 231, 3, 42521, 2, 1),
(334, 11, 84, 249, 3, 39272, 4, 2),
(335, 42, 68, 48, 4, 14439, 1, 1),
(336, 78, 68, 21, 2, 15498, 3, 1),
(337, 46, 44, 252, 4, 41079, 3, 1),
(338, 87, 11, 279, 2, 42237, 1, 3),
(339, 69, 37, 231, 4, 23712, 1, 1),
(340, 14, 42, 199, 1, 17728, 3, 3),
(341, 19, 60, 131, 2, 29479, 4, 1),
(342, 99, 9, 138, 1, 41796, 1, 3),
(343, 61, 78, 13, 4, 18283, 1, 2),
(344, 41, 35, 152, 2, 46523, 1, 1),
(345, 17, 38, 121, 4, 7782, 1, 2),
(346, 26, 23, 107, 1, 21491, 4, 3),
(347, 37, 88, 81, 3, 40922, 4, 1),
(348, 89, 3, 149, 2, 24434, 2, 3),
(349, 35, 24, 51, 1, 6520, 2, 3),
(350, 99, 6, 99, 2, 18815, 2, 1),
(351, 53, 9, 255, 4, 19460, 4, 3),
(352, 82, 82, 191, 3, 35741, 2, 3),
(353, 16, 14, 69, 3, 236, 4, 1),
(354, 70, 43, 9, 4, 11882, 3, 1),
(355, 52, 82, 157, 1, 11090, 3, 2),
(356, 72, 99, 235, 4, 23399, 2, 3),
(357, 88, 85, 183, 2, 32915, 4, 1),
(358, 79, 79, 181, 3, 19619, 1, 1),
(359, 11, 39, 185, 4, 35910, 4, 1),
(360, 2, 73, 177, 4, 2431, 4, 2),
(361, 28, 51, 206, 4, 26495, 4, 3),
(362, 79, 25, 261, 3, 21942, 2, 2),
(363, 48, 82, 203, 4, 28375, 1, 3),
(364, 31, 41, 33, 2, 15396, 3, 3),
(365, 66, 66, 103, 3, 31320, 4, 3),
(366, 34, 16, 241, 3, 12384, 3, 2),
(367, 54, 18, 86, 4, 31483, 2, 2),
(368, 61, 86, 135, 3, 2564, 1, 3),
(369, 3, 30, 128, 1, 44600, 4, 1),
(370, 34, 32, 172, 4, 41867, 2, 3),
(371, 43, 88, 22, 3, 25559, 2, 1),
(372, 35, 55, 212, 4, 14957, 4, 1),
(373, 12, 58, 155, 4, 39422, 2, 2),
(374, 68, 38, 250, 1, 34282, 2, 2),
(375, 77, 18, 172, 2, 423, 1, 1),
(376, 7, 29, 61, 1, 9937, 3, 3),
(377, 33, 71, 172, 3, 45719, 2, 1),
(378, 99, 22, 33, 4, 11263, 2, 1),
(379, 32, 69, 140, 2, 48959, 1, 2),
(380, 89, 19, 75, 3, 35041, 2, 1),
(381, 13, 37, 133, 1, 12845, 4, 3),
(382, 74, 96, 165, 4, 38682, 1, 3),
(383, 23, 80, 96, 1, 429, 2, 1),
(384, 11, 64, 251, 2, 46574, 4, 1),
(385, 48, 87, 272, 4, 46979, 4, 3),
(386, 76, 72, 91, 2, 44865, 2, 2),
(387, 46, 29, 17, 2, 45770, 2, 3),
(388, 52, 88, 251, 3, 12480, 3, 1),
(389, 30, 83, 72, 3, 43751, 1, 2),
(390, 77, 38, 175, 4, 6248, 2, 1),
(391, 83, 70, 295, 4, 10425, 3, 1),
(392, 97, 48, 145, 4, 20291, 1, 2),
(393, 56, 63, 140, 2, 41323, 4, 2),
(394, 22, 52, 281, 1, 40697, 3, 1),
(395, 14, 53, 65, 3, 43762, 4, 3),
(396, 95, 60, 44, 4, 12684, 2, 2),
(397, 21, 50, 257, 4, 17281, 2, 3),
(398, 28, 71, 214, 2, 3120, 4, 3),
(399, 95, 36, 289, 3, 39416, 3, 1),
(400, 40, 3, 285, 3, 19940, 1, 1),
(401, 6, 1, 10, 1, 2300400, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seller_x_product`
--

DROP TABLE IF EXISTS `seller_x_product`;
CREATE TABLE IF NOT EXISTS `seller_x_product` (
  `id_seller_x_product` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) UNSIGNED NOT NULL,
  `id_product` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_seller_x_product`),
  UNIQUE KEY `IU_seller_x_product_id_user-id_product` (`id_user`,`id_product`) USING BTREE,
  KEY `IN_seller_x_product_id_product` (`id_product`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seller_x_product`
--

INSERT INTO `seller_x_product` (`id_seller_x_product`, `id_user`, `id_product`) VALUES
(112, 1, 43),
(48, 3, 47),
(17, 3, 77),
(1, 4, 47),
(84, 4, 51),
(38, 4, 59),
(104, 4, 62),
(122, 4, 65),
(6, 5, 73),
(76, 6, 1),
(96, 6, 48),
(100, 8, 51),
(113, 12, 32),
(123, 12, 64),
(91, 13, 19),
(61, 13, 53),
(47, 14, 89),
(128, 17, 34),
(97, 19, 51),
(129, 19, 91),
(115, 20, 45),
(74, 21, 4),
(2, 21, 65),
(95, 22, 94),
(78, 23, 1),
(114, 23, 18),
(11, 24, 33),
(41, 24, 51),
(72, 25, 29),
(83, 25, 56),
(62, 25, 64),
(4, 26, 28),
(49, 26, 89),
(59, 27, 24),
(119, 30, 35),
(19, 30, 95),
(52, 31, 57),
(15, 31, 87),
(101, 32, 7),
(66, 33, 98),
(111, 34, 20),
(51, 34, 67),
(79, 34, 69),
(56, 34, 80),
(127, 34, 84),
(60, 35, 4),
(106, 35, 57),
(43, 36, 9),
(102, 36, 59),
(109, 36, 60),
(55, 37, 29),
(44, 37, 60),
(29, 39, 37),
(25, 40, 81),
(80, 40, 95),
(16, 41, 46),
(40, 41, 89),
(85, 43, 62),
(58, 43, 71),
(89, 45, 42),
(63, 47, 41),
(34, 48, 63),
(33, 49, 59),
(7, 50, 28),
(28, 51, 19),
(87, 52, 2),
(125, 53, 6),
(88, 54, 61),
(81, 55, 91),
(99, 57, 96),
(65, 58, 21),
(75, 58, 76),
(3, 59, 1),
(92, 59, 34),
(27, 59, 46),
(13, 59, 90),
(5, 60, 17),
(10, 62, 62),
(64, 62, 89),
(36, 64, 58),
(22, 65, 55),
(116, 66, 95),
(50, 67, 67),
(35, 68, 54),
(126, 69, 29),
(30, 70, 37),
(73, 71, 67),
(14, 72, 89),
(46, 73, 27),
(121, 73, 85),
(31, 74, 60),
(90, 75, 48),
(118, 75, 71),
(32, 75, 95),
(71, 77, 31),
(18, 77, 52),
(117, 78, 2),
(23, 78, 27),
(94, 78, 71),
(107, 80, 28),
(86, 81, 19),
(68, 81, 86),
(124, 82, 20),
(42, 82, 56),
(20, 83, 29),
(39, 83, 38),
(45, 85, 46),
(69, 85, 70),
(54, 86, 19),
(103, 86, 52),
(82, 86, 57),
(26, 86, 83),
(120, 87, 27),
(77, 88, 38),
(53, 88, 70),
(70, 92, 51),
(8, 92, 74),
(110, 93, 82),
(9, 94, 49),
(12, 94, 68),
(67, 94, 72),
(93, 95, 73),
(98, 96, 29),
(21, 96, 91),
(24, 97, 7),
(57, 97, 47),
(108, 98, 6),
(105, 99, 6),
(37, 99, 21);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `id_user_status` int(11) UNSIGNED NOT NULL,
  `image_uri` varchar(255) DEFAULT NULL,
  `language` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `IU_user_nickname-password` (`nickname`,`password`) USING BTREE,
  UNIQUE KEY `IU_user_mail` (`mail`) USING BTREE,
  UNIQUE KEY `IU_user_nickname` (`nickname`) USING BTREE,
  UNIQUE KEY `IU_user_phone` (`phone`) USING BTREE,
  KEY `IN_user_id_user_status` (`id_user_status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nickname`, `password`, `mail`, `phone`, `id_user_status`, `image_uri`, `language`) VALUES
(1, 'qazwr', '29ea7fab5cea2ff8367d5496c2bf6a1', 'qazedc@mail.ru', '79877199824', 2, '../images/qwer.jpg', 'RUS'),
(2, 'xetazul', '57918be0a254232b4a0cd55bad0a3f71', 'relipoq.gegoxab@gmail.com', '9681320564336', 1, '../images/udofip.jpg', 'DUT'),
(3, 'vokaqoh', 'fb594e68e2b26fe47d022870c360ceb2', 'xypetax.linobug@gmail.com', '7760325917290', 1, '../images/avysan.jpg', 'ENG'),
(4, 'libyfev', '5a6b1593b18fecd9c7144e8e6d73018a', 'fijofyf.daxinah@gmail.com', '3049313572658', 1, '../images/opesob.jpg', 'DUT'),
(5, 'jyhymyt', '7f377b49877368134cde6da28a1bc46d', 'fawacyj.vagujap@gmail.com', '9421717340832', 1, '../images/iquqyv.jpg', 'DUT'),
(6, 'kuracis', 'e655a0200f646e8548faf2c09394b53c', 'facawid.nevezyv@gmail.com', '7539655259905', 1, '../images/ipucan.jpg', 'ENG'),
(7, 'zofaqal', '9221a2dae994d7aacf697694ee69fce1', 'cixigyp.lezedyj@gmail.com', '9753357299852', 1, '../images/uhapon.jpg', 'RUS'),
(8, 'xinepef', '003ad3668b4359ca1044bfd4c50e52b8', 'geroxuj.gegowun@gmail.com', '7511012904811', 1, '../images/ujesov.jpg', 'DUT'),
(9, 'wofexug', '3183c23090ef9dca717c033453110efa', 'fahymyw.vixaxem@gmail.com', '9451469998131', 2, '../images/uqapof.jpg', 'ENG'),
(10, 'pemolif', '58b0ed5c65e4b4a703c87769698a305e', 'dyqecyc.ravovat@gmail.com', '3904126894340', 2, '../images/uqyrup.jpg', 'BEN'),
(11, 'dimewur', '9cd5854dcf9cccafb952c74e581aeda7', 'xynyhov.qiqusoh@gmail.com', '3831601662247', 1, '../images/akunoz.jpg', 'DUT'),
(12, 'xihawam', '1c0c60ef3c233dc75996af3559af6da1', 'wineruk.wevebar@gmail.com', '7099781302043', 1, '../images/atowid.jpg', 'RUS'),
(13, 'xokabaz', 'ace8a023529a50b5a4c142636631904e', 'sosydad.harywod@gmail.com', '3888487217525', 2, '../images/arafuk.jpg', 'DUT'),
(14, 'dezasar', '1232e3991e27e241b19d06200ba8666a', 'pobityz.fylafoj@gmail.com', '3711511164357', 1, '../images/obomym.jpg', 'DUT'),
(15, 'gadaxos', '7c2debd1fb7c09a6c32d30140f6136d2', 'janifyw.qiqocow@gmail.com', '9061550629364', 1, '../images/uhakul.jpg', 'BEN'),
(16, 'liqytav', 'd31e9fd433730da4d746f80b15917e25', 'davycot.debivyl@gmail.com', '7461664166359', 1, '../images/ojatip.jpg', 'BEN'),
(17, 'fizixis', 'b228cf3287b7bfdb93b981b21b5f0a0d', 'kuxabof.vuzynyz@gmail.com', '7413376965998', 1, '../images/agacux.jpg', 'ENG'),
(18, 'quhyciz', '009978644febaa6968c4b6e7beb9fd21', 'wesujin.fexubym@gmail.com', '9021886839794', 2, '../images/uqahes.jpg', 'RUS'),
(19, 'nigaqaf', 'd99ab16a1b9e9d8f4cbe7907e1bf0df7', 'nokaluv.qumiras@gmail.com', '7527806040962', 1, '../images/ohohot.jpg', 'ENG'),
(20, 'wudijum', '568a52d87118a50efb6e67271908006c', 'xowypeq.judesub@gmail.com', '9189211159382', 2, '../images/yxyxug.jpg', 'RUS'),
(21, 'qaxecuv', '1fc539c1b5f7e550558f96d298ee841d', 'lutoliv.xakycyf@gmail.com', '7468460171343', 1, '../images/aqytep.jpg', 'ENG'),
(22, 'katecow', '7f919f2158d8ab51b20417acaf7788df', 'givudiv.xydulyb@gmail.com', '8167753222828', 2, '../images/adagyn.jpg', 'BEN'),
(23, 'lamyvot', '38413723e4d452a82b8f7813602d79dd', 'jilotys.puxihed@gmail.com', '3314893623022', 1, '../images/ubunoc.jpg', 'BEN'),
(24, 'pupyzam', 'de72dc33ec3dffed1730c322b7adfa0a', 'kuxecyb.rejuxiz@gmail.com', '9690203813188', 2, '../images/ubocic.jpg', 'ENG'),
(25, 'hamafog', 'd9830e65a8a2516e9c138b3675f2061b', 'navurym.rywipod@gmail.com', '3571658474944', 2, '../images/ucekym.jpg', 'RUS'),
(26, 'xovuzom', '0eabd7978e506f0e567c07e156353453', 'zudahyz.zadokaq@gmail.com', '9550806035848', 2, '../images/onulut.jpg', 'DUT'),
(27, 'kylitot', '033a1e49f3b54bf40786ed3a5723ff5d', 'vurylis.pocoxub@gmail.com', '3471461703362', 1, '../images/icylil.jpg', 'ENG'),
(28, 'dinoziv', 'b6d30ba536371ec2018743a865e0cc4c', 'haramah.xuwenal@gmail.com', '7134950697009', 2, '../images/exutob.jpg', 'ENG'),
(29, 'sadodaj', '69c810a44b1023ffc0fa938fbcc8e8c2', 'towinik.qaryxon@gmail.com', '9279381133640', 2, '../images/abuqyt.jpg', 'ENG'),
(30, 'murynuq', '557b943ffa4f397cf345836630b1d15a', 'pyfygen.wytetev@gmail.com', '8892126300172', 2, '../images/ocuneb.jpg', 'DUT'),
(31, 'lakizut', 'a5f75700cf962e8b7a68bf7f9925982e', 'nelosyd.zoxyqox@gmail.com', '3999859060344', 2, '../images/yjaryq.jpg', 'DUT'),
(32, 'gululyf', '276e848db4b2c957cf299d063090dfff', 'vykymuz.suragyb@gmail.com', '8258853979314', 2, '../images/oqoduq.jpg', 'BEN'),
(33, 'cawifyr', 'a0c4ba4fbba43967f8b3eed639505906', 'diqakuk.wafigax@gmail.com', '8517562585451', 1, '../images/ewudic.jpg', 'BEN'),
(34, 'xavucez', 'e36266959868bf8e213c96bebd843aac', 'gohobiv.zidegek@gmail.com', '7041202189257', 1, '../images/ujezel.jpg', 'DUT'),
(35, 'tomudop', 'f978766903d0dc874025ba5903ec564f', 'xomixef.jewujen@gmail.com', '9774148923830', 1, '../images/ofycon.jpg', 'BEN'),
(36, 'dyxavun', 'f0e5dcaac862953767a19277ea4d591a', 'mahyxuv.zifopal@gmail.com', '7299845506224', 2, '../images/owypic.jpg', 'DUT'),
(37, 'dywubyk', '7c51834862634c7a299c855ee758f064', 'dypumyg.lirarac@gmail.com', '8375675512638', 1, '../images/ucakih.jpg', 'BEN'),
(38, 'qidiran', 'e2133ac2e66628798f75b67c204d95c0', 'kedycus.fowesym@gmail.com', '8939466570166', 1, '../images/ipikow.jpg', 'DUT'),
(39, 'wyteryk', '2edb12d4888163410b46603ecbd01ccb', 'fojudex.vevijor@gmail.com', '3891869658475', 1, '../images/ozerol.jpg', 'RUS'),
(40, 'gywomon', '6a8f34ad5c2ba06b641f391e76946e2d', 'zelefyg.kajerix@gmail.com', '8154343495055', 1, '../images/eqimyx.jpg', 'ENG'),
(41, 'lysociv', 'b03ee59f06a80b4d171e7d86e955d600', 'bakuhiz.tygikoz@gmail.com', '7530222588488', 2, '../images/iqyzym.jpg', 'BEN'),
(42, 'sazymuk', 'eb092bb35cf830ada53c1b7d0d8616d5', 'namikur.cegidof@gmail.com', '8017029067927', 2, '../images/yxaraf.jpg', 'BEN'),
(43, 'jejygoq', 'c3c878df88b56b52c8f70bbe718854d3', 'kymosuh.hokyjym@gmail.com', '9299852329187', 1, '../images/ilepep.jpg', 'ENG'),
(44, 'jabapis', '7a1673e05de0f290c08948eea97249b9', 'nohucym.newiseb@gmail.com', '8322449449567', 2, '../images/avuhel.jpg', 'DUT'),
(45, 'jukyfev', 'df001707acdd5c53cde5b530d19c777d', 'fikusek.wexopyn@gmail.com', '7282530323285', 1, '../images/iminip.jpg', 'RUS'),
(46, 'xanozel', 'cfa8abd1a0e5cb3f06f52ef75063991b', 'zyruqyt.dijimyg@gmail.com', '8172060288509', 1, '../images/ufecid.jpg', 'DUT'),
(47, 'wuribyn', 'edf927f938472ff92f3212624aa2f88f', 'lebebox.suvysyv@gmail.com', '7639793136848', 2, '../images/uxirys.jpg', 'RUS'),
(48, 'mevimev', 'e0365379fd9f4250fddaae5f6d60b83f', 'diqylif.jefenal@gmail.com', '7270028700151', 1, '../images/iqypeq.jpg', 'ENG'),
(49, 'dymolek', '7a049c6ee61e378a3dfae4b9a067c172', 'sofysaj.lyrihag@gmail.com', '7891076981474', 1, '../images/epemub.jpg', 'ENG'),
(50, 'gygadax', 'f4def8b6f1bd6d1488d3963414484253', 'kibupoq.bizuniq@gmail.com', '3793825181938', 1, '../images/ynysyp.jpg', 'BEN'),
(51, 'coqixof', 'd13bd5c5c5edcecb4e4baddbd0c84b2e', 'ruzosaf.rubukus@gmail.com', '8550924528590', 2, '../images/akupog.jpg', 'DUT'),
(52, 'gyvobos', '884dc9c4d3b6c382ef737f7a30b9f90a', 'cygiqud.firasez@gmail.com', '7602883374152', 2, '../images/ydynos.jpg', 'RUS'),
(53, 'tafopar', '92e29fb121487d43bdf832ad4c1cf1eb', 'lymogov.seqofas@gmail.com', '8285192639813', 1, '../images/irecob.jpg', 'ENG'),
(54, 'bikigoj', 'cfee06db8db39510006e404a76abce43', 'qovobob.jozajon@gmail.com', '7335852441134', 2, '../images/exuqyz.jpg', 'ENG'),
(55, 'neqoteb', 'f4f797e900ef52b93f75130470ffd16f', 'mexubyj.zyxurir@gmail.com', '8129865849402', 2, '../images/izifuw.jpg', 'ENG'),
(56, 'nybemol', '4f61a634a5d2ec8891528a2452c2aa87', 'naqysyh.sumalor@gmail.com', '9917481938134', 2, '../images/ibapim.jpg', 'ENG'),
(57, 'jarysus', '0d6c1fcc13b4898fd8f5cdf1f8c0f010', 'donycig.rojukyc@gmail.com', '3922663449415', 1, '../images/emuqus.jpg', 'RUS'),
(58, 'jevucap', '7ecd0bdf081342a866f5d33e9a443e68', 'hekebij.dugywom@gmail.com', '8871717135662', 1, '../images/usedyf.jpg', 'ENG'),
(59, 'lopaton', 'b5ac19e520af1ce4e6798f22eba0c06b', 'tesazuf.lojagaq@gmail.com', '3964460291062', 1, '../images/ijizoh.jpg', 'DUT'),
(60, 'jenuguk', '414fb03855eea56293c9e896169e3dff', 'hisakot.defytec@gmail.com', '9015285088546', 2, '../images/ifyruc.jpg', 'BEN'),
(61, 'momojys', '3febcd88912c497f417600a465e629a6', 'nisaqus.lynyneh@gmail.com', '3290222776709', 2, '../images/arenon.jpg', 'BEN'),
(62, 'jemohus', 'bf1faabb07f987b0917f6892994c5f73', 'vumylej.qalypyv@gmail.com', '8493016623001', 2, '../images/ecoqiw.jpg', 'DUT'),
(63, 'wisaneb', '1cde9ce700ea86e763a1d720318dc0e4', 'huqagat.poxatog@gmail.com', '9568270813188', 1, '../images/usetej.jpg', 'RUS'),
(64, 'sakibux', '91c513cbff05c4125ff7a6ee0f723276', 'jygojux.kagygad@gmail.com', '7321892233434', 1, '../images/itifif.jpg', 'BEN'),
(65, 'bemojym', '225354045c14aef81898f7ad0e1e60ad', 'farirep.xyvezal@gmail.com', '3246656757148', 2, '../images/ykinoh.jpg', 'RUS'),
(66, 'rebowoc', 'bc93fb6d2eb77a4d9f93a56a31ec9acd', 'kydavas.nozizuq@gmail.com', '7174752797618', 2, '../images/exolew.jpg', 'RUS'),
(67, 'baxowuh', '522f1a2312390358c345d63474929929', 'lesahyd.tirasak@gmail.com', '8454614082643', 2, '../images/uriric.jpg', 'ENG'),
(68, 'gyteteq', '0522dde097f9de008b5df2f9af184784', 'zasegek.gydupoc@gmail.com', '9846963958879', 1, '../images/ipuweq.jpg', 'DUT'),
(69, 'fubynyf', 'ea7a1bf02a1b5c748bbfa3e9973d185d', 'bejokyn.tebixiq@gmail.com', '9903776658530', 1, '../images/arapil.jpg', 'BEN'),
(70, 'dynudim', '36a1eeef707bf0822617dbf03faa67f0', 'foqehuv.zizunob@gmail.com', '9794337741153', 1, '../images/ajiguv.jpg', 'ENG'),
(71, 'qasedyd', '3c420f7425516e28e7a8c8fd522baef9', 'nutuvos.regezyt@gmail.com', '3584937686573', 1, '../images/apyqij.jpg', 'DUT'),
(72, 'zofaqap', '3039b9645577a2980e0d4d944b3dbe5b', 'wokabyt.zohigum@gmail.com', '3935983401457', 1, '../images/acamat.jpg', 'RUS'),
(73, 'baniciq', 'da2d898e22880bb8e79596a9aa85eb01', 'zuqywit.nebahek@gmail.com', '7851009625700', 1, '../images/icyfew.jpg', 'DUT'),
(74, 'nimaxib', '985e6dcc0b768a0e3a747b3c36dbc0ff', 'laxoxaq.xonojyp@gmail.com', '7685239639658', 2, '../images/uxegiv.jpg', 'RUS'),
(75, 'bymoxof', '01c391aa582a09d25497519c77f27aaa', 'sukydyp.bitoban@gmail.com', '7522834805657', 1, '../images/isitup.jpg', 'RUS'),
(76, 'vonyxyc', 'dc288a1d16a55d4dd6d2e1df7d7682f4', 'reseviw.bikemiz@gmail.com', '8217480426826', 1, '../images/yjyved.jpg', 'RUS'),
(77, 'xuredyz', '23b61112bce6e2713a3d5e1f9798ba76', 'satuvom.rudexuv@gmail.com', '3189186827776', 2, '../images/adehix.jpg', 'DUT'),
(78, 'samarej', '2b0c94fc982dd72e723f29f8fe1ab637', 'jokypyf.bopemuh@gmail.com', '7381112716453', 1, '../images/akuvuz.jpg', 'BEN'),
(79, 'kezeren', 'fcbc912c0426620836b8e11923cb2ccc', 'xibysux.duvofik@gmail.com', '9188700015115', 1, '../images/onapyp.jpg', 'DUT'),
(80, 'pedaxos', 'f6ac9504393410b7a4c962ce24e0283d', 'kidijoh.kytarif@gmail.com', '9382859238271', 2, '../images/ewiteg.jpg', 'DUT'),
(81, 'xokytyd', '2e93fa57c091b2f76e4853c451179924', 'citugyf.ziguwez@gmail.com', '3815196169662', 1, '../images/ezecuv.jpg', 'RUS'),
(82, 'xocozyp', '9681d8aa11dba5f5c4f537dd6f4caf60', 'fovariz.sopibak@gmail.com', '9491113376029', 2, '../images/yvinit.jpg', 'DUT'),
(83, 'revudej', 'f86be24b56ca1258d3bcfa8b245c2b5d', 'gewofer.qapuqez@gmail.com', '8625683048939', 2, '../images/orojov.jpg', 'DUT'),
(84, 'popypid', 'd59a30bbcaa1569c824b1b0fcb0bfa06', 'tuhefij.miraquf@gmail.com', '8749598461514', 2, '../images/omiqym.jpg', 'BEN'),
(85, 'pifyqob', '173426c93a640430d11cf08fe44e4a5a', 'pysysow.myvogod@gmail.com', '7590206834942', 1, '../images/acymog.jpg', 'RUS'),
(86, 'wupexoj', '6bc3125051f49cd8619f1d9e16aff48f', 'rahefev.hyxufiw@gmail.com', '3866106168322', 1, '../images/irehoz.jpg', 'ENG'),
(87, 'bopicil', '5401aa2be355460c3e8eeba9af926ed6', 'pyfyhiq.rizupyp@gmail.com', '8796068134134', 1, '../images/uqahek.jpg', 'ENG'),
(88, 'qodykyk', '669398249a55c8df92215e034f98a90b', 'vugyzag.cukukur@gmail.com', '7840638892258', 2, '../images/uxosam.jpg', 'ENG'),
(89, 'pulucej', '7b5680d7cb7c3d3431c0d239f6c07177', 'qymuzyp.fepekak@gmail.com', '9160203773737', 2, '../images/ozegiq.jpg', 'BEN'),
(90, 'buxesob', 'bc817e7c6e1bde975489a3320b6fd7ad', 'pyfyzav.salugap@gmail.com', '9755044551265', 2, '../images/obowoq.jpg', 'ENG'),
(91, 'ponosuj', '9f23acf5486552366c60be6b3c930238', 'nijiwet.fijovob@gmail.com', '9643699777206', 2, '../images/ebevon.jpg', 'RUS'),
(92, 'folilep', '8b47cc1ab81d31fb22e5144da2f1bb86', 'hamezam.cysodud@gmail.com', '8752716447600', 1, '../images/yfywux.jpg', 'RUS'),
(93, 'gidofin', '286232ff6dfda56750ec00073f5bad0f', 'xeferog.fewiwun@gmail.com', '7963610620617', 1, '../images/ikepyt.jpg', 'DUT'),
(94, 'zybecuj', '219348107a1dd26818cd2b2f2c853dca', 'vogoxaj.mivuluh@gmail.com', '7132227786982', 2, '../images/alugyg.jpg', 'ENG'),
(95, 'waqadub', '9ee1a6ac895107269a0b6b983ed66965', 'minilyp.woqawam@gmail.com', '8376167875435', 2, '../images/ojogaz.jpg', 'DUT'),
(96, 'gydosyz', '89b26c5fe6f6748cc83b79a3f748de2f', 'pepatos.sivymil@gmail.com', '7268127824551', 2, '../images/inagod.jpg', 'ENG'),
(97, 'zulajis', 'f148799884514434cd8083b6151ea6f9', 'sugapuv.cykafux@gmail.com', '9870028708282', 2, '../images/epemug.jpg', 'BEN'),
(98, 'wofesyk', 'b19a61783fac2e06a979cc6f9c60ca8a', 'ryxojuc.butokis@gmail.com', '8942175399971', 1, '../images/ypifon.jpg', 'BEN'),
(99, 'zalycux', '9b4d08d5c97b122b685b2fe3ba1d1080', 'dybomyd.xaxenyv@gmail.com', '8547223018508', 1, '../images/onejac.jpg', 'DUT'),
(100, 'hihabon', '3ccc6e88e5741e361855fdfe104d5712', 'bujodud.neroviw@gmail.com', '7553831868285', 2, '../images/eqemoh.jpg', 'RUS');

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

DROP TABLE IF EXISTS `user_status`;
CREATE TABLE IF NOT EXISTS `user_status` (
  `id_user_status` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user_status`),
  UNIQUE KEY `IU_user_status_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`id_user_status`, `name`) VALUES
(1, 'banned'),
(2, 'not banned');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_x_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_x_currency` FOREIGN KEY (`id_currency`) REFERENCES `currency` (`id_currency`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_x_status` FOREIGN KEY (`id_product_status`) REFERENCES `product_status` (`id_product_status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_x_order`
--
ALTER TABLE `product_x_order`
  ADD CONSTRAINT `product_x_order_x_delivery` FOREIGN KEY (`id_delivery_firm`) REFERENCES `delivery_firm` (`id_delivery_firm`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_x_order_x_payment_method` FOREIGN KEY (`id_payment_method`) REFERENCES `payment_method` (`id_payment_method`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_x_order_x_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_x_order_x_status` FOREIGN KEY (`id_order_status`) REFERENCES `order_status` (`id_order_status`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_x_order_x_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seller_x_product`
--
ALTER TABLE `seller_x_product`
  ADD CONSTRAINT `seller_x_product_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seller_x_product_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_x_status` FOREIGN KEY (`id_user_status`) REFERENCES `user_status` (`id_user_status`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
