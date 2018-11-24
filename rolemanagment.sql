-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2018 at 07:26 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rolemanagment`
--

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
(90, '2014_10_12_000000_create_users_table', 1),
(91, '2014_10_12_100000_create_password_resets_table', 1),
(92, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(93, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(94, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(95, '2016_06_01_000004_create_oauth_clients_table', 1),
(96, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(97, '2018_11_19_100443_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\User', 1),
(2, 'App\\User', 2),
(3, 'App\\User', 2),
(3, 'App\\User', 53);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0ac393e73a60cea2cc78d2ea32adffb5994e77bd21b302770f532723cbbd13de06aac656fa1e2b15', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 12:26:23', '2018-11-24 12:26:23', '2019-11-24 17:56:23'),
('244d03839d6ce35fca8afc2da35534d78052a49105ca769f03bb6baa87effdad6a94c2091c74f6b5', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 12:18:52', '2018-11-24 12:18:52', '2019-11-24 17:48:52'),
('2d9f00e3fabef5eedae8446f7db5c03ffcdc170a32418bc918e4dda8f2e2b1c3496744a1c1b1e7ac', 52, 1, 'Personal Access Token', '[]', 0, '2018-11-24 05:13:28', '2018-11-24 05:13:28', '2018-12-01 10:43:28'),
('30a59a49ad410c3ee0ed0187dc771098e4a0ed26e8c72cfebb001b5c8716d416652fd0522f46793b', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 09:00:42', '2018-11-24 09:00:42', '2019-11-24 14:30:42'),
('4e4f24d82e0af43d7144058b48cc503cf41bcfb4989cb5e174f0371ce1135b856bb71ab7d2963991', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 09:50:09', '2018-11-24 09:50:09', '2019-11-24 15:20:09'),
('4e621c50fb26c82e8b93fcd25b89e8d775c331364ec081016a3152f813d81e31b4cc17c4d7c06f9c', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 04:21:19', '2018-11-24 04:21:19', '2018-12-01 09:51:19'),
('52372029ad6e9035167df9dec718f2ae66d333adf5e4ae5f1839def9a0f37517f4bcfb385b68972b', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 09:50:07', '2018-11-24 09:50:07', '2019-11-24 15:20:07'),
('7c7b5302a5527a3f92a08ca0165b162d0bae387d1f2080237c8475bbe078891d7a1a06e6eecf7489', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 04:22:32', '2018-11-24 04:22:32', '2018-12-01 09:52:32'),
('8b2a199727a85c5cb9719faa288c0be7637729b350f01c809723ded054a2b7727805e28474a68aa9', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 04:25:45', '2018-11-24 04:25:45', '2019-11-24 09:55:45'),
('a547325dcc10585d549b6a1d264d0cadc4510fff9956b813e5d57c8367cf7901b77edd7032852fdc', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 04:23:37', '2018-11-24 04:23:37', '2018-12-01 09:53:37'),
('b013adbf6ef42a2c840a9ba3d2d38a5280fe12ae849f106ef3d2e2813dd4fcaf6f8a3507169d4056', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 04:04:16', '2018-11-24 04:04:16', '2019-11-24 09:34:16'),
('b818f9f37ca56424beb0dcdb0b94276cc71dc3083ea58dcdd4b6d96c31779441be060e0ffa54da77', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 12:26:38', '2018-11-24 12:26:38', '2019-11-24 17:56:38'),
('c15b3fd3f7cb1ab085a9c9291536392fac0d9f5c5cd8316d5a2025a9b16dae8030a2fdb6ebe70601', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 12:17:04', '2018-11-24 12:17:04', '2019-11-24 17:47:04'),
('cca42d73848bdcd1810eae2ebfcfffb2681766bf45182fe6b1d52db4261d6811bdf6b737f5d41fd5', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 09:48:04', '2018-11-24 09:48:04', '2019-11-24 15:18:04'),
('d4559e57e5647103a815450f4a289b2d5d1e58bd1a048f744f0a9e60809fd34cae61b983a13ef00e', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 12:17:43', '2018-11-24 12:17:43', '2019-11-24 17:47:43'),
('d6d642d9d8815eea5c8fb2c7b0ae1124f1f7ed21424affde351ac7c1e6263517c177681518812d15', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 12:17:42', '2018-11-24 12:17:42', '2019-11-24 17:47:42'),
('f52109cd58c2e0fd9c9911b5e0deb58572814d309d77a36abb1377db47d2693f4d4fbf2f6f2a1a1a', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 02:55:33', '2018-11-24 02:55:33', '2019-11-24 08:25:33'),
('f88fa51b2b5df424eaca32eb504d4072d5c070eb488f3bde7cf66047ef8390356e2be93951936ea3', 51, 1, 'Personal Access Token', '[]', 0, '2018-11-24 02:55:18', '2018-11-24 02:55:18', '2018-12-01 08:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, NULL, 'Laravel Role Managment Personal Access Client', 'eOZ4XniEn8C1wrOrCJMz8Yru0ZJsm81OV0nHXTSA', 'http://localhost', 1, 0, 0, '2018-11-24 02:19:47', '2018-11-24 02:19:47'),
(2, NULL, 'Laravel Role Managment Password Grant Client', 'N9IoY5nJwSWyeUIxpLgwWwAEaTINc2CuzIniTjBR', 'http://localhost', 0, 1, 0, '2018-11-24 02:19:47', '2018-11-24 02:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-11-24 02:19:47', '2018-11-24 02:19:47');

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
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Edit', 'api', '2018-11-24 07:26:44', '2018-11-24 07:26:44'),
(2, 'Delete', 'api', '2018-11-24 07:27:48', '2018-11-24 07:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'api', '2018-11-24 05:59:10', '2018-11-24 05:59:10'),
(3, 'Super Admin', 'api', '2018-11-24 05:59:33', '2018-11-24 05:59:38'),
(5, 'Teacher', 'api', '2018-11-24 12:54:16', '2018-11-24 12:54:16'),
(6, 'Student', 'api', '2018-11-24 12:54:26', '2018-11-24 12:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 5),
(2, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `active`, `activation_token`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Floyd Nikolausa', 'bergnaum.uriel@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 1, '2em3u46Y8F', 'RZ0UsAj2tt', '2018-11-24 02:19:13', '2018-11-24 12:02:50', NULL),
(2, 'Ivah Kuhn II', 'stan46@example.net', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 1, 'CoPMZEUGZq', '2bmlLDVFYX', '2018-11-24 02:19:13', '2018-11-24 12:02:47', NULL),
(3, 'Prof. Nona Kreiger', 'gutmann.hattie@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'l8DIT00KCE', '91dF8U5ql9', '2018-11-24 02:19:13', '2018-11-24 02:19:13', NULL),
(4, 'Mrs. Nova Heaney MD', 'russell36@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'oTJZYgoALt', 'BH3pHUVfcg', '2018-11-24 02:19:13', '2018-11-24 02:19:13', NULL),
(5, 'Ms. Adrianna Wiegand Jr.', 'yadira84@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'kTLz0uhTh2', '4MYEU4GxCy', '2018-11-24 02:19:14', '2018-11-24 02:19:14', NULL),
(6, 'Dr. Carlee Mosciski IV', 'lemuel01@example.net', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'DpOMvzifVx', 'R0h9R2aJYb', '2018-11-24 02:19:14', '2018-11-24 02:19:14', NULL),
(7, 'Eloisa Terry', 'johara@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'A6q4BfbQjM', 'SGIXigqhYD', '2018-11-24 02:19:14', '2018-11-24 02:19:14', NULL),
(8, 'Mr. Jeramy Wiegand DVM', 'lorenza14@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'xGdA40lk2n', 'Nt8BV0pJv7', '2018-11-24 02:19:14', '2018-11-24 02:19:14', NULL),
(9, 'Prof. Loyal McGlynn Jr.', 'gilda33@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'tiGTGqBVwc', 'WJKhwdA8mK', '2018-11-24 02:19:14', '2018-11-24 02:19:14', NULL),
(10, 'Edison Olson', 'nicklaus35@example.net', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'mJGwuzslRS', 'j3wh5Cp3Nb', '2018-11-24 02:19:14', '2018-11-24 02:19:14', NULL),
(11, 'Cara Kozey', 'kmertz@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'bJ1p3eQhEy', 'E5WBZUwc3J', '2018-11-24 02:19:14', '2018-11-24 02:19:14', NULL),
(12, 'Nick Rutherford MD', 'rogahn.billie@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'ZuHrQRnq37', 'NVgEeiO8Yd', '2018-11-24 02:19:14', '2018-11-24 02:19:14', NULL),
(13, 'Ashton Schultz', 'rmorar@example.net', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, '5SQsZu7oCY', 'Z0HtfKXC7S', '2018-11-24 02:19:14', '2018-11-24 02:19:14', NULL),
(14, 'Prof. Mack Bradtke', 'walker.mitchel@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'nW3JpmeijD', 'ganuzeeboy', '2018-11-24 02:19:14', '2018-11-24 02:19:14', NULL),
(15, 'Stephan Rau', 'swift.vito@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'm8hnNSZPGM', 'twbe9HBOBA', '2018-11-24 02:19:14', '2018-11-24 02:19:14', NULL),
(16, 'Mrs. Ellen Goyette', 'bernard63@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'KrmhgnMIcZ', 'GWoo13IkkR', '2018-11-24 02:19:14', '2018-11-24 02:19:14', NULL),
(17, 'Imelda Jast III', 'oharvey@example.net', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'A6ZrxJJb30', 'wp3rOEFg1u', '2018-11-24 02:19:14', '2018-11-24 02:19:14', NULL),
(18, 'Mr. Chris Wuckert V', 'peggie.doyle@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, '2SCkMO9wB4', 'INzvHW6rqS', '2018-11-24 02:19:14', '2018-11-24 02:19:14', NULL),
(19, 'Miss Cleta Kozey II', 'fboehm@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'nXLiOZJaBb', 'M1n9wOmRZF', '2018-11-24 02:19:15', '2018-11-24 02:19:15', NULL),
(20, 'Prof. Nels Hahn', 'emmanuel.hoppe@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'cS1HutoHfO', 'vG73ovI0ZP', '2018-11-24 02:19:15', '2018-11-24 02:19:15', NULL),
(21, 'Aleen Brekke IV', 'sdickinson@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'gaSl4WirdP', '9KH9htDEGz', '2018-11-24 02:19:15', '2018-11-24 02:19:15', NULL),
(22, 'Tony Berge', 'feil.lexi@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, '2egMk2HYrX', 'ITdDpDGnhV', '2018-11-24 02:19:15', '2018-11-24 02:19:15', NULL),
(23, 'Josefa Stoltenberg', 'wolson@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'A1G09GBGO8', 'VyBEPdwQID', '2018-11-24 02:19:15', '2018-11-24 02:19:15', NULL),
(24, 'Rick Bayer', 'larson.kris@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'wTcCm6jO28', 'ZbzyLa8dXf', '2018-11-24 02:19:15', '2018-11-24 02:19:15', NULL),
(25, 'Waylon Hauck', 'yundt.christian@example.net', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, '8CLqXDh4SG', 'OlidHr51UA', '2018-11-24 02:19:15', '2018-11-24 02:19:15', NULL),
(26, 'Kolby Heathcote', 'alysha.west@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'ABTcHyXCXR', 'mxNRQdbXny', '2018-11-24 02:19:15', '2018-11-24 02:19:15', NULL),
(27, 'Hallie Kshlerin IV', 'margarete39@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, '4AMYd0YmZj', 'pKNzYQHQoD', '2018-11-24 02:19:15', '2018-11-24 02:19:15', NULL),
(28, 'Lonnie Treutel', 'shakira01@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'Ws4ZkWKaJN', 'bnaB81wTWA', '2018-11-24 02:19:15', '2018-11-24 02:19:15', NULL),
(29, 'Cory Spencer', 'edythe.runolfsson@example.net', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'vNz2DzxOXt', 'IGlfjEqdPO', '2018-11-24 02:19:15', '2018-11-24 02:19:15', NULL),
(30, 'Macey Fahey', 'olson.maxine@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'aeONsmS5ez', 'tO0q7e6mC8', '2018-11-24 02:19:15', '2018-11-24 02:19:15', NULL),
(31, 'Felicita Kuhlman', 'jordane.windler@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'aO4Y9PT6gI', '1laug30toX', '2018-11-24 02:19:15', '2018-11-24 02:19:15', NULL),
(32, 'Annie Jaskolski', 'iortiz@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'WBCnIe58rB', 'CQAbAptU2i', '2018-11-24 02:19:16', '2018-11-24 02:19:16', NULL),
(33, 'Zechariah Leffler V', 'halvorson.edmond@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'WnObKipnN6', 'e4VfmmC1Ph', '2018-11-24 02:19:16', '2018-11-24 02:19:16', NULL),
(34, 'Hugh Fritsch', 'qlesch@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'qpM5VvK2lM', 'ACf5AkNt0P', '2018-11-24 02:19:16', '2018-11-24 02:19:16', NULL),
(35, 'Devyn Nienow III', 'hayes.ephraim@example.net', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'LnBfU6FQ5g', 'H5OmkED3dL', '2018-11-24 02:19:16', '2018-11-24 02:19:16', NULL),
(36, 'Dr. Melisa Murazik DVM', 'gdavis@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'CP6bobxBAx', 'X6kOHKx2T4', '2018-11-24 02:19:16', '2018-11-24 02:19:16', NULL),
(37, 'Verner Nicolas I', 'keely.mclaughlin@example.net', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'DseRXHB0NB', 'dnzOL8dMmC', '2018-11-24 02:19:16', '2018-11-24 02:19:16', NULL),
(38, 'Dr. Heaven Paucek PhD', 'feil.kaylee@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, '6Fmc0M2qXp', 'Gd2fokKbeD', '2018-11-24 02:19:16', '2018-11-24 02:19:16', NULL),
(39, 'Dr. Sid Parisian', 'schamberger.jacinthe@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'NHAyzoURc2', 'IQwgePnK4l', '2018-11-24 02:19:16', '2018-11-24 02:19:16', NULL),
(40, 'Sandra Lakin', 'rowena84@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'LkbgOWUHmF', 'niyQT4DWbr', '2018-11-24 02:19:16', '2018-11-24 02:19:16', NULL),
(41, 'Dr. Justen Deckow Sr.', 'demarcus79@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, '033tRddhUG', 'UeKBrbKALE', '2018-11-24 02:19:16', '2018-11-24 02:19:16', NULL),
(42, 'Boyd Labadie', 'uschinner@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'zZAFVsFBb9', 'D3BPTXUGLy', '2018-11-24 02:19:16', '2018-11-24 02:19:16', NULL),
(43, 'Lincoln Conn', 'luna06@example.com', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'ec92JRFq1Y', 'bQyvR9VDJ0', '2018-11-24 02:19:16', '2018-11-24 02:19:16', NULL),
(44, 'Clemens Feest', 'jonathon04@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, '46jRLktXxp', 'YJ04WeM2mi', '2018-11-24 02:19:16', '2018-11-24 02:19:16', NULL),
(45, 'Ms. Anita Wiegand', 'akeem61@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'gEJFE9zfcb', 'bpFTvgnioz', '2018-11-24 02:19:16', '2018-11-24 02:19:16', NULL),
(46, 'Annie Jacobson DDS', 'sawayn.vito@example.net', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'sV5fscH71w', 'qgNRvADenO', '2018-11-24 02:19:17', '2018-11-24 02:19:17', NULL),
(47, 'Mr. Dudley Wolff', 'mstoltenberg@example.net', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'g1eXHPsveI', 'eOBg7JoP12', '2018-11-24 02:19:17', '2018-11-24 02:19:17', NULL),
(48, 'Dr. Jesus Morar DVM', 'maximilian.jacobi@example.org', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'RpYYfzlicK', '7O3qvQpbh3', '2018-11-24 02:19:17', '2018-11-24 02:19:17', NULL),
(49, 'Sadye Cummings', 'wilford.ferry@example.net', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'IEkV9JVwRM', 'rv760NjPLW', '2018-11-24 02:19:17', '2018-11-24 02:19:17', NULL),
(50, 'Lavada Waelchi', 'denis.hills@example.net', '2018-11-24 02:19:13', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'avatar.png', 0, 'nUBCusx5nx', 'JuB6aeFczj', '2018-11-24 02:19:17', '2018-11-24 02:19:17', NULL),
(51, 'user', 'bm65556@gmail.com', '2018-11-24 02:38:22', '$2y$10$JU6X.pevuayI.wH2lmpsm.fzlb6TeU3lLwnzrajL697y31gyuVUYy', 'avatar.png', 1, '', NULL, '2018-11-24 02:20:13', '2018-11-24 02:38:22', NULL),
(52, 'Bhanuka Rathnayaka', 'bhanuka2017@gmail.com', '2018-11-24 02:53:00', '$2y$10$v7dbQ/055F5HCelxz0WUI..x1qPwP8JkZtUnYMUh0hgatb4JsbUfu', 'avatar.png', 1, '', NULL, '2018-11-24 02:51:08', '2018-11-24 02:53:00', NULL),
(53, 'test', 'nbnbnm@lk.com', NULL, '$2y$10$tEHB7Sh7c10yFSPf0Atb.OkV91yhk9m80t66zP3RoaCyYle6iV1tu', 'avatar.png', 0, 'ioabtMMfSL3sPaDa5xyRWW5fK0sQyVz7n6CI7iXjyIM9opwoHi0c4vMSIh7K', NULL, '2018-11-24 12:24:34', '2018-11-24 12:24:34', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
