-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2024 at 10:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `history_scan`
--

CREATE TABLE `history_scan` (
  `email` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `disease_name` varchar(255) NOT NULL,
  `akurasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history_scan`
--

INSERT INTO `history_scan` (`email`, `date_time`, `disease_name`, `akurasi`) VALUES
('ivankurniawan474@gmail.com', '2024-06-13 08:46:33', 'aeromonas', '0,99'),
('ivankurniawan474@gmail.com', '2024-06-13 08:47:52', 'costia', '0,99');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history_scan`
--
ALTER TABLE `history_scan`
  ADD PRIMARY KEY (`date_time`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
