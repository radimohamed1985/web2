-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 10:55 AM
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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'users-create', 'Create Users', 'Create Users', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(2, 'users-read', 'Read Users', 'Read Users', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(3, 'users-update', 'Update Users', 'Update Users', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(4, 'users-delete', 'Delete Users', 'Delete Users', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(5, 'payments-create', 'Create Payments', 'Create Payments', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(6, 'payments-read', 'Read Payments', 'Read Payments', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(7, 'payments-update', 'Update Payments', 'Update Payments', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(8, 'payments-delete', 'Delete Payments', 'Delete Payments', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(9, 'profile-read', 'Read Profile', 'Read Profile', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(10, 'profile-update', 'Update Profile', 'Update Profile', '2021-08-19 18:54:52', '2021-08-19 18:54:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
