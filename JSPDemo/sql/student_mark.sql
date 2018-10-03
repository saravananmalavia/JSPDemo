-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2018 at 08:49 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_mark`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_mark`
--

CREATE TABLE IF NOT EXISTS `tbl_student_mark` (
  `student_id` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mark1` int(3) NOT NULL,
  `mark2` int(3) NOT NULL,
  `mark3` int(3) NOT NULL,
  `total` int(3) NOT NULL,
  `result` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student_mark`
--

INSERT INTO `tbl_student_mark` (`student_id`, `name`, `mark1`, `mark2`, `mark3`, `total`, `result`) VALUES
(101, 'sarav', 5, 7, 8, 20, 'Fail'),
(102, 'lab', 87, 76, 98, 261, 'Pass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_student_mark`
--
ALTER TABLE `tbl_student_mark`
  ADD PRIMARY KEY (`student_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
