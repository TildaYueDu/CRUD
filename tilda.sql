-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Apr 19, 2016 at 04:45 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;



-- --------------------------------------------------------

--
-- Table structure for table `my_awesome_todo_list`
--

DROP TABLE IF EXISTS `my_awesome_todo_list`;
CREATE TABLE IF NOT EXISTS `my_awesome_todo_list` (
  `iid` int(11) NOT NULL,
  `todo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `my_todo_list`
--

DROP TABLE IF EXISTS `my_todo_list`;
CREATE TABLE IF NOT EXISTS `my_todo_list` (
  `iid` int(11) NOT NULL,
  `todo` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `my_todo_list`
--

INSERT INTO `my_todo_list` (`iid`, `todo`) VALUES
(7, 'kejlkdb'),
(9, 'epoasdfakjhk'),
(38, 'qwqw'),
(40, 'asdfrt'),
(50, '123123'),
(86, 'qw');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `my_awesome_todo_list`
--
ALTER TABLE `my_awesome_todo_list`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `my_todo_list`
--
ALTER TABLE `my_todo_list`
  ADD PRIMARY KEY (`iid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `my_awesome_todo_list`
--
ALTER TABLE `my_awesome_todo_list`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `my_todo_list`
--
ALTER TABLE `my_todo_list`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
