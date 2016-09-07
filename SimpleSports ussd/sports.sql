-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 06, 2016 at 06:07 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sports`
--

-- --------------------------------------------------------

--
-- Table structure for table `laliga`
--

CREATE TABLE IF NOT EXISTS `laliga` (
  `position` int(5) NOT NULL AUTO_INCREMENT,
  `team` varchar(20) NOT NULL,
  `points` int(10) NOT NULL,
  `gf` int(10) NOT NULL,
  `ga` int(10) NOT NULL,
  PRIMARY KEY (`position`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `laliga`
--

INSERT INTO `laliga` (`position`, `team`, `points`, `gf`, `ga`) VALUES
(1, 'Barcelona', 72, 60, 14),
(2, 'Atletico Madrid', 72, 58, 20),
(3, 'Real Madrid', 71, 70, 33),
(4, 'Villareal', 60, 54, 32),
(5, 'Sevilla', 59, 54, 21),
(6, 'Athletico Bilbao', 55, 53, 25);

-- --------------------------------------------------------

--
-- Table structure for table `premier`
--

CREATE TABLE IF NOT EXISTS `premier` (
  `position` int(10) NOT NULL AUTO_INCREMENT,
  `team` varchar(20) NOT NULL,
  `points` int(10) NOT NULL,
  `gf` int(10) NOT NULL,
  `ga` int(11) NOT NULL,
  PRIMARY KEY (`position`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `premier`
--

INSERT INTO `premier` (`position`, `team`, `points`, `gf`, `ga`) VALUES
(1, 'Manchester united', 60, 50, 12),
(2, 'Chelsea', 56, 46, 17),
(3, 'Manchester city', 54, 47, 20),
(4, 'Leicester city', 50, 43, 23),
(5, 'Everton', 49, 34, 9),
(6, 'Liverpool', 47, 53, 30),
(7, 'Tottenham', 46, 34, 9),
(8, 'Stoke city', 43, 53, 30),
(9, 'Crystal Palace', 41, 34, 9),
(10, 'Arsenal', 40, 53, 20),
(11, 'Watford', 40, 51, 38);

-- --------------------------------------------------------

--
-- Table structure for table `sports_game`
--

CREATE TABLE IF NOT EXISTS `sports_game` (
  `id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports_game`
--

INSERT INTO `sports_game` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `table_sports`
--

CREATE TABLE IF NOT EXISTS `table_sports` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `category` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `league` VARCHAR (20) NOT NULL,
  `code` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `table_sports`
--

INSERT INTO `table_sports` (`id`, `category`, `Country`, `league`, `code`) VALUES
(1, 'football', 'England', 'EPL', 100),
(2, 'Football', 'Rugby', 0, 200),
(3, 'Football', 'England', 'EPL', 100),
(4, 'Football', 'Spain', 'Laliga', 200),
(5, 'Football', 'Italy', 'Seria A', 300),
(6, 'Football', 'Germany', 'Bunders_liga', 400),
(7, 'Rugby', 'World series', 'IRB7', 500),
(8, 'Basketball', 'World', 'world cup', 600);

-- --------------------------------------------------------
