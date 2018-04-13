-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2018 at 04:40 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_files_of_web_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logininfo`
--

CREATE TABLE `tbl_logininfo` (
  `col_UserName` varchar(255) NOT NULL,
  `col_passWord` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_logininfo`
--

INSERT INTO `tbl_logininfo` (`col_UserName`, `col_passWord`) VALUES
('admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userinfo`
--

CREATE TABLE `tbl_userinfo` (
  `col_UserName` varchar(255) NOT NULL,
  `col_passWord` varchar(255) NOT NULL,
  `col_FullName` varchar(255) NOT NULL,
  `col_UserContact` varchar(255) NOT NULL,
  `col_UserAddress` varchar(255) NOT NULL,
  `col_UserBirthDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_userinfo`
--

INSERT INTO `tbl_userinfo` (`col_UserName`, `col_passWord`, `col_FullName`, `col_UserContact`, `col_UserAddress`, `col_UserBirthDate`) VALUES
('admin', 'password', 'paul', '2147483647', 'laguna', '0000-00-00'),
('a', 'b', 'c', 'd', '123465', 'f'),
('awdaw', 'dawd', 'adaw', 'dawd', 'awdwad', 'January/1/2001'),
('adwawd', 'dawaw', 'adwa', 'adwda', '', 'January/1/2001'),
('z', 'z', 'z', 'z', '865', 'January/1/2001'),
('ironman', 'jarvis', 'tony stark', '89461', 'star ent', 'January/1/2001');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
