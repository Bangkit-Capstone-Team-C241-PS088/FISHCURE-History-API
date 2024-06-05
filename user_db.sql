-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 03:05 PM
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
-- Table structure for table `desease_info`
--

CREATE TABLE `desease_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gejala` varchar(255) NOT NULL,
  `langkah_penanganan` varchar(255) NOT NULL,
  `obat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `desease_info`
--

INSERT INTO `desease_info` (`id`, `name`, `gejala`, `langkah_penanganan`, `obat`) VALUES
(1, 'Anchor Worm', '', '', ''),
(2, 'Argulosis', '', '', ''),
(3, 'Dropsy', '', '', ''),
(4, 'Fin Rot', '', '', ''),
(5, 'Healthy', '', '', ''),
(6, 'Inflamed Gills', '', '', ''),
(7, 'Pop Eye', '', '', ''),
(8, 'Swim Bladder', '', '', ''),
(9, 'Velvet', '', '', ''),
(10, 'White Spot', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `history_scan`
--

CREATE TABLE `history_scan` (
  `email` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `desease_id` varchar(255) NOT NULL,
  `akurasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history_scan`
--

INSERT INTO `history_scan` (`email`, `date_time`, `desease_id`, `akurasi`) VALUES
('ivankurniawan474@gmail.com', '2024-05-29 11:12:15', '1', '0,99'),
('ivankurniawan474@gmail.com', '2024-06-04 12:21:21', '3', '0,99');

-- --------------------------------------------------------

--
-- Table structure for table `login_info`
--

CREATE TABLE `login_info` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_info`
--

INSERT INTO `login_info` (`email`, `password`, `otp`) VALUES
('ivankurniawan071@gmail.com', '$2b$13$8xRDEJp4yAlAIdJIQBeVxOZWDwBHY9ZhIJqFWNq1toWoNxMoQOw52', ''),
('ivankurniawan474@gmail.com', '$2b$13$/J.bVcKB8WkEG6EAowDxVu.3RkRRLXYkZ.y1NraY06BDifGRbGBw6', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desease_info`
--
ALTER TABLE `desease_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_scan`
--
ALTER TABLE `history_scan`
  ADD PRIMARY KEY (`date_time`);

--
-- Indexes for table `login_info`
--
ALTER TABLE `login_info`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `desease_info`
--
ALTER TABLE `desease_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
