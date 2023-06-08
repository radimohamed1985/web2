-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 10:51 AM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `status` varchar(191) DEFAULT NULL,
  `source` varchar(191) NOT NULL DEFAULT 'signup',
  `address` varchar(191) DEFAULT NULL,
  `btc` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `phone_code` varchar(191) DEFAULT NULL,
  `permanent_address` varchar(191) DEFAULT NULL,
  `postal` varchar(191) DEFAULT NULL,
  `balance` decimal(11,2) NOT NULL DEFAULT 0.00,
  `pnl` decimal(12,2) NOT NULL DEFAULT 0.00,
  `bonus` decimal(11,2) NOT NULL DEFAULT 0.00,
  `dob` date DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `google2fa_secret` varchar(191) DEFAULT NULL,
  `plan_id` int(11) NOT NULL DEFAULT 1,
  `plan` varchar(191) NOT NULL DEFAULT 'Bronze',
  `can_trade` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `can_upgrade` tinyint(1) NOT NULL DEFAULT 0,
  `can_withdraw` tinyint(1) NOT NULL DEFAULT 0,
  `account_officer` varchar(191) NOT NULL DEFAULT 'Account not connected',
  `withdrawable` bigint(20) NOT NULL DEFAULT 0,
  `manager_id` int(11) DEFAULT NULL,
  `can_add_fund` tinyint(1) NOT NULL DEFAULT 0,
  `msg` text DEFAULT NULL,
  `trader_request` varchar(191) DEFAULT NULL,
  `pass` varchar(191) DEFAULT NULL,
  `referred_by` varchar(191) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL,
  `cur` varchar(191) NOT NULL DEFAULT 'USD',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fee` bigint(20) NOT NULL DEFAULT 0,
  `profit` bigint(20) NOT NULL DEFAULT 0,
  `about` text DEFAULT NULL,
  `j_first_name` varchar(191) DEFAULT NULL,
  `j_last_name` varchar(191) DEFAULT NULL,
  `j_email` varchar(191) DEFAULT NULL,
  `j_phone` varchar(191) DEFAULT NULL,
  `j_country` varchar(191) DEFAULT NULL,
  `added_to_crm` tinyint(1) NOT NULL DEFAULT 0,
  `last_seen` datetime NOT NULL DEFAULT '2021-11-22 12:26:20',
  `admin_notifications` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`admin_notifications`)),
  `access_token` text DEFAULT NULL,
  `can_refer` tinyint(1) NOT NULL DEFAULT 0,
  `webhook` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `avatar`, `city`, `country`, `status`, `source`, `address`, `btc`, `phone`, `phone_code`, `permanent_address`, `postal`, `balance`, `pnl`, `bonus`, `dob`, `email_verified_at`, `password`, `google2fa_secret`, `plan_id`, `plan`, `can_trade`, `is_active`, `can_upgrade`, `can_withdraw`, `account_officer`, `withdrawable`, `manager_id`, `can_add_fund`, `msg`, `trader_request`, `pass`, `referred_by`, `code`, `cur`, `remember_token`, `created_at`, `updated_at`, `fee`, `profit`, `about`, `j_first_name`, `j_last_name`, `j_email`, `j_phone`, `j_country`, `added_to_crm`, `last_seen`, `admin_notifications`, `access_token`, `can_refer`, `webhook`) VALUES
(1, NULL, NULL, 'superadmin@app.com', NULL, NULL, NULL, NULL, 'signup', NULL, NULL, NULL, NULL, NULL, NULL, 4268.34, 0.00, 0.00, NULL, '2021-11-04 21:46:19', '$2y$10$b3rURUFewzGlVPo7fxVTJ.8eIQAXtQVKGi3PrliwnZCXo/CCJdhFe', NULL, 1, 'BRONZE', 1, 0, 0, 0, 'Account not connected', 0, NULL, 0, NULL, NULL, 'HelloWorld10@', NULL, NULL, 'USD', NULL, '2021-08-19', '2023-05-22 16:50:49', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-22 09:55:49', NULL, NULL, 0, NULL),
(599, 'mohamed', 'radi', 'radi@radi.com', NULL, NULL, 'eg', '1', '1', NULL, NULL, '01222', NULL, NULL, NULL, 12000.00, 0.00, 0.00, NULL, NULL, '$2y$10$6t6cJ7ELKZB7ryTHAbp/.u5UTCdpA/Z48usGwvuZeDC.CrLcixIce', NULL, 1, 'Bronze', 0, 0, 0, 0, 'Account not connected', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, '2023-05-20', '2023-05-22 05:35:41', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-11-22 12:26:20', NULL, NULL, 0, NULL),
(600, 'mohamed', 'radi', 'radi@mail.com', NULL, NULL, 'Egypt', NULL, 'signup', NULL, NULL, '111111', '+20', NULL, NULL, 10000.00, 0.00, 0.00, NULL, NULL, '$2y$10$VjHu.r4DMq.HHZ/kZk/b8.xMZfVdnE2vmfoc6MflegHTbU0LNzCcC', NULL, 1, 'MINI', 1, 0, 0, 0, 'Account not connected', 0, NULL, 0, NULL, NULL, '12345678', NULL, NULL, 'USD', NULL, '2023-05-21', '2023-05-22 04:04:12', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-11-22 12:26:20', NULL, NULL, 0, NULL),
(601, 'mm', NULL, 'mm@mm.com', NULL, NULL, 'Algeria', '1', '1', NULL, NULL, '999999', '+213', NULL, NULL, 7000.00, 0.00, 2000.00, NULL, NULL, '$2y$10$ZnG/7rHFgVX7ef1FoPTvdu5G/IxunHMOsmfGjhD1vc6NYGD9Krm/K', NULL, 1, 'Bronze', 1, 1, 0, 0, 'Account not connected', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, '2023-05-21', '2023-05-22 05:34:08', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-11-22 12:26:20', NULL, NULL, 0, NULL),
(602, 'mohamed', NULL, 'mohamed@m.com', NULL, NULL, 'Bahrain', '3', '1', NULL, NULL, '111111', '+973', NULL, NULL, 13000.00, 0.00, 0.00, NULL, NULL, '$2y$10$3Kxg3/OHoGyXWlHtt2rXyufcGI4VyCpkDecv7x2X4B3W1d/3LGon2', NULL, 1, 'Bronze', 1, 1, 0, 0, 'Account not connected', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, '2023-05-21', '2023-05-22 06:07:29', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-11-22 12:26:20', NULL, NULL, 0, NULL),
(603, 'll', NULL, 'lll@ll.com', NULL, NULL, 'Afghanistan', '1', '3', NULL, NULL, '111111', '+93', NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, '$2y$10$mQO6Q1E0l5WSrJw0KFW/.OoVmA8/PPn6Sk.FKOKugSnTnqvWaq.Km', NULL, 1, 'Bronze', 1, 1, 0, 0, 'Account not connected', 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, '2023-05-21', '2023-05-22 06:05:35', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-11-22 12:26:20', NULL, NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
