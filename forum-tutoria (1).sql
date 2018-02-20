-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 30, 2018 at 11:54 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum-tutoria`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_title` varchar(60) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `category_title`) VALUES
(1, 'PROGRAMMING LANGUAGES'),
(2, 'DATA STRUCTURES'),
(3, 'sports');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
CREATE TABLE IF NOT EXISTS `replies` (
  `reply_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(100) UNSIGNED NOT NULL,
  `subcategory_id` int(100) UNSIGNED NOT NULL,
  `topic_id` int(100) UNSIGNED NOT NULL,
  `author` varchar(16) NOT NULL,
  `comment` text NOT NULL,
  `date_posted` date NOT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `category_id` (`category_id`,`subcategory_id`,`topic_id`),
  KEY `subcategory_id` (`subcategory_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`reply_id`, `category_id`, `subcategory_id`, `topic_id`, `author`, `comment`, `date_posted`) VALUES
(1, 1, 1, 13, 'BUBAI', 'array', '2018-01-30'),
(2, 1, 1, 13, 'Bubai Pal', 'heloo', '2018-01-30'),
(3, 3, 7, 14, 'Pal', 'subhuman gill is quite brilliant<br />\r\n', '2018-01-30'),
(4, 1, 1, 15, 'Bubai', 'array', '2018-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
CREATE TABLE IF NOT EXISTS `subcategories` (
  `subcat_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(100) UNSIGNED NOT NULL,
  `subcategory_title` varchar(100) NOT NULL,
  `subcategory_desc` varchar(255) NOT NULL,
  PRIMARY KEY (`subcat_id`),
  KEY `parent_id` (`parent_id`),
  KEY `parent_id_2` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`subcat_id`, `parent_id`, `subcategory_title`, `subcategory_desc`) VALUES
(1, 1, 'PHP', 'COMPUTER LANGUAGE'),
(2, 1, 'JAVA', 'HIGH LEVEL LANGUAGE'),
(3, 1, 'PYTHON', 'COMPUTER LANGUAGE'),
(4, 2, 'ARRAY', 'COMPUTER KNOWLEDGES'),
(5, 2, 'LINK LIST', 'COMPUTER KNOWLEDGES'),
(6, 3, 'FOOTBALL', 'GENERAL KNOWLEDGE'),
(7, 3, 'CRICKET', 'GENERAL KNOWLEDGE');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `topic_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `author` varchar(16) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `date_posted` date NOT NULL,
  `replies` int(3) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `category_id`, `subcategory_id`, `author`, `title`, `content`, `date_posted`, `replies`) VALUES
(4, 0, 0, 'Bubai Pal', 'qwert', 'qwert<br />\r\n', '2018-01-29', NULL),
(5, 0, 0, 'Bubai Pal', 'zxcv', 'zxcv', '2018-01-29', NULL),
(6, 0, 0, 'Bubai Pal', 'test', 'test', '2018-01-29', NULL),
(7, 0, 0, 'Bubai Pal', 'dfgh', 'dfgh', '2018-01-29', NULL),
(8, 1, 4, 'Bubai Pal', 'tehgjh', 'hgh', '2018-01-29', NULL),
(9, 1, 3, 'Bubai Pal', 'hujh', 'ghrfghr', '2018-01-29', NULL),
(10, 1, 3, 'Bubai Pal', 'bjh', 'ghg', '2018-01-29', NULL),
(11, 1, 1, 'Bubai Pal', 'hghbgmhjhjnh', 'htyhtyhjn', '2018-01-29', NULL),
(12, 1, 1, 'Bubai', 'hjghgt', 'computer', '2018-01-29', NULL),
(13, 1, 1, 'b', 'array', 'what is array', '2018-01-30', NULL),
(14, 3, 7, 'bubai', 'sports', 'cricket', '2018-01-30', NULL),
(15, 1, 1, 'Bubai Pal', 'array', 'what is array', '2018-01-30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(5, 'BUBAI', '123'),
(6, 'Bubai Pal', '123456'),
(4, 'PAL', '1234'),
(7, 'BBBBB', '12');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
