-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2022 at 10:22 PM
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
  `last_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `id` int(14) NOT NULL,
  `delete_col` int(14) NOT NULL,
  `login_form` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phpform`
--

INSERT INTO `phpform` (`first_name`, `middle_name`, `last_name`, `final_name`, `email`, `user_password`, `confirm_password`, `phone_number`, `date_of_birth`, `date_create`, `last_login`, `id`, `delete_col`, `login_form`) VALUES
('Sara', 'Ibrahim', 'ALKarasneh', 'ALKarasneh', 'raghad@yahoo.com', 'Abcd*1234', 'Abcd*1234', 2147483647, '2000-12-11', '2022-05-14 21:00:00', '2022-05-15 20:09:14', 2, 1, 0),
('Sara', 'sami', 'rami', 'ahmad', 'ali@gmail.com', 'Abcd*1234', 'Abcd*1234', 2147483647, '2000-12-11', '2022-05-14 21:00:00', '2022-05-15 20:37:13', 3, 1, 0),
('Sara', 'Ibrahim', 'ALKarasneh', 'ALKarasneh', 'raghad@gmail.com', 'Abcd*1234', 'Abcd*1234', 2147483647, '2000-12-11', '2022-05-15 21:00:00', '2022-05-16 06:45:38', 4, 1, 0),
('Raghad', 'Ibrahim', 'ALKarasneh', 'ALKarasneh', 'raghad@yahoo.com', 'Abcd*1234', 'Abcd*1234', 2147483647, '2000-12-11', '2022-05-15 21:00:00', '2022-05-16 18:55:17', 5, 1, 0),
('Raghad', 'Ibrahim', 'ALKarasneh', 'ALKarasneh', 'roa@yahoo.com', 'Abcd*1234', 'Abcd*1234', 2147483647, '2000-12-11', '2022-05-15 21:00:00', '2022-05-16 18:59:17', 6, 1, 0),
('Sara', 'omar', 'ali', 'rami', 'sara@hotmail.com', 'Abcd*12', 'Abcd*1234', 2147483647, '2000-12-11', '2022-05-15 21:00:00', '2022-05-16 19:21:59', 7, 0, 1),
('Obada', 'ali', 'sami', 'ahmad', 'obada@gmail.com', 'Abcd*1234', 'Abcd*1234', 2147483647, '2000-12-11', '2022-05-15 21:00:00', '2022-05-16 19:28:44', 8, 1, 1),
('Raghad', 'Ibrahim', 'ALKarasneh', 'ali', 'ahmad@yahoo.com', 'Abcd*1234', 'Abcd*1234', 2147483647, '2000-12-11', '2022-05-15 21:00:00', '2022-05-16 19:39:41', 9, 0, 0),
('ali', 'ahmad', 'mohammad', 'rami', 'rami@gmail.com', 'Abcd*1234', 'Abcd*1234', 2147483647, '2000-12-11', '2022-05-15 21:00:00', '2022-05-16 20:19:43', 10, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phpform`
--
ALTER TABLE `phpform`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phpform`
--
ALTER TABLE `phpform`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
