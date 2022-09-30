-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2022 at 12:03 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_donor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `name`) VALUES
(2, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `announce`
--

CREATE TABLE `announce` (
  `id` int(11) NOT NULL,
  `announcement` varchar(50) NOT NULL,
  `bloodneed` varchar(3) NOT NULL,
  `dat` date NOT NULL,
  `organizer` varchar(50) NOT NULL,
  `requirements` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announce`
--

INSERT INTO `announce` (`id`, `announcement`, `bloodneed`, `dat`, `organizer`, `requirements`) VALUES
(1, 'ANNOUNCEMENT EDITED', 'B+', '2022-09-18', 'Helping Hands', 'Weight at least 50kg, No alcohol intake in 24hrs prior to donation, light meal should be taken before donation, be in good health, must be 18 years old and must have at least 3 month interval than the last donation.'),
(6, 'Nostrud cumque numqu', 'Por', '1988-12-09', 'Labore totam aut qui', 'Laborum Ratione vel'),
(7, 'Nostrud cumque numqu', 'Por', '1988-12-09', 'Labore totam aut qui', 'Laborum Ratione vel'),
(8, 'Urgent blood required', 'B+', '2022-09-21', 'Services Hospital', 'Healthy young man, no smoking'),
(9, 'Emergency Accident case', 'A+', '2022-09-21', 'Jinnah Hospital', 'Young man'),
(10, 'Pariatur Sed lorem ', 'Inc', '2002-05-12', 'Eveniet velit nisi ', 'Quasi optio et dolo'),
(11, 'Urgent blood required', 'A+', '2022-09-25', 'Services Hospital', '100 gram blood, young man, no smooking');

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `weight` int(11) NOT NULL,
  `bloodgroup` varchar(3) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `bloodqty` int(11) NOT NULL,
  `collection` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`id`, `name`, `gender`, `dob`, `weight`, `bloodgroup`, `address`, `contact`, `bloodqty`, `collection`) VALUES
(8, 'bruno den', 'M', '1991-05-26', 88, 'O+', 'demo address', '8555555545', 360, '2016-05-08'),
(9, 'Tom Filler', 'M', '1988-06-14', 69, 'AB+', 'Deo Adr', '7854447854', 312, '2020-12-30'),
(10, 'Elizabeth', 'F', '1990-02-12', 59, 'AB-', 'San Andrq', '8555554585', 310, '2020-12-30'),
(11, 'Shyaron', 'F', '1996-02-02', 60, 'B+', 'Demo Address', '7878787850', 360, '2020-12-29'),
(12, 'Harry Den', 'M', '1997-01-05', 70, 'B+', 'Demo', '8521112450', 310, '2020-12-29'),
(13, 'Tony Stank', 'M', '1980-03-03', 79, 'B+', 'CA', '8547778500', 312, '2020-12-27'),
(14, 'Stephen Strange', 'M', '1990-12-24', 69, 'O+', 'Demo', '8545554700', 310, '2020-12-27'),
(15, 'Steve Trevor', 'M', '1995-06-15', 75, 'O-', 'Demo Addresss', '7454447410', 311, '2021-01-05'),
(16, 'Martin', 'M', '1986-11-11', 85, 'AB+', 'demo', '8545557854', 310, '2021-01-30');

-- --------------------------------------------------------

--
-- Table structure for table `campaigndb`
--

CREATE TABLE `campaigndb` (
  `id` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `oname` varchar(50) NOT NULL,
  `phn` int(10) NOT NULL,
  `cdate` date NOT NULL,
  `descp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaigndb`
--

INSERT INTO `campaigndb` (`id`, `cname`, `oname`, `phn`, `cdate`, `descp`) VALUES
(10, 'Hedy Olsen', 'Libby Banks', 33, '1970-07-13', 'Aliquid fuga Delect'),
(11, 'Hedy Olsen', 'Libby Banks', 33, '1970-07-13', 'Aliquid fuga Delect'),
(12, 'Sarah Fitzgerald', 'Leroy Duncan', 6, '2010-03-03', 'Dolor dicta iusto ut'),
(13, 'Cain Spears', 'Fay Wade', 91, '1996-08-16', 'Cupiditate distincti'),
(14, 'Olivia Atkins', 'Brett Hancock', 79, '1981-05-03', 'Sit eveniet eveniet');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `guardiansname` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `weight` int(11) NOT NULL,
  `bloodgroup` varchar(3) NOT NULL,
  `email` varchar(55) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `name`, `guardiansname`, `gender`, `dob`, `weight`, `bloodgroup`, `email`, `address`, `contact`, `username`, `password`) VALUES
(18, 'Talha', 'Ali', 'M', '2020-09-03', 51, 'b+', 'umarhaabib98@gmail.com', 'Kuwait', '8520002500', 'talha', '12345'),
(19, 'Harry Den', 'Stephen Den', 'M', '1998-06-17', 70, 'B+', 'harry.den20@gmail.co', 'Demo Address', '7854445420', 'harry', 'pass'),
(21, 'John Doe', 'Kevin Doe', 'M', '1991-12-09', 69, 'AB+', 'doejohn@gmail.com', '905  Chandler Hollow', '7854445470', 'johnd', 'password'),
(22, 'Ramona Jr Pippin', 'Noramo Pippin', 'F', '1995-02-22', 55, 'O-', 'pippin@gmail.com', '3237  Drummond Stree', '7854445200', 'pippin', 'password'),
(23, 'Robert', 'Simon L Berg', 'M', '1994-06-21', 82, 'AB-', 'robert@gmail.com', '524  Duff Avenue', '2547778452', 'robert', 'robert');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `donorname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `donorname`) VALUES
(1, 'user', 'pass', 'harryden');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `announce`
--
ALTER TABLE `announce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigndb`
--
ALTER TABLE `campaigndb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `announce`
--
ALTER TABLE `announce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blood`
--
ALTER TABLE `blood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `campaigndb`
--
ALTER TABLE `campaigndb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
