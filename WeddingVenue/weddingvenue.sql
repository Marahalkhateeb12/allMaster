-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2022 at 10:00 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weddingvenue`
--

-- --------------------------------------------------------

--
-- Table structure for table `bases`
--

CREATE TABLE `bases` (
  `id` int(11) NOT NULL,
  `Service_name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bases`
--

INSERT INTO `bases` (`id`, `Service_name`) VALUES
(1, 'Special Screens for Display'),
(2, 'Air-conditioned Halls'),
(3, 'Shoot with the Latest Cameras'),
(4, 'Break Rooms for Grooms'),
(5, 'Parking'),
(6, 'Special Entrances for Mens and Womens'),
(7, 'Private Entrance for Grooms'),
(8, 'Animated Lighting/Laser Show\r\n'),
(9, 'Provide DJ with High-Level Equipment'),
(10, 'Instant Photography'),
(11, 'High Privacy in Women\'s Halls'),
(12, 'Book of Congratulations'),
(13, 'Dance Floor'),
(14, 'Cake Show'),
(15, 'Customized Coaches');

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `id` int(10) UNSIGNED NOT NULL,
  `subhall_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `Time` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `id` int(10) UNSIGNED NOT NULL,
  `hall_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hall_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hall_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hall_mobile` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`id`, `hall_name`, `hall_description`, `image`, `location`, `hours`, `hall_address`, `facebook`, `instagram`, `hall_mobile`, `created_at`, `updated_at`) VALUES
(3, 'Dar Al-salam Halls', 'A hall that holds all the meanings of excellence\r\nThe largest wedding hall in the North\r\nWidest Dedicated and Equipped Parking in Irbid', '1664125526.jpg', 'https://www.google.com/maps/dir/?api=1&destination=32.532450318623%2C35.877828598022&fbclid=IwAR2UlEMTzJbWHxz9eDdHmOIFDuSK6d0pW1lPnccTUxSkpFFKmIPSjvB0IHg', '9:00 am-11:00 pm', 'Irbid, Abu Rashid Street, opposite Abu Rashid Commercial Complex', 'https://web.facebook.com/DARALSALAMHALLS/?ref=page_internal', 'https://web.facebook.com/DARALSALAMHALLS/?ref=page_internal', 795100120, '2022-09-25 14:05:26', '2022-09-25 14:05:26'),
(4, 'Hayat Irbid Wedding Halls', 'One of the unique advantages and one of the only halls in the north that have the largest displays when the grooms look, let your view be dazzling for everyone', '1664127673.jpg', 'https://www.google.com/maps/dir/?api=1&destination=32.528868291678%2C35.868301391602&fbclid=IwAR0hAF5lT6vd5XnpoOnUT2TT5DrQn0mqBTxVwEjfmIl_TTDd2NV4oOx0Xmk', '9:00 am-11:00 pm', 'Irbid ,New Amman Complex - Behind Jet Buses', 'https://web.facebook.com/hayatirbid/?ref=page_internal', 'https://web.facebook.com/hayatirbid/?ref=page_internal', 792583536, '2022-09-25 14:41:13', '2022-09-25 14:41:13'),
(5, 'Shahrazad Halls', 'Shahrazad  looks at you with super beautiful and luxurious updates to satisfy your desires on the most beautiful night of a lifetime,Luxurious modern décor ,New Lights & Accessories ,Outstanding service.\r\n A prime location that suits all your guests', '1664131353.jpg', 'https://www.google.com/maps/dir/?api=1&destination=32.514729199498%2C35.871534062993&fbclid=IwAR1KhcYW_PVdJf14KqIamcRx8JlQuTxrUVibh10lJjNY9kPEf-CEwj6sn70', '9:00 am-11:00 pm', 'Irbid, Al Hosn Road south of Granada College by 200 meters', 'https://web.facebook.com/shahrazadhalls/about/?ref=page_internal', 'https://web.facebook.com/shahrazadhalls/about/?ref=page_internal', 777307311, '2022-09-25 15:42:33', '2022-09-25 15:42:33');

