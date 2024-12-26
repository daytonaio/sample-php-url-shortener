-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 24, 2024 at 12:33 PM
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
-- Database: `url_shortener`
--

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

CREATE TABLE `urls` (
  `id` int(11) NOT NULL,
  `long_url` text NOT NULL,
  `short_code` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `urls`
--

INSERT INTO `urls` (`id`, `long_url`, `short_code`, `created_at`) VALUES
(1, 'https://github.com/CynthiaPeter/Technical-Writing-Resources', 'f7a5f1', '2024-12-20 01:22:46'),
(2, 'https://github.com/CynthiaPeter/Technical-Writing-Resources', '0d8021', '2024-12-20 01:25:38'),
(3, 'https://github.com/CynthiaPeter/Technical-Writing-Resources', '01eb7c', '2024-12-20 01:29:56'),
(4, 'https://github.com/CynthiaPeter/Technical-Writing-Resources', '69e3c1', '2024-12-20 01:35:38'),
(5, 'https://github.com/CynthiaPeter/Technical-Writing-Resources', '1e1ac0', '2024-12-20 01:38:25'),
(6, 'https://github.com/CynthiaPeter/Technical-Writing-Resources', 'dcec0c', '2024-12-20 01:39:20'),
(7, 'https://github.com/CynthiaPeter/Technical-Writing-Resources', '9d409f', '2024-12-20 01:40:06'),
(8, 'https://github.com/CynthiaPeter/Technical-Writing-Resources', '82980f', '2024-12-20 01:42:25'),
(9, 'https://search.app/?link=https%3A%2F%2Fwww.lawndalebaptist.org%2Fsearch&utm_campaign=aga&utm_source=agsadl2%2Csh%2Fx%2Fgs%2Fm2%2F4', '5787f8', '2024-12-20 01:46:26'),
(10, 'https://search.app/?link=https%3A%2F%2Fwww.lawndalebaptist.org%2Fsearch&utm_campaign=aga&utm_source=agsadl2%2Csh%2Fx%2Fgs%2Fm2%2F4', 'ebb74c', '2024-12-20 01:51:05'),
(11, 'https://search.app/?link=https%3A%2F%2Fwww.lawndalebaptist.org%2Fsearch&utm_campaign=aga&utm_source=agsadl2%2Csh%2Fx%2Fgs%2Fm2%2F4', 'cdc489', '2024-12-20 01:53:26'),
(12, 'https://search.app/?link=https%3A%2F%2Fwww.lawndalebaptist.org%2Fsearch&utm_campaign=aga&utm_source=agsadl2%2Csh%2Fx%2Fgs%2Fm2%2F4', 'd6ece2', '2024-12-20 01:56:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_short_code` (`short_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
