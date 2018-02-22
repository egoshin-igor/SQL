-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 22 2018 г., 12:54
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lab3_3`
--

-- --------------------------------------------------------

--
-- Структура таблицы `computer`
--

DROP TABLE IF EXISTS `computer`;
CREATE TABLE IF NOT EXISTS `computer` (
  `id_computer` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id_computer_type` tinyint(3) UNSIGNED NOT NULL,
  `price` float UNSIGNED NOT NULL,
  PRIMARY KEY (`id_computer`),
  KEY `id_computer_type` (`id_computer_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `computer`
--

INSERT INTO `computer` (`id_computer`, `name`, `id_computer_type`, `price`) VALUES
(1, 'ASUS ROG GL553VD-DM306T', 1, 65990),
(2, 'HP 14-bs000ur 1PA09EA', 1, 16990),
(3, 'Apple MacBook Pro 13 Touch Bar i5 3.1/8/256 (MPXV2RU/A)', 1, 119990),
(4, 'Lenovo 310-20IAP (F0CL007MRK)', 2, 20990),
(5, 'ASUS ZN242IFGK-CA061T', 2, 79990);

-- --------------------------------------------------------

--
-- Структура таблицы `computer_type`
--

DROP TABLE IF EXISTS `computer_type`;
CREATE TABLE IF NOT EXISTS `computer_type` (
  `id_computer_type` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id_computer_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `computer_type`
--

INSERT INTO `computer_type` (`id_computer_type`, `type`) VALUES
(1, 'laptop'),
(2, 'candlestick');

-- --------------------------------------------------------

--
-- Структура таблицы `equipment`
--

DROP TABLE IF EXISTS `equipment`;
CREATE TABLE IF NOT EXISTS `equipment` (
  `id_equipment` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_computer` int(11) UNSIGNED NOT NULL,
  `id_hardware` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_equipment`),
  KEY `id_computer` (`id_computer`),
  KEY `id_hardware` (`id_hardware`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `equipment`
--

INSERT INTO `equipment` (`id_equipment`, `id_computer`, `id_hardware`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 3),
(5, 2, 4),
(6, 2, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `hardware`
--

DROP TABLE IF EXISTS `hardware`;
CREATE TABLE IF NOT EXISTS `hardware` (
  `id_hardware` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `manufacturer` tinyint(3) UNSIGNED NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_hardware`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `hardware`
--

INSERT INTO `hardware` (`id_hardware`, `type`, `name`, `manufacturer`, `quantity`) VALUES
(1, 'CPU', 'Core i5-7300HQ 2.5GHz', 1, 55),
(2, 'video card', 'GeForce GTX1050 2GB', 2, 400),
(3, 'storage_device', 'HDD', 3, 232),
(4, 'CPU', 'Celeron N3060 1.6ГГц\r\n', 1, 432),
(5, 'CPU', 'Intel HD Graphics 400', 1, 3);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `computer`
--
ALTER TABLE `computer`
  ADD CONSTRAINT `computer_ibfk_1` FOREIGN KEY (`id_computer_type`) REFERENCES `computer_type` (`id_computer_type`);

--
-- Ограничения внешнего ключа таблицы `equipment`
--
ALTER TABLE `equipment`
  ADD CONSTRAINT `equipment_ibfk_1` FOREIGN KEY (`id_hardware`) REFERENCES `hardware` (`id_hardware`) ON DELETE CASCADE,
  ADD CONSTRAINT `equipment_ibfk_2` FOREIGN KEY (`id_computer`) REFERENCES `computer` (`id_computer`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
