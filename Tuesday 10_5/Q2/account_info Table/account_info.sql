-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 04:22 PM
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
-- Table structure for table `account_info`
--

CREATE TABLE `account_info` (
  `account_no` int(255) NOT NULL,
  `account_type` varchar(255) NOT NULL,
  `customer_id` int(255) NOT NULL,
  `account_status` varchar(255) NOT NULL,
  `account_activation_date` date NOT NULL,
  `total_balance` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_info`
--

INSERT INTO `account_info` (`account_no`, `account_type`, `customer_id`, `account_status`, `account_activation_date`, `total_balance`, `created_at`, `updated_at`) VALUES
(2141369874, 'Current', 1, 'Active', '1990-02-15', 10000000, '2022-05-10 14:17:58', '2022-05-10 14:17:58'),
(2013654125, 'Savings', 2, 'Inactive', '2000-12-03', 500000, '2022-05-10 14:17:58', '2022-05-10 14:17:58'),
(1203562415, 'DMAT', 3, 'Suspended', '2005-04-13', 1111111111, '2022-05-10 14:17:58', '2022-05-10 14:17:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_info`
--
ALTER TABLE `account_info`
  ADD PRIMARY KEY (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