-- --------------------------------------------------------

--
-- Table structure for table `hall_bases`
--

CREATE TABLE `hall_bases` (
  `id` int(11) NOT NULL,
  `hall_id` int(10) NOT NULL,
  `base_service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hall_bases`
--

INSERT INTO `hall_bases` (`id`, `hall_id`, `base_service_id`) VALUES
(5, 3, 1),
(6, 3, 2),
(7, 3, 3),
(8, 3, 4),
(9, 3, 10),
(10, 3, 12),
(11, 3, 15),
(12, 3, 11),
(13, 4, 1),
(14, 4, 2),
(15, 4, 3),
(16, 4, 5),
(17, 4, 7),
(18, 4, 9),
(19, 4, 11),
(20, 4, 12),
(21, 4, 14),
(22, 4, 15),
(23, 5, 1),
(24, 5, 3),
(25, 5, 4),
(26, 5, 5),
(27, 5, 6),
(28, 5, 8),
(29, 5, 10),
(30, 5, 13),
(31, 5, 14),
(32, 5, 15);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(9, 'Heyam', 'heyam@gmail.com', 'Thank you wedco for helping me give my daughter the wedding of her dreams. You guys did a fantastic job of turning our thoughts into reality!!', '2022-09-25 12:02:15', '2022-09-25 12:02:15'),
(10, 'Heba', 'heba@gmail.com', 'Team Wedco executed extremely beautiful wedding', '2022-09-25 12:03:07', '2022-09-25 12:03:07'),
(11, 'Yamen', 'yamen@gmail.com', 'Thank you wedco for helping me', '2022-09-25 12:04:17', '2022-09-25 12:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_20_072236_create_sub__halls_table', 1),
(6, '2022_07_20_072427_create_halls_table', 1),
(7, '2022_07_20_072517_create_messages_table', 1),
(8, '2022_07_20_074453_create_reservations_table', 1),
(9, '2022_08_09_110922_create_services_table', 1),
(10, '2022_08_09_112821_create_subhall__services_table', 1),
(11, '2022_08_09_113149_create_dates_table', 1),
(12, '2022_07_20_133151_create_sub__hall__services_table', 2),
(13, '2022_08_04_133334_services', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `subhall_id` int(11) NOT NULL,
  `4:00-6:00` double NOT NULL,
  `6:00-8:00` double NOT NULL,
  `8:00-10:00` double NOT NULL,
  `10:00-12:00` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sub_hall_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `Time` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `sub_hall_id`, `created_at`, `updated_at`, `Time`, `date`, `status`) VALUES
(17, 10, 6, '2022-09-26 05:40:16', NULL, '4:00-6:00', '2022-10-07', 0),
(18, 11, 8, '2022-09-26 05:40:36', NULL, '10:00-12:00', '2022-10-20', 0),
(19, 12, 4, '2022-09-26 05:41:14', NULL, '10:00-12:00', '2022-10-19', 0),
(23, 17, 8, '2022-09-26 03:07:38', '2022-09-26 03:07:38', '6:00-8:00', '2022-10-12', 0),
(26, 17, 8, '2022-09-26 03:08:41', '2022-09-26 03:08:41', '8:00-10:00', '2022-10-19', 0),
(31, 19, 6, '2022-09-26 03:25:22', '2022-09-26 03:25:22', '10:00-12:00', '2022-10-15', 0),
(32, 19, 6, '2022-09-26 03:27:17', '2022-09-26 03:27:17', '4:00-6:00', '2022-10-28', 0),
(33, 19, 6, '2022-09-26 03:28:04', '2022-09-26 03:28:04', '4:00-6:00', '2022-10-19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_description`, `service_price`, `created_at`, `updated_at`) VALUES
(1, 'Special Sweets', 20, NULL, NULL),
(2, 'Syrian Zaffa', 100, NULL, NULL),
(3, 'Jordanian Zaffa', 95, NULL, NULL),
(4, 'Egyptian Zaffa', 80, NULL, NULL),
(5, 'Palestinian Zaffa', 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subhall__services`
--

CREATE TABLE `subhall__services` (
  `id` int(10) UNSIGNED NOT NULL,
  `subhall_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub__halls`
--

CREATE TABLE `sub__halls` (
  `id` int(10) UNSIGNED NOT NULL,
  `subhall_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subhall_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hall_id` int(10) UNSIGNED NOT NULL,
  `number_of_people_W` int(10) UNSIGNED NOT NULL,
  `number_of_people_M` int(10) UNSIGNED NOT NULL,
  `area` int(10) UNSIGNED NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub__halls`
--

INSERT INTO `sub__halls` (`id`, `subhall_name`, `subhall_description`, `hall_id`, `number_of_people_W`, `number_of_people_M`, `area`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Dar Al-Salam', 'Dar Al-Salam', 3, 300, 320, 300, '15.jpg', '3.jpg', '61.jpg', '76.jpg', '44.jpg', '28.jpg', '44.jpg', NULL, '2022-09-25 14:06:52', '2022-09-25 15:05:55'),
(5, 'Dahab', 'Dahab', 4, 350, 300, 350, '24.jpg', '22.jpg', '99.jpg', '27.jpg', '15.jpg', '91.jpg', '87.jpg', NULL, '2022-09-25 14:45:29', '2022-09-25 15:06:37'),
(6, 'Molokia', 'Molokia', 4, 350, 320, 340, 'x.jpg', 'x09.jpg', 'x267.jpg', 'xx.jpg', 'xUTC.jpg', 'x25.jpg', 'xk.jpg', NULL, '2022-09-25 14:53:03', '2022-09-25 14:53:03'),
(8, 'Royal', 'Royal', 4, 400, 360, 400, '15.jpg', '97.jpg', '65.jpg', '61.jpg', '59.jpg', '88.jpg', '49.jpg', NULL, '2022-09-25 15:09:23', '2022-09-25 15:09:23'),
(9, 'Shahrazad', 'Shahrazad', 5, 300, 290, 350, '5375.jpg', '857.jpg', '3231.jpg', '7752.jpg', '3632.jpg', '2758.jpg', '237.jpg', NULL, '2022-09-25 15:43:42', '2022-09-25 15:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `sub__hall__services`
--

CREATE TABLE `sub__hall__services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_hall_id` int(10) UNSIGNED NOT NULL,
  `Service_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub__hall__services`
--

INSERT INTO `sub__hall__services` (`id`, `sub_hall_id`, `Service_id`, `created_at`, `updated_at`) VALUES
(5, 4, 1, NULL, NULL),
(6, 4, 2, NULL, NULL),
(7, 4, 3, NULL, NULL),
(8, 4, 4, NULL, NULL),
(9, 4, 7, NULL, NULL),
(10, 4, 8, NULL, NULL),
(11, 5, 1, NULL, NULL),
(12, 5, 2, NULL, NULL),
(13, 5, 3, NULL, NULL),
(14, 5, 4, NULL, NULL),
(15, 5, 5, NULL, NULL),
(16, 6, 1, NULL, NULL),
(17, 6, 2, NULL, NULL),
(18, 6, 3, NULL, NULL),
(19, 6, 4, NULL, NULL),
(20, 6, 5, NULL, NULL),
(21, 8, 1, NULL, NULL),
(22, 8, 2, NULL, NULL),
(23, 8, 3, NULL, NULL),
(24, 8, 4, NULL, NULL),
(25, 8, 5, NULL, NULL),
(26, 9, 1, NULL, NULL),
(27, 9, 2, NULL, NULL),
(28, 9, 3, NULL, NULL),
(29, 9, 4, NULL, NULL),
(30, 9, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `user_mobile` bigint(20) UNSIGNED DEFAULT 778091889,
  `user_Address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Irbid Jordan',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `user_mobile`, `user_Address`, `remember_token`, `created_at`, `updated_at`) VALUES
(10, 'Marah Al-Khateeb', 'marahalkhateeb12@gmail.com', NULL, '$2y$10$dUPYu.kvulMCV5UK0FAvie.syIsd52JD72pGL2mY4iTiHc14R1vwO', 0, 796582365, 'Irbid ,Jordan', NULL, '2022-08-24 11:46:04', '2022-08-24 11:46:04'),
(11, 'Farah', 'farah@gmail.com', NULL, '$2y$10$UEyTIxAr1Nbe6x1gECRO5eKq9M/G8NdCOG5Or9kuLGeFgb0IexY6G', 0, 785469325, 'Amman, Jordan', NULL, '2022-08-24 11:49:23', '2022-08-24 11:52:07'),
(12, 'ahmad ahmad', 'ahmad@gmail.com', NULL, '$2y$10$TakB5R09v6JKFUKYyCAg2u1Rul./d5oQ/zfMuq5HCOU29jjLIgVXK', 0, 789654852, 'Amman ,Jordan', NULL, '2022-08-24 11:57:25', '2022-08-24 11:57:25'),
(17, 'Hanaa', 'mm@gmail.com', NULL, '$2y$10$1SE8DhlAm5RSCxjEAlzJz.fI.vjTb9XneRHGJ.sdByGV1uP4zuKgW', 0, 789654852, 'Amman ,Jordan', NULL, '2022-09-26 02:20:37', '2022-09-26 02:20:37'),
(19, 'test', 'test@gmail.com', NULL, '$2y$10$jeNo9X5JoXUUGBYtWyjOduYnRIc.1IsmdBmeA3GGUZL9KVMoWX392', 0, 778091889, 'Irbid Jordan', NULL, '2022-09-26 03:20:30', '2022-09-26 03:20:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bases`
--
ALTER TABLE `bases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dates_subhall_id_foreign` (`subhall_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `halls`
--
ALTER TABLE `halls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `halls_hall_name_unique` (`hall_name`),
  ADD UNIQUE KEY `halls_hall_mobile_unique` (`hall_mobile`);

--
-- Indexes for table `hall_bases`
--
ALTER TABLE `hall_bases`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_user_id_foreign` (`user_id`),
  ADD KEY `reservations_sub_hall_id_foreign` (`sub_hall_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subhall__services`
--
ALTER TABLE `subhall__services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subhall__services_subhall_id_foreign` (`subhall_id`),
  ADD KEY `subhall__services_service_id_foreign` (`service_id`);

--
-- Indexes for table `sub__halls`
--
ALTER TABLE `sub__halls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub__hall__services`
--
ALTER TABLE `sub__hall__services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub__hall__services_sub_hall_id_foreign` (`sub_hall_id`),
  ADD KEY `foreign key` (`Service_id`);

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
-- AUTO_INCREMENT for table `bases`
--
ALTER TABLE `bases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dates`
--
ALTER TABLE `dates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `halls`
--
ALTER TABLE `halls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hall_bases`
--
ALTER TABLE `hall_bases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subhall__services`
--
ALTER TABLE `subhall__services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub__halls`
--
ALTER TABLE `sub__halls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub__hall__services`
--
ALTER TABLE `sub__hall__services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dates`
--
ALTER TABLE `dates`
  ADD CONSTRAINT `dates_subhall_id_foreign` FOREIGN KEY (`subhall_id`) REFERENCES `sub__halls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_sub_hall_id_foreign` FOREIGN KEY (`sub_hall_id`) REFERENCES `sub__halls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subhall__services`
--
ALTER TABLE `subhall__services`
  ADD CONSTRAINT `subhall__services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subhall__services_subhall_id_foreign` FOREIGN KEY (`subhall_id`) REFERENCES `sub__halls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub__hall__services`
--
ALTER TABLE `sub__hall__services`
  ADD CONSTRAINT `sub__hall__services_sub_hall_id_foreign` FOREIGN KEY (`sub_hall_id`) REFERENCES `sub__halls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
