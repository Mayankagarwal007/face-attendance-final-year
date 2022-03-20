-- phpMy  SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2021 at 05:19 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendancesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`username`, `password`) VALUES
('mayank', '123');

-- --------------------------------------------------------

--
-- Table structure for table `coursedetails`
--

CREATE TABLE `coursedetails` (
  `courseid` varchar(10) NOT NULL,
  `facultyname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursedetails`
--

INSERT INTO `coursedetails` (`courseid`, `facultyname`) VALUES
('3cp01', 'rahul'),
('3cp02', 'ram'),
('3cp03', 'mehul'),
('3cp04', 'hemant');

-- --------------------------------------------------------

--
-- Table structure for table `facultydetails`
--

CREATE TABLE `facultydetails` (
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `ph_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facultydetails`
--

INSERT INTO `facultydetails` (`username`, `email`, `ph_no`) VALUES
('hemantsir', 'hemant@gmail.com', '12345'),
('ram', 'ram@gmail.com', '23456'),
('mehul', 'mehul@gmail.com', '34567');

-- --------------------------------------------------------

--
-- Table structure for table `logindata`
--

CREATE TABLE `logindata` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logindata`
--

INSERT INTO `logindata` (`username`, `password`, `role`) VALUES
('admin', '123', 'admin'),
('mayank', 'mayank', 'student'),
('yash', '123', 'student'),
('deep', 'deep', 'student'),
('vaishnavi', '123', 'student'),
('harsh', '123', 'student'),
('hemant', '123', 'faculty'),
('aman', '123', 'student'),
('ram', '123', 'faculty'),
('sunetra', '123', 'student'),
('mehul', '123', 'faculty'),
('om', '123', 'student'),
('rohan', '123', 'student'),
('vaibhav', '123', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `studentdetails`
--

CREATE TABLE `studentdetails` (
  `username` varchar(50) NOT NULL,
  `batch` varchar(5) NOT NULL,
  `emailid` varchar(25) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentdetails`
--

INSERT INTO `studentdetails` (`username`, `batch`, `emailid`, `dob`) VALUES
('yash', 'a', 'yash@gmail.com', '2000-02-01'),
('deep', 'c', 'deep@gmail.com', '2000-03-06'),
('vaishnavi', 'b', 'vaishnavi@gmail.com', '2001-01-01'),
('harsh', 'c', 'harsh@gmail.com', '2021-04-20'),
('aman', 'a', 'aman@gmail.com', '2000-05-15'),
('sunetra', 'b', 'sunetra@gmail.com', '2021-04-11'),
('vaibhav', 'b', 'vaibhav@gmail.com', '2001-07-23'),
('om', 'a', 'om@gmail.com', '2021-04-20'),
('rohan', 'a', 'rohan@gmail.com', '2000-10-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `coursedetails`
--
ALTER TABLE `coursedetails`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `facultydetails`
--
ALTER TABLE `facultydetails`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `logindata`
--
ALTER TABLE `logindata`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `studentdetails`
--
ALTER TABLE `studentdetails`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
