-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 20, 2012 at 02:11 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `geochart_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `num_of_users` int(11) NOT NULL,
  `population` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `num_of_users`, `population`) VALUES
(1, 'Beograd', 28, 1639121),
(2, 'Novi Sad', 28, 335701),
(3, 'Nis', 24, 257867),
(4, 'Kragujevac', 24, 177468),
(5, 'Subotica', 10, 140358),
(6, 'Sombor', 4, 85569),
(7, 'Zrenjanin', 15, 122714),
(8, 'Sremska Mitrovica', 4, 79773),
(9, 'Sabac', 8, 115347),
(10, 'Pancevo', 12, 122252),
(11, 'Smederevo', 9, 107528),
(12, 'Pozarevac', 7, 74070),
(13, 'Loznica', 10, 78788),
(14, 'Valjevo', 13, 90301),
(15, 'Jagodina', 5, 71195),
(16, 'Uzice', 15, 78018),
(17, 'Cacak', 17, 114809),
(18, 'Zajecar', 7, 58547),
(19, 'Kraljevo', 9, 124554),
(20, 'Krusevac', 4, 127429),
(21, 'Vranje', 6, 82782),
(22, 'Pristina', 0, 198214),
(23, 'Novi Pazar', 2, 92766);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `web` varchar(50) NOT NULL,
  `city` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `phone`, `mobile`, `email`, `web`, `city`) VALUES
(4, 'sranje', 'sranjic', '0643007434', 'asdaaaaaa', 'aaaa', 'aaaaaa', 'Kragujevac'),
(53, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(54, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(55, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(56, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(57, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(58, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(59, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(60, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(61, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(62, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(63, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(64, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(65, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(66, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(67, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(68, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Novi Sad'),
(69, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Nis'),
(70, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Kragujevac'),
(71, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Subotica'),
(72, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Zrenjanin'),
(73, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Pancevo'),
(74, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Cacak'),
(75, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Kraljevo'),
(76, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Smederevo'),
(77, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Novi Pazar'),
(78, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Valjevo'),
(79, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Beograd'),
(80, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Vranje'),
(81, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Sabac'),
(82, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Uzice'),
(83, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Sombor'),
(84, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Pozarevac'),
(85, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Zajecar'),
(86, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Sremska Mitrovi'),
(87, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Loznica'),
(88, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Jagodina'),
(89, 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Krusevac'),
(90, 'trash_data', 'tra', 'trash_data', 'trash_data', 'trash_data', 'trash_data', 'Novi Sad');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
