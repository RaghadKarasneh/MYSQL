-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 05:02 PM
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
-- Database: `sunday 15_05`
--

-- --------------------------------------------------------

--
-- Table structure for table `livecode`
--

CREATE TABLE `livecode` (
  `id` int(14) NOT NULL,
  `emp_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `salary` int(14) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `livecode`
--

INSERT INTO `livecode` (`id`, `emp_name`, `email`, `salary`, `created_at`, `updated_at`) VALUES
(1, 'Raghad Ibrahim ALKarasneh', 'raghad.karasneh@gmail.com', 0, '2022-05-15 09:40:09', '2022-05-15 09:40:09'),
(2, 'Ahmad', 'ahmad@yahoo.com', 700, '2022-05-15 09:42:13', '2022-05-15 09:42:13'),
(3, 'Ahmad', 'ahmad@yahoo.com', 700, '2022-05-15 09:51:57', '2022-05-15 09:51:57'),
(4, 'Ahmad', 'ahmad@yahoo.com', 700, '2022-05-15 09:52:00', '2022-05-15 09:52:00'),
(5, 'Ahmad', 'ahmad@yahoo.com', 700, '2022-05-15 09:52:30', '2022-05-15 09:52:30'),
(6, 'Ahmad', 'ahmad@yahoo.com', 700, '2022-05-15 09:54:26', '2022-05-15 09:54:26'),
(7, 'Ahmad', 'ahmad@yahoo.com', 700, '2022-05-15 09:54:40', '2022-05-15 09:54:40'),
(8, 'samar', 'samar@yahoo.com', 900, '2022-05-15 10:01:31', '2022-05-15 10:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `phpform`
--

CREATE TABLE `phpform` (
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `final_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL,
  `phone_number` int(14) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_login` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phpform`
--

INSERT INTO `phpform` (`first_name`, `middle_name`, `last_name`, `final_name`, `email`, `user_password`, `confirm_password`, `phone_number`, `date_of_birth`, `date_create`, `last_login`) VALUES
('samar', 'omar', 'ali', 'sami', 'samar@yahoo.com', 'Abcd*1234', 'Abcd*1234', 2147483647, '2000-12-11', '2022-05-15 14:57:13', '2022-05-15 14:58:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `livecode`
--
ALTER TABLE `livecode`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `livecode`
--
ALTER TABLE `livecode`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
