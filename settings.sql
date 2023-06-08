-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 10:24 AM
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
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'autotrader', '0'),
(2, 'trade', '1'),
(3, 'invest', '0'),
(4, 'subscription', '0'),
(5, 'mining', '1'),
(8, 'site_name', 'Web Trading Platform'),
(9, 'support_email', 'info@a.ade'),
(10, 'phone', '########'),
(11, 'currency', 'USD'),
(12, 'crypto_api', 'ee7097c83f8b3257d84ba3c1262fe458'),
(13, 'stock_api', '511a8cffb53cbe5aeed143385aec186f'),
(14, 'indices_api', '511a8cffb53cbe5aeed143385aec186f'),
(15, 'api_interval', '5000'),
(16, 'crypto_provider', 'fm'),
(17, 'stock_provider', 'yahoo'),
(18, 'com_provider', 'oanda'),
(19, 'indices_provider', 'oanda'),
(20, 'forex_provider', 'oanda'),
(21, 'com_api', '511a8cffb53cbe5aeed143385aec186f'),
(22, 'forex_api', '511a8cffb53cbe5aeed143385aec186f'),
(24, 'cannot_trade_msg', 'Trading on this account is suspended, Contact Account manager if you would like to Trade Manually !'),
(25, 'kyc_verify', '0'),
(26, 'kyc_verify_button', '0'),
(27, 'overnight_com', '1'),
(28, 'can_trade', '1'),
(29, 'joint_account', '0'),
(30, 'login_page', 'default'),
(31, 'register_page', 'default'),
(32, 'crypto_withdraw', '1'),
(33, 'wire_withdraw', '1'),
(34, 'paypal_withdraw', '0'),
(35, 'disable_api', 'no'),
(36, 'host', 'http://127.0.0.1'),
(37, 'enable_crm', '0'),
(38, 'crm_url', 'http://127.0.0.1:8000/'),
(39, 'crm_token', '0'),
(40, 'crm_lead_source', '0'),
(41, 'crm_assigned', '0'),
(42, 'crm_status', '0'),
(43, 'MAIL_HOST', 'smtp.host.email'),
(44, 'MAIL_PORT', '465'),
(45, 'MAIL_ENCRYPTION', 'ssl'),
(46, 'MAIL_USERNAME', 'trade@test.com'),
(47, 'MAIL_PASSWORD', '0T7bKe35qKn8'),
(48, 'MAIL_FROM_ADDRESS', 'trade@test.com'),
(49, 'TEST_EMAIL', 'cxze@gmail.com'),
(50, 'APP_DEBUG', 'false'),
(51, 'welcome_mail', '0'),
(52, 'admin_newuser_notify', '0'),
(53, 'enable_withdraw_mail', '1'),
(54, 'suspend_trade_mail', '0'),
(55, 'deposit_mail', '0'),
(56, 'message_email', '0'),
(57, 'plan_upgrade_mail', '0'),
(58, 'user_activated_mail', '0'),
(59, 'withdrawal_request', '0'),
(63, 'separate_bonus', 'yes'),
(64, 'disable_mobile_view', '0'),
(65, 'multi_currency', '0'),
(66, 'exchange', '0'),
(67, 'multi_lang', '0'),
(68, 'referrals', '0'),
(69, 'auto_profit_lose', '0'),
(70, 'enable_margin_call', '1'),
(71, 'margin_percent', '50'),
(72, 'liquidation_percent', '10'),
(73, 'mail_subject', 'Margin Call'),
(74, 'margin_mail', 'The margin ratio of your Trading account has reached 80%. To avoid being liquidated, please transfer Funds into your trading account or reduce your positions. please contact your account manager right away for directives on how to resolve the situation'),
(75, 'primary_color', '#6AAC0E'),
(76, 'primary_color_hover', '#BDBDBD'),
(77, 'card_payment', '0'),
(78, 'card_payment_minimum', '0'),
(79, 'card_payment_maximum', '0'),
(80, 'crypto_payment', '1'),
(81, 'crypto_payment_minimum', '5'),
(82, 'crypto_payment_maximum', '25000'),
(83, 'payment_name', 'Credit/Debit'),
(84, 'payment_info', 'Pay with Visa and Master cards'),
(85, 'payment_button', 'Pay Now'),
(86, 'payment_link', 'https://google.com'),
(87, 'payment_image', 'https://web-terminal.online//storage/photos/1/6229ef5e63eff.png'),
(88, 'withdrawal_tax', '0'),
(89, 'withdrawal_commission', '0'),
(90, 'withdrawal_cot', '0'),
(92, 'favicon', 'https://simp-dar.s3.amazonaws.com/photos/1/62bb00c683921.PNG'),
(93, 'logo', 'https://simp-dar.s3.amazonaws.com/photos/1/62bb299b2eb2c.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
