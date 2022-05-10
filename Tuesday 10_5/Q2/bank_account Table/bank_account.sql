-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 04:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank account`
--

CREATE TABLE `bank account` (
  `cust_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pin_code` int(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `phone_no` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank account`
--

INSERT INTO `bank account` (`cust_id`, `name`, `dob`, `street`, `city`, `state`, `pin_code`, `email_id`, `phone_no`, `created_at`, `updated_at`) VALUES
(1, 'Raghad', '1995-10-17', 'Farabi', 'Aqaba', 'Aqaba', 77110, 'raghad.karasneh@gmail.com', 778089141, '2022-05-10 14:18:42', '2022-05-10 14:18:42'),
(2, 'Dyar', '2003-10-19', 'Zeryab', 'Aqaba', 'Aqaba', 77110, 'hunaitydyar@gmail.com', 776563084, '2022-05-10 14:18:42', '2022-05-10 14:18:42'),
(3, 'Anas', '1994-05-28', 'Shaker-bin-zaid', 'Aqaba', 'Aqaba', 77110, 'anasq0q@gmail.com', 770242422, '2022-05-10 14:18:42', '2022-05-10 14:18:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank account`
--
ALTER TABLE `bank account`
  ADD PRIMARY KEY (`cust_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank account`
--
ALTER TABLE `bank account`
  MODIFY `cust_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
