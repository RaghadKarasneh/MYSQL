-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2022 at 04:27 PM
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
-- Table structure for table `relationship_manager_info`
--

CREATE TABLE `relationship_manager_info` (
  `rel_manager_id` int(255) NOT NULL,
  `rel_manager_name` varchar(255) NOT NULL,
  `bank_branch` varchar(255) NOT NULL,
  `pin_code` int(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `phone_no` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relationship_manager_info`
--

INSERT INTO `relationship_manager_info` (`rel_manager_id`, `rel_manager_name`, `bank_branch`, `pin_code`, `email_id`, `phone_no`, `created_at`, `updated_at`) VALUES
(1, 'Anas', 'Aqaba', 77110, 'anasq0q@gmail.com', 770242422, '2022-05-10 14:19:20', '2022-05-10 14:19:20'),
(2, 'Dyar', 'Amman', 11822, 'hunaitydyar@gmail.com', 776563084, '2022-05-10 14:19:20', '2022-05-10 14:19:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `relationship_manager_info`
--
ALTER TABLE `relationship_manager_info`
  ADD PRIMARY KEY (`rel_manager_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
