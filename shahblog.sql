-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2020 at 04:23 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shahblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_21_014513_create_products_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` bigint(20) NOT NULL DEFAULT 0,
  `post` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdby` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `uid`, `post`, `createdby`, `images`, `created_at`, `updated_at`) VALUES
(14, 0, 'shah', 'syed anwar shah', '', '2020-03-05 14:54:44', '2020-03-05 14:54:44'),
(15, 2, 'ggg', 'asssd', '', '2020-03-05 14:54:56', '2020-03-05 14:54:56'),
(16, 0, 'new post', 'saxas', '', '2020-03-05 14:55:08', '2020-03-05 14:55:08'),
(17, 0, 'new post', 'saccc', '', '2020-03-05 14:55:18', '2020-03-05 14:55:18'),
(19, 0, 'new post', 'zohaib', '', '2020-03-05 15:01:28', '2020-03-05 15:01:28'),
(20, 0, 'ggg', 'post', '', '2020-03-05 15:01:41', '2020-03-05 15:01:41'),
(21, 0, 'new post', 'shah', '', '2020-03-05 15:03:52', '2020-03-05 15:03:52'),
(22, 0, 'new post', 'sa', '', '2020-03-05 15:09:53', '2020-03-05 15:09:53'),
(23, 0, 'new post', 'shah', '', '2020-03-05 15:11:11', '2020-03-05 15:11:11'),
(25, 0, 'new post', 'sa', '', '2020-03-05 15:17:37', '2020-03-05 15:17:37'),
(26, 0, 'new post', 'author', '', '2020-03-05 15:28:33', '2020-03-05 15:28:33'),
(27, 0, 'ggg', 'asssd', '', '2020-03-05 18:50:39', '2020-03-05 18:50:39'),
(28, 0, 'ggg k', 'asssd', '', '2020-03-05 18:53:15', '2020-03-05 18:53:15'),
(29, 0, 'ggg', 'asssd', '', '2020-03-05 18:55:52', '2020-03-05 18:55:52'),
(31, 3, 'pagination checking ', 'new user', '', NULL, NULL),
(33, 3, 'checking', 'new user', '', NULL, NULL),
(34, 3, 'page 3', 'new user', '', NULL, NULL),
(35, 3, 'checking', 'new user', '', NULL, NULL),
(53, 0, 'new post', 'laravel', '', '2020-03-05 21:05:51', '2020-03-05 21:05:51'),
(54, 0, 'new post', 'new post', '', '2020-03-05 21:23:17', '2020-03-05 21:23:17'),
(55, 3, 'new post', 'new post', '', '2020-03-05 21:26:01', '2020-03-05 21:26:01'),
(56, 0, 'new post', 'new post', '', '2020-03-05 21:27:28', '2020-03-05 21:27:28'),
(57, 3, 'new post', 'new post', '', '2020-03-05 21:28:05', '2020-03-05 21:28:05'),
(59, 3, 'new post', 'new post', '', '2020-03-05 21:29:38', '2020-03-05 21:29:38'),
(60, 3, 'new post', 'shah', '', '2020-03-05 21:30:53', '2020-03-05 21:30:53'),
(62, 0, 'post from tester user new registered ki', 'tester', '', '2020-03-05 21:48:45', '2020-03-05 21:48:45'),
(63, 5, 'numer 3 post', 'tester', '', '2020-03-05 21:49:39', '2020-03-05 21:49:39'),
(64, 5, 'new post ki', 'the post', '', '2020-03-05 21:59:28', '2020-03-05 22:10:13'),
(65, 0, 'new post', 'the post', '', '2020-03-05 21:59:44', '2020-03-05 21:59:44'),
(66, 0, 'new post nji hkj', 'the post', '', '2020-03-05 22:01:53', '2020-03-05 22:01:53'),
(67, 0, 'new post ki', 'the post', '', '2020-03-05 22:03:05', '2020-03-05 22:03:05'),
(70, 6, 'new post', 's', '', '2020-03-05 22:53:09', '2020-03-05 22:53:09'),
(78, 3, 'zzohaub', 'hjh', 'zzohaub.png', '2020-03-06 21:16:51', '2020-03-06 21:16:51'),
(79, 3, 'new post', 'dsd', 'new post.png', '2020-03-06 21:25:50', '2020-03-06 21:25:50'),
(85, 3, 'new post', 'asxdcdf', 'new_post.PNG', '2020-03-06 21:43:06', '2020-03-06 21:43:06'),
(86, 3, 'new post', 's', 'new_post1.xlsx', '2020-03-06 21:54:45', '2020-03-06 21:54:45'),
(87, 3, 'new post', 'sd', 'new_post1.txt', '2020-03-06 21:56:24', '2020-03-06 21:56:24'),
(88, 3, 'new post ki', 'author', 'new_post_ki1.txt', '2020-03-06 21:58:16', '2020-03-06 21:58:16'),
(89, 3, 'new post', 'sacdf', '[\"new_post0.PNG\",\"new_post1.txt\"]', '2020-03-06 22:04:56', '2020-03-06 22:04:56'),
(90, 3, 'hi', 'post', '[\"hi0.PNG\"]', '2020-03-06 22:58:45', '2020-03-06 22:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Syed Anwar Ahmed Shah', 'syedanwar016@gmail.com', NULL, '$2y$10$4gMnhTgRQBiz5DVOf8RDX.zDM9FVYiMiVHhljw7/MNi1/gXXCHs1C', NULL, '2020-03-03 21:44:23', '2020-03-03 21:44:23'),
(2, 'new user', 'syedanwar123@gmail.com', NULL, '$2y$10$tFCYuP4Rac6xkhYk1yIVROsVhVn2pZ84jo4qUXwZKngEvgl6xXuPW', NULL, '2020-03-04 21:21:01', '2020-03-04 21:21:01'),
(3, 'new', 'new@gmail.com', NULL, '$2y$10$2SnA8aAVrzM.ZBKyQ/n4fOFGre3T26EDj0EUyxu9l4rEk07v813Sy', NULL, '2020-03-05 13:33:02', '2020-03-05 13:33:02'),
(4, 'zohaib', 'zohaib@nextgeni.net', NULL, '$2y$10$2UC4ylafR/tLXt24YL4DFejQRnOT8AmKD7ryhlK9S4SKv7cHJmt5i', NULL, '2020-03-05 14:12:29', '2020-03-05 14:12:29'),
(5, 'tester', 'test@gmail.com', NULL, '$2y$10$tVhvZZxdN.QuwnZKzmp5Aeuh5RmGfmyyR2P5AoAxKbVmzgcG1skVm', NULL, '2020-03-05 21:32:22', '2020-03-05 21:32:22'),
(6, 'syed anwar ahmed shah', 'shah@shah', NULL, '$2y$10$yyJqhOPusUSUcUL7sIcnq.r5qfneVaQp8xngL/39yJj1YxR2zFTNK', NULL, '2020-03-05 22:12:32', '2020-03-05 22:12:32'),
(7, 'test1', 'test1@gmail.com', NULL, '$2y$10$dP4c5NQwTCXe.DDKv7OoouCGXQVwsuWWSFPGfqpFM8wwufTtbmyqW', NULL, '2020-03-05 23:29:59', '2020-03-05 23:29:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
