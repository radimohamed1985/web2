-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 12, 2022 at 04:19 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crypto_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'crypto',
  `wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wire_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authentication_log`
--

CREATE TABLE `authentication_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authenticatable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authenticatable_id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL,
  `logout_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auto_profit_losses`
--

CREATE TABLE `auto_profit_losses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `pnl` tinyint(1) NOT NULL DEFAULT 1,
  `record` tinyint(1) NOT NULL DEFAULT 0,
  `fixed` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `interval_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'day',
  `interval` int(11) NOT NULL DEFAULT 1,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `last_updated` datetime NOT NULL DEFAULT '2022-01-11 09:45:37',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auto_profit_loss_details`
--

CREATE TABLE `auto_profit_loss_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `auto_profit_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `balance_after` decimal(12,2) NOT NULL DEFAULT 0.00,
  `balance_before` decimal(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auto_traders`
--

CREATE TABLE `auto_traders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` int(11) NOT NULL DEFAULT 0,
  `profit` int(11) NOT NULL DEFAULT 60,
  `info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nicename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', '4', '93', NULL, NULL),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', '8', '355', NULL, NULL),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', '12', '213', NULL, NULL),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', '16', '1684', NULL, NULL),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', '20', '376', NULL, NULL),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', '24', '244', NULL, NULL),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', '660', '1264', NULL, NULL),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, '0', NULL, NULL),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', '28', '1268', NULL, NULL),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', '32', '54', NULL, NULL),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', '51', '374', NULL, NULL),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', '533', '297', NULL, NULL),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', '36', '61', NULL, NULL),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', '40', '43', NULL, NULL),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', '31', '994', NULL, NULL),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', '44', '1242', NULL, NULL),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', '48', '973', NULL, NULL),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', '50', '880', NULL, NULL),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', '52', '1246', NULL, NULL),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', '112', '375', NULL, NULL),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', '56', '32', NULL, NULL),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', '84', '501', NULL, NULL),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', '204', '229', NULL, NULL),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', '60', '1441', NULL, NULL),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', '64', '975', NULL, NULL),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', '68', '591', NULL, NULL),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', '70', '387', NULL, NULL),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', '72', '267', NULL, NULL),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, '0', NULL, NULL),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', '76', '55', NULL, NULL),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, '246', NULL, NULL),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', '96', '673', NULL, NULL),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', '100', '359', NULL, NULL),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', '854', '226', NULL, NULL),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', '108', '257', NULL, NULL),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', '116', '855', NULL, NULL),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', '120', '237', NULL, NULL),
