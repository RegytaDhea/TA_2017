-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2017 at 09:35 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lunar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `job_title`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dhea', 'admin@tes.com', 'Staf', '$2y$10$aIRccLpOBEDuD7T6k1U/n.QUtriq27gys2qDKWQwLQYWZmdl3jS7S', NULL, '2017-11-18 21:05:31', '2017-11-18 21:05:31'),
(3, 'diyan', 'diyan@tes.com', '', '$2y$10$ACn/MJD7CBHm4pumIzYQOuaMmAMWfI/ZqQjikgXHcSBFHw6zxePAW', NULL, '2017-11-21 08:33:57', '2017-11-21 08:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `dokters`
--

CREATE TABLE `dokters` (
  `number` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bagian` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokters`
--

INSERT INTO `dokters` (`number`, `date`, `nama`, `bagian`, `created_at`, `updated_at`) VALUES
(1, '2017-11-13', 'reisa', 'kandungan', '2017-11-22 07:17:07', '2017-11-22 07:17:07'),
(2, '2017-11-01', 'ayu', 'kesehatan gigi', '2017-11-08 23:27:38', '2017-11-29 21:21:34'),
(3, '2017-12-18', 'diyan ayu', 'bedah jantung', '2017-11-22 08:18:39', '2017-11-22 08:18:39');

-- --------------------------------------------------------

--
-- Table structure for table `kamars`
--

CREATE TABLE `kamars` (
  `number` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `kamar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tersedia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kamars`
--

INSERT INTO `kamars` (`number`, `date`, `kamar`, `tersedia`, `created_at`, `updated_at`) VALUES
(1, '2017-11-08', 'VVIP', '5', '2017-11-22 06:23:09', '2017-11-22 06:23:09'),
(2, '2017-11-14', 'Reguler', '10', NULL, NULL);

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
(3, '2017_11_18_073133_create_admins_table', 1),
(4, '2017_11_22_130440_create_kamars_table', 2),
(5, '2017_11_22_140738_create_dokters_table', 3);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'regyta', 'dhea@tes.com', '$2y$10$N1RIErigV3Z0BhDytnsnV.0V8iBcNErWeFnYgcPoVaWiU5nRv0l4O', 'XGmK40qUSgApOACukIMdwIMEYmB2MIMscAaXDwXPPhMWJbGgasxvdXoV9Wuv', '2017-11-18 00:50:03', '2017-11-18 00:50:03'),
(2, 'dhea', 'regyta@tes.com', '$2y$10$BsfuNFc1GBwlEkmEm883R.8o9kjDFt12fyw61JFd/CR7EQa63d0je', '1l79xtGaBO714ZKs8qOeVfEiWlCJiNQucFM3wm7ZzfKs0X07PqfcN8BKKU9E', '2017-11-18 00:50:47', '2017-11-18 00:50:47'),
(3, 'ayu', 'ayu@tes.com', '$2y$10$SQjphOfAiIzanY3rECHz8.KL7vzcAkyK6zZtz.f4y2tA6vIUKlYQq', 'ZXTCkMN4V8tJQ6a6dPAVTSDF9aHciNXA5BfJDVOMev1Oox54rcxXC4PyVKLR', '2017-11-18 00:51:09', '2017-11-18 00:51:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `dokters`
--
ALTER TABLE `dokters`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `kamars`
--
ALTER TABLE `kamars`
  ADD PRIMARY KEY (`number`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dokters`
--
ALTER TABLE `dokters`
  MODIFY `number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kamars`
--
ALTER TABLE `kamars`
  MODIFY `number` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
