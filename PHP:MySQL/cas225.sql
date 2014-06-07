-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 12, 2014 at 05:57 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cas225`
--

-- --------------------------------------------------------

--
-- Table structure for table `guestbook`
--

CREATE TABLE IF NOT EXISTS `guestbook` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `comment` longtext NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `guestbook`
--

INSERT INTO `guestbook` (`id`, `username`, `comment`, `datetime`) VALUES
(1, 'student', 'I am a happy student, because I like my class!', '2014-02-19 02:12:55'),
(2, 'jjones', 'I am very excited to be creating an entry in your guestbook!', '2014-02-19 02:15:01'),
(3, 'ssmart', 'I am the smartest student in my class.', '2014-02-19 02:15:32'),
(5, 'instructor', 'I hope you find learning how to work with databases exciting and fun. ', '2014-02-19 02:18:33'),
(7, 'student', 'hello', '2014-02-27 00:39:39'),
(8, 'student', 'hello', '2014-02-27 00:40:12'),
(10, 'jjones', 'hello my name is jones', '2014-02-27 01:02:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(30) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `permissions` varchar(40) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `firstname`, `lastname`, `email`, `password`, `permissions`) VALUES
('instructor', 'Ron', 'Bekey', 'rbekey@pcc.edu', '789b49606c321c8cf228d17942608eff0ccc4171', 'admin'),
('jjones', 'Joe ', 'Jones', 'jjones@email.com', '789b49606c321c8cf228d17942608eff0ccc4171', 'user'),
('ssmart', 'Sally', 'Smart', 'ssmart@email.com', '789b49606c321c8cf228d17942608eff0ccc4171', 'user'),
('student', 'Student 	', 'Name', 'student.name@pcc.edu', '789b49606c321c8cf228d17942608eff0ccc4171', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
