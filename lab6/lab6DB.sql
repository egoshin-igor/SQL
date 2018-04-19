-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 19, 2018 at 12:38 PM
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
-- Database: `lab6`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `id_booking` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_client` int(11) UNSIGNED NOT NULL,
  `booking_date` date NOT NULL,
  PRIMARY KEY (`id_booking`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_client`, `booking_date`) VALUES
(1, 4, '2018-04-03'),
(2, 1, '2018-04-08'),
(9, 4, '2012-05-25'),
(10, 3, '2012-05-25'),
(11, 5, '2012-04-21'),
(12, 6, '2012-04-22'),
(13, 4, '2012-05-12'),
(14, 3, '2014-05-28'),
(15, 3, '2014-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_client`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `full_name`, `phone`) VALUES
(1, 'Парам Пам Пам', '+79177234033'),
(2, 'Иванов Иван Иванович', '+79177234233'),
(3, 'Оленев Олень Оленевич', '+79178234233'),
(4, 'Карасев Карась Карасевич', '+79177234231'),
(5, 'Медведев Медведь Медведевич', '11234521'),
(6, 'Медведев Медведь Медведевич', '11234526');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE IF NOT EXISTS `hotel` (
  `id_hotel` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `star` tinyint(1) UNSIGNED DEFAULT NULL,
  `adress` varchar(255) NOT NULL,
  PRIMARY KEY (`id_hotel`),
  UNIQUE KEY `adress` (`adress`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id_hotel`, `name`, `star`, `adress`) VALUES
(1, 'Алтай', 4, 'Улица Красная, дом 46'),
(2, 'Восток', 5, 'Улица Зеленая, дом 666'),
(3, 'Космос', 1, 'Улица Синяя, Дом 556'),
(4, 'Сокол', 3, 'Улица Фиолетовая, Дом 444');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE IF NOT EXISTS `room` (
  `id_room` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_hotel` int(11) UNSIGNED NOT NULL,
  `id_room_kind` int(11) UNSIGNED NOT NULL,
  `room_number` smallint(4) NOT NULL,
  `price` double UNSIGNED NOT NULL,
  PRIMARY KEY (`id_room`),
  KEY `id_hotel` (`id_hotel`),
  KEY `id_room_kind` (`id_room_kind`),
  KEY `room_number_of_hotel` (`id_room`,`id_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id_room`, `id_hotel`, `id_room_kind`, `room_number`, `price`) VALUES
(1, 1, 1, 9, 20000),
(2, 1, 1, 1, 20000),
(3, 1, 1, 2, 20000),
(4, 2, 2, 1, 11222),
(5, 2, 1, 2, 122122),
(6, 3, 1, 1, 11999),
(7, 3, 1, 2, 11999),
(8, 4, 1, 1, 2000),
(9, 2, 1, 9, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `room_in_booking`
--

DROP TABLE IF EXISTS `room_in_booking`;
CREATE TABLE IF NOT EXISTS `room_in_booking` (
  `id_room_in_booking` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_booking` int(11) UNSIGNED NOT NULL,
  `id_room` int(11) UNSIGNED NOT NULL,
  `arrival_date` date NOT NULL,
  `departure_date` date NOT NULL,
  PRIMARY KEY (`id_room_in_booking`),
  KEY `id_booking` (`id_booking`),
  KEY `id_room_kind` (`id_room`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_in_booking`
--

INSERT INTO `room_in_booking` (`id_room_in_booking`, `id_booking`, `id_room`, `arrival_date`, `departure_date`) VALUES
(1, 1, 1, '2018-04-04', '2018-04-17'),
(2, 2, 1, '2018-04-19', '2018-04-23'),
(3, 9, 7, '2012-04-25', '2012-04-25'),
(4, 10, 6, '2012-04-25', '2012-04-28'),
(5, 11, 4, '2012-05-25', '2012-05-25'),
(6, 12, 5, '2012-05-21', '2012-05-25'),
(7, 13, 8, '2012-05-12', '2012-05-30'),
(8, 14, 3, '2014-05-28', '2014-05-30'),
(9, 15, 3, '2014-05-28', '2014-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `room_kind`
--

DROP TABLE IF EXISTS `room_kind`;
CREATE TABLE IF NOT EXISTS `room_kind` (
  `id_room_kind` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `min_area` double UNSIGNED NOT NULL,
  PRIMARY KEY (`id_room_kind`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_kind`
--

INSERT INTO `room_kind` (`id_room_kind`, `name`, `min_area`) VALUES
(1, 'Люкс', 25),
(2, 'Эконом', 14);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_ibfk_2` FOREIGN KEY (`id_room_kind`) REFERENCES `room_kind` (`id_room_kind`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `room_in_booking`
--
ALTER TABLE `room_in_booking`
  ADD CONSTRAINT `room_in_booking_ibfk_1` FOREIGN KEY (`id_booking`) REFERENCES `booking` (`id_booking`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `room_in_booking_ibfk_2` FOREIGN KEY (`id_room`) REFERENCES `room` (`id_room`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
