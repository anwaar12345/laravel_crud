-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2020 at 01:46 PM
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
-- Table structure for table `csv_data`
--

CREATE TABLE `csv_data` (
  `id` int(11) NOT NULL,
  `csv_filename` text NOT NULL,
  `csv_header` text NOT NULL,
  `csv_data` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `csv_data`
--

INSERT INTO `csv_data` (`id`, `csv_filename`, `csv_header`, `csv_data`, `created_at`, `updated_at`) VALUES
(31, 'Date', 'Log in time ', 'Check Out Time', '2020-03-19 06:38:03', '2020-03-19 06:38:03'),
(32, 's', 's', 's', '2020-03-19 06:38:03', '2020-03-19 06:38:03'),
(33, '2nd March 2020', '10:00AM', '07:45pm', '2020-03-19 06:38:03', '2020-03-19 06:38:03'),
(34, '3rd march 2020', '10:00AM', '08:00pm', '2020-03-19 06:38:03', '2020-03-19 06:38:03'),
(35, '4th march 202', '10:20AM', '07:45pm', '2020-03-19 06:38:03', '2020-03-19 06:38:03');

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
(4, '2019_10_21_014513_create_products_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0778ada2927d573eadb9a31e9e64976457a1b339b95c49d4c7fc08fb69ec92fbb0afd85318f9c03e', 12, 1, 'MyApp', '[]', 0, '2020-03-10 21:25:39', '2020-03-10 21:25:39', '2021-03-10 14:25:39'),
('0b6f4e65192e0cb036f58ebe31fccbdf3be4c05511edf55d5d975e74d030d29016fd29b0af6ce759', 12, 1, 'MyApp', '[]', 0, '2020-03-11 19:46:12', '2020-03-11 19:46:12', '2021-03-11 12:46:12'),
('0eb78880a3d0e3496d1bb50b657a556d1a8c428e04be5fe9074c673adf1e1ce0d349f24e14e5111d', 12, 1, 'MyApp', '[]', 0, '2020-03-11 13:41:10', '2020-03-11 13:41:10', '2021-03-11 06:41:10'),
('212e12a032abb5f7c07b77c2165ddbf97340e8a7d9bdc1a10ed16a3a02a5547afa3e370e94c42300', 12, 1, 'MyApp', '[]', 0, '2020-03-11 13:37:19', '2020-03-11 13:37:19', '2021-03-11 06:37:19'),
('214dd81687ea8a8af46c317ce46a245a44bd4714fcd63833eebcc25b8504c47fae176840db9161f4', 12, 1, 'MyApp', '[]', 0, '2020-03-11 13:13:29', '2020-03-11 13:13:29', '2021-03-11 06:13:29'),
('3e956f619ecb0c895615d9a361789d283a18f3f414791b237f393121af3db055995dd2f1acc09bf1', 8, 1, 'MyApp', '[]', 0, '2020-03-10 21:10:10', '2020-03-10 21:10:10', '2021-03-10 14:10:10'),
('533d47a3e80a7834bc282ab4f30845f3b644acb9c8ff87bcee3800cea38c9c0dc592f76f979e5671', 12, 1, 'MyApp', '[]', 0, '2020-03-10 21:25:54', '2020-03-10 21:25:54', '2021-03-10 14:25:54'),
('5f88b7144ba0f8f8a3c091cbfcc09b8676332512375de0ec4c4ee78bbba301013b922d82c7754760', 12, 1, 'MyApp', '[]', 0, '2020-03-12 01:14:41', '2020-03-12 01:14:41', '2021-03-12 06:14:41'),
('6278748406b45784318703f4aa29fff0393009c2f9d4c95a2e21915e0c3d541695011d1a10b9fc48', 12, 1, 'MyApp', '[]', 0, '2020-03-11 18:44:44', '2020-03-11 18:44:44', '2021-03-11 11:44:44'),
('653b5e5f351a8aa2f011af9d64d338355046abc83eb8dbbcbf87e92eabff7312f8be73df741e8234', 12, 1, 'MyApp', '[]', 0, '2020-03-12 01:06:15', '2020-03-12 01:06:15', '2021-03-12 06:06:15'),
('7632b9d478d5c77f2b03dfaee060e935a2e9e6b99ad211f84df5a6441c4e42bd42b8f1f68c217fbd', 12, 1, 'MyApp', '[]', 0, '2020-03-11 20:31:31', '2020-03-11 20:31:31', '2021-03-11 13:31:31'),
('d461124f057cbb5d5ea6e8b98e13bf2b53d4665f4a13d374a564ac3cc556bf9abdb9e501db501f72', 8, 1, 'MyApp', '[]', 0, '2020-03-10 21:10:37', '2020-03-10 21:10:37', '2021-03-10 14:10:37'),
('d9612a0fd1d034ab6015fc30f263d0a962bebc004ae01d39c472056291521dd188b6ed2088598e8a', 12, 1, 'MyApp', '[]', 0, '2020-03-11 13:40:07', '2020-03-11 13:40:07', '2021-03-11 06:40:07'),
('dc2dc1ad905cac8fa7b3781b68e8b18efd015a8e287b3ab5bc99f3f6d132f2e95fdb4596d269673a', 8, 1, 'MyApp', '[]', 0, '2020-03-10 21:11:06', '2020-03-10 21:11:06', '2021-03-10 14:11:06'),
('e3c30b4fbe7a1a8e2c053dff9db559e7ac14233025dee98f27e7b04f08857426be8a8a3a4ac6a4c0', 12, 1, 'MyApp', '[]', 0, '2020-03-11 13:25:30', '2020-03-11 13:25:30', '2021-03-11 06:25:30'),
('f5f8db70fdba842594fe4663f1ce643a56aef06f1315ba3d0702e9f0226192daa02de87799d41169', 12, 1, 'MyApp', '[]', 0, '2020-03-11 18:46:56', '2020-03-11 18:46:56', '2021-03-11 11:46:56'),
('fe5acfbff8efde247c020380bbab9100263160b41f8654e3b1a1bf01d8ea68ea3c9177079a8315f0', 12, 1, 'MyApp', '[]', 0, '2020-03-11 13:39:24', '2020-03-11 13:39:24', '2021-03-11 06:39:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'N1GanbB14RNjRA8hMzJHPeQFfURfAy3zkFnKJXW4', 'http://localhost', 1, 0, 0, '2020-03-10 17:40:04', '2020-03-10 17:40:04'),
(2, NULL, 'Laravel Password Grant Client', 'iwhcNumDtK2vYYMZP0Ai5gPOSZTZRwcOLuYk7yW7', 'http://localhost', 0, 1, 0, '2020-03-10 17:40:04', '2020-03-10 17:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-03-10 17:40:04', '2020-03-10 17:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `uid`, `post`, `createdby`, `images`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, 'new post', 'shah', '[\"new_post0.PNG\"]', '2020-03-09 17:45:38', '2020-03-11 17:19:45', '2020-03-11 17:19:45'),
(2, 8, 'new post', 'sjah', '[\"new_post0.PNG\"]', '2020-03-09 17:45:50', '2020-03-11 17:34:47', '2020-03-11 17:34:47'),
(3, 3, 'ggg', 'shah post neew', '[\"ggg0.PNG\"]', '2020-03-09 17:46:57', '2020-03-11 14:49:56', '2020-03-11 14:49:56'),
(14, 3, 'new post in karachi j', 'poster', '[\"new_post_in_karachi_j0.png\"]', '2020-03-09 21:12:01', '2020-03-11 14:43:22', '2020-03-11 14:43:22'),
(15, 3, 'm', 's', '[\"m0.PNG\"]', '2020-03-09 22:05:43', '2020-03-11 14:39:37', '2020-03-11 14:39:37'),
(18, 8, 'finalcommit', 'comit', '[\"finalcommit0.PNG\"]', '2020-03-10 17:08:23', '2020-03-11 14:32:10', '2020-03-11 14:32:10'),
(20, 8, 'softdeleteChecking', 'Admin', '[\"softdeleteChecking0.png\"]', '2020-03-11 16:22:40', '2020-03-11 17:23:40', '2020-03-11 17:23:40'),
(21, 8, 'postnew1pm', 'cds', '[\"postnew1pm0.PNG\"]', '2020-03-11 17:25:28', '2020-03-11 17:32:49', '2020-03-11 17:32:49'),
(22, 8, 'AdminPost', 'sdccsd', '[\"AdminPost0.PNG\"]', '2020-03-11 17:25:42', '2020-03-11 17:30:41', '2020-03-11 17:30:41'),
(23, 12, 'postnew1pm', 'd', '[\"postnew1pm0.PNG\"]', '2020-03-11 17:39:55', '2020-03-11 17:39:58', '2020-03-11 17:39:58'),
(24, 12, 'postnew1pm', 'sdcdc', '[\"postnew1pm0.PNG\"]', '2020-03-11 17:41:22', '2020-03-11 18:03:06', '2020-03-11 18:03:06'),
(25, 12, 'trash checking', 'shah123', '[\"trash_checking0.png\"]', '2020-03-11 17:53:34', '2020-03-11 17:56:34', '2020-03-11 17:56:34'),
(26, 12, 'n', 'tc', '[\"n0.png\"]', '2020-03-11 17:56:55', '2020-03-11 17:57:16', '2020-03-11 17:57:16'),
(27, 8, 'postnew1pmadmin', 'saxds', '[\"postnew1pmadmin0.png\"]', '2020-03-11 17:59:38', '2020-03-11 18:00:19', '2020-03-11 18:00:19'),
(28, 12, 'shah', 'shah', '[\"shah0.PNG\"]', '2020-03-11 18:04:20', '2020-03-11 18:07:44', '2020-03-11 18:07:44'),
(29, 12, 'api', 'h', '[\"api0.PNG\"]', '2020-03-11 18:08:03', '2020-03-11 18:08:12', '2020-03-11 18:08:12'),
(30, 12, 'adminchechit', 'shah123', '[\"adminchechit0.png\"]', '2020-03-11 18:12:15', '2020-03-11 18:16:35', '2020-03-11 18:16:35'),
(31, 8, 'testadmin', 'admintest', '[\"testadmin0.png\"]', '2020-03-11 18:14:58', '2020-03-11 18:14:58', NULL),
(32, 12, 'Adminlastcheckituser', 'user', '[\"Adminlastcheckituser0.png\"]', '2020-03-11 18:16:21', '2020-03-19 03:03:10', '2020-03-19 03:03:10'),
(33, 8, 'from[project]', 'admintest', '[\"from[project]0.PNG\",\"from[project]1.png\"]', '2020-03-11 19:46:41', '2020-03-12 07:02:34', '2020-03-12 07:02:34'),
(34, 8, 'from[project1]', 'admintest', '[\"from[project1]0.PNG\",\"from[project1]1.jpg\",\"from[project1]2.png\"]', '2020-03-11 19:48:39', '2020-03-12 07:02:25', '2020-03-12 07:02:25'),
(35, 8, 'from[project2]', 'admintest', '[\"from[project2]0.PNG\",\"from[project2]1.jpg\",\"from[project2]2.jpg\",\"from[project2]3.png\"]', '2020-03-11 19:49:44', '2020-03-12 07:02:15', '2020-03-12 07:02:15'),
(36, 8, 'from[project3]', 'admintest', '[\"from[project3]0.PNG\",\"from[project3]1.jpg\",\"from[project3]2.jpg\",\"from[project3]3.jpg\",\"from[project3]4.png\"]', '2020-03-11 19:50:47', '2020-03-11 20:30:10', '2020-03-11 20:30:10'),
(37, 8, 'from[project4]', 'admintest', '[\"from[project4]0.PNG\",\"from[project4]1.jpg\",\"from[project4]2.jpg\",\"from[project4]3.jpg\",\"from[project4]4.png\"]', '2020-03-11 19:51:49', '2020-03-11 19:59:42', '2020-03-11 19:59:42'),
(38, 12, 'shahcheck5`', 'shah', '[\"shahcheck5`0.PNG\",\"shahcheck5`1.jpg\",\"shahcheck5`2.jpg\",\"shahcheck5`3.jpg\",\"shahcheck5`4.png\"]', '2020-03-11 20:02:02', '2020-03-11 20:02:28', '2020-03-11 20:02:28'),
(39, 8, 'checkpic', 'adminpic', '[\"checkpic0.jpg\",\"checkpic1.jpg\",\"checkpic2.jpg\",\"checkpic3.png\"]', '2020-03-11 20:23:34', '2020-03-11 20:24:21', '2020-03-11 20:24:21'),
(40, 8, 'tildacheck', 'tildatest', '[\"tildacheck0.jpg\",\"tildacheck1.png\"]', '2020-03-11 20:27:48', '2020-03-11 20:40:06', '2020-03-11 20:40:06'),
(41, 14, 'APITESTING TESTING last time check without images1', 'API Tester no images update', '[\"APITESTING_TESTING_last_time_check_without_images10.PNG\",\"APITESTING_TESTING_last_time_check_without_images11.jpg\",\"APITESTING_TESTING_last_time_check_without_images12.png\"]', '2020-03-12 06:35:01', '2020-03-12 06:49:13', '2020-03-12 06:49:13'),
(42, 14, 'APITESTING TESTING  postman', 'API Tester', '[\"APITESTING_TESTING__postman0.jpg\"]', '2020-03-12 06:50:27', '2020-03-12 06:50:27', NULL),
(43, 8, 'APITESTING TESTING last time check without images1', 'admin', '[\"APITESTING_TESTING_last_time_check_without_images10.jpg\",\"APITESTING_TESTING_last_time_check_without_images11.jpg\",\"APITESTING_TESTING_last_time_check_without_images12.jpg\",\"APITESTING_TESTING_last_time_check_without_images13.png\"]', '2020-03-12 07:03:37', '2020-03-12 07:03:37', NULL),
(44, 8, 'APITESTING TESTING last', 'admin', '[\"APITESTING_TESTING_last0.jpg\"]', '2020-03-12 07:04:11', '2020-03-12 07:04:11', NULL),
(45, 8, 'APITESTING TESTING', 'admin', '[\"APITESTING_TESTING0.jpg\",\"APITESTING_TESTING1.png\"]', '2020-03-12 07:04:46', '2020-03-12 07:04:46', NULL),
(46, 15, 'final test for api just checking', 'API Tester Final new', '[\"final_test_for_api_just_checking0.jpg\",\"final_test_for_api_just_checking1.jpg\"]', '2020-03-13 05:27:03', '2020-03-13 05:28:05', NULL),
(47, 15, '2 test', 'final', '[\"2_test0.PNG\"]', '2020-03-13 05:28:34', '2020-03-13 05:31:17', '2020-03-13 05:31:17'),
(48, 15, 'APITESTING TESTING last time check without images1', 'new', '[\"APITESTING_TESTING_last_time_check_without_images10.jpg\"]', '2020-03-13 05:28:58', '2020-03-13 05:28:58', NULL),
(49, 15, 'again test the api', 'API Tester Final', '[\"again_test_the_api0.jpg\"]', '2020-03-13 05:29:42', '2020-03-13 05:29:42', NULL),
(50, 8, 'APITESTING TESTING last time check without images1 k', 'final api', '[\"APITESTING_TESTING_last_time_check_without_images1_k0.PNG\",\"APITESTING_TESTING_last_time_check_without_images1_k1.PNG\",\"APITESTING_TESTING_last_time_check_without_images1_k2.PNG\"]', '2020-03-13 05:30:21', '2020-03-17 07:18:20', '2020-03-17 07:18:20'),
(51, 15, 'APITESTING TESTING', 'API Tester Final', '[\"APITESTING_TESTING0.PNG\"]', '2020-03-13 05:31:04', '2020-03-17 07:16:16', '2020-03-17 07:16:16'),
(52, 16, 'version  7 of laravel', 'version7', '[\"version__7_of_laravel0.PNG\"]', '2020-03-18 01:05:35', '2020-03-18 01:05:35', NULL),
(53, 12, 'post', 'last post', '[\"post0.png\"]', '2020-03-19 03:03:45', '2020-03-19 03:03:45', NULL),
(54, 17, 'csv user post', 'csv posted to check', '[\"csv_user_post0.png\"]', '2020-03-19 04:48:38', '2020-03-19 04:49:05', '2020-03-19 04:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `requestloggs`
--

CREATE TABLE `requestloggs` (
  `id` int(10) NOT NULL,
  `method` varchar(255) NOT NULL,
  `request` text NOT NULL,
  `response` text NOT NULL,
  `status` text NOT NULL,
  `api` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requestloggs`
--

INSERT INTO `requestloggs` (`id`, `method`, `request`, `response`, `status`, `api`, `updated_at`, `created_at`) VALUES
(132, '\"POST\"', '{\"name\":\"testapi\",\"email\":\"tester@gmail.com\",\"password\":\"shahji4444\"}', '{\"success\":true,\"token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC9sb2dpbjEiLCJpYXQiOjE1ODQ2MTk3OTIsImV4cCI6MTU4NDYyMzM5MiwibmJmIjoxNTg0NjE5NzkyLCJqdGkiOiJNd01BcDUwaWdXaWRCWGM1Iiwic3ViIjo4LCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.b3LIXaJM8TzfmsT9-5mbV0Y_cXwi2AuBFJGoB_FlnMo\"}', '200', 'http://127.0.0.1:8000/api/login1', '2020-03-19 07:09:53', '2020-03-19 07:09:53'),
(133, '\"POST\"', '{\"name\":\"testapi\",\"email\":\"tester@gmail.com\",\"password\":\"shahji4444\"}', '{\"success\":true,\"token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC9sb2dpbjEiLCJpYXQiOjE1ODQ2MTk4NjMsImV4cCI6MTU4NDYyMzQ2MywibmJmIjoxNTg0NjE5ODYzLCJqdGkiOiJwOFlmT1lIZkt4N1NpaEVLIiwic3ViIjo4LCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.54qF9oe5aTxuabCI_ahhKHY76bEKFsmMZ0LNUkJ1WNc\"}', '200', 'http://127.0.0.1:8000/api/login1', '2020-03-19 07:11:03', '2020-03-19 07:11:03'),
(134, '\"POST\"', '{\"name\":\"testapi\",\"email\":\"tester@gmail.com\",\"password\":\"shahji4444\"}', '{\"success\":true,\"token\":\"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC9sb2dpbjEiLCJpYXQiOjE1ODQ2MjA1NDIsImV4cCI6MTU4NDYyNDE0MiwibmJmIjoxNTg0NjIwNTQyLCJqdGkiOiJ2MDFKSEowSm05V2QyWUUwIiwic3ViIjo4LCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.h1UJQKQKN4li5Vhqt3aMrbyJ0ReXVEQM7svV0ktGLTM\"}', '200', 'http://127.0.0.1:8000/api/login1', '2020-03-19 07:22:22', '2020-03-19 07:22:22'),
(135, '\"GET\"', '{\"name\":\"testapi\",\"email\":\"tester@gmail.com\",\"password\":\"shahji4444\"}', '{\"success\":true,\"data\":[{\"id\":31,\"uid\":8,\"post\":\"testadmin\",\"createdby\":\"admintest\",\"images\":\"[\\\"testadmin0.png\\\"]\",\"created_at\":\"2020-03-11T23:14:58.000000Z\",\"updated_at\":\"2020-03-11T23:14:58.000000Z\",\"deleted_at\":null},{\"id\":42,\"uid\":14,\"post\":\"APITESTING TESTING  postman\",\"createdby\":\"API Tester\",\"images\":\"[\\\"APITESTING_TESTING__postman0.jpg\\\"]\",\"created_at\":\"2020-03-12T11:50:27.000000Z\",\"updated_at\":\"2020-03-12T11:50:27.000000Z\",\"deleted_at\":null},{\"id\":43,\"uid\":8,\"post\":\"APITESTING TESTING last time check without images1\",\"createdby\":\"admin\",\"images\":\"[\\\"APITESTING_TESTING_last_time_check_without_images10.jpg\\\",\\\"APITESTING_TESTING_last_time_check_without_images11.jpg\\\",\\\"APITESTING_TESTING_last_time_check_without_images12.jpg\\\",\\\"APITESTING_TESTING_last_time_check_without_images13.png\\\"]\",\"created_at\":\"2020-03-12T12:03:37.000000Z\",\"updated_at\":\"2020-03-12T12:03:37.000000Z\",\"deleted_at\":null},{\"id\":44,\"uid\":8,\"post\":\"APITESTING TESTING last\",\"createdby\":\"admin\",\"images\":\"[\\\"APITESTING_TESTING_last0.jpg\\\"]\",\"created_at\":\"2020-03-12T12:04:11.000000Z\",\"updated_at\":\"2020-03-12T12:04:11.000000Z\",\"deleted_at\":null},{\"id\":45,\"uid\":8,\"post\":\"APITESTING TESTING\",\"createdby\":\"admin\",\"images\":\"[\\\"APITESTING_TESTING0.jpg\\\",\\\"APITESTING_TESTING1.png\\\"]\",\"created_at\":\"2020-03-12T12:04:46.000000Z\",\"updated_at\":\"2020-03-12T12:04:46.000000Z\",\"deleted_at\":null},{\"id\":46,\"uid\":15,\"post\":\"final test for api just checking\",\"createdby\":\"API Tester Final new\",\"images\":\"[\\\"final_test_for_api_just_checking0.jpg\\\",\\\"final_test_for_api_just_checking1.jpg\\\"]\",\"created_at\":\"2020-03-13T10:27:03.000000Z\",\"updated_at\":\"2020-03-13T10:28:05.000000Z\",\"deleted_at\":null},{\"id\":48,\"uid\":15,\"post\":\"APITESTING TESTING last time check without images1\",\"createdby\":\"new\",\"images\":\"[\\\"APITESTING_TESTING_last_time_check_without_images10.jpg\\\"]\",\"created_at\":\"2020-03-13T10:28:58.000000Z\",\"updated_at\":\"2020-03-13T10:28:58.000000Z\",\"deleted_at\":null},{\"id\":49,\"uid\":15,\"post\":\"again test the api\",\"createdby\":\"API Tester Final\",\"images\":\"[\\\"again_test_the_api0.jpg\\\"]\",\"created_at\":\"2020-03-13T10:29:42.000000Z\",\"updated_at\":\"2020-03-13T10:29:42.000000Z\",\"deleted_at\":null},{\"id\":52,\"uid\":16,\"post\":\"version  7 of laravel\",\"createdby\":\"version7\",\"images\":\"[\\\"version__7_of_laravel0.PNG\\\"]\",\"created_at\":\"2020-03-18T06:05:35.000000Z\",\"updated_at\":\"2020-03-18T06:05:35.000000Z\",\"deleted_at\":null},{\"id\":53,\"uid\":12,\"post\":\"post\",\"createdby\":\"last post\",\"images\":\"[\\\"post0.png\\\"]\",\"created_at\":\"2020-03-19T08:03:45.000000Z\",\"updated_at\":\"2020-03-19T08:03:45.000000Z\",\"deleted_at\":null}],\"message\":\"Posts retrieved successfully.\"}', '200', 'http://127.0.0.1:8000/api/posts', '2020-03-19 07:23:10', '2020-03-19 07:23:10');

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
  `isadmin` int(20) NOT NULL DEFAULT 2,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `isadmin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Syed Anwar Ahmed Shah', 'syedanwar016@gmail.com', NULL, '$2y$10$4gMnhTgRQBiz5DVOf8RDX.zDM9FVYiMiVHhljw7/MNi1/gXXCHs1C', 2, NULL, '2020-03-03 21:44:23', '2020-03-03 21:44:23'),
(2, 'new user', 'syedanwar123@gmail.com', NULL, '$2y$10$tFCYuP4Rac6xkhYk1yIVROsVhVn2pZ84jo4qUXwZKngEvgl6xXuPW', 2, NULL, '2020-03-04 21:21:01', '2020-03-04 21:21:01'),
(3, 'new', 'new@gmail.com', NULL, '$2y$10$2SnA8aAVrzM.ZBKyQ/n4fOFGre3T26EDj0EUyxu9l4rEk07v813Sy', 2, NULL, '2020-03-05 13:33:02', '2020-03-05 13:33:02'),
(4, 'zohaib', 'zohaib@nextgeni.net', NULL, '$2y$10$2UC4ylafR/tLXt24YL4DFejQRnOT8AmKD7ryhlK9S4SKv7cHJmt5i', 2, NULL, '2020-03-05 14:12:29', '2020-03-05 14:12:29'),
(5, 'tester', 'test@gmail.com', NULL, '$2y$10$tVhvZZxdN.QuwnZKzmp5Aeuh5RmGfmyyR2P5AoAxKbVmzgcG1skVm', 2, NULL, '2020-03-05 21:32:22', '2020-03-05 21:32:22'),
(6, 'syed anwar ahmed shah', 'shah@shah', NULL, '$2y$10$yyJqhOPusUSUcUL7sIcnq.r5qfneVaQp8xngL/39yJj1YxR2zFTNK', 2, NULL, '2020-03-05 22:12:32', '2020-03-05 22:12:32'),
(7, 'test1', 'test1@gmail.com', NULL, '$2y$10$dP4c5NQwTCXe.DDKv7OoouCGXQVwsuWWSFPGfqpFM8wwufTtbmyqW', 2, NULL, '2020-03-05 23:29:59', '2020-03-05 23:29:59'),
(8, 'tester', 'tester@gmail.com', NULL, '$2y$10$0tWbY17c1tFsxzROu5y.8.dXoeBoxxd65RD.0.IU9HcWwtwfiJ86S', 1, NULL, '2020-03-09 14:56:26', '2020-03-09 14:56:26'),
(9, 'shah', 'shah@gmail.com', NULL, '$2y$10$w4F1AoZQhMBU9yw.gUHije0WMBFbANtqNAQclXO5r9hf6.YolblKa', 2, NULL, '2020-03-09 16:47:47', '2020-03-09 16:47:47'),
(10, 'shahtestuser', 'testuser@gmail.com', NULL, '$2y$10$/5H3EE.wdkwZRH/uHIqZFui3QNhZOO9xjz.bOcHsgsmRYh3YKqWSi', 2, NULL, '2020-03-09 17:51:07', '2020-03-09 17:51:07'),
(11, 'final', 'final@gmail.com', NULL, '$2y$10$8gNfRO3/GKpGMD1C2JOrzeSnQqq3KgPjIZKXsdNGBz2LgOkKZLIgm', 2, NULL, '2020-03-09 21:02:41', '2020-03-09 21:02:41'),
(12, 'syed anwar ahmed shah', 'shah123@gmail.com', NULL, '$2y$10$DTnudoFxHs/d432aTFY3FuaMYDMSY2REpTDcv5CUyPQd5UjqLATqe', 2, NULL, '2020-03-10 13:10:36', '2020-03-10 13:10:36'),
(13, 'apiuser', 'api@gmail.com', NULL, '$2y$10$7cQgoyEkn79b9xoWFxxj1.ljo4itNTvyn2Jg2gREaz2dBdasIeZxm', 2, NULL, '2020-03-11 20:16:42', '2020-03-11 20:16:42'),
(14, 'API Tester', 'apitest@gmail.com', NULL, '$2y$10$NrC6DZ9yVp/34Piuw.GCM.GAftRsDD.RY.awnJI3bZpKHNAo0TxaK', 2, NULL, '2020-03-12 06:33:47', '2020-03-12 06:33:47'),
(15, 'API Tester final', 'finalapi@gmail.com', NULL, '$2y$10$D8Wz.Z.bf40DiU3PRuyUpuJnRNE63gzYMu1xOXpSiIX3Mnynoa7aG', 2, NULL, '2020-03-13 05:25:58', '2020-03-13 05:25:58'),
(16, 'version 7', 'version7@gmail.com', NULL, '$2y$10$wOokvPO7OQlr1SXqeNLfqu7.pkDzAxzI7RIF1BF2kC/aNS.7cUPNC', 2, NULL, '2020-03-18 01:04:49', '2020-03-18 01:04:49'),
(17, 'csvuser', 'csv@gmail.com', NULL, '$2y$10$U.wi2M4PsS3ipz27hxQCcOn0XU5cZGKea8xAucviJKkJnMFeG/0MC', 2, NULL, '2020-03-19 04:47:33', '2020-03-19 04:47:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `csv_data`
--
ALTER TABLE `csv_data`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
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
-- Indexes for table `requestloggs`
--
ALTER TABLE `requestloggs`
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
-- AUTO_INCREMENT for table `csv_data`
--
ALTER TABLE `csv_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `requestloggs`
--
ALTER TABLE `requestloggs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
