-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2023 at 11:17 AM
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
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(191) NOT NULL DEFAULT 'App\\Models\\User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'App\\Models\\User'),
(2, 2, 'App\\Models\\User'),
(3, 3, 'App\\Models\\User'),
(1, 26, 'App\\Models\\User'),
(2, 30, 'App\\Models\\User'),
(3, 43, 'App\\Models\\User'),
(3, 44, 'App\\Models\\User'),
(3, 45, 'App\\Models\\User'),
(3, 46, 'App\\Models\\User'),
(3, 47, 'App\\Models\\User'),
(3, 51, 'App\\Models\\User'),
(3, 52, 'App\\Models\\User'),
(3, 54, 'App\\Models\\User'),
(3, 57, 'App\\Models\\User'),
(3, 58, 'App\\Models\\User'),
(3, 60, 'App\\Models\\User'),
(3, 62, 'App\\Models\\User'),
(3, 67, 'App\\Models\\User'),
(3, 69, 'App\\Models\\User'),
(3, 75, 'App\\Models\\User'),
(3, 78, 'App\\Models\\User'),
(3, 80, 'App\\Models\\User'),
(3, 81, 'App\\Models\\User'),
(3, 91, 'App\\Models\\User'),
(3, 92, 'App\\Models\\User'),
(3, 93, 'App\\Models\\User'),
(3, 94, 'App\\Models\\User'),
(5, 95, 'App\\Models\\User'),
(5, 98, 'App\\Models\\User'),
(5, 99, 'App\\Models\\User'),
(5, 100, 'App\\Models\\User'),
(5, 229, 'App\\Models\\User'),
(5, 230, 'App\\Models\\User'),
(5, 231, 'App\\Models\\User'),
(5, 232, 'App\\Models\\User'),
(5, 233, 'App\\Models\\User'),
(5, 234, 'App\\Models\\User'),
(5, 235, 'App\\Models\\User'),
(5, 236, 'App\\Models\\User'),
(5, 237, 'App\\Models\\User'),
(5, 238, 'App\\Models\\User'),
(5, 239, 'App\\Models\\User'),
(5, 240, 'App\\Models\\User'),
(5, 241, 'App\\Models\\User'),
(5, 242, 'App\\Models\\User'),
(5, 243, 'App\\Models\\User'),
(5, 244, 'App\\Models\\User'),
(5, 245, 'App\\Models\\User'),
(5, 246, 'App\\Models\\User'),
(5, 247, 'App\\Models\\User'),
(5, 248, 'App\\Models\\User'),
(5, 249, 'App\\Models\\User'),
(5, 250, 'App\\Models\\User'),
(5, 251, 'App\\Models\\User'),
(5, 252, 'App\\Models\\User'),
(5, 253, 'App\\Models\\User'),
(5, 254, 'App\\Models\\User'),
(5, 255, 'App\\Models\\User'),
(5, 256, 'App\\Models\\User'),
(5, 257, 'App\\Models\\User'),
(5, 258, 'App\\Models\\User'),
(5, 259, 'App\\Models\\User'),
(5, 260, 'App\\Models\\User'),
(5, 261, 'App\\Models\\User'),
(5, 262, 'App\\Models\\User'),
(5, 263, 'App\\Models\\User'),
(5, 264, 'App\\Models\\User'),
(5, 265, 'App\\Models\\User'),
(5, 266, 'App\\Models\\User'),
(5, 267, 'App\\Models\\User'),
(5, 268, 'App\\Models\\User'),
(5, 269, 'App\\Models\\User'),
(5, 270, 'App\\Models\\User'),
(5, 271, 'App\\Models\\User'),
(5, 272, 'App\\Models\\User'),
(5, 273, 'App\\Models\\User'),
(5, 274, 'App\\Models\\User'),
(5, 275, 'App\\Models\\User'),
(5, 276, 'App\\Models\\User'),
(5, 277, 'App\\Models\\User'),
(5, 278, 'App\\Models\\User'),
(5, 279, 'App\\Models\\User'),
(5, 280, 'App\\Models\\User'),
(5, 281, 'App\\Models\\User'),
(5, 282, 'App\\Models\\User'),
(5, 283, 'App\\Models\\User'),
(5, 284, 'App\\Models\\User'),
(5, 285, 'App\\Models\\User'),
(5, 286, 'App\\Models\\User'),
(5, 287, 'App\\Models\\User'),
(5, 288, 'App\\Models\\User'),
(5, 289, 'App\\Models\\User'),
(5, 290, 'App\\Models\\User'),
(5, 291, 'App\\Models\\User'),
(5, 292, 'App\\Models\\User'),
(5, 293, 'App\\Models\\User'),
(5, 294, 'App\\Models\\User'),
(5, 295, 'App\\Models\\User'),
(5, 296, 'App\\Models\\User'),
(5, 297, 'App\\Models\\User'),
(5, 298, 'App\\Models\\User'),
(5, 299, 'App\\Models\\User'),
(5, 300, 'App\\Models\\User'),
(5, 301, 'App\\Models\\User'),
(5, 302, 'App\\Models\\User'),
(5, 303, 'App\\Models\\User'),
(5, 304, 'App\\Models\\User'),
(5, 305, 'App\\Models\\User'),
(5, 306, 'App\\Models\\User'),
(5, 307, 'App\\Models\\User'),
(5, 308, 'App\\Models\\User'),
(5, 309, 'App\\Models\\User'),
(5, 310, 'App\\Models\\User'),
(5, 311, 'App\\Models\\User'),
(5, 312, 'App\\Models\\User'),
(5, 313, 'App\\Models\\User'),
(5, 314, 'App\\Models\\User'),
(5, 315, 'App\\Models\\User'),
(5, 316, 'App\\Models\\User'),
(5, 317, 'App\\Models\\User'),
(5, 318, 'App\\Models\\User'),
(5, 319, 'App\\Models\\User'),
(5, 320, 'App\\Models\\User'),
(5, 321, 'App\\Models\\User'),
(5, 322, 'App\\Models\\User'),
(5, 323, 'App\\Models\\User'),
(5, 324, 'App\\Models\\User'),
(5, 325, 'App\\Models\\User'),
(5, 326, 'App\\Models\\User'),
(5, 327, 'App\\Models\\User'),
(5, 328, 'App\\Models\\User'),
(5, 329, 'App\\Models\\User'),
(5, 330, 'App\\Models\\User'),
(5, 331, 'App\\Models\\User'),
(5, 332, 'App\\Models\\User'),
(5, 333, 'App\\Models\\User'),
(5, 334, 'App\\Models\\User'),
(5, 335, 'App\\Models\\User'),
(5, 336, 'App\\Models\\User'),
(5, 337, 'App\\Models\\User'),
(5, 338, 'App\\Models\\User'),
(5, 339, 'App\\Models\\User'),
(5, 340, 'App\\Models\\User'),
(5, 341, 'App\\Models\\User'),
(5, 342, 'App\\Models\\User'),
(5, 343, 'App\\Models\\User'),
(5, 344, 'App\\Models\\User'),
(5, 345, 'App\\Models\\User'),
(5, 346, 'App\\Models\\User'),
(5, 347, 'App\\Models\\User'),
(5, 348, 'App\\Models\\User'),
(5, 349, 'App\\Models\\User'),
(5, 350, 'App\\Models\\User'),
(5, 351, 'App\\Models\\User'),
(5, 352, 'App\\Models\\User'),
(5, 353, 'App\\Models\\User'),
(5, 354, 'App\\Models\\User'),
(5, 355, 'App\\Models\\User'),
(5, 356, 'App\\Models\\User'),
(5, 357, 'App\\Models\\User'),
(5, 358, 'App\\Models\\User'),
(5, 359, 'App\\Models\\User'),
(5, 360, 'App\\Models\\User'),
(5, 361, 'App\\Models\\User'),
(5, 362, 'App\\Models\\User'),
(5, 363, 'App\\Models\\User'),
(5, 364, 'App\\Models\\User'),
(5, 365, 'App\\Models\\User'),
(5, 366, 'App\\Models\\User'),
(5, 367, 'App\\Models\\User'),
(5, 368, 'App\\Models\\User'),
(5, 369, 'App\\Models\\User'),
(5, 370, 'App\\Models\\User'),
(5, 371, 'App\\Models\\User'),
(5, 372, 'App\\Models\\User'),
(5, 373, 'App\\Models\\User'),
(5, 374, 'App\\Models\\User'),
(5, 375, 'App\\Models\\User'),
(5, 376, 'App\\Models\\User'),
(5, 377, 'App\\Models\\User'),
(5, 378, 'App\\Models\\User'),
(5, 379, 'App\\Models\\User'),
(5, 380, 'App\\Models\\User'),
(5, 381, 'App\\Models\\User'),
(5, 382, 'App\\Models\\User'),
(5, 383, 'App\\Models\\User'),
(5, 384, 'App\\Models\\User'),
(5, 385, 'App\\Models\\User'),
(5, 386, 'App\\Models\\User'),
(5, 387, 'App\\Models\\User'),
(5, 388, 'App\\Models\\User'),
(5, 389, 'App\\Models\\User'),
(5, 390, 'App\\Models\\User'),
(5, 391, 'App\\Models\\User'),
(5, 392, 'App\\Models\\User'),
(5, 393, 'App\\Models\\User'),
(5, 394, 'App\\Models\\User'),
(5, 395, 'App\\Models\\User'),
(5, 396, 'App\\Models\\User'),
(5, 397, 'App\\Models\\User'),
(5, 398, 'App\\Models\\User'),
(5, 399, 'App\\Models\\User'),
(5, 400, 'App\\Models\\User'),
(5, 401, 'App\\Models\\User'),
(5, 402, 'App\\Models\\User'),
(5, 403, 'App\\Models\\User'),
(5, 404, 'App\\Models\\User'),
(5, 405, 'App\\Models\\User'),
(5, 406, 'App\\Models\\User'),
(5, 407, 'App\\Models\\User'),
(5, 408, 'App\\Models\\User'),
(5, 409, 'App\\Models\\User'),
(5, 410, 'App\\Models\\User'),
(5, 411, 'App\\Models\\User'),
(5, 412, 'App\\Models\\User'),
(5, 413, 'App\\Models\\User'),
(5, 414, 'App\\Models\\User'),
(5, 415, 'App\\Models\\User'),
(5, 416, 'App\\Models\\User'),
(5, 417, 'App\\Models\\User'),
(5, 418, 'App\\Models\\User'),
(5, 419, 'App\\Models\\User'),
(5, 420, 'App\\Models\\User'),
(5, 421, 'App\\Models\\User'),
(5, 422, 'App\\Models\\User'),
(5, 423, 'App\\Models\\User'),
(5, 424, 'App\\Models\\User'),
(3, 425, 'App\\Models\\User'),
(5, 426, 'App\\Models\\User'),
(4, 427, 'App\\Models\\User'),
(2, 428, 'App\\Models\\User'),
(2, 429, 'App\\Models\\User'),
(4, 430, 'App\\Models\\User'),
(4, 431, 'App\\Models\\User'),
(3, 432, 'App\\Models\\User'),
(3, 433, 'App\\Models\\User'),
(3, 435, 'App\\Models\\User'),
(3, 436, 'App\\Models\\User'),
(3, 437, 'App\\Models\\User'),
(3, 438, 'App\\Models\\User'),
(3, 441, 'App\\Models\\User'),
(3, 442, 'App\\Models\\User'),
(3, 443, 'App\\Models\\User'),
(3, 444, 'App\\Models\\User'),
(3, 445, 'App\\Models\\User'),
(3, 446, 'App\\Models\\User'),
(3, 447, 'App\\Models\\User'),
(3, 448, 'App\\Models\\User'),
(3, 449, 'App\\Models\\User'),
(3, 450, 'App\\Models\\User'),
(3, 452, 'App\\Models\\User'),
(3, 454, 'App\\Models\\User'),
(3, 455, 'App\\Models\\User'),
(3, 456, 'App\\Models\\User'),
(3, 457, 'App\\Models\\User'),
(3, 458, 'App\\Models\\User'),
(3, 459, 'App\\Models\\User'),
(3, 460, 'App\\Models\\User'),
(3, 461, 'App\\Models\\User'),
(3, 462, 'App\\Models\\User'),
(3, 463, 'App\\Models\\User'),
(3, 464, 'App\\Models\\User'),
(3, 465, 'App\\Models\\User'),
(3, 466, 'App\\Models\\User'),
(3, 467, 'App\\Models\\User'),
(3, 468, 'App\\Models\\User'),
(3, 469, 'App\\Models\\User'),
(3, 470, 'App\\Models\\User'),
(3, 472, 'App\\Models\\User'),
(3, 473, 'App\\Models\\User'),
(3, 474, 'App\\Models\\User'),
(3, 476, 'App\\Models\\User'),
(3, 477, 'App\\Models\\User'),
(3, 478, 'App\\Models\\User'),
(3, 479, 'App\\Models\\User'),
(3, 480, 'App\\Models\\User'),
(3, 481, 'App\\Models\\User'),
(3, 482, 'App\\Models\\User'),
(3, 484, 'App\\Models\\User'),
(3, 485, 'App\\Models\\User'),
(3, 486, 'App\\Models\\User'),
(3, 487, 'App\\Models\\User'),
(3, 488, 'App\\Models\\User'),
(3, 489, 'App\\Models\\User'),
(3, 490, 'App\\Models\\User'),
(3, 491, 'App\\Models\\User'),
(3, 492, 'App\\Models\\User'),
(3, 493, 'App\\Models\\User'),
(5, 494, 'App\\Models\\User'),
(2, 495, 'App\\Models\\User'),
(3, 496, 'App\\Models\\User'),
(3, 497, 'App\\Models\\User'),
(4, 498, 'App\\Models\\User'),
(6, 499, 'App\\Models\\User'),
(2, 500, 'App\\Models\\User'),
(3, 501, 'App\\Models\\User'),
(3, 504, 'App\\Models\\User'),
(5, 504, 'AppModelsUser'),
(1, 520, 'AppModelsUser'),
(5, 523, 'AppModelsUser'),
(5, 525, 'AppModelsUser'),
(5, 527, 'AppModelsUser'),
(5, 528, 'AppModelsUser'),
(5, 529, 'AppModelsUser'),
(5, 530, 'AppModelsUser'),
(5, 532, 'AppModelsUser'),
(5, 533, 'App\\Models\\User'),
(5, 534, 'App\\Models\\User'),
(5, 538, 'App/Models/User'),
(5, 539, 'App/Models/User'),
(5, 540, 'AppModelUser'),
(5, 542, 'App\\Models\\User'),
(5, 543, 'AppModelsUser'),
(5, 544, 'AppModelsUser'),
(5, 545, 'AppModelsUser'),
(5, 546, 'App\\Models\\User'),
(3, 550, 'App\\Models\\User'),
(5, 550, '\'App\\Models\\User\''),
(5, 551, '`App\\Models\\User`'),
(5, 551, 'App\\Models\\User'),
(5, 552, '`App\\Models\\User`'),
(5, 552, 'App\\Models\\User'),
(5, 553, 'App\\Models\\User'),
(5, 554, 'App\\Models\\User'),
(5, 555, 'App\\Models\\User'),
(5, 556, 'App\\Models\\User'),
(5, 558, 'App\\Models\\User'),
(5, 560, 'App\\Models\\User'),
(5, 561, 'App\\Models\\User'),
(5, 562, 'App\\Models\\User'),
(5, 564, 'App\\Models\\User'),
(5, 566, 'App\\Models\\User'),
(5, 567, 'App\\Models\\User'),
(5, 568, 'App\\Models\\User'),
(5, 569, 'App\\Models\\User'),
(5, 570, 'App\\Models\\User'),
(5, 571, 'App\\Models\\User'),
(5, 573, 'App\\Models\\User'),
(5, 574, 'App\\Models\\User'),
(5, 575, 'App\\Models\\User'),
(5, 577, 'App\\Models\\User'),
(5, 578, 'App\\Models\\User'),
(5, 582, 'App\\Models\\User'),
(5, 584, 'App\\Models\\User'),
(5, 585, 'App\\Models\\User'),
(5, 587, 'App\\Models\\User'),
(5, 588, 'App\\Models\\User'),
(5, 591, 'App\\Models\\User'),
(3, 592, 'App\\Models\\User'),
(5, 593, 'App\\Models\\User'),
(5, 594, 'App\\Models\\User'),
(3, 595, 'App\\Models\\User'),
(3, 596, 'App\\Models\\User'),
(3, 597, 'App\\Models\\User'),
(3, 598, 'App\\Models\\User'),
(3, 599, 'App\\Models\\User'),
(3, 600, 'App\\Models\\User'),
(3, 601, 'App\\Models\\User'),
(3, 602, 'App\\Models\\User'),
(5, 603, 'App\\Models\\User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;