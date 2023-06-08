-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 11:16 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `slug`, `color`, `icon`, `amount`, `features`, `created_at`, `updated_at`, `deleted_at`, `status`) VALUES
(1, 'MINI', 'mini', '#ff0000', 'https://webtrader.services/storage/photos/26/61cf43f7de032.png', 250, '[\"Leverage 1:1\",\"Profits Up to 10%\",\"Withdrawal Fee 10 EUR + 3%\",\"Risk Free Trade 1 one month subscribe\"]', '2022-01-11 15:47:37', '2022-03-10 21:09:06', NULL, 1),
(2, 'BRONZE', 'bronze', '#2c1f02', 'https://webtrader.services/storage/photos/26/61cf43f7de032.png', 1000, '[\"Leverage 1:1\",\"Monthly Profits 10% - 18.5%\",\"Withdrawal Fee 25EUR +1%\",\"Risk Free Trades\"]', '2022-01-11 15:51:36', '2022-03-10 20:54:08', NULL, 1),
(3, 'SILVER', 'silver', '#c9c9c9', 'https://webtrader.services/storage/photos/26/61cf43f7de032.png', 2500, '[\"Leverage 1:100\",\"Monthly Profits 18.6% - 22.3%\",\"Withdrawal Fee 3%\",\"Trades With Broker Monthly\",\"Risk Free Trade Program\"]', '2022-01-11 15:56:23', '2022-03-10 21:01:10', NULL, 1),
(4, 'GOLD', 'gold', '#fbff00', 'https://webtrader.services/storage/photos/26/61cf43f7de032.png', 5000, '[\"Leverage 1:100\",\"Monthly Profits 22.4% - 29.5%\",\"Express Withdrawal fee 0.5%\",\"Risk Free Trade Program\"]', '2022-01-11 16:03:15', '2022-03-10 21:04:47', NULL, 1),
(5, 'PLATINUM', 'platinum', '#e7440d', 'https://webtrader.services/storage/photos/26/61cf43f7de032.png', 10000, '[\"Leverage 1:300\",\"Margin Loans Up to 75%\",\"Withdrawal Fee 0\",\"Trades With Broker Daily\",\"Risk Free Trade 15\",\"Trading signal from MTE Platinum Signals\"]', '2022-01-11 16:06:40', '2022-03-11 06:29:37', NULL, 1),
(6, 'DIAMOND', 'diamond', '#0008ff', 'https://webtrader.services/storage/photos/26/61cf43f7de032.png', 25000, '[\"Leverage 1:400\",\"Margin Loans Up to 100%\",\"Withdrawal Fee 0\",\"Trades With Broker Daily\",\"Risk Free Trade 20\",\"Trading signal from MTE Diamond Signals\"]', '2022-01-11 16:12:59', '2022-03-11 06:29:46', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_slug_unique` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