(38, 'CA', 'CANADA', 'Canada', 'CAN', '124', '1', NULL, NULL),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', '132', '238', NULL, NULL),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', '136', '1345', NULL, NULL),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', '140', '236', NULL, NULL),
(42, 'TD', 'CHAD', 'Chad', 'TCD', '148', '235', NULL, NULL),
(43, 'CL', 'CHILE', 'Chile', 'CHL', '152', '56', NULL, NULL),
(44, 'CN', 'CHINA', 'China', 'CHN', '156', '86', NULL, NULL),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, '61', NULL, NULL),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, '672', NULL, NULL),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', '170', '57', NULL, NULL),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', '174', '269', NULL, NULL),
(49, 'CG', 'CONGO', 'Congo', 'COG', '178', '242', NULL, NULL),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', '180', '242', NULL, NULL),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', '184', '682', NULL, NULL),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', '188', '506', NULL, NULL),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', '384', '225', NULL, NULL),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', '191', '385', NULL, NULL),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', '192', '53', NULL, NULL),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', '196', '357', NULL, NULL),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', '203', '420', NULL, NULL),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', '208', '45', NULL, NULL),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', '262', '253', NULL, NULL),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', '212', '1767', NULL, NULL),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', '214', '1809', NULL, NULL),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', '218', '593', NULL, NULL),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', '818', '20', NULL, NULL),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', '222', '503', NULL, NULL),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', '226', '240', NULL, NULL),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', '232', '291', NULL, NULL),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', '233', '372', NULL, NULL),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', '231', '251', NULL, NULL),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', '238', '500', NULL, NULL),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', '234', '298', NULL, NULL),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', '242', '679', NULL, NULL),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', '246', '358', NULL, NULL),
(73, 'FR', 'FRANCE', 'France', 'FRA', '250', '33', NULL, NULL),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', '254', '594', NULL, NULL),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', '258', '689', NULL, NULL),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, '0', NULL, NULL),
(77, 'GA', 'GABON', 'Gabon', 'GAB', '266', '241', NULL, NULL),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', '270', '220', NULL, NULL),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', '268', '995', NULL, NULL),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', '276', '49', NULL, NULL),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', '288', '233', NULL, NULL),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', '292', '350', NULL, NULL),
(83, 'GR', 'GREECE', 'Greece', 'GRC', '300', '30', NULL, NULL),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', '304', '299', NULL, NULL),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', '308', '1473', NULL, NULL),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', '312', '590', NULL, NULL),
(87, 'GU', 'GUAM', 'Guam', 'GUM', '316', '1671', NULL, NULL),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', '320', '502', NULL, NULL),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', '324', '224', NULL, NULL),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', '624', '245', NULL, NULL),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', '328', '592', NULL, NULL),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', '332', '509', NULL, NULL),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, '0', NULL, NULL),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', '336', '39', NULL, NULL),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', '340', '504', NULL, NULL),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', '344', '852', NULL, NULL),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', '348', '36', NULL, NULL),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', '352', '354', NULL, NULL),
(99, 'IN', 'INDIA', 'India', 'IND', '356', '91', NULL, NULL),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', '360', '62', NULL, NULL),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', '364', '98', NULL, NULL),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', '368', '964', NULL, NULL),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', '372', '353', NULL, NULL),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', '376', '972', NULL, NULL),
(105, 'IT', 'ITALY', 'Italy', 'ITA', '380', '39', NULL, NULL),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', '388', '1876', NULL, NULL),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', '392', '81', NULL, NULL),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', '400', '962', NULL, NULL),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', '398', '7', NULL, NULL),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', '404', '254', NULL, NULL),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', '296', '686', NULL, NULL),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', '408', '850', NULL, NULL),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', '410', '82', NULL, NULL),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', '414', '965', NULL, NULL),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', '417', '996', NULL, NULL),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', '418', '856', NULL, NULL),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', '428', '371', NULL, NULL),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', '422', '961', NULL, NULL),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', '426', '266', NULL, NULL),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', '430', '231', NULL, NULL),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', '434', '218', NULL, NULL),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', '438', '423', NULL, NULL),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', '440', '370', NULL, NULL),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', '442', '352', NULL, NULL),
(125, 'MO', 'MACAO', 'Macao', 'MAC', '446', '853', NULL, NULL),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', '389', NULL, NULL),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', '450', '261', NULL, NULL),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', '454', '265', NULL, NULL),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', '458', '60', NULL, NULL),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', '462', '960', NULL, NULL),
(131, 'ML', 'MALI', 'Mali', 'MLI', '466', '223', NULL, NULL),
(132, 'MT', 'MALTA', 'Malta', 'MLT', '470', '356', NULL, NULL),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', '584', '692', NULL, NULL),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', '474', '596', NULL, NULL),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', '478', '222', NULL, NULL),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', '480', '230', NULL, NULL),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, '269', NULL, NULL),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', '484', '52', NULL, NULL),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', '583', '691', NULL, NULL),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', '498', '373', NULL, NULL),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', '492', '377', NULL, NULL),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', '496', '976', NULL, NULL),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', '500', '1664', NULL, NULL),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', '504', '212', NULL, NULL),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', '508', '258', NULL, NULL),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', '104', '95', NULL, NULL),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', '516', '264', NULL, NULL),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', '520', '674', NULL, NULL),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', '524', '977', NULL, NULL),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', '528', '31', NULL, NULL),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', '530', '599', NULL, NULL),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', '540', '687', NULL, NULL),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', '554', '64', NULL, NULL),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', '558', '505', NULL, NULL),
(155, 'NE', 'NIGER', 'Niger', 'NER', '562', '227', NULL, NULL),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', '566', '234', NULL, NULL),
(157, 'NU', 'NIUE', 'Niue', 'NIU', '570', '683', NULL, NULL),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', '574', '672', NULL, NULL),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', '580', '1670', NULL, NULL),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', '578', '47', NULL, NULL),
(161, 'OM', 'OMAN', 'Oman', 'OMN', '512', '968', NULL, NULL),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', '586', '92', NULL, NULL),
(163, 'PW', 'PALAU', 'Palau', 'PLW', '585', '680', NULL, NULL),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, '970', NULL, NULL),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', '591', '507', NULL, NULL),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', '598', '675', NULL, NULL),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', '600', '595', NULL, NULL),
(168, 'PE', 'PERU', 'Peru', 'PER', '604', '51', NULL, NULL),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', '608', '63', NULL, NULL),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', '612', '0', NULL, NULL),
(171, 'PL', 'POLAND', 'Poland', 'POL', '616', '48', NULL, NULL),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', '620', '351', NULL, NULL),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', '630', '1787', NULL, NULL),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', '634', '974', NULL, NULL),
(175, 'RE', 'REUNION', 'Reunion', 'REU', '638', '262', NULL, NULL),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', '642', '40', NULL, NULL),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', '643', '70', NULL, NULL),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', '646', '250', NULL, NULL),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', '654', '290', NULL, NULL),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', '659', '1869', NULL, NULL),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', '662', '1758', NULL, NULL),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', '666', '508', NULL, NULL),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', '670', '1784', NULL, NULL),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', '882', '684', NULL, NULL),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', '674', '378', NULL, NULL),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', '678', '239', NULL, NULL),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', '682', '966', NULL, NULL),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', '686', '221', NULL, NULL),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, '381', NULL, NULL),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', '690', '248', NULL, NULL),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', '694', '232', NULL, NULL),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', '702', '65', NULL, NULL),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', '703', '421', NULL, NULL),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', '705', '386', NULL, NULL),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', '90', '677', NULL, NULL),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', '706', '252', NULL, NULL),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', '710', '27', NULL, NULL),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, '0', NULL, NULL),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', '724', '34', NULL, NULL),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', '144', '94', NULL, NULL),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', '736', '249', NULL, NULL),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', '740', '597', NULL, NULL),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', '744', '47', NULL, NULL),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', '748', '268', NULL, NULL),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', '752', '46', NULL, NULL),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', '756', '41', NULL, NULL),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', '760', '963', NULL, NULL),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', '158', '886', NULL, NULL),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', '762', '992', NULL, NULL),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', '834', '255', NULL, NULL),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', '764', '66', NULL, NULL),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, '670', NULL, NULL),
(213, 'TG', 'TOGO', 'Togo', 'TGO', '768', '228', NULL, NULL),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', '772', '690', NULL, NULL),
(215, 'TO', 'TONGA', 'Tonga', 'TON', '776', '676', NULL, NULL),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', '780', '1868', NULL, NULL),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', '788', '216', NULL, NULL),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', '792', '90', NULL, NULL),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', '795', '7370', NULL, NULL),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', '796', '1649', NULL, NULL),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', '798', '688', NULL, NULL),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', '800', '256', NULL, NULL),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', '804', '380', NULL, NULL),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', '784', '971', NULL, NULL),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', '826', '44', NULL, NULL),
(226, 'US', 'UNITED STATES', 'United States', 'USA', '840', '1', NULL, NULL),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, '1', NULL, NULL),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', '858', '598', NULL, NULL),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', '860', '998', NULL, NULL),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', '548', '678', NULL, NULL),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', '862', '58', NULL, NULL),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', '704', '84', NULL, NULL),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', '92', '1284', NULL, NULL),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', '850', '1340', NULL, NULL),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', '876', '681', NULL, NULL),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', '732', '212', NULL, NULL),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', '887', '967', NULL, NULL),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', '894', '260', NULL, NULL),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', '716', '263', NULL, NULL),
(240, 'RS', 'SERBIA', 'Serbia', 'SRB', '688', '381', NULL, NULL),
(241, 'AP', 'ASIA PACIFIC REGION', 'Asia / Pacific Region', '0', '0', '0', NULL, NULL),
(242, 'ME', 'MONTENEGRO', 'Montenegro', 'MNE', '499', '382', NULL, NULL),
(243, 'AX', 'ALAND ISLANDS', 'Aland Islands', 'ALA', '248', '358', NULL, NULL),
(244, 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', 'BES', '535', '599', NULL, NULL),
(245, 'CW', 'CURACAO', 'Curacao', 'CUW', '531', '599', NULL, NULL),
(246, 'GG', 'GUERNSEY', 'Guernsey', 'GGY', '831', '44', NULL, NULL),
(247, 'IM', 'ISLE OF MAN', 'Isle of Man', 'IMN', '833', '44', NULL, NULL),
(248, 'JE', 'JERSEY', 'Jersey', 'JEY', '832', '44', NULL, NULL),
(249, 'XK', 'KOSOVO', 'Kosovo', '---', '0', '381', NULL, NULL),
(250, 'BL', 'SAINT BARTHELEMY', 'Saint Barthelemy', 'BLM', '652', '590', NULL, NULL),
(251, 'MF', 'SAINT MARTIN', 'Saint Martin', 'MAF', '663', '590', NULL, NULL),
(252, 'SX', 'SINT MAARTEN', 'Sint Maarten', 'SXM', '534', '1', NULL, NULL),
(253, 'SS', 'SOUTH SUDAN', 'South Sudan', 'SSD', '728', '211', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crypto_payments`
--

CREATE TABLE `crypto_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crypto_payments`
--

INSERT INTO `crypto_payments` (`id`, `name`, `symbol`, `wallet`, `logo`, `barcode`, `created_at`, `updated_at`) VALUES
(9, 'Bitcoin', 'BTC', 'gfhtyujhrtuhjythytty', NULL, 'https://webtrader-live.com/storage/photos/33/61d58d722e6cc.png', '2022-01-05 12:22:21', '2022-01-05 12:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `code`, `created_at`, `updated_at`) VALUES
(1, 'United State Dollar', '$', 'USD', '2021-08-23 13:22:13', '2021-08-23 13:22:13'),
(2, 'Pound', '£', 'GBP', '2021-08-23 13:22:13', '2021-08-23 13:22:13'),
(3, 'Euro', '€', 'EUR', '2021-08-23 13:22:13', '2021-08-23 13:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `currency_pairs`
--

CREATE TABLE `currency_pairs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ex_sym` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `com` decimal(8,2) NOT NULL DEFAULT 4.00,
  `sym` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` decimal(11,4) NOT NULL DEFAULT 0.0000,
  `base` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'usd',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'crypto',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leverage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `buy_spread` decimal(8,2) NOT NULL DEFAULT 0.00,
  `sell_spread` decimal(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_pairs`
--

INSERT INTO `currency_pairs` (`id`, `name`, `ex_sym`, `com`, `sym`, `rate`, `base`, `type`, `image`, `leverage`, `created_at`, `updated_at`, `disabled`, `buy_spread`, `sell_spread`) VALUES
(1, 'BTCUSD', 'BITSTAMP:BTCUSD', '4.00', 'BTC', '54154.4200', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/614360a043d36.svg', 100, '2021-08-19 18:54:52', '2021-10-07 20:23:27', 0, '0.00', '0.00'),
(2, 'ETHUSD', 'COINBASE:ETHUSD', '4.00', 'ETH', '3059.4500', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/61436147d018e.svg', 1, '2021-08-19 18:54:52', '2021-09-20 15:47:40', 0, '0.00', '0.00'),
(3, 'XRPUSD', 'BITSTAMP:XRPUSD', '4.00', 'XRP', '0.9315', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6143979b10816.svg', 1, '2021-08-19 18:54:52', '2021-09-20 15:47:59', 0, '0.00', '0.00'),
(4, 'LTCUSD', 'COINBASE:LTCUSD', '4.00', 'LTC', '160.6700', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6143984f9b449.svg', 1, '2021-08-19 18:54:52', '2021-09-20 15:48:13', 0, '0.00', '0.00'),
(5, 'XLMUSD', 'COINBASE:XLMUSD', '4.00', 'XLM', '0.2844', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149a45fa14ec.svg', 1, '2021-08-19 18:54:52', '2021-09-21 10:22:49', 0, '0.00', '0.00'),
(6, 'TESLA', 'NASDAQ:TSLA', '4.00', 'TSLA', '730.1700', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149a4be2dfd4.svg', 50, '2021-08-19 20:22:56', '2021-09-21 10:24:23', 0, '0.00', '0.00'),
(7, 'FACEBOOK', 'NASDAQ:FB', '4.00', 'FB', '364.7200', 'USD', 'stocks', 'https://online.360investhub.com/storage/photos/2/61239b7707b48.png', 50, '2021-08-23 17:02:45', '2021-09-20 13:01:29', 0, '0.00', '0.00'),
(8, 'ADAUSD', 'KRAKEN:ADAUSD', '4.00', 'ADA', '2.1570', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6143992c08b7d.svg', 1, '2021-08-23 20:43:17', '2021-09-20 15:49:07', 0, '0.00', '0.00'),
(9, 'BNBUSD', 'BINANCEUS:BNBUSD', '4.00', 'BNB', '371.6300', 'USD', 'crypto', 'https://online.360investhub.com/storage/photos/2/6123d16b177ec.png', 1, '2021-08-23 20:49:08', '2021-09-20 15:49:22', 0, '0.00', '0.00'),
(10, 'USDTTHB', 'BITKUB:USDTTHB', '4.00', 'USDT', '1.0000', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149a56ea9b76.svg', 1, '2021-08-23 20:58:29', '2021-09-21 10:27:25', 0, '0.00', '0.00'),
(12, 'DOGEUSD', 'BITTREX:DOGEUSD', '4.00', 'DOGE', '0.2111', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149a5e8079e2.svg', 1, '2021-08-23 21:04:23', '2021-09-21 10:29:22', 0, '0.00', '0.00'),
(13, 'DOTUSD', 'KRAKEN:DOTUSD', '4.00', 'DOT', '30.0100', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149a6dcb96b2.svg', 1, '2021-08-23 21:06:23', '2021-09-21 10:33:26', 0, '0.00', '0.00'),
(14, 'USDCTHB', 'BITKUB:USDCTHB', '4.00', 'USDC', '1.0000', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149a769c5ec2.svg', 1, '2021-08-23 21:11:57', '2021-09-21 10:35:46', 0, '0.00', '0.00'),
(15, 'SOLUSD', 'FTX:SOLUSD', '4.00', 'SOL', '143.1400', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/61439b2222274.svg', 1, '2021-08-23 21:15:27', '2021-09-20 15:57:57', 0, '0.00', '0.00'),
(16, 'UNIUSD', 'KRAKEN:UNIUSD', '4.00', 'UNI', '21.3400', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149a7adc89bb.svg', 1, '2021-08-23 21:19:25', '2021-09-21 10:36:55', 0, '0.00', '0.00'),
(17, 'LINKUSD', 'BITSTAMP:LINKUSD', '4.00', 'LINK', '23.9600', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149a85d42597.svg', 1, '2021-08-23 21:21:50', '2021-09-21 10:50:39', 0, '0.00', '0.00'),
(18, 'BCHUSD', 'BITSTAMP:BCHUSD', '4.00', 'BCH', '548.6400', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/61439cca2e2fa.svg', 1, '2021-08-23 21:23:56', '2021-09-20 15:59:06', 0, '0.00', '0.00'),
(19, 'BNBUSD', 'FTX:BNBUSD', '4.00', 'BUSD', '1.0000', 'USD', 'crypto', 'https://online.360investhub.com/storage/photos/2/6123dab660172.png', 1, '2021-08-23 21:28:35', '2021-09-20 15:59:18', 0, '0.00', '0.00'),
(20, 'LUNAUSD', 'BITTREX:LUNAUSD', '4.00', 'LUNA', '28.9500', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149ab842d67e.svg', 1, '2021-08-23 21:31:56', '2021-09-21 10:53:16', 0, '0.00', '0.00'),
(21, 'MATICUSD', 'BITTREX:MATICUSD', '4.00', 'MATIC', '1.1560', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149ab3e17d24.svg', 1, '2021-08-23 21:35:55', '2021-09-21 10:52:07', 0, '0.00', '0.00'),
(22, 'Internet Computer', 'FTX:ICPPERP', '4.00', 'ICP', '58.7300', 'usd', 'crypto', 'https://online.360investhub.com/storage/photos/2/6123dd3476f1f.png', 0, '2021-08-23 21:39:16', '2021-09-16 16:59:48', 0, '0.00', '0.00'),
(23, 'WBTCBTC', 'BINANCE:WBTCBTC', '4.00', 'WBTC', '43157.0100', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149af9e01a42.svg', 1, '2021-08-23 21:46:20', '2021-09-21 11:10:54', 0, '0.00', '0.00'),
(24, 'ETCUSD', 'KRAKEN:ETCUSD', '4.00', 'ETC', '49.5100', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149acd2d9a86.svg', 1, '2021-08-23 21:48:53', '2021-09-21 10:58:55', 0, '0.00', '0.00'),
(25, 'VETUSD', 'BITTREX:VETUSD', '4.00', 'VET', '0.0952', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149b0049d347.svg', 1, '2021-08-23 21:51:35', '2021-09-21 11:12:28', 0, '0.00', '0.00'),
(26, 'AVAXUSD', 'OKCOIN:AVAXUSD', '4.00', 'AVAX', '61.0300', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149ada98ba6e.svg', 1, '2021-08-23 21:53:42', '2021-09-21 11:02:50', 0, '0.00', '0.00'),
(27, 'FILUSD', 'BITTREX:FILUSD', '4.00', 'FIL', '75.2700', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149ae024b85c.svg', 1, '2021-08-23 21:56:30', '2021-09-21 11:03:55', 0, '0.00', '0.00'),
(28, 'THETAUSD', 'BINANCE:THETAUSD', '4.00', 'THETA', '5.3030', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149ae607a59c.svg', 1, '2021-08-23 22:01:54', '2021-09-21 11:05:30', 0, '0.00', '0.00'),
(29, 'TRXUSD', 'KRAKEN:TRXUSD', '4.00', 'TRX', '0.0935', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149aec06d0f5.svg', 1, '2021-08-23 22:03:58', '2021-09-21 11:07:04', 0, '0.00', '0.00'),
(30, 'DAIUSD', 'KRAKEN:DAIUSD', '4.00', 'DAI', '0.9998', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149aef9d6a74.svg', 1, '2021-08-23 22:05:26', '2021-09-21 11:08:03', 0, '0.00', '0.00'),
(31, 'XMRUSD', 'BITFINEX:XMRUSD', '4.00', 'XMR', '233.4500', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149af528ae38.svg', 1, '2021-08-23 22:07:51', '2021-09-21 11:09:34', 0, '0.00', '0.00'),
(32, 'CAKEUSDT', 'POLONIEX:CAKEUSDT', '4.00', 'CAKE', '19.7200', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149b82cae75d.svg', 1, '2021-08-23 22:14:42', '2021-09-21 11:47:17', 0, '0.00', '0.00'),
(33, 'EOSUSD', 'KRAKEN:EOSUSD', '4.00', 'EOS', '4.2760', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149b6146700b.svg', 1, '2021-08-23 22:16:54', '2021-09-21 11:38:19', 0, '0.00', '0.00'),
(34, 'autozone', 'NYSE:AZO', '4.00', 'AZO', '1585.1600', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149b64737a46.svg', 1, '2021-08-24 12:49:49', '2021-09-21 11:39:09', 0, '0.00', '0.00'),
(35, 'Accenture', 'NYSE:ACN', '4.00', 'ACN', '332.2900', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149b67d30da0.svg', 1, '2021-08-24 12:55:34', '2021-09-21 11:40:06', 0, '0.00', '0.00'),
(36, 'ADOBE SYSTEMS', 'NASDAQ:ADBE', '4.00', 'ADBE', '641.2900', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149b6bdb94cf.svg', 1, '2021-08-24 12:58:22', '2021-09-21 11:41:09', 0, '0.00', '0.00'),
(37, 'BARCLAYS', 'NYSE:BCS', '4.00', 'BCS', '9.7200', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149b6f6dae53.svg', 1, '2021-08-24 13:00:46', '2021-09-21 11:42:06', 0, '0.00', '0.00'),
(38, 'AFLAC', 'NYSE:AFL', '4.00', 'AFL', '52.0700', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149b72961894.svg', 1, '2021-08-24 13:02:39', '2021-09-21 11:42:57', 0, '0.00', '0.00'),
(39, 'ALASKA', 'NYSE:ALK', '4.00', 'ALK', '56.9600', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149b7663eac4.svg', 1, '2021-08-24 13:05:29', '2021-09-21 11:43:58', 0, '0.00', '0.00'),
(40, 'BANK OF NEWYORK', 'NYSE:BK', '4.00', 'BK', '49.5900', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149b7a0e7947.svg', 1, '2021-08-24 13:10:08', '2021-09-21 11:45:04', 0, '0.00', '0.00'),
(41, 'AMAZON', 'NASDAQ:AMZN', '4.00', 'AMZN', '3355.7300', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149b7dd009df.svg', 50, '2021-08-24 13:12:55', '2021-09-21 11:45:56', 0, '0.00', '0.00'),
(42, 'APPLE', 'NASDAQ:AAPL', '4.00', 'AAPL', '142.9400', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149b894dc7d4.svg', 50, '2021-08-24 13:15:12', '2021-09-21 11:48:59', 0, '0.00', '0.00'),
(43, 'ANALOG DEVICE', 'NASDAQ:ADI', '4.00', 'ADI', '169.4800', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149b8c2283cb.svg', 1, '2021-08-24 13:17:37', '2021-09-21 11:49:47', 0, '0.00', '0.00'),
(44, 'JOHNSON & JOHNSON', 'NYSE:JNJ', '4.00', 'JNJ', '163.8100', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149b8ef7241a.svg', 1, '2021-08-24 13:19:21', '2021-09-21 11:50:32', 0, '0.00', '0.00'),
(45, 'JP MORGAN CHASE & CO', 'NYSE:JPM', '4.00', 'JPM', '152.9600', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149b9226ec01.svg', 1, '2021-08-24 13:22:04', '2021-09-21 11:51:23', 0, '0.00', '0.00'),
(46, 'ADVANCE AUTO PARTS', 'NYSE:AAP', '4.00', 'AAP', '203.7100', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149b96718db4.svg', 1, '2021-08-24 13:25:41', '2021-09-21 11:52:29', 0, '0.00', '0.00'),
(47, 'WELLS FARGO & COMPANY', 'NYSE:WFC', '4.00', 'WFC', '45.8100', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149b9929c528.svg', 1, '2021-08-24 13:28:15', '2021-09-21 11:53:13', 0, '0.00', '0.00'),
(48, 'MERCK  & CO', 'NYSE:MRK', '4.00', 'MRK', '71.9300', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149b9ce2fe32.svg', 1, '2021-08-24 13:33:12', '2021-09-21 11:54:15', 0, '0.00', '0.00'),
(50, 'PROCTER & GAMBLE', 'NYSE:PG', '4.00', 'PG', '142.8900', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149bb873a24e.svg', 1, '2021-08-24 13:43:32', '2021-09-21 12:01:34', 0, '0.00', '0.00'),
(51, 'ACCENTURE PLC', 'NYSE:ACN', '4.00', 'ACN', '332.2900', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149bbdf9f8a2.svg', 1, '2021-08-24 14:02:21', '2021-09-21 12:03:05', 0, '0.00', '0.00'),
(52, 'AAVEUSD', 'FTX:AAVEUSD', '4.00', 'AAVE', '304.1800', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149bc2b2e477.svg', 1, '2021-08-24 14:11:11', '2021-09-21 12:04:18', 0, '0.00', '0.00'),
(53, 'BROADCOM INC.', 'NASDAQ:AVGO', '4.00', 'AVGO', '494.8200', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149c21fe897e.svg', 1, '2021-08-24 14:25:00', '2021-09-21 12:29:45', 0, '0.00', '0.00'),
(54, 'CHEVRON CORPORATION', 'NYSE:CVX', '4.00', 'CVX', '94.7800', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149c26c86258.svg', 1, '2021-08-24 14:27:22', '2021-09-21 12:31:00', 0, '0.00', '0.00'),
(55, 'FTTUSD', 'BINANCE:FTTUSD', '4.00', 'FTT', '57.8600', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149c2cfc0b2c.svg', 1, '2021-08-24 14:30:06', '2021-09-21 12:32:39', 0, '0.00', '0.00'),
(56, 'McDonald\'s COPORATION', 'NYSE:MCD', '4.00', 'MCD', '239.0900', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149c300a04e5.svg', 1, '2021-08-24 14:30:50', '2021-09-21 12:33:29', 0, '0.00', '0.00'),
(57, 'GRTUSD', 'BITTREX:GRTUSD', '4.00', 'GRT', '0.7271', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149c360dd520.svg', 1, '2021-08-24 14:32:06', '2021-09-21 12:35:03', 0, '0.00', '0.00'),
(58, 'ATOMUSD', 'KRAKEN:ATOMUSD', '4.00', 'ATOM', '36.3800', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149c3a670c34.svg', 1, '2021-08-24 14:33:46', '2021-09-21 12:36:16', 0, '0.00', '0.00'),
(59, 'AXSUSD', 'FTX:AXSUSD', '4.00', 'AXS', '56.3100', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149c3f034cbe.svg', 1, '2021-08-24 14:35:23', '2021-09-21 12:37:28', 0, '0.00', '0.00'),
(60, 'NEXTERA ENERGY', 'NYSE:NEE', '4.00', 'NEE', '81.6900', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149c42510851.svg', 1, '2021-08-24 14:35:42', '2021-09-21 12:38:24', 0, '0.00', '0.00'),
(61, 'THERMO FISHER SCIENTIFIC', 'NYSE:TMO', '4.00', 'TMO', '590.2000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149c4632047d.svg', 1, '2021-08-24 14:37:42', '2021-09-21 12:39:24', 0, '0.00', '0.00'),
(62, 'KLAYUSD', 'BITTREX:KLAYUSD', '4.00', 'KLAY', '1.1010', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149c4e429bef.svg', 1, '2021-08-24 14:38:57', '2021-09-21 12:41:34', 0, '0.00', '0.00'),
(63, 'NEOUSD', 'BITFINEX:NEOUSD', '4.00', 'NEO', '41.9200', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149c64078277.svg', 1, '2021-08-24 14:40:45', '2021-09-21 12:47:19', 0, '0.00', '0.00'),
(64, 'QUALCOMM INCORPORATED', 'NASDAQ:QCOM', '4.00', 'QCOM', '132.7600', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149c6a262615.svg', 1, '2021-08-24 14:41:51', '2021-09-21 12:48:57', 0, '0.00', '0.00'),
(65, 'CROUSD', 'FTX:CROUSD', '4.00', 'CRO', '0.1658', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149c7830bf27.svg', 1, '2021-08-24 14:48:15', '2021-09-21 12:52:44', 0, '0.00', '0.00'),
(66, 'ALGOUSD', 'KRAKEN:ALGOUSD', '4.00', 'ALGO', '1.8220', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149c7d685c4e.svg', 1, '2021-08-24 14:49:38', '2021-09-21 12:54:05', 0, '0.00', '0.00'),
(67, 'BTCBUSD', 'BINANCE:BTCBUSD', '4.00', 'BTCB', '36799.5000', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149c8bc840a6.svg', 1, '2021-08-24 15:14:06', '2021-09-21 12:57:56', 0, '0.00', '0.00'),
(68, 'MKRUSD', 'FTX:MKRUSD', '4.00', 'MKR', '2511.1500', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149c909e5655.svg', 1, '2021-08-24 15:25:06', '2021-09-21 12:59:13', 0, '0.00', '0.00'),
(69, 'BANK OF AMERICA', 'NYSE:BAC', '4.00', 'BAC', '39.1100', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149c93f66674.svg', 1, '2021-08-24 15:32:30', '2021-09-21 13:00:09', 0, '0.00', '0.00'),
(70, 'XTZUSD', 'BITTREX:XTZUSD', '4.00', 'XTZ', '5.4460', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149c98e1c866.svg', 1, '2021-08-24 15:34:12', '2021-09-21 13:01:26', 0, '0.00', '0.00'),
(71, 'COMCAST CORPORATION', 'NASDAQ:CMCSA', '4.00', 'CMCSA', '56.4900', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149c9de2034d.svg', 1, '2021-08-24 15:35:25', '2021-09-21 13:02:51', 0, '0.00', '0.00'),
(72, 'MASTERCARD INCORPORATED', 'NYSE:MA', '4.00', 'MA', '339.6900', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149ca5878e6b.svg', 1, '2021-08-24 15:38:12', '2021-09-21 13:04:49', 0, '0.00', '0.00'),
(73, 'PAYPAL HOLDINGS', 'NASDAQ:PYPL', '4.00', 'PYPL', '269.9100', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149cb327ed06.svg', 1, '2021-08-24 15:41:21', '2021-09-21 13:08:27', 0, '0.00', '0.00'),
(74, 'VERIZON COMMUNICATION', 'NYSE:VZ', '4.00', 'VZ', '54.2600', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149ce04ed904.svg', 1, '2021-08-24 15:44:26', '2021-09-21 13:20:34', 0, '0.00', '0.00'),
(75, 'IOTAUSD', 'BINANCEUS:IOTAUSD', '4.00', 'MIOTA', '1.3450', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149cbbe7d0d5.svg', 1, '2021-08-24 15:59:27', '2021-09-21 13:10:47', 0, '0.00', '0.00'),
(76, 'SHIBUSD', 'FTX:SHIBUSD', '4.00', 'SHIB', '0.0000', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149cbf2798f7.svg', 1, '2021-08-24 16:01:23', '2021-09-21 13:11:46', 0, '0.00', '0.00'),
(77, 'BSVUSD', 'BITTREX:BSVUSD', '4.00', 'BSV', '147.7000', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149cc445cdd1.svg', 1, '2021-08-24 16:06:05', '2021-09-21 13:13:01', 0, '0.00', '0.00'),
(78, 'BTTUSD', 'BITTREX:BTTUSD', '4.00', 'BTT', '0.0034', 'USD', 'crypto', 'https://online.360investhub.com/storage/photos/2/6124e14661f4b.png', 1, '2021-08-24 16:09:05', '2021-09-20 19:14:42', 0, '0.00', '0.00'),
(79, 'LEOUSD', 'FTX:LEOUSD', '4.00', 'LEO', '2.9710', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149cc8f42bd1.svg', 1, '2021-08-24 16:12:09', '2021-09-21 13:14:17', 0, '0.00', '0.00'),
(80, 'DASHUSD', 'KRAKEN:DASHUSD', '4.00', 'DASH', '175.3900', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149cced91a1b.svg', 1, '2021-08-24 16:15:09', '2021-09-21 13:15:49', 0, '0.00', '0.00'),
(81, 'KSMUSD', 'BITTREX:KSMUSD', '4.00', 'KSM', '343.6700', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149cd58387de.svg', 1, '2021-08-24 16:17:23', '2021-09-21 13:17:37', 0, '0.00', '0.00'),
(82, 'APPLIED MATERIAL', 'NASDAQ:AMAT', '4.00', 'AMAT', '135.5300', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149cda069a4e.svg', 1, '2021-08-24 16:20:55', '2021-09-21 13:18:50', 0, '0.00', '0.00'),
(83, 'BOEING COMPANY', 'NYSE:BA', '4.00', 'BA', '209.5000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149cf0adde48.svg', 1, '2021-08-24 16:22:49', '2021-09-21 13:24:52', 0, '0.00', '0.00'),
(84, 'BRISTOL MYERS SQUIBB', 'NYSE:BMY', '4.00', 'BMY', '60.5000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149ceaf2f203.svg', 1, '2021-08-24 16:25:34', '2021-09-21 13:23:18', 0, '0.00', '0.00'),
(85, 'WAVESUSD', 'BINANCE:WAVESUSD', '4.00', 'WAVES', '24.3500', 'USD', 'crypto', 'https://excelfinance.one/storage/photos/2/6149cf4c7140b.svg', 1, '2021-08-24 16:26:46', '2021-09-21 13:25:56', 0, '0.00', '0.00'),
(86, 'MODERNA,INC', 'NASDAQ:MRNA', '4.00', 'MRNA', '423.3300', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149cf89bd9c2.svg', 1, '2021-08-24 16:28:15', '2021-09-21 13:27:00', 0, '0.00', '0.00'),
(87, 'NIKE', 'NYSE:NKE', '4.00', 'NKE', '154.2500', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6149cff4a2fb8.svg', 1, '2021-08-24 16:29:45', '2021-09-21 13:28:44', 0, '0.00', '0.00'),
(88, 'TEXAS INSTRUMENT INCORPORATED', 'NASDAQ:TXN', '4.00', 'TXN', '195.7500', 'usd', 'stocks', 'https://online.360investhub.com/storage/photos/2/6124e6ec874e8.png', 0, '2021-08-24 16:33:11', '2021-09-16 17:00:01', 0, '0.00', '0.00'),
(89, 'CADCHF', 'FX:CADCHF', '0.00', 'CAD', '0.7243', 'CHF', 'forex', 'https://excelfinance.one/storage/photos/2/61435f7e6935b.png', 20, '2021-08-30 16:27:35', '2021-09-20 14:25:49', 0, '0.00', '0.00'),
(90, 'CADJPY', 'FX:CADJPY', '0.00', 'CAD', '85.3960', 'JPY', 'forex', 'https://excelfinance.one/storage/photos/2/61485a11c47ea.svg', 20, '2021-08-30 16:29:37', '2021-09-20 14:26:03', 0, '0.00', '0.00'),
(91, 'CHFJPY', 'FX_IDC:CHFJPY', '0.00', 'CHF', '117.9080', 'JPY', 'forex', 'https://excelfinance.one/storage/photos/2/61485a9b81615.svg', 20, '2021-08-30 16:31:04', '2021-09-20 14:26:19', 0, '0.00', '0.00'),
(92, 'EURCAD', 'FX_IDC:EURCAD', '0.00', 'EUR', '1.5039', 'CAD', 'forex', 'https://excelfinance.one/storage/photos/2/61485bf5ce5a1.svg', 20, '2021-08-30 16:33:15', '2021-09-20 14:26:32', 0, '0.00', '0.00'),
(93, 'EURCHF', 'FX_IDC:EURCHF', '0.00', 'EUR', '1.0891', 'CHF', 'forex', 'https://excelfinance.one/storage/photos/2/61485c37da580.svg', 20, '2021-08-30 16:34:40', '2021-09-20 14:26:48', 0, '0.00', '0.00'),
(94, 'EURGBP', 'FX:EURGBP', '0.00', 'EUR', '0.8564', 'GBP', 'forex', 'https://excelfinance.one/storage/photos/2/61485c9cf39bf.svg', 20, '2021-08-30 16:35:58', '2021-09-20 14:27:03', 0, '0.00', '0.00'),
(95, 'EURJPY', 'FOREXCOM:EURJPY', '0.00', 'EUR', '128.4030', 'JPY', 'forex', 'https://excelfinance.one/storage/photos/2/61485cd0679eb.svg', 20, '2021-08-30 16:37:49', '2021-09-20 14:27:23', 0, '0.00', '0.00'),
(96, 'EURUSD', 'GLOBALPRIME:EURUSD', '0.00', 'EUR', '1.1714', 'USD', 'forex', 'https://excelfinance.one/storage/photos/2/61485d186a857.svg', 20, '2021-08-30 16:41:08', '2021-09-20 14:27:40', 0, '0.00', '0.00'),
(97, 'GBPCAD', 'FX_IDC:GBPCAD', '0.00', 'GBP', '1.7558', 'CAD', 'forex', 'https://excelfinance.one/storage/photos/2/61485d80e4ddc.svg', 20, '2021-08-30 16:42:47', '2021-09-20 14:27:53', 0, '0.00', '0.00'),
(98, 'GBPCHF', 'FX_IDC:GBPCHF', '0.00', 'GBP', '1.2718', 'CHF', 'forex', 'https://excelfinance.one/storage/photos/2/61485df3ab33c.svg', 20, '2021-08-30 16:44:10', '2021-09-20 14:28:08', 0, '0.00', '0.00'),
(99, 'GBPJPY', 'FOREXCOM:GBPJPY', '0.00', 'GBP', '149.9980', 'JPY', 'forex', 'https://excelfinance.one/storage/photos/2/61485f03f04a7.svg', 20, '2021-08-30 16:45:30', '2021-09-20 12:05:32', 0, '0.00', '0.00'),
(100, 'GBPUSD', 'GLOBALPRIME:GBPUSD', '0.00', 'GBP', '1.3690', 'USD', 'forex', 'https://excelfinance.one/storage/photos/2/61485f8c57178.svg', 20, '2021-08-30 16:46:54', '2021-09-20 12:06:10', 0, '0.00', '0.00'),
(101, 'USDCAD', 'FOREXCOM:USDCAD', '0.00', 'USD', '1.2828', 'CAD', 'forex', 'https://excelfinance.one/storage/photos/2/6148652f53abc.svg', 20, '2021-08-30 16:48:16', '2021-09-20 11:40:56', 0, '0.00', '0.00'),
(102, 'USDCHF', 'FX_IDC:USDCHF', '0.00', 'USD', '0.9305', 'CHF', 'forex', 'https://excelfinance.one/storage/photos/2/6148659d7d1af.svg', 20, '2021-08-30 16:49:30', '2021-09-20 11:42:47', 0, '0.00', '0.00'),
(103, 'USDJPY', 'FX_IDC:USDJPY', '0.00', 'USD', '109.5280', 'JPY', 'forex', 'https://excelfinance.one/storage/photos/2/614866064c119.svg', 20, '2021-08-30 16:51:39', '2021-09-20 11:44:29', 0, '0.00', '0.00'),
(104, 'AUDCAD', 'FX_IDC:AUDCAD', '0.00', 'AUD', '0.9286', 'CAD', 'forex', 'https://excelfinance.one/storage/photos/2/6148667948b8c.svg', 20, '2021-08-30 16:53:06', '2021-09-20 11:46:25', 0, '0.00', '0.00'),
(105, 'AUDCHF', 'FX_IDC:AUDCHF', '0.00', 'AUD', '0.6738', 'CHF', 'forex', 'https://excelfinance.one/storage/photos/2/614866ca7f600.svg', 20, '2021-08-30 16:54:32', '2021-09-20 11:47:56', 0, '0.00', '0.00'),
(106, 'AUDJPY', 'FX_IDC:AUDJPY', '0.00', 'AUD', '79.3110', 'JPY', 'forex', 'https://excelfinance.one/storage/photos/2/6148676c4fdbf.svg', 20, '2021-08-30 16:58:01', '2021-09-20 11:50:26', 0, '0.00', '0.00'),
(107, 'AUDNZD', 'FX_IDC:AUDNZD', '0.00', 'AUD', '1.0302', 'NZD', 'forex', 'https://excelfinance.one/storage/photos/2/61486a56ae5ed.svg', 20, '2021-08-30 16:59:27', '2021-09-20 12:02:55', 0, '0.00', '0.00'),
(108, 'AUDUSD', 'FX:AUDUSD', '0.00', 'AUD', '0.7237', 'USD', 'forex', 'https://excelfinance.one/storage/photos/2/61486abc1b487.svg', 20, '2021-08-30 17:00:47', '2021-09-20 12:04:36', 0, '0.00', '0.00'),
(109, 'EURAUD', 'FX_IDC:EURAUD', '0.00', 'EUR', '1.6156', 'AUD', 'forex', 'https://excelfinance.one/storage/photos/2/61488b9dec337.svg', 20, '2021-08-30 17:02:28', '2021-09-20 14:24:53', 0, '0.00', '0.00'),
(114, 'Palladium', 'OANDA:XPDUSD', '4.00', 'XPD', '2052.1790', 'USD', 'commodities', 'https://excelfinance.one/storage/photos/2/61448b083c954.svg', 1, '2021-08-30 19:46:40', '2021-09-17 13:33:21', 0, '0.00', '0.00'),
(115, 'Platinum', 'OANDA:XPTUSD', '4.00', 'XPT', '959.2130', 'USD', 'commodities', 'https://excelfinance.one/storage/photos/2/6141cf4b9166b.svg', 400, '2021-08-30 19:48:11', '2021-09-17 13:35:08', 0, '0.00', '0.00'),
(118, 'Soybean', 'OANDA:SOYBNUSD', '4.00', 'SOYBN', '13.0120', 'USD', 'commodities', 'https://excelfinance.one/storage/photos/2/61447ae66ff1b.svg', 400, '2021-08-30 20:11:44', '2021-09-22 10:19:46', 0, '0.00', '0.00'),
(119, 'Sugar', 'OANDA:SUGARUSD', '4.00', 'SUGAR', '0.1927', 'USD', 'commodities', 'https://excelfinance.one/storage/photos/2/61447340e9818.svg', 400, '2021-08-30 20:14:10', '2021-09-17 11:51:52', 0, '0.00', '0.00'),
(120, 'Wheat', 'GLOBALPRIME:WHEAT', '4.00', 'WHEAT', '7.0340', 'USD', 'commodities', 'https://excelfinance.one/storage/photos/2/6141cf4b9166b.svg', 400, '2021-08-30 20:16:09', '2021-09-17 12:03:49', 0, '0.00', '0.00'),
(134, 'EURAUD', 'FX_IDC:EURHUF', '4.00', 'EUR', '353.6750', 'HUF', 'forex', 'https://excelfinance.one/storage/photos/2/6141d391448c1.svg', 1, '2021-08-30 21:21:28', '2021-09-20 12:44:06', 0, '0.00', '0.00'),
(135, 'EURNOK', 'FX_IDC:EURNOK', '4.00', 'EUR', '10.2490', 'NOK', 'forex', 'https://excelfinance.one/storage/photos/2/614876b167c68.svg', 1, '2021-08-30 21:22:41', '2021-09-20 12:55:37', 0, '0.00', '0.00'),
(136, 'EURNZD', 'FX_IDC:EURNZD', '4.00', 'EUR', '1.6700', 'NZD', 'forex', 'https://excelfinance.one/storage/photos/2/614877a7b4185.svg', 1, '2021-08-30 21:23:45', '2021-09-20 12:59:44', 0, '0.00', '0.00'),
(137, 'EURPLN', 'FX_IDC:EURPLN', '4.00', 'EUR', '4.5982', 'PLN', 'forex', 'https://excelfinance.one/storage/photos/2/6148785f0e698.svg', 1, '2021-08-30 21:25:07', '2021-09-20 13:02:46', 0, '0.00', '0.00'),
(138, 'EURSEK', 'FX_IDC:EURSEK', '4.00', 'EUR', '10.2209', 'SEK', 'forex', 'https://excelfinance.one/storage/photos/2/614878a6caa1c.svg', 1, '2021-08-30 21:26:30', '2021-09-20 13:04:03', 0, '0.00', '0.00'),
(139, 'EURTRY', 'FX_IDC:EURTRY', '4.00', 'EUR', '10.1602', 'TRY', 'forex', 'https://excelfinance.one/storage/photos/2/614878dbc80d2.svg', 1, '2021-08-30 21:27:35', '2021-09-20 13:04:53', 0, '0.00', '0.00'),
(140, 'GBPAUD', 'FX_IDC:GBPAUD', '4.00', 'GBP', '1.8908', 'AUD', 'forex', 'https://excelfinance.one/storage/photos/2/61487a0fec441.svg', 1, '2021-08-30 21:28:49', '2021-09-20 13:10:54', 0, '0.00', '0.00'),
(141, 'GBPNZD', 'FX_IDC:GBPNZD', '4.00', 'GBP', '1.9481', 'NZD', 'forex', 'https://excelfinance.one/storage/photos/2/61487a0fec441.svg', 1, '2021-08-30 21:30:19', '2021-09-20 13:14:23', 0, '0.00', '0.00'),
(142, 'NZDCAD', 'FX:NZDCAD', '4.00', 'NZD', '0.9020', 'CAD', 'forex', 'https://excelfinance.one/storage/photos/2/61487c2e05729.svg', 1, '2021-08-30 21:32:11', '2021-09-20 13:19:04', 0, '0.00', '0.00'),
(143, 'NZDCHF', 'FX:NZDCHF', '4.00', 'NZD', '0.6518', 'CHF', 'forex', 'https://excelfinance.one/storage/photos/2/6148853c4b58c.svg', 1, '2021-08-30 21:33:23', '2021-09-20 13:57:46', 0, '0.00', '0.00'),
(144, 'New Zealand Dollar vs. Japanese Yen', 'FX_IDC:NZDJPY', '4.00', 'NZD', '77.5560', 'JPY', 'forex', 'https://excelfinance.one/storage/photos/2/6141d96c1f4da.svg', 1, '2021-08-30 21:34:35', '2021-09-16 17:00:15', 0, '0.00', '0.00'),
(145, 'NZDUSD', 'FX:NZDUSD', '4.00', 'NZD', '0.7022', 'USD', 'forex', 'https://excelfinance.one/storage/photos/2/614885a9abd47.svg', 1, '2021-08-30 21:36:07', '2021-09-20 13:59:32', 0, '0.00', '0.00'),
(146, 'SGDJPY', 'FX_IDC:SGDJPY', '4.00', 'SGD', '81.0140', 'JPY', 'forex', 'https://excelfinance.one/storage/photos/2/6141d9dae2fc4.svg', 1, '2021-08-30 21:37:10', '2021-09-20 14:01:30', 0, '0.00', '0.00'),
(147, 'USDCNH', 'FX_IDC:USDCNH', '4.00', 'USD', '6.4813', 'CNH', 'forex', 'https://excelfinance.one/storage/photos/2/6141da1655390.svg', 1, '2021-08-30 21:40:02', '2021-09-20 14:02:15', 0, '0.00', '0.00'),
(148, 'USDDKK', 'FX_IDC:USDDKK', '4.00', 'USD', '6.3481', 'DKK', 'forex', 'https://excelfinance.one/storage/photos/2/61488683cee94.svg', 1, '2021-08-30 21:41:11', '2021-09-20 14:03:08', 0, '0.00', '0.00'),
(149, 'USDHKD', 'FX_IDC:USDHKD', '4.00', 'USD', '7.7868', 'HKD', 'forex', 'https://excelfinance.one/storage/photos/2/614886c8bc383.svg', 1, '2021-08-30 21:42:13', '2021-09-20 14:04:15', 0, '0.00', '0.00'),
(150, 'USDHUF', 'FX_IDC:USDHUF', '4.00', 'USD', '302.1250', 'HUF', 'forex', 'https://excelfinance.one/storage/photos/2/6141daf7c6231.svg', 1, '2021-08-30 21:43:17', '2021-09-20 14:29:50', 0, '0.00', '0.00'),
(151, 'USDMXN', 'FX_IDC:USDMXN', '4.00', 'USD', '20.1793', 'MXN', 'forex', 'https://excelfinance.one/storage/photos/2/6148872dd8706.svg', 1, '2021-08-30 21:44:33', '2021-09-20 14:05:56', 0, '0.00', '0.00'),
(152, 'USDNOK', 'FX_IDC:USDNOK', '4.00', 'USD', '8.7330', 'NOK', 'forex', 'https://excelfinance.one/storage/photos/2/6148878ba231a.svg', 1, '2021-08-30 21:45:50', '2021-09-20 14:07:30', 0, '0.00', '0.00'),
(153, 'USDPLN', 'FX_IDC:USDPLN', '4.00', 'USD', '3.9244', 'PLN', 'forex', 'https://excelfinance.one/storage/photos/2/6148898f1a811.svg', 1, '2021-08-30 21:46:50', '2021-09-20 14:16:05', 0, '0.00', '0.00'),
(154, 'USDSEK', 'FX_IDC:USDSEK', '4.00', 'USD', '8.7119', 'SEK', 'forex', 'https://excelfinance.one/storage/photos/2/614889d7abd3b.svg', 1, '2021-08-30 21:48:07', '2021-09-20 14:17:19', 0, '0.00', '0.00'),
(155, 'USDSGD', 'FX_IDC:USDSGD', '4.00', 'USD', '1.3513', 'SGD', 'forex', 'https://excelfinance.one/storage/photos/2/61488a1cece68.svg', 1, '2021-08-30 21:49:58', '2021-09-20 14:18:27', 0, '0.00', '0.00'),
(156, 'USDTRY', 'FX_IDC:USDTRY', '4.00', 'USD', '8.6631', 'TRY', 'forex', 'https://excelfinance.one/storage/photos/2/61488a8536070.svg', 1, '2021-08-30 21:51:04', '2021-09-20 14:20:15', 0, '0.00', '0.00'),
(157, 'USDZAR', 'FX_IDC:USDZAR', '4.00', 'USD', '14.7664', 'ZAR', 'forex', 'https://excelfinance.one/storage/photos/2/61488abed7f9d.svg', 1, '2021-08-30 21:52:34', '2021-09-20 14:21:10', 0, '0.00', '0.00'),
(158, 'ZARJPY', 'FX_IDC:ZARJPY', '4.00', 'ZAR', '7.4220', 'JPY', 'forex', 'https://excelfinance.one/storage/photos/2/6141dbc00ac9c.svg', 1, '2021-08-30 21:53:39', '2021-09-20 14:22:26', 0, '0.00', '0.00'),
(160, 'ADIDAS', 'OTC:ADDYY', '4.00', 'ADDYY', '165.9650', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141dd24b010b.svg', 1, '2021-08-31 10:41:44', '2021-09-20 14:28:36', 0, '0.00', '0.00'),
(161, 'American International Group', 'NYSE:AIG', '4.00', 'AIG', '54.5100', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141dd6908006.svg', 1, '2021-08-31 10:44:38', '2021-09-16 17:00:18', 0, '0.00', '0.00'),
(162, 'Air France - Klm', 'AIR FRANCE - OTC:AFRAF', '4.00', 'AFRAF', '0.0000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141dddd044e1.svg', 1, '2021-08-31 10:51:15', '2021-09-16 17:00:18', 0, '0.00', '0.00'),
(163, 'ALLIANZ', 'SIX:ALV.EUR', '4.00', 'ALV.EUR', '0.0000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141de11db429.svg', 1, '2021-08-31 10:55:50', '2021-09-20 14:31:59', 0, '0.00', '0.00'),
(165, 'ALIBABA', 'NYSE:BABA', '4.00', 'BABA', '160.0500', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141de3d08c6a.svg', 1, '2021-08-31 11:01:42', '2021-09-20 13:26:19', 0, '0.00', '0.00'),
(167, 'BBVA', 'NYSE:BBVA', '4.00', 'BBVA', '6.7250', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141deabd106a.svg', 1, '2021-08-31 11:06:05', '2021-09-16 17:00:18', 0, '0.00', '0.00'),
(168, 'Bayerische Motoren Werke', 'OTC:BMWYY', '4.00', 'BMWYY', '32.2450', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141dedcca295.svg', 1, '2021-08-31 11:08:31', '2021-09-16 17:00:19', 0, '0.00', '0.00'),
(169, 'BNP PARIBAS', 'OTC:BNPQF', '4.00', 'BNPQF', '0.0000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141df2572a39.svg', 1, '2021-08-31 11:10:21', '2021-09-20 13:28:24', 0, '0.00', '0.00'),
(171, 'CITIGROUP', 'NYSE:C', '4.00', 'C', '69.9600', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141e05cd4c6f.svg', 1, '2021-08-31 11:11:31', '2021-09-20 13:29:47', 0, '0.00', '0.00'),
(172, 'Commerzbank AG', 'CAPITALCOM:CBK', '4.00', 'CBK', '0.0000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141e2e0c3a2c.svg', 1, '2021-08-31 11:13:48', '2021-09-22 10:03:41', 0, '0.00', '0.00'),
(173, 'CISCO', 'NASDAQ:CSCO', '4.00', 'CSCO', '56.8500', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141e30d78ab6.svg', 1, '2021-08-31 11:14:48', '2021-09-20 13:31:02', 0, '0.00', '0.00'),
(174, 'DAIMLER', 'XETR:DAI', '4.00', 'DAI', '0.0000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141e340c7356.svg', 1, '2021-08-31 11:17:14', '2021-09-20 14:34:06', 0, '0.00', '0.00'),
(175, 'Danone', 'OTC:DANOY', '4.00', 'DANOY', '0.0000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141e45a44fe3.svg', 1, '2021-08-31 11:18:37', '2021-09-16 17:00:19', 0, '0.00', '0.00'),
(176, 'DEUTCHE BANK', 'XETR:DBK', '4.00', 'DBK', '0.0000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141e54c1df1f.svg', 1, '2021-08-31 11:20:43', '2021-09-20 13:33:00', 0, '0.00', '0.00'),
(177, 'EBAY', 'NASDAQ:EBAY', '4.00', 'EBAY', '74.1100', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141ee386ff25.svg', 1, '2021-08-31 11:21:38', '2021-09-20 13:35:27', 0, '0.00', '0.00'),
(178, 'Ford Motor', 'NYSE:F', '4.00', 'F', '13.3792', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141f35e337c8.svg', 1, '2021-08-31 11:23:08', '2021-09-16 17:00:19', 0, '0.00', '0.00'),
(179, 'GM', 'NYSE:GM', '4.00', 'GM', '51.3300', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141f38be5b39.svg', 1, '2021-08-31 11:24:25', '2021-09-20 13:37:42', 0, '0.00', '0.00'),
(180, 'Alphabet Inc Class C', 'NASDAQ:GOOG', '4.00', 'GOOG', '2879.7500', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141f40c0f2eb.svg', 50, '2021-08-31 11:25:52', '2021-09-16 17:00:20', 0, '0.00', '0.00'),
(181, 'GOLDMAN SACHS', 'NYSE:GS', '4.00', 'GS', '379.9360', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6141f7c93b631.svg', 1, '2021-08-31 11:27:04', '2021-09-20 14:41:35', 0, '0.00', '0.00'),
(183, 'IBM', 'NYSE:IBM', '4.00', 'IBM', '136.3225', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/61431cfbb6415.svg', 1, '2021-08-31 11:31:29', '2021-09-16 17:00:20', 0, '0.00', '0.00'),
(184, 'INTEL', 'NASDAQ:INTC', '4.00', 'INTC', '54.2600', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/61431d50d9110.svg', 1, '2021-08-31 11:32:29', '2021-09-20 13:39:38', 0, '0.00', '0.00'),
(185, 'JNJ', 'NYSE:JNJ', '4.00', 'JNJ', '164.5300', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/61431d8ee5a43.svg', 1, '2021-08-31 11:34:13', '2021-09-20 14:43:25', 0, '0.00', '0.00'),
(186, 'COCA-COLA', 'COCA-NYSE:KO', '4.00', 'KO', '54.4400', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/61488193af7e8.svg', 1, '2021-08-31 11:36:21', '2021-09-20 13:42:30', 0, '0.00', '0.00'),
(187, 'DT Lufthansa', 'SIX:LHA', '4.00', 'LHA', '0.0000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/61439f783d730.svg', 1, '2021-08-31 11:40:04', '2021-09-16 20:49:18', 0, '0.00', '0.00'),
(188, 'LVMH', 'OTC:LVMHF', '4.00', 'LVMHF', '739.0000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a01adb357.svg', 1, '2021-08-31 11:41:46', '2021-09-20 13:55:02', 0, '0.00', '0.00'),
(189, 'MCARD', 'NYSE:MA', '4.00', 'MA', '343.0400', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a0761fb5c.svg', 1, '2021-08-31 11:42:56', '2021-09-20 12:37:51', 0, '0.00', '0.00'),
(191, 'McDonalds', 'NYSE:MCD', '4.00', 'MCD', '243.2500', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a10eb3a3f.svg', 1, '2021-08-31 11:49:51', '2021-09-16 20:55:08', 0, '0.00', '0.00'),
(192, 'MICROSOFT', 'NASDAQ:MSFT', '4.00', 'MSFT', '299.8700', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a15ace856.svg', 1, '2021-08-31 11:51:20', '2021-09-20 13:53:07', 0, '0.00', '0.00'),
(193, 'NETFLIX', 'NASDAQ:NFLX', '4.00', 'NFLX', '589.3500', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a1a60098e.svg', 1, '2021-08-31 11:52:18', '2021-09-20 13:48:54', 0, '0.00', '0.00'),
(194, 'ORACLE', 'NYSE:ORCL', '4.00', 'ORCL', '86.3900', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a2085869f.svg', 1, '2021-08-31 11:54:27', '2021-09-20 13:49:36', 0, '0.00', '0.00'),
(195, 'PFIZER', 'NYSE:PFE', '4.00', 'PFE', '43.8900', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a2fe44d24.svg', 1, '2021-08-31 11:57:10', '2021-09-20 13:50:28', 0, '0.00', '0.00'),
(196, 'FERRARI', 'NYSE:RACE', '4.00', 'RACE', '216.3900', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a33eb8942.svg', 1, '2021-08-31 11:58:57', '2021-09-20 13:51:20', 0, '0.00', '0.00'),
(197, 'Banco Santander', 'NYSE:SAN', '4.00', 'SAN', '3.7000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a37e84ba0.svg', 1, '2021-08-31 12:00:02', '2021-09-16 21:05:27', 0, '0.00', '0.00'),
(198, 'SIEMENS', 'OTC:SIEGY', '4.00', 'SIEGY', '87.6600', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a3bcc59fa.svg', 1, '2021-08-31 12:02:46', '2021-09-20 13:52:33', 0, '0.00', '0.00'),
(199, 'Societe Generale', 'OTC:SCGLY', '4.00', 'SCGLY', '0.0000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a5aa974ca.svg', 1, '2021-08-31 12:04:41', '2021-09-16 21:14:42', 0, '0.00', '0.00'),
(200, 'AT&T', 'NYSE:T', '4.00', 'T', '27.5300', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a5f2b48e1.svg', 1, '2021-08-31 12:06:23', '2021-09-20 13:58:01', 0, '0.00', '0.00'),
(201, 'TEVA', 'NYSE:TEVA', '4.00', 'TEVA', '8.8700', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a63e323bb.svg', 1, '2021-08-31 12:07:36', '2021-09-20 14:50:25', 0, '0.00', '0.00'),
(203, 'TWITTER', 'NYSE:TWTR', '4.00', 'TWTR', '62.4700', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a678d34bc.svg', 1, '2021-08-31 12:14:57', '2021-09-20 13:59:14', 0, '0.00', '0.00'),
(204, 'VISA', 'NYSE:V', '4.00', 'V', '221.7500', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a9a22fa86.svg', 1, '2021-08-31 12:16:43', '2021-09-20 13:59:44', 0, '0.00', '0.00'),
(205, 'VOLKSWAGEN', 'OTC:VWAGY', '4.00', 'VWAGY', '30.4000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6143a9ed9652c.svg', 1, '2021-08-31 12:18:52', '2021-09-20 14:51:57', 0, '0.00', '0.00'),
(206, 'EXXM', 'NYSE:XOM', '4.00', 'XOM', '55.1600', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/61447f3a63d1e.svg', 1, '2021-08-31 12:19:42', '2021-09-20 14:00:53', 0, '0.00', '0.00'),
(207, 'CGC', 'NASDAQ:CGC', '4.00', 'CGC', '14.7100', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/61447f829fc4f.svg', 1, '2021-08-31 12:21:28', '2021-09-20 14:01:36', 0, '0.00', '0.00'),
(208, 'Cronos Group Inc', 'NASDAQ:CRON', '4.00', 'CRON', '5.6800', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/61447fb356dad.svg', 1, '2021-08-31 12:22:31', '2021-09-20 14:52:39', 0, '0.00', '0.00'),
(209, 'UBER', 'NYSE:UBER', '4.00', 'UBER', '39.7500', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6144800741b02.svg', 1, '2021-08-31 12:23:37', '2021-09-20 14:02:36', 0, '0.00', '0.00'),
(210, '3M', 'NYSE:MMM', '4.00', 'MMM', '181.4900', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/614480406b15a.svg', 14, '2021-08-31 12:24:29', '2021-09-20 14:04:57', 0, '0.00', '0.00'),
(211, 'BAIDU', 'NASDAQ:BIDU', '4.00', 'BIDU', '162.2100', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/614480757f777.svg', 1, '2021-08-31 12:25:34', '2021-09-20 14:06:08', 0, '0.00', '0.00'),
(212, 'Berkshire Hathaway Cl B', 'NYSE:BRK.B', '4.00', 'BRK.B', '277.5100', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/614480a7dd74e.svg', 1, '2021-08-31 12:26:54', '2021-09-17 12:49:02', 0, '0.00', '0.00'),
(213, 'Booking Holdings Inc..', 'NASDAQ:BKNG', '4.00', 'BKNG', '2345.0000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/614480d6192c8.svg', 1, '2021-08-31 12:34:21', '2021-09-17 12:49:50', 0, '0.00', '0.00'),
(214, 'Dell Technologies Inc', 'NYSE:DELL', '4.00', 'DELL', '101.4000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6144811511b48.svg', 1, '2021-08-31 12:36:44', '2021-09-17 12:50:52', 0, '0.00', '0.00'),
(215, 'DELTA', 'NYSE:DAL', '4.00', 'DAL', '40.1100', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6144815057dbe.svg', 1, '2021-08-31 12:37:52', '2021-09-20 14:09:33', 0, '0.00', '0.00'),
(216, 'GILD.', 'NASDAQ:GILD', '4.00', 'GILD', '71.6100', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/614482062531f.svg', 1, '2021-08-31 12:39:00', '2021-09-20 14:10:53', 0, '0.00', '0.00'),
(217, 'MGM Resorts International', 'NYSE:MGM', '4.00', 'MGM', '41.3000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6144825745aa6.svg', 1, '2021-08-31 12:39:55', '2021-09-17 12:56:14', 0, '0.00', '0.00'),
(218, 'Moody\'s Corp', 'NYSE:MCO', '4.00', 'MCO', '380.3300', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6144828657d7c.svg', 1, '2021-08-31 12:41:15', '2021-09-17 12:57:00', 0, '0.00', '0.00'),
(219, 'NRG Energy Inc..', 'NYSE:NRG', '4.00', 'NRG', '43.0000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/614482bea51ab.svg', 1, '2021-08-31 12:42:51', '2021-09-17 12:57:59', 0, '0.00', '0.00'),
(220, 'Shopify Inc..', 'NYSE:SHOP', '4.00', 'SHOP', '1475.9700', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/61448312d04fb.svg', 1, '2021-08-31 12:44:53', '2021-09-17 12:59:25', 0, '0.00', '0.00'),
(221, 'STARBUCKS', 'NASDAQ:SBUX', '4.00', 'SBUX', '113.4100', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6144835b47129.svg', 1, '2021-08-31 12:46:14', '2021-09-20 14:17:42', 0, '0.00', '0.00'),
(222, 'The Kraft Heinz Company', 'NASDAQ:KHC', '4.00', 'KHC', '36.5400', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6144839e3f99d.svg', 1, '2021-08-31 12:47:07', '2021-09-17 13:01:43', 0, '0.00', '0.00'),
(223, 'TRIPADVISOR', 'NASDAQ:TRIP', '4.00', 'TRIP', '35.7900', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/614483ea72eba.svg', 1, '2021-08-31 12:48:39', '2021-09-20 14:19:28', 0, '0.00', '0.00'),
(224, 'DISNEY', 'NYSE:DIS', '4.00', 'DIS', '183.4700', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/61448443c0a7e.svg', 1, '2021-08-31 12:50:55', '2021-09-20 14:20:03', 0, '0.00', '0.00'),
(225, 'Wix.com Ltd', 'NASDAQ:WIX', '4.00', 'WIX', '209.4000', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6144847de2940.svg', 1, '2021-08-31 12:51:57', '2021-09-17 13:05:25', 0, '0.00', '0.00'),
(226, 'ZM', 'NASDAQ:ZM', '4.00', 'ZM', '287.6800', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/614484f5d0ce9.svg', 1, '2021-08-31 12:53:11', '2021-09-20 14:21:47', 0, '0.00', '0.00'),
(228, 'MRNA', 'NASDAQ:MRNA', '4.00', 'MRNA', '430.0500', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/614485284c0b5.svg', 1, '2021-08-31 12:57:07', '2021-09-20 14:22:57', 0, '0.00', '0.00'),
(229, 'NIO', 'NYSE:NIO', '4.00', 'NIO', '37.5100', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/61448552535ab.svg', 1, '2021-08-31 13:00:26', '2021-09-20 14:23:50', 0, '0.00', '0.00'),
(230, 'HSBC HOLDINGS', 'NYSE:HSBC', '4.00', 'HSBC', '25.7500', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6144865543c89.svg', 1, '2021-08-31 13:01:56', '2021-09-20 14:24:51', 0, '0.00', '0.00'),
(237, 'Nasdaq 100 DEC21', 'OANDA:NAS100USD', '4.00', 'NAS100', '15079.8000', 'USD', 'indices', 'https://excelfinance.one/storage/photos/2/6143519fefd4f.svg', 400, '2021-09-02 13:00:16', '2021-09-20 15:08:49', 0, '0.00', '0.00'),
(238, 'FTSE.I', 'OANDA:UK100GBP', '4.00', 'UK100', '9414.2000', 'USD', 'indices', 'https://excelfinance.one/storage/photos/2/6143534748bc3.svg', 400, '2021-09-02 13:28:08', '2021-09-20 15:11:20', 0, '0.00', '0.00'),
(239, 'DOW DEC21', 'OANDA:US30USD', '4.00', 'US30', '34086.5000', 'USD', 'indices', 'https://excelfinance.one/storage/photos/2/61489d7a2ef46.svg', 400, '2021-09-02 13:33:29', '2021-09-20 15:41:06', 0, '0.00', '0.00'),
(241, 'SPX 500', 'OANDA:SPX500USD', '4.00', 'SPX500', '4366.2000', 'USD', 'indices', 'https://excelfinance.one/storage/photos/2/614354018b4a1.png', 400, '2021-09-02 14:23:46', '2021-09-20 15:14:28', 0, '0.00', '0.00'),
(248, 'Silver', 'OANDA:XAGUSD', '4.00', 'XAG', '22.4730', 'USD', 'commodities', 'https://excelfinance.one/storage/photos/2/614485e026a55.svg', 400, '2021-09-02 16:51:59', '2021-09-20 10:05:47', 0, '0.00', '0.00'),
(252, 'France 40', 'OANDA:FR40EUR', '4.00', 'FR40', '7542.7000', 'USD', 'indices', 'https://excelfinance.one/storage/photos/2/614343905ed97.svg', 400, '2021-09-02 21:24:29', '2021-09-20 15:15:07', 0, '0.00', '0.00'),
(254, 'EU Stocks 50 DEC21', 'OANDA:EU50EUR', '4.00', 'EU50', '4731.7000', 'USD', 'indices', 'https://excelfinance.one/storage/photos/2/61434de5a0d1f.svg', 400, '2021-09-02 21:44:35', '2021-09-20 15:19:57', 0, '0.00', '0.00'),
(256, 'Australia 200', 'OANDA:AU200AUD', '4.00', 'AU200', '5178.1000', 'USD', 'indices', 'https://excelfinance.one/storage/photos/2/6143581e607a4.svg', 400, '2021-09-02 22:04:12', '2021-09-20 15:23:05', 0, '0.00', '0.00'),
(257, 'Brent Crude Oil', 'OANDA:BCOUSD', '4.00', 'BCO', '74.2520', 'USD', 'commodities', 'https://excelfinance.one/storage/photos/2/6144693a7cf93.svg', 400, '2021-09-07 09:01:02', '2021-09-20 10:19:11', 0, '0.00', '0.00'),
(258, 'Copper', 'GLOBALPRIME:XCUUSD', '4.00', 'XCU', '4.3151', 'USD', 'commodities', 'https://excelfinance.one/storage/photos/2/61446d96a0769.svg', 400, '2021-09-07 09:08:05', '2021-09-17 11:27:47', 0, '0.00', '0.00'),
(259, 'COTTON', 'ICEUS:CT2!', '4.00', 'CT2!', '0.0000', 'USD', 'commodities', 'https://ui-avatars.com/api/?size=256&background=0D47A1&color=fff&name=Cotton', 400, '2021-09-07 09:22:02', '2021-09-22 11:17:55', 0, '0.00', '0.00'),
(260, 'Natural Gas', 'OANDA:NATGASUSD', '4.00', 'NATGAS', '4.8470', 'USD', 'commodities', 'https://excelfinance.one/storage/photos/2/61446facb9bb2.svg', 400, '2021-09-07 09:27:43', '2021-09-22 10:42:33', 0, '0.00', '0.00'),
(261, 'Cocoa', 'GLOBALPRIME:USCOCOA', '4.00', 'USCOCOA', '0.0000', 'USD', 'commodities', 'https://excelfinance.one/storage/photos/2/614489e3f20a0.svg', 400, '2021-09-07 09:30:59', '2021-09-22 11:17:09', 0, '0.00', '0.00'),
(262, 'Germany 30 DEC21', 'OANDA:DE30EUR', '4.00', 'DE30', '17696.7000', 'USD', 'indices', 'https://excelfinance.one/storage/photos/2/614359455ac72.png', 400, '2021-09-07 10:11:04', '2021-09-20 15:24:07', 0, '0.00', '0.00'),
(264, 'Japan 225 DEC21', 'OANDA:JP225USD', '4.00', 'JP225', '29687.2000', 'USD', 'indices', 'https://excelfinance.one/storage/photos/2/614899d6bea30.svg', 400, '2021-09-07 10:28:21', '2021-09-20 15:25:35', 0, '0.00', '0.00'),
(266, 'NVDA', 'NASDAQ:NVDA', '4.00', 'NVDA', '222.4200', 'USD', 'stocks', 'https://excelfinance.one/storage/photos/2/6144893b790f2.svg', 50, '2021-09-07 11:31:02', '2021-09-17 13:25:40', 0, '0.00', '0.00'),
(269, 'Live Cattle', 'CME:HE1!', '4.00', 'LCUSX', '0.0000', 'USD', 'commodities', 'https://excelfinance.one/storage/photos/2/614487cea9c32.svg', 400, '2021-09-08 21:08:40', '2021-09-17 13:19:49', 0, '0.00', '0.00'),
(270, 'India 50', 'OANDA:IN50USD', '4.00', 'IN50', '17650.4000', 'USD', 'indices', 'https://ui-avatars.com/api/?size=256&background=F44336&color=fff&name=India+50', 400, '2021-09-16 14:35:57', '2021-09-16 17:00:26', 0, '0.00', '0.00'),
(271, 'China 50', 'OANDA:CN50USD', '4.00', 'CN50', '14718.8000', 'USD', 'indices', 'https://excelfinance.one/storage/photos/2/61489ae3d0960.svg', 400, '2021-09-16 14:50:39', '2021-09-20 15:30:04', 0, '0.00', '0.00'),
(272, 'Singapore 30', 'OANDA:SG30SGD', '4.00', 'SG30', '259.8300', 'USD', 'indices', 'https://ui-avatars.com/api/?size=256&background=E91E63&color=fff&name=Singapore+30', 400, '2021-09-16 15:33:35', '2021-09-20 15:39:25', 0, '0.00', '0.00'),
(273, 'AEX.I', 'OANDA:NL25EUR', '4.00', 'NL25', '913.9020', 'USD', 'indices', 'https://excelfinance.one/storage/photos/2/61489ca7bd8ae.svg', 400, '2021-09-16 16:10:44', '2021-09-20 15:37:46', 0, '0.00', '0.00'),
(274, 'US2000', 'OANDA:US2000USD', '4.00', 'US2000', '2231.6010', 'USD', 'indices', 'https://excelfinance.one/storage/photos/2/6143a7c21d97b.svg', 400, '2021-09-16 21:23:39', '2021-09-16 21:23:39', 0, '0.00', '0.00'),
(275, 'West Texas Oil', 'OANDA:WTICOUSD', '4.00', 'WTICO', '71.7080', 'USD', 'commodities', 'https://excelfinance.one/storage/photos/2/614471914638d.svg', 400, '2021-09-17 11:42:23', '2021-09-22 10:46:05', 0, '0.00', '0.00'),
(276, 'UK 10Y GILT', 'OANDA:UK10YBGBP', '4.00', 'UK10YB', '177.0210', 'USD', 'commodities', NULL, 400, '2021-09-17 12:31:25', '2021-09-17 12:31:25', 0, '0.00', '0.00'),
(277, 'ORANGE', 'GLOBALPRIME:OJUSD', '4.00', 'OJ', '0.0000', 'USD', 'commodities', 'https://excelfinance.one/storage/photos/2/6148910a26385.svg', 400, '2021-09-20 14:37:41', '2021-09-22 10:41:37', 0, '0.00', '0.00'),
(278, 'CORN', 'OANDA:CORNUSD', '4.00', 'CORN', '5.4900', 'USD', 'commodities', 'https://excelfinance.one/storage/photos/2/614afed2123f3.svg', 400, '2021-09-20 15:02:09', '2021-09-22 11:00:57', 0, '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `plan_id` bigint(20) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `promo_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proof` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'btc',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `created_at`, `updated_at`) VALUES
(1, 'How to update my account details?', 'To change any of the personal details in your trading account please contact us to explain the reason for this change and provide us\n                                   with the relevant information, e.g. name change due to marriage, or change of residential address.\n                                    We will then review and action your request in accordance with our regulatory requirements and obligations.\n                             ', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(2, 'How do I verify my payment method?', 'Verify payment by uploading proof of payment. Once proof of payment is uploaded, your payment will be reviewed and cleared upon confirmation.', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(3, 'Is my payment processing fees covered?', 'As part of our commitment to offer the best trading conditions available,\n                                                we cover most payment processing fees.', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(4, 'Are my funds at risk in case of Insolvency/Bankruptcy?', 'All clients funds are held in segregated client wallets to ensure maximum protection of the funds', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(5, ' Can I deposit from a joint bank account?', 'Usually yes, however you may be required to provide supporting documentation to confirm that you are\n                                            one of the named parties on the account.\n                                            Nevertheless, in certain countries and under certain circumstances this may not be possible due to regulatory obligations.', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(6, 'Can I deposit using a corporate credit/debit card/account?', 'No. All funds must originate from a payment method registered in your own name.', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(7, 'Do you add dividends?', 'Dividends are the portion of corporate profits that are allocated to shareholders,\n                                    and the cut-off date for share ownership in order to qualify for a dividend is known as ex-dividend date.\n                                    You trade CFDs on equities, therefore, you do not actually own the share itself.\n                                    If you have an equity or ETF CFD position open on the ex-dividend date, an adjustment will be made to your account in respect of the dividend paid on the underlying market. If you hold a buy position you will receive the dividend as a positive adjustment to your account. However,\n                                    if you hold a sell position there will be a negative adjustment. Please note that voting rights are not acquired with equity CFDs.', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(8, 'Do you offer a free Rollover Service?', 'Most of the instruments we offer that are based on a futures contracts, have a rollover date.\n                                            You can find this information by clicking on the \"Details\" link on the main trading platform screen next to each instrument.\n                                            Whenever a futures contract reaches its automatic rollover date as defined for the instrument, all open positions and orders are automatically rolled over to the next futures contract by bittraders, free of charge.\n                                            In order to nullify the impact on the valuation of the open position, given the change in the underlying instrument’s rate (price) for the new contract period, a compensating adjustment is made to allow you to keep your positions open without affecting your Equity level. Stop Orders and Limit Orders are also adjusted proportionally to reflect the rate of the new contract. The value of your position continues to reflect the impact of market movement based on your original opening level.\n                                            For more information about how rollover adjustments are calculated, please read: ”What is a Rollover Adjustment?\"', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(9, 'How are prices calculated?', 'We quotes prices with reference to the price of the relevant underlying financial instrument and its spread.', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(10, 'Can I have more than one trading account?', 'We recommend clients focus on one trading account, and we reserve the right to close subsequent accounts.', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(11, 'Do I risk any real money while using the Demo account?', 'No, using the demo account is completely risk-free as you can’t lose real money.', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(12, 'What are the benefits of trading with a regulated company?', '     One of the benefits of trading with a regulated firm is that you know you are trading on a reliable and reputable platform in a regulated environment,\n                                    which has stringent rules and regulations designed, in particular, to protect the interests of retail clients', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(13, 'How long does withdrawals take?', 'Withdrawals are paid in a space of 0 - 24 hours, considering the functioning of the blockchain network when there are many transactions to be added to a block.', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(14, 'Is DEPOSIT Automatic?', 'All deposits are automatically credited to your balance, as you send BTC to the unique wallet address generated during funding request.', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(15, 'Can I invest in multiple plans?', 'Yes, you can invest in multiple plans. All investments run concurrently.', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(16, 'When can I withdraw money?', 'You can make a request at anytime, including weekends.', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(17, ' How long does it take to credit my deposit?', 'It needs 2-3 network confirmations and may take up to 30 minutes.', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(18, 'Can I lose my money?', 'It is always the possibility in the sphere of investment. However, in our case, the probability is relatively low and with the help of a fund manager its almost risk-free  when you’re investing through our platform', '2021-08-19 18:54:52', '2021-08-19 18:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `identities`
--

CREATE TABLE `identities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `front` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `back` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'national_id',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `identities`
--

INSERT INTO `identities` (`id`, `user_id`, `front`, `back`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 33, NULL, NULL, 'national_id', 0, '2021-10-06 10:15:07', '2021-10-06 10:15:07'),
(24, 2, NULL, NULL, 'national_id', 0, '2022-01-12 08:18:05', '2022-01-12 08:18:05');

-- --------------------------------------------------------

--
-- Table structure for table `inv_profits`
--

CREATE TABLE `inv_profits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_plan_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `profit` decimal(11,2) NOT NULL,
  `total_profit` decimal(11,2) NOT NULL,
  `period` int(11) NOT NULL COMMENT 'plan period in days',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '2,1,0',
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `updated` date NOT NULL DEFAULT '2021-08-19',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_24_000000_create_settings_table', 1),
(4, '2017_09_01_000000_create_authentication_log_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2020_11_11_203416_create_deposits_table', 1),
(7, '2020_11_12_124715_create_packages_table', 1),
(8, '2020_11_12_142745_create_currencies_table', 1),
(9, '2020_11_18_091834_create_withdrawals_table', 1),
(10, '2020_11_18_094137_create_trades_table', 1),
(11, '2020_11_18_110321_create_identities_table', 1),
(12, '2020_11_19_053531_laratrust_setup_tables', 1),
(13, '2020_11_22_015723_create_transactions_table', 1),
(14, '2020_11_27_125127_add_to_withdrawal', 1),
(15, '2020_11_28_212952_create_currency_pairs_table', 1),
(16, '2020_12_09_211452_create_messages_table', 1),
(17, '2021_06_01_084118_create_faqs_table', 1),
(18, '2021_06_05_131529_create_crypto_payments_table', 1),
(19, '2021_07_21_000124_create_auto_traders_table', 1),
(20, '2021_07_21_111952_create_user_plans_table', 1),
(21, '2021_07_29_143606_create_accounts_table', 1),
(22, '2021_07_29_154746_create_wire_accounts_table', 1),
(23, '2021_07_30_120915_add_profit_to_user_plan', 1),
(24, '2021_07_31_185842_add_to_currenc_pair', 1),
(25, '2021_08_02_205355_create_inv_profits_table', 1),
(26, '2021_08_18_154405_add_type_to_currency', 1),
(27, '2021_08_23_085602_add_currency_to_users', 2),
(28, '2021_08_25_094322_add_leverage_to_trades', 3),
(29, '2021_08_28_161645_add_take_profit_to_trades', 4),
(30, '2021_08_30_122418_add_commis_to_trades', 5),
(31, '2021_08_30_125348_update_profit', 5),
(32, '2021_08_30_125909_update_profit_reverse', 5),
(33, '2021_08_30_131340_add_com_to_currency_pairs', 5),
(34, '2021_08_31_052928_add_to_currency_pair', 6),
(35, '2021_08_31_115626_add_rate_to_currency', 7),
(36, '2021_09_03_082400_add_to_plan_users', 8),
(37, '2021_09_09_065458_add_auto_trader_to_users', 9),
(38, '2021_09_09_154643_remove_softdele_from_users', 9),
(39, '2021_09_09_200417_create_overnights_table', 10),
(40, '2021_09_10_052151_add_overnight_to_trades', 10),
(41, '2021_09_13_094142_add_more_fields_to_assets', 11),
(42, '2021_09_16_085611_add_autotrader_request_to_users', 12),
(43, '2021_09_20_232757_add_joint_account_to_users', 13),
(44, '2021_09_24_084258_add_by_admin_to_trades', 14),
(45, '2021_10_05_070706_add_crm_to_users', 14),
(46, '2021_11_06_213037_create_plans_table', 15),
(47, '2021_11_06_215516_add_to_plans_table', 15),
(48, '2021_11_09_124044_create_countries_table', 15),
(49, '2021_11_09_133617_add_phone_code_to_users_table', 15),
(50, '2021_11_09_163522_add_source_to_transactions', 15),
(51, '2021_11_10_205740_modify_source_field', 15),
(52, '2021_11_10_220919_add_note_to_withdrawal', 15),
(53, '2021_11_20_084752_add_online_to_users', 15),
(54, '2021_11_24_092535_add_features_field_to_plans_table', 15),
(55, '2021_12_11_073452_add_admin_notifications_to_users_table', 16),
(56, '2021_12_11_145936_add_source_to_users_table', 16),
(57, '2021_12_13_155709_create_statuses_table', 16),
(58, '2021_12_13_165049_create_notes_table', 16),
(59, '2021_12_17_124508_create_sources_table', 16),
(60, '2022_01_09_151021_create_watchlists_table', 17),
(61, '2022_01_10_050929_create_auto_profit_losses_table', 17),
(62, '2022_01_10_050957_create_auto_profit_loss_details_table', 17),
(63, '2022_01_10_052633_addpnl_to_users', 17);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Note is written about this user',
  `writer_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Note is written by this user',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `overnights`
--

CREATE TABLE `overnights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trade_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `fee` bigint(20) NOT NULL DEFAULT 4,
  `com` decimal(12,3) NOT NULL DEFAULT 0.000,
  `charged_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent_profit` int(11) NOT NULL DEFAULT 0,
  `period` int(11) NOT NULL,
  `price` bigint(20) NOT NULL,
  `period_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `min_unit` int(11) NOT NULL,
  `max_unit` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `slug`, `description`, `percent_profit`, `period`, `price`, `period_type`, `min_unit`, `max_unit`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bronze', 'bronze', NULL, 2, 1, 5000, 'month', 1, 3, 1, '2021-08-19 18:54:52', '2021-10-20 20:30:58', NULL),
(2, 'Silver', 'silver', NULL, 15, 3, 15000, 'month', 1, 5, 1, '2021-08-19 18:54:52', '2021-10-20 20:30:05', NULL),
(3, 'Gold', 'gold', NULL, 25, 4, 50000, 'month', 1, 7, 1, '2021-08-19 18:54:52', '2021-10-20 20:30:22', NULL),
(4, 'Investment Plan', 'investment-plan', NULL, 30, 6, 75000, 'month', 1, 1, 1, '2021-10-08 16:21:24', '2021-10-20 20:30:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Mini', 'basic', '#d23737', 'https://webtrader-live.com/storage/photos/33/61d58d722e6cc.png', 250, '[\"Leverage\\t1:200\",\"Margin loans Up to 15%\",\"Withdrawal fee 25EUR +1%\",\"Risk Free Trade 1\"]', '2022-01-05 12:26:16', '2022-01-10 06:21:28', NULL, 1),
(2, 'Silver', 'silver', '#999494', 'https://webtrader-live.com/storage/photos/33/61d58d722e6cc.png', 25000, '[\"Leverage 1:200\",\"Margin Loans Up to 35%\",\"Withdrawal Fee \\t1%\",\"Trades With Broker Monthly\",\"Risk Free Trade 5\"]', '2022-01-05 12:26:50', '2022-01-10 06:33:44', NULL, 1),
(3, 'GOLD', 'gold', '#f0c800', 'https://webtrader-live.com/storage/photos/33/61d58d722e6cc.png', 50000, '[\"Leverage 1:300\",\"Margin Loans Up to 50%\",\"Withdrawal Fee 0\",\"Trades With Broker Weekly\",\"Risk Free Trade 10\",\"Trading signal from MTE Gold Signals\"]', '2022-01-10 06:37:37', '2022-01-10 06:37:37', NULL, 1),
(4, 'PLATINUM', 'platinum', '#ff9500', 'https://webtrader-live.com/storage/photos/33/61d58d722e6cc.png', 100000, '[\"Leverage 1:300\",\"Margin Loans Up to 75%\",\"Trades With Broker Daily\",\"Risk Free Trade 15\",\"Trading signal from MTE Platinum Signals\"]', '2022-01-10 06:41:06', '2022-01-10 06:41:23', NULL, 1),
(5, 'DIAMOND', 'diamond', '#0f2bff', 'https://webtrader-live.com/storage/photos/33/61d58d722e6cc.png', 250000, '[\"Leverage 1:400\",\"Margin Loans Up to 100%\",\"Trades With Broker Daily\",\"Risk Free Trade 20\",\"Trading signal from MTE Diamond Signals\"]', '2022-01-10 06:44:23', '2022-01-10 06:44:23', NULL, 1),
(6, 'BRONZE', 'bronze', '#786f36', 'https://webtrader-live.com/storage/photos/33/61d58d722e6cc.png', 10000, '[\"Leverage 1:200\",\"Margin Loans Up to 25%\",\"Withdrawal Fee 25EUR +1%\",\"Risk Free Trade 3\"]', '2022-01-10 06:46:39', '2022-01-10 06:46:39', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'Superadmin', 'Superadmin', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(2, 'admin', 'Admin', 'Admin', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(3, 'user', 'User', 'User', '2021-08-19 18:54:52', '2021-08-19 18:54:52'),
(4, 'manager', 'Manager', 'Manager', '2021-09-07 11:26:32', '2021-09-07 11:26:32'),
(5, 'autotrader', 'Auto trader', 'Auto trader', '2021-12-31 11:43:17', '2021-12-31 11:43:17'),
(6, 'dev', 'Developer ', 'Developer ', '2021-12-31 11:43:17', '2021-12-31 11:43:17'),
(7, 'lead', 'Lead', 'Lead', '2021-12-31 16:50:57', '2021-12-31 16:50:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User'),
(2, 2, 'App\\Models\\User'),
(1, 33, 'App\\Models\\User');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
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
(6, 'logo', 'https://webtrader-live.com/storage/photos/33/61dd5ac646472.png'),
(7, 'favicon', 'https://webtrader-live.com/storage/photos/33/61dd5ac646472.png'),
(8, 'site_name', 'WebTrader PRO'),
(9, 'support_email', 'support@webtrader-live.com'),
(10, 'phone', '########'),
(11, 'currency', 'USD'),
(12, 'crypto_api', '50abdce5efd367e4603b0b90ae017084cebadb4948c4dd8505836b5d48ed4ce0'),
(13, 'stock_api', '511a8cffb53cbe5aeed143385aec186f'),
(14, 'indices_api', '511a8cffb53cbe5aeed143385aec186f'),
(15, 'api_interval', '5000'),
(16, 'crypto_provider', 'crypto_compare'),
(17, 'stock_provider', 'fm'),
(18, 'com_provider', 'oanda'),
(19, 'indices_provider', 'oanda'),
(20, 'forex_provider', 'fm'),
(21, 'com_api', '511a8cffb53cbe5aeed143385aec186f'),
(22, 'forex_api', '511a8cffb53cbe5aeed143385aec186f'),
(23, 'kyc_verify', '0'),
(24, 'kyc_verify_button', '0'),
(25, 'overnight_com', '0'),
(26, 'can_trade', '1'),
(27, 'site_info_url', 'https://webtrader-live.com/'),
(28, 'cannot_trade_msg', 'AutoCopy Trader Active - Contact Account manager if you would like to Trade Manually'),
(29, 'disable_api', 'no'),
(30, 'crypto_withdraw', '1'),
(31, 'wire_withdraw', '0'),
(32, 'paypal_withdraw', '0'),
(33, 'host', 'https://webtrader-live.com'),
(34, 'privacy_policy', 'https://webtrader-live.com/privacy-policy/'),
(35, 'terms', 'https://webtrader-live.com/terms-and-conditions/'),
(36, 'separate_bonus', 'no'),
(37, 'disable_mobile_view', '0'),
(38, 'multi_currency', '0'),
(39, 'joint_account', '1'),
(40, 'exchange', '0'),
(41, 'multi_lang', '0'),
(42, 'referrals', '0'),
(43, 'login_page', 'default'),
(44, 'register_page', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', '2022-01-05 11:42:05', '2022-01-05 11:42:05'),
(2, 'Youtube', '2022-01-05 11:42:19', '2022-01-05 11:42:19');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'hot', '2022-01-05 11:43:36', '2022-01-05 11:43:36'),
(2, 'cold', '2022-01-05 11:48:01', '2022-01-05 11:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `trades`
--

CREATE TABLE `trades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `deposit_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `trade_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'buy',
  `currency_pair` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 1,
  `close_at` date DEFAULT NULL,
  `leverage` int(11) NOT NULL DEFAULT 1,
  `autoclose` tinyint(1) NOT NULL DEFAULT 0,
  `traded_amount` decimal(18,8) DEFAULT NULL,
  `profit` decimal(11,3) NOT NULL DEFAULT 0.000,
  `com` decimal(11,2) NOT NULL DEFAULT 1.00,
  `opening_price` decimal(18,8) DEFAULT NULL,
  `closing_price` decimal(18,8) DEFAULT NULL,
  `result` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'win : 1 lose : 2 Draw : 3',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Running : 0 Complete : 1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `take_profit` decimal(8,2) NOT NULL DEFAULT 100.00,
  `stop_loss` decimal(8,2) NOT NULL DEFAULT 100.00,
  `is_stop_loss` tinyint(1) NOT NULL DEFAULT 0,
  `is_take_profit` tinyint(1) NOT NULL DEFAULT 0,
  `overnight` datetime NOT NULL DEFAULT '2021-09-10 07:31:34',
  `paid_com` decimal(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'credit',
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'balance',
  `amount` decimal(11,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'signup',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(11,2) NOT NULL DEFAULT 0.00,
  `pnl` decimal(12,2) NOT NULL DEFAULT 0.00,
  `bonus` decimal(11,2) NOT NULL DEFAULT 0.00,
  `dob` date DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` int(11) NOT NULL DEFAULT 1,
  `plan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Bronze',
  `can_trade` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `can_upgrade` tinyint(1) NOT NULL DEFAULT 0,
  `can_withdraw` tinyint(1) NOT NULL DEFAULT 0,
  `account_officer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Account not connected',
  `withdrawable` bigint(20) NOT NULL DEFAULT 0,
  `manager_id` int(11) DEFAULT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trader_request` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referred_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cur` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fee` bigint(20) NOT NULL DEFAULT 0,
  `profit` bigint(20) NOT NULL DEFAULT 0,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `j_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_to_crm` tinyint(1) NOT NULL DEFAULT 0,
  `last_seen` datetime NOT NULL DEFAULT '2021-11-26 20:25:33',
  `admin_notifications` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`admin_notifications`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `avatar`, `city`, `country`, `status`, `source`, `address`, `btc`, `phone`, `phone_code`, `permanent_address`, `postal`, `balance`, `pnl`, `bonus`, `dob`, `email_verified_at`, `password`, `plan_id`, `plan`, `can_trade`, `is_active`, `can_upgrade`, `can_withdraw`, `account_officer`, `withdrawable`, `manager_id`, `msg`, `trader_request`, `pass`, `referred_by`, `code`, `cur`, `remember_token`, `created_at`, `updated_at`, `fee`, `profit`, `about`, `j_first_name`, `j_last_name`, `j_email`, `j_phone`, `j_country`, `added_to_crm`, `last_seen`, `admin_notifications`) VALUES
(1, 'superadmin', NULL, NULL, 'superadmin@crypto.com', NULL, NULL, NULL, NULL, 'signup', NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', NULL, NULL, '$2y$10$M.ISVFkQZEJmK.nlla6v5.Q8dkjN0A2L9HhPaMABTbdbqZZvOmhrK', 1, 'Bronze', 0, 0, 0, 0, 'Account not connected', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, '2021-08-19 18:54:52', '2021-08-19 18:54:52', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-11-26 20:25:33', NULL),
(2, 'admin', NULL, NULL, 'admin@crypto.com', NULL, NULL, NULL, NULL, 'signup', NULL, NULL, NULL, NULL, NULL, NULL, '225907.24', '0.00', '0.00', NULL, NULL, '$2y$10$M.ISVFkQZEJmK.nlla6v5.Q8dkjN0A2L9HhPaMABTbdbqZZvOmhrK', 1, 'Bronze', 1, 0, 0, 0, 'Account not connected', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, '2021-08-19 18:54:52', '2022-01-12 08:18:19', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-01-12 08:23:19', NULL),
(33, 'edx', 'Edx', NULL, 'edx.connect@gmail.com', NULL, NULL, NULL, NULL, 'signup', NULL, NULL, NULL, NULL, NULL, NULL, '-1768.00', '0.00', '0.00', NULL, NULL, '$2y$10$IJH2e1i5TvLBldRTDPHUyOHD1W94krBG6s7BjO67ThAytlm.3shGC', 1, 'Bronze', 1, 1, 0, 0, 'Account not connected', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, '2021-09-11 15:49:34', '2022-01-12 09:34:34', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2022-01-12 09:39:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_plans`
--

CREATE TABLE `user_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(11,2) NOT NULL DEFAULT 0.00,
  `earned` decimal(12,2) NOT NULL DEFAULT 0.00,
  `profit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `units` int(11) NOT NULL DEFAULT 1,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watchlists`
--

CREATE TABLE `watchlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `currency_pair_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wire_accounts`
--

CREATE TABLE `wire_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `routine_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(11,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `account_id` int(11) NOT NULL,
  `wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'account',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `commission` int(11) DEFAULT NULL,
  `commission_proof` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax_proof` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_of_transfer` int(11) DEFAULT NULL,
  `cot_proof` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `authentication_log`
--
ALTER TABLE `authentication_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authentication_log_authenticatable_type_authenticatable_id_index` (`authenticatable_type`,`authenticatable_id`);

--
-- Indexes for table `auto_profit_losses`
--
ALTER TABLE `auto_profit_losses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auto_profit_losses_user_id_foreign` (`user_id`);

--
-- Indexes for table `auto_profit_loss_details`
--
ALTER TABLE `auto_profit_loss_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auto_profit_loss_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `auto_traders`
--
ALTER TABLE `auto_traders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `crypto_payments_wallet_unique` (`wallet`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_pairs`
--
ALTER TABLE `currency_pairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposits_user_id_index` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identities`
--
ALTER TABLE `identities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_profits`
--
ALTER TABLE `inv_profits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inv_profits_user_id_foreign` (`user_id`),
  ADD KEY `inv_profits_user_plan_id_foreign` (`user_plan_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_user_id_foreign` (`user_id`),
  ADD KEY `notes_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `overnights`
--
ALTER TABLE `overnights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `overnights_trade_id_index` (`trade_id`),
  ADD KEY `overnights_user_id_index` (`user_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `packages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_key_index` (`key`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trades`
--
ALTER TABLE `trades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_plans`
--
ALTER TABLE `user_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_plans_user_id_foreign` (`user_id`);

--
-- Indexes for table `watchlists`
--
ALTER TABLE `watchlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `watchlists_user_id_foreign` (`user_id`),
  ADD KEY `watchlists_currency_pair_id_foreign` (`currency_pair_id`);

--
-- Indexes for table `wire_accounts`
--
ALTER TABLE `wire_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wire_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authentication_log`
--
ALTER TABLE `authentication_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `auto_profit_losses`
--
ALTER TABLE `auto_profit_losses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auto_profit_loss_details`
--
ALTER TABLE `auto_profit_loss_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auto_traders`
--
ALTER TABLE `auto_traders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `currency_pairs`
--
ALTER TABLE `currency_pairs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `identities`
--
ALTER TABLE `identities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `inv_profits`
--
ALTER TABLE `inv_profits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `overnights`
--
ALTER TABLE `overnights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trades`
--
ALTER TABLE `trades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user_plans`
--
ALTER TABLE `user_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watchlists`
--
ALTER TABLE `watchlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wire_accounts`
--
ALTER TABLE `wire_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auto_profit_losses`
--
ALTER TABLE `auto_profit_losses`
  ADD CONSTRAINT `auto_profit_losses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auto_profit_loss_details`
--
ALTER TABLE `auto_profit_loss_details`
  ADD CONSTRAINT `auto_profit_loss_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inv_profits`
--
ALTER TABLE `inv_profits`
  ADD CONSTRAINT `inv_profits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inv_profits_user_plan_id_foreign` FOREIGN KEY (`user_plan_id`) REFERENCES `user_plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notes_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_plans`
--
ALTER TABLE `user_plans`
  ADD CONSTRAINT `user_plans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `watchlists`
--
ALTER TABLE `watchlists`
  ADD CONSTRAINT `watchlists_currency_pair_id_foreign` FOREIGN KEY (`currency_pair_id`) REFERENCES `currency_pairs` (`id`),
  ADD CONSTRAINT `watchlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wire_accounts`
--
ALTER TABLE `wire_accounts`
  ADD CONSTRAINT `wire_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
