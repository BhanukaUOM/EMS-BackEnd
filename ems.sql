-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2020 at 02:08 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `year` int(10) UNSIGNED NOT NULL,
  `month` int(10) UNSIGNED NOT NULL,
  `day` int(10) UNSIGNED NOT NULL,
  `state` tinyint(1) NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `user_id`, `year`, `month`, `day`, `state`, `class_id`, `created_at`, `updated_at`, `student_id`) VALUES
(1, 6, 2018, 1, 22, 0, 1, '2019-01-01 18:30:00', '2019-01-21 10:36:23', NULL),
(3, 6, 2018, 1, 21, 1, 1, '2019-01-21 09:32:36', '2019-01-21 09:32:36', NULL),
(4, 6, 2018, 12, 10, 1, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36', NULL),
(5, 6, 2018, 12, 21, 0, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36', NULL),
(6, 6, 2018, 12, 7, 1, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36', NULL),
(7, 6, 2019, 1, 22, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `grade` int(10) UNSIGNED NOT NULL,
  `sub_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `grade`, `sub_class`, `teacher_id`, `created_at`, `updated_at`) VALUES
(2, 12, 'A', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_has_subjects`
--

CREATE TABLE `class_has_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_admins`
--

CREATE TABLE `company_admins` (
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

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `mark` int(10) UNSIGNED NOT NULL,
  `term` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_results`
--

INSERT INTO `exam_results` (`id`, `student_id`, `subject_id`, `mark`, `term`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 100, 1, NULL, NULL),
(2, 1, 2, 99, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guardians`
--

CREATE TABLE `guardians` (
  `id` int(10) UNSIGNED NOT NULL,
  `relation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guardians`
--

INSERT INTO `guardians` (`id`, `relation`, `nic`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Father', '221212121v', 5, '2019-01-21 18:30:00', '2018-11-23 09:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `guardian_student`
--

CREATE TABLE `guardian_student` (
  `guardian_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guardian_student`
--

INSERT INTO `guardian_student` (`guardian_id`, `student_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `latitude` double(8,2) NOT NULL,
  `longitude` double(8,2) NOT NULL,
  `accuracy` int(11) DEFAULT NULL,
  `altitude` int(11) DEFAULT NULL,
  `altitudeAccuracy` int(11) DEFAULT NULL,
  `heading` int(11) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `file`, `file_type`, `date`, `subject_id`, `active`, `created_at`, `updated_at`) VALUES
(4, 'https://ems.aladinlabs.com/storage/files/2019P_v2.pdf', 'pdf', '2019-01-22 00:00:00', 1, 1, '2019-01-22 18:30:00', '2019-01-22 18:30:00'),
(5, 'https://ems.aladinlabs.com/storage/files/B15.xls', 'xls', '2019-01-22 00:00:00', 1, 1, '2019-01-22 18:30:00', '2019-01-22 18:30:00'),
(6, 'https://ems.aladinlabs.com/storage/files/Confirmation_of_Identity_letter_IN_2900.docx', 'docx', '2019-01-26 00:00:00', 2, 1, '2019-01-22 18:30:00', '2019-01-22 18:30:00'),
(7, 'https://ems.aladinlabs.com/storage/files/download.jpg', 'jpg', '2019-01-23 00:00:00', 1, 1, '2019-01-22 18:30:00', '2019-01-22 18:30:00');

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
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2018_11_19_100443_create_permission_tables', 1),
(10, '2018_11_27_073735_create_locations_table', 1),
(11, '2018_11_27_073748_create_notices_table', 1),
(12, '2018_11_27_073752_create_user_has__notices_table', 1),
(13, '2019_01_19_142519_create_notice_read_statuses_table', 1),
(14, '2019_01_19_142757_create_company_admins_table', 1),
(15, '2019_01_20_083432_create_students_table', 2),
(16, '2019_01_20_091637_create_guardians_table', 2),
(18, '2014_10_10_112300_create_packages_table', 3),
(21, '2014_10_11_141947_create_schools_table', 4),
(22, '2019_01_21_114103_create_payments_table', 4),
(23, '2019_01_21_115924_create_school_payments_table', 5),
(24, '2019_01_21_120732_create_attendances_table', 5),
(25, '2019_01_20_062531_create_teachers_table', 6),
(26, '2019_01_20_073500_create_classes_table', 6),
(27, '2019_01_21_120704_create_subjects_table', 6),
(28, '2019_01_21_121603_create_materials_table', 6),
(30, '2019_01_21_124531_create_qualifications_table', 6),
(31, '2019_01_21_124614_create_teacher_has_qualifications_table', 6),
(32, '2019_01_21_195203_create_notice_user_table', 6),
(36, '2019_01_24_145453_subject_group', 9),
(38, '2019_01_23_095520_create_time_tables_table', 10),
(39, '2019_01_24_145553_subject_group_subject', 10),
(40, '2019_01_24_151708_guardian_student', 11),
(41, '2019_01_25_145547_create_exam_results_table', 12);

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
(1, 'App\\User', 2),
(1, 'App\\User', 4),
(2, 'App\\User', 1),
(3, 'App\\User', 3),
(4, 'App\\User', 7),
(5, 'App\\User', 6),
(6, 'App\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice_from` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `title`, `content`, `notice_from`, `created_at`, `updated_at`) VALUES
(1, 'test', 'notice content', 1, '2019-01-21 18:30:00', '2019-01-23 10:10:08'),
(2, 'Admin', 'ddjg dfg fdg fdg df g d f gd f gdfgdfgdfgd', 3, '2019-01-23 07:45:11', '2019-01-23 07:45:11'),
(3, 'Admin', 'ddjg dfg fdg fdg df g d f gd f gdfgdfgdfgd', 3, '2019-01-23 07:45:30', '2019-01-23 07:45:30'),
(4, 'Admin', 'ddjg dfg fdg fdg df g d f gd f gdfgdfgdfgd', 3, '2019-01-23 07:48:48', '2019-01-23 07:48:48'),
(5, 'Admin', 'ddjg dfg fdg fdg df g d f gd f gdfgdfgdfgd', 3, '2019-01-23 07:51:22', '2019-01-23 07:51:22'),
(6, 'Admin', 'ddjg dfg fdg fdg df g d f gd f gdfgdfgdfgd', 3, '2019-01-23 07:51:41', '2019-01-23 07:51:41'),
(7, 'Admin', 'ddjg dfg fdg fdg df g d f gd f gdfgdfgdfgd', 3, '2019-01-23 07:52:50', '2019-01-23 07:52:50'),
(8, 'Admin', 'ddjg dfg fdg fdg df g d f gd f gdfgdfgdfgd', 3, '2019-01-23 07:53:00', '2019-01-23 07:53:00'),
(9, 'Admin', 'ddjg dfg fdg fdg df g d f gd f gdfgdfgdfgd', 3, '2019-01-23 07:54:06', '2019-01-23 07:54:06'),
(10, 'Admin', 'ddjg dfg fdg fdg df g d f gd f gdfgdfgdfgd', 3, '2019-01-23 07:56:28', '2019-01-23 07:56:28'),
(11, 'Admin', 'ddjg dfg fdg fdg df g d f gd f gdfgdfgdfgd', 3, '2019-01-23 07:56:48', '2019-01-23 07:56:48'),
(12, 'Admin', 'ddjg dfg fdg fdg df g d f gd f gdfgdfgdfgd', 3, '2019-01-23 07:57:27', '2019-01-23 07:57:27'),
(14, 'jfghjfd gfd gmdfmgdf', 'ddjg dfg fdg fdg df g d f gd f gdfgdfgdfgd', 3, '2019-01-23 09:45:12', '2019-01-23 09:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `notice_read_statuses`
--

CREATE TABLE `notice_read_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `notice_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice_read_statuses`
--

INSERT INTO `notice_read_statuses` (`id`, `notice_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-11-27 18:30:00', '2018-11-23 09:42:36'),
(2, 1, 2, '2018-11-27 18:30:00', '2018-11-23 09:42:36'),
(3, 1, 6, '2019-01-23 08:01:21', '2019-01-23 08:01:21'),
(4, 1, 3, '2020-11-02 13:01:31', '2020-11-02 13:01:31'),
(5, 1, 7, '2020-11-02 13:08:29', '2020-11-02 13:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `notice_users`
--

CREATE TABLE `notice_users` (
  `isRoleBased` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `notice_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice_users`
--

INSERT INTO `notice_users` (`isRoleBased`, `user_id`, `role_id`, `notice_id`, `created_at`, `updated_at`) VALUES
(0, 1, NULL, 1, '2018-11-27 18:30:00', '2018-11-23 09:42:36'),
(1, NULL, 6, 1, '2018-11-27 18:30:00', '2018-11-23 09:42:36'),
(1, NULL, 1, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36'),
(1, NULL, 2, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36'),
(1, NULL, 3, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36'),
(1, NULL, 4, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36'),
(1, NULL, 5, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36'),
(1, NULL, 6, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36'),
(0, 2, NULL, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36'),
(0, 3, NULL, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36'),
(0, 4, NULL, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36'),
(0, 5, NULL, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36'),
(0, 6, NULL, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36'),
(0, 3, NULL, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36'),
(0, 4, NULL, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36'),
(0, 5, NULL, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36'),
(0, 6, NULL, 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36'),
(1, NULL, 1, 12, '2019-01-23 07:57:27', '2019-01-23 07:57:27'),
(0, 1, NULL, 12, '2019-01-23 07:57:28', '2019-01-23 07:57:28'),
(1, NULL, 1, 14, '2019-01-23 09:45:12', '2019-01-23 09:45:12'),
(0, 1, NULL, 14, '2019-01-23 09:45:12', '2019-01-23 09:45:12');

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
('0204987fae0ae30a5beec62ac6fc8bc34368250ab6104135cd5ddf79244ef30595c72ed5bfbd9b85', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 03:11:23', '2019-01-23 03:11:23', '2019-04-24 08:41:23'),
('04ea2d63b5a17e9cb7c0ec489b4bfadd5c2b83cf1bf7efc48c5305958a43fe570079990b0a004137', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:41:32', '2019-01-23 02:41:32', '2019-04-24 08:11:32'),
('050c4be8899ad83d420beae3ffd909771ea3711dc14dc356138bc338c213f8b53915e25c06cdb729', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:44:38', '2019-01-22 12:44:38', '2019-04-23 18:14:38'),
('067d2c4d8220191ea75fd68e079ff014dbafc510861e823cfa0ac4ea26f19afa42491601e1cb9c0c', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:10:25', '2019-01-23 02:10:25', '2019-04-24 07:40:25'),
('06c47170070313ed43c105d418a171136109e286c46710a1e7a9af43633e566e82b92325c22465a0', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:59:20', '2019-01-23 01:59:20', '2019-04-24 07:29:20'),
('07e16372a6cfd6229c7896cad5cf3d6e230618a013f8246361550def2085adf03f36c3d0c456b39c', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:50:51', '2019-01-23 02:50:51', '2019-04-24 08:20:51'),
('08fd8acb9b352fc32c736f613208ab4c970858620b172e985aa9c73af8c230df541e4cba15beab7d', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:23:30', '2019-01-22 13:23:30', '2019-04-23 18:53:30'),
('0962f6694911690a499f5b92a779c37c7bbcaa128a5d0ea8f9b3f12cb8f648f5cf3fb723079d70db', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:52:45', '2019-01-22 13:52:45', '2019-04-23 19:22:45'),
('097c55a7f586d4cac709f4cf35bde3e0d2e1689079319084278f55507001667347184bc76b9a81e3', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:07:33', '2019-01-22 12:07:33', '2020-01-22 17:37:33'),
('0a718ae989536ee91aac2910188d12af796061c874d21896ac81340a03d558555934bc6d0a4ff536', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:06:08', '2019-01-23 01:06:08', '2019-04-24 06:36:08'),
('0b1e307302f0c15e8eb1c5f7102cb2aa509505d8c13616a7a1002b1001c9574efa25547f046527a4', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:36:08', '2019-01-22 13:36:08', '2019-04-23 19:06:08'),
('0e0b31df8a3b9bdb3cd58adf4998f0f153f1d8c7a3c38e16b20ad9fd851762b6dbe166522db2901f', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:03:26', '2019-01-23 02:03:26', '2019-04-24 07:33:26'),
('10359d8c0fa613ef242d9a90fb5abe8d59c6f0d30604db78aca24384d14b606c77f59a7b24c3080c', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:26:06', '2019-01-22 13:26:06', '2019-04-23 18:56:06'),
('118a90f35095f442826b5c23e1428c543e0a4ac2d6ba941068ba77a172838f15d66d4bf0bafe5289', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-21 12:05:20', '2019-01-21 12:05:20', '2020-01-21 17:35:20'),
('11bb37dc655cdf88bc5d004d3523b91286b440aa486aeb8d3ca497e0a3f2fca44e947a3a527d6794', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 14:30:15', '2019-01-22 14:30:15', '2019-04-23 20:00:15'),
('11e1f23f3ac4e2aeb8d343dd3c76ed49db7237fa394867a7c106d406cda543ba99dfd94def57bef5', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:37:01', '2019-01-22 13:37:01', '2019-04-23 19:07:01'),
('1282b963a0a46fae38202369a4dd4a41b3055c2476b99f0059557a8ae64c3dbefa97593de2433e05', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-23 10:11:15', '2019-01-23 10:11:15', '2019-04-24 15:41:16'),
('1423d7e0bb3b456840f2da74f0455e388108a6382c8ba3089a281a95e5f5dc1d4b304575e0ad1258', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:52:08', '2019-01-23 02:52:08', '2019-04-24 08:22:08'),
('19473a20d25fa26fc26b4fd0356287800f0b0e5dd614730b2a2ba57c94a280771bbf85425d162cc3', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-23 07:44:13', '2019-01-23 07:44:13', '2019-04-24 13:14:14'),
('1e07c617fa27b68f61b8e96eea1df171e710da7c08b6160f24ef466e0161f10f103fc5ae6eea1ae8', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:12:27', '2019-01-23 02:12:27', '2019-04-24 07:42:27'),
('1e307a05ef7ec4f20cdfba137de81c1b54ac9b8c316a28127a933e756fdb4d3cb151fb19ba6c9034', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:30:24', '2019-01-22 12:30:24', '2019-04-23 18:00:24'),
('20c036882caf2c12ac9aaf56eb5edabddfd39c39d44c8f72f89c8fda23050562176d762057c0ed53', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:23:30', '2019-01-22 13:23:30', '2019-04-23 18:53:30'),
('21e70079ebc052ae84e9aa1e55da4e4477842fa02a5f7bff034cd02cb4889881b60624386ff116e5', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:31:32', '2019-01-22 12:31:32', '2019-04-23 18:01:32'),
('249bcf63650b6b1bc4a33374a6af73aca176f105d6094a88a8234a502eb44ba67504a016de363db8', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 00:59:06', '2019-01-23 00:59:06', '2019-04-24 06:29:06'),
('25c891662b37bd96ad99f6196d8411a13cc9d75a4d79e06b500c19d980a67304654934629d4de67a', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:12:46', '2019-01-22 12:12:46', '2019-04-23 17:42:46'),
('2743b57c0eebf554e2de92f7746dbbf7aa526f823d7bf5204e405a0fa0d3ebe43e48711353df4fca', 1, 3, 'Personal Access Token', '[]', 0, '2019-01-21 14:01:31', '2019-01-21 14:01:31', '2020-01-21 19:31:31'),
('27ec46e6ee0ab22357f7bb468a4f42ce741d70e18313596baa3f229eb8f4bbddb5f6848f31c04f3a', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:12:55', '2019-01-22 12:12:55', '2019-04-23 17:42:55'),
('284a56a78bfe308a7d3e86a50e4f8a3ee4034bcbf8f61d399f66c6b029892a21ada48d8f554aebfc', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:27:13', '2019-01-22 12:27:13', '2019-04-23 17:57:13'),
('2aad47682d126f4b6c6de1b82b90782f0ae551f7512f7d1c32a36ec7424556ade161d6dcdab7095e', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 03:13:47', '2019-01-23 03:13:47', '2019-04-24 08:43:47'),
('2bf431f42678ca1f7f252da11e558522fabb6829fa3a4df9b8bf98c6e95eb9b077c2293ae88f1010', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:29:42', '2019-01-22 12:29:42', '2019-04-23 17:59:42'),
('2c266abaf7a1f44329139f17571da4d80f74e1fd7508b72fd97a807dd2e646512ab03e5dae6dbfc1', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:48:43', '2019-01-23 02:48:43', '2019-04-24 08:18:43'),
('2d160d8818e6f6146e96b38beddc096b5fe7bda8f57cbb8f40dcd3b6b7832e94f014e5886c1bff97', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 00:56:45', '2019-01-23 00:56:45', '2019-04-24 06:26:45'),
('2d6d1022652f590f0908081f4c0257c7475b9ad7a66b7e4cc0fd242411c1a165810296d97103b526', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:17:23', '2019-01-22 13:17:23', '2019-04-23 18:47:23'),
('2d8013b86da7b0d3cd12068cb8f6d670e2761a59bd87371e30bddb88e9bd4d06168e197436a219ad', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-19 14:10:31', '2019-01-19 14:10:31', '2020-01-19 19:40:31'),
('3242e0c55987ec48bad1d0bbd33724c34c825acf5d1e920c8880e7b469023947474ff0d83ee8a0aa', 7, 3, 'Personal Access Token', '[]', 0, '2020-11-02 13:04:16', '2020-11-02 13:04:16', '2021-11-02 13:04:16'),
('34368408bdc69765b95e673933ceb335ba78e280006806f5415e14d2838d59f7f247ac346039312c', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:57:34', '2019-01-23 01:57:34', '2019-04-24 07:27:34'),
('363922cd15e3be25f7c49e52005c0f65766f6ffa67133ee11c2b161db3d37726dc0609b7763e7354', 7, 3, 'Personal Access Token', '[]', 0, '2020-11-02 13:04:33', '2020-11-02 13:04:33', '2021-11-02 13:04:33'),
('368149a51260e462f3249b2d762fc6105b73696dfef96dc82edf3a19ebf371e3dc9b9f2087859c58', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:34:06', '2019-01-23 02:34:06', '2019-04-24 08:04:06'),
('3791af01e9f8037c45baba8b55ed075028602ece461b4858cf16cb49d90e39cf17894101b2651b30', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:02:36', '2019-01-23 01:02:36', '2019-04-24 06:32:36'),
('3b1255c1092bd3768625e4b99e297bc58a4fdaaeb3c235cfee13322f7e64b37b39cc8b8d2c1972f3', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:24:02', '2019-01-22 13:24:02', '2019-04-23 18:54:02'),
('3ee90d498161e1723c4b583e83d5eb2d6a640f4a33b173a35232f2ce6b2bc23e4f702ed88f707493', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-21 12:07:19', '2019-01-21 12:07:19', '2019-04-22 17:37:19'),
('40ba3381dd1f6f2475ddba356eae91e7ed3e86314d6fd3eb180cf69ff37e3e50970cea5590e23768', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 07:59:14', '2019-01-23 07:59:14', '2019-04-24 13:29:14'),
('445dc4af9bd88f3556a368b893a810eba763305b50b96febed32061594a12bc1a345f35ef4b3403e', 1, 3, 'Personal Access Token', '[]', 0, '2019-01-19 14:44:43', '2019-01-19 14:44:43', '2020-01-19 20:14:43'),
('4490e0298e4530adfb30d50e5f0aef988dd20814f17287854ef26662df858cc1c810ade5781728d6', 1, 3, 'Personal Access Token', '[]', 0, '2019-01-19 14:21:26', '2019-01-19 14:21:26', '2019-04-20 19:51:26'),
('449dd09b617d1ca4c26a2e3c9066238568e9ed5a2696011cc5d1d1218ada4c9308826d4afe7a9d7b', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:53:10', '2019-01-23 02:53:10', '2019-04-24 08:23:10'),
('45b7a80d1b8f2d651a2e991900e673578ade8714a344d27d24b46ac0ebdf1b4cc6fa0821d77a7801', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 09:53:10', '2019-01-23 09:53:10', '2019-04-24 15:23:10'),
('489a1e4112740f3aa70dcc51b198b00e2af864c709b1b572d9c324f166d1c99a6d30bd2d1d7658f1', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:04:02', '2019-01-22 13:04:02', '2019-04-23 18:34:02'),
('4d0d8845e0b839424f34108314a2a09ce1193f69ad3f31f9cd733703bb98900ec30b3111a09d932d', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:48:30', '2019-01-22 12:48:30', '2019-04-23 18:18:30'),
('4e5dec0dce14e6b5716eaedbf97a053bfa5558a8108918139d60e07bb470bf16ce003dc06e92577a', 1, 3, 'Personal Access Token', '[]', 0, '2019-01-19 15:04:42', '2019-01-19 15:04:42', '2020-01-19 20:34:42'),
('4fe6cccf329674badafc0730b500ba9a2f388e50363b2bd9a6e68553e15c3db8d5b6c6f224d7482c', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:36:08', '2019-01-23 02:36:08', '2019-04-24 08:06:08'),
('50812ac310cee16efcb6a5a6d995c05ce38e74bb8100234ecb30cbf2904bc1ed9fd3bba85b3427f8', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:32:44', '2019-01-23 02:32:44', '2019-04-24 08:02:44'),
('51f683f0e5a469528b700fa3e3a0c601e9242f456660705944d194dc87d6490a204afbd0f1915711', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:04:22', '2019-01-23 01:04:22', '2019-04-24 06:34:22'),
('520e2dc31aabbe4e4f156ecd9dc225f9cb91e2db5845f127f9b63cf90b32c299f5624ff4bf6d8bd5', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-21 11:44:45', '2019-01-21 11:44:45', '2019-04-22 17:14:45'),
('53b777b94105c9c7c3aa21b29dac7fdf63116366fede8af1436403cfaed5e8d12fed8d7a92dd34e8', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-19 14:08:32', '2019-01-19 14:08:32', '2020-01-19 19:38:32'),
('58d52b4c4969d35adabe9e61e4767905dab15fe586827fb5dc0d55bf71415e84c4dc4879619f5c1c', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:33:01', '2019-01-23 01:33:01', '2019-04-24 07:03:01'),
('5b1ffbef2ed5a35607bd361bd0e747e6d569a5ef18de6bbfd914df6f00e4b07fac7d48b5a7c5999e', 3, 3, 'Personal Access Token', '[]', 0, '2020-11-02 13:00:05', '2020-11-02 13:00:05', '2021-11-02 13:00:05'),
('5b6a05d51ae59a35f5ddf3f7729ca54d5394db141322e5380a36e3779bf57a4a12bf02ecea323dd4', 1, 3, 'Personal Access Token', '[]', 0, '2019-01-21 14:01:21', '2019-01-21 14:01:21', '2020-01-21 19:31:21'),
('5d8898a28beb0849ca72275ca1273a03dd5a80282c529edfc59070f614caff795acc235b77b26ea3', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:56:24', '2019-01-22 12:56:24', '2019-04-23 18:26:24'),
('5da4f0abaa151f8a721f51824eaa706c4ac27f6543e0e4b57d2d616f9de5647089146b800f9ed8da', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-20 12:32:17', '2019-01-20 12:32:17', '2020-01-20 18:02:17'),
('5f5f254da0a911f23ad32c102df90f9c312485569db17dec875b0baf70671f781fda840a7700e149', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-25 02:09:03', '2019-01-25 02:09:03', '2019-04-26 07:39:03'),
('601c2a762214bdecbc9a854225297a3e58cf4f510e218fa8c4744c3639ed4c7150e1bde2a19ffee5', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:49:43', '2019-01-23 02:49:43', '2019-04-24 08:19:43'),
('6056d73d405e5098d2886a57e556e5cf3db2b86689d9ea6cea6d43725ca82963433f67a69301c609', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:30:30', '2019-01-23 02:30:30', '2019-04-24 08:00:30'),
('61094b06387f75b5c54cd1aa27a8f3484fd167190d7a313cfa4726ef9bfbf16cbf764d84f1535eb6', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:25:45', '2019-01-23 01:25:45', '2019-04-24 06:55:45'),
('67ba1509048a4683c7e5504315aec6e243a5b440c63e41413bfa725918d7aeaead944027bf07460f', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:52:48', '2019-01-23 02:52:48', '2019-04-24 08:22:48'),
('6933ea96d6aaaf867360281ca6eff99b9ffbadd359edf2a98b0cb289705a41f39e3cf4f6e1466836', 6, 3, 'Personal Access Token', '[]', 0, '2020-11-02 12:58:41', '2020-11-02 12:58:41', '2021-11-02 12:58:41'),
('69e9078445a63355e5cafed6760f65570ff61859e02694e56d5d8bfed206ba18ffd78f2f6636aef2', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:08:14', '2019-01-22 12:08:14', '2019-04-23 17:38:14'),
('6ad32365d2555bf560a7a45f40ebd4adc823abff33b52487a97fbfc196077912db9af62701fff318', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:36:01', '2019-01-22 13:36:01', '2019-04-23 19:06:01'),
('6e049902f1077c8e61ad2d309941a3a3581373087b925dc844038c1f988775e98bba36a05886a31a', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 03:10:06', '2019-01-23 03:10:06', '2019-04-24 08:40:06'),
('7108acfe3c3deab6d9f74a93ebb2c30ca91d0c72615d8996d5f5e1830f5280621344d098c938e1c1', 5, 3, 'Personal Access Token', '[]', 0, '2019-01-26 02:02:28', '2019-01-26 02:02:28', '2019-04-27 07:32:28'),
('72bea9541ce633d9d61d18c7f19802b274bf74d3531db7e7879a484f3dccd405b161c10298200587', 1, 3, 'Personal Access Token', '[]', 0, '2019-01-19 14:42:51', '2019-01-19 14:42:51', '2020-01-19 20:12:51'),
('72db34e7e8c79d2fd850312bf6b7042865cb80e62124708bd3010cd4b6b288c351d3d2233d631adc', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:47:13', '2019-01-22 12:47:13', '2019-04-23 18:17:13'),
('7475c7aee4fc7b981a8c9d3e3cc18303aaded88a8d1c9cdbe3c060f00416885108d16cdc0ff9011e', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:51:38', '2019-01-23 02:51:38', '2019-04-24 08:21:38'),
('77009180733f083d65022412987f7143913497da8b18bd685c52d18753038f07e78d66501640cafc', 1, 3, 'Personal Access Token', '[]', 0, '2019-01-21 08:18:08', '2019-01-21 08:18:08', '2019-04-22 13:48:08'),
('7882c566ca15a9734869e8dcee0f53f8b923bbc6b3249e22c583eddf3023957fe56dfc4cf217b956', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:16:39', '2019-01-22 13:16:39', '2019-04-23 18:46:39'),
('78bfdc861073c21c601246bd14e5f1b6fa674683a3e9d0208850a57d2a8b9c18c418028d38c63f69', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:44:52', '2019-01-22 13:44:52', '2019-04-23 19:14:52'),
('79d674ddd93f9859db14484f9caddb579c0ddab490cafd6d230ad2841dbba125e38c0938cca03118', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 00:53:49', '2019-01-23 00:53:49', '2019-04-24 06:23:49'),
('7b55acf6c85afa5afcd911be5ceb738b30fde2dd33f440ecdb5e86d810ecd958b2fed46b27a86315', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:10:23', '2019-01-22 13:10:23', '2019-04-23 18:40:23'),
('7b57238d44f237fa629f3e569d4ef9ce37bde2c923015173eb2304eef79babf3fe36ca939ee011fe', 1, 3, 'Personal Access Token', '[]', 0, '2019-01-23 07:43:15', '2019-01-23 07:43:15', '2020-01-23 13:13:15'),
('7c5569fbdc0c74778898eb7a3751181aed0129c566426f5cdde9cbf4253cfa9bb2c1350b6e4f45f4', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-19 14:06:49', '2019-01-19 14:06:49', '2020-01-19 19:36:49'),
('8094377dae636ae1d5bd035a10c7851df864003225be8f9fe68e3fd002452cf119ad5f1f8f87a0e5', 7, 3, 'Personal Access Token', '[]', 0, '2020-11-02 13:05:52', '2020-11-02 13:05:52', '2021-11-02 13:05:52'),
('855e399ce87f87135e3d1001fb3ad3f63964038284db10fd5247f54f26feeafee81b18d4db71ed90', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:09:20', '2019-01-22 12:09:20', '2019-04-23 17:39:20'),
('87522c825edc19854c29dae14c5fed805717eb8047314033613e24ab83d44c03486760b7723bd17b', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:07:53', '2019-01-22 12:07:53', '2019-04-23 17:37:53'),
('8b8d6a3073dc7beb043b885eb4069f85ce8a91a7819a7f4f4d5f523993ed0d8f207e89cb65d567b9', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 00:59:21', '2019-01-23 00:59:21', '2019-04-24 06:29:21'),
('8c140277d78a3d8d0a478066386813f461acfb30dfe36a605b9dbb9df3de9db77f24bcc0c4a0e5a7', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:00:48', '2019-01-22 13:00:48', '2019-04-23 18:30:48'),
('8cc297eab63a008cfeda742c305130f554f3daa1f8f39389a66223de77f9e611fc4c1a629e5d581b', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 00:53:05', '2019-01-23 00:53:05', '2019-04-24 06:23:05'),
('8fb94fcf904c021dbcd7c6702a36ab13e9e6194a64b2a976dec315cd816c66b56ca8761bca1e41e9', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 00:58:20', '2019-01-23 00:58:20', '2019-04-24 06:28:20'),
('943b6b5117374eabd447cd19150a88bbda6f31437ceb7261810766addec88e4992d7fd449f6ac233', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:24:57', '2019-01-23 01:24:57', '2019-04-24 06:54:57'),
('943f223a08a7275e1d7ac6f11dd78405ba3bc3d6f7a6aa21810c64d3fec57a097a2cc48a347cb228', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-24 08:38:51', '2019-01-24 08:38:51', '2019-04-25 14:08:52'),
('9471ad356e52d57a7721ceedf43cf22017ad9801c52f515c6ad60fbd2f870ad9255bdb6d0d20be5d', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-23 00:45:39', '2019-01-23 00:45:39', '2019-04-24 06:15:39'),
('94804eeac6499a539651f6121d938dfbca7f1f777214d8b49a93169919a3e6c7b77d8c825e2bc694', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-19 14:43:46', '2019-01-19 14:43:46', '2020-01-19 20:13:46'),
('95673dabeb8edde42727f7ffaf8481afeb26b9204892e14e5fe84baabd8e3768268e723e4176f7ca', 5, 3, 'Personal Access Token', '[]', 0, '2019-01-24 10:09:15', '2019-01-24 10:09:15', '2019-04-25 15:39:16'),
('96cbcfda8d0f7063df51eb4afdaf6e394a12ac821c63016094ae597afd28b912d01501c6336512ff', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:37:26', '2019-01-23 02:37:26', '2019-04-24 08:07:26'),
('9b4026085743ded557490d6396d8c726d251d3028b16cae472768394153a3b1e220b4e2a40f09de7', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-21 12:12:28', '2019-01-21 12:12:28', '2019-04-22 17:42:29'),
('9b42d51000885f8ed8b6aff8b2ce8f4c3658e793fd43dc7370a4db07eafd19f2531e0ff68641238a', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:04:11', '2019-01-23 02:04:11', '2019-04-24 07:34:11'),
('9cd37c4bebf020f6ecc814f103384a5a311cf449f659948259480f7cd1bf139414df305a0302c2b9', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:13:21', '2019-01-23 02:13:21', '2019-04-24 07:43:21'),
('9e5fa95ccecafde551639a1264529a5b33f660f3004db64fb982ca0f8a31b7f3c9bd17ff182192c5', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-19 14:09:33', '2019-01-19 14:09:33', '2020-01-19 19:39:33'),
('9ee9b448dfcb5a34a68abd0df9d7170f8ff90bd1796dcc09d01b70536e9c74eeafd6886219a16159', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:53:58', '2019-01-23 01:53:58', '2019-04-24 07:23:58'),
('a07524ba59df5718a9747dee12aa4199e56dd2f2b2a6d9081d48fc20fc7f70fb22be84347f363a36', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-19 14:07:18', '2019-01-19 14:07:18', '2020-01-19 19:37:18'),
('a2e60b88e09301136ed84487477c1798f5ae1e0bece5543dd591c0d5888228a0996711d7dcc57cf2', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:31:25', '2019-01-23 02:31:25', '2019-04-24 08:01:25'),
('a378d450a5ccb30ab22ddebd9b3aeb5a334137381a9d3e05d24697b0e92d4587d074b353a81a06ad', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:03:53', '2019-01-23 01:03:53', '2019-04-24 06:33:53'),
('a5bd724cfa06c23e2d16b4916068863807dc0d1b7a31a20cbd002a8203a4d6d2601b989268e880a7', 1, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:08:37', '2019-01-22 12:08:37', '2020-01-22 17:38:37'),
('a6c697c879394418feacc9ab81832be25bd92b705a0c415e48d7ca751daf209a698ca2a52baaefc3', 1, 3, 'Personal Access Token', '[]', 0, '2019-01-23 07:43:27', '2019-01-23 07:43:27', '2020-01-23 13:13:27'),
('a745bf23593aa730e59286fab792982a262fed010093e7a4da7f54c0f82c4608bd6faca34496ce32', 5, 3, 'Personal Access Token', '[]', 0, '2019-01-24 13:05:32', '2019-01-24 13:05:32', '2019-04-25 18:35:32'),
('a75a1b9c05c2487c91c1e78fa96a589343c3cb9f87e263f36a4eb1e6def20c0e2ea8510b2956b309', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 03:10:39', '2019-01-23 03:10:39', '2019-04-24 08:40:39'),
('aa5179779c50dd69e714ec363412accd1350c52ad4f8b7d5467f3a92d04623fab7d45baaaf02332e', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-21 13:56:37', '2019-01-21 13:56:37', '2019-04-22 19:26:38'),
('aa5f2969dad84e0e07d4b6091b7759a6341cc9a35b22ff8ba0a85e3ab4c12c29a9568e4bf962ddbd', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:39:58', '2019-01-23 02:39:58', '2019-04-24 08:09:58'),
('ae2c9b16f4a1ba178e4f69c7ce20f640e26536992ee6a89dc4a059bbc9c1ea39fb9f570d06d0316e', 3, 3, 'Personal Access Token', '[]', 0, '2020-11-02 13:05:10', '2020-11-02 13:05:10', '2021-11-02 13:05:10'),
('ae2cb8cc9257b4edeadca813bfc6a6ddf42237135290e0185e00dda6f37c10b8e1707ff3bfa229c8', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-24 07:29:28', '2019-01-24 07:29:28', '2019-04-25 12:59:31'),
('aed717631d32f94edf5151ce60bde6451672d3c33b15159e3815cb14164562547d3ac8b6dbeba539', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-21 08:18:18', '2019-01-21 08:18:18', '2019-04-22 13:48:18'),
('af3850f6fad1ed4aa2833e946e34c298c197c6331265c544bdcef6f9694205aa875fd94ec0b9f33d', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:24:11', '2019-01-23 01:24:11', '2019-04-24 06:54:11'),
('af636f6fce03396edf7b0fa62ac565f40599f8b85218356dec25c33ee7d7f9b16d98705c1ab5201b', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 03:07:05', '2019-01-23 03:07:05', '2019-04-24 08:37:05'),
('b0157c45f7ce18c1cb83beaceca7b786e0b8bd8531851a8d29096d687c994c695efcd4d7d94c6b87', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:11:55', '2019-01-23 02:11:55', '2019-04-24 07:41:55'),
('b7adeb890a7f4570e6b11fab87eafe37c897552f0bf0a714875571e2caecebce3e075e267c65950c', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:02:39', '2019-01-23 02:02:39', '2019-04-24 07:32:39'),
('b950126f0a4aa858ede40dd2f9994ebcce1d6232e8e2d59c27a67fb8c72dcd11c2433d6961663fa5', 1, 3, 'Personal Access Token', '[]', 0, '2019-01-19 13:52:27', '2019-01-19 13:52:27', '2020-01-19 19:22:27'),
('b953248eb98a3c81c4aa0cbaba6d7a9d8550d679e7c0622062e5073f3a40342ba67c07c180832410', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:47:01', '2019-01-23 01:47:01', '2019-04-24 07:17:01'),
('ba172aacda4a3d44a31f20eb242a5efa813ed52b0a3314e768bd21e45f75d8584d2d24e207fdd454', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:35:08', '2019-01-23 02:35:08', '2019-04-24 08:05:08'),
('ba5042ff4dfc13bad6debfb2e90f27b55f0920bf264bdc24a9eaaa7c409e95a608485f15d7be39fe', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:40:13', '2019-01-22 13:40:13', '2019-04-23 19:10:13'),
('ba771d62dc4d04c89821e3fefe3117ab5c3b093bd909f8f8a7bb09ef29ecc7c1bb0ba9122c98d027', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:49:42', '2019-01-23 01:49:42', '2019-04-24 07:19:42'),
('bb8a4cc5541ab720c414ccbb67b3d6cd57956466bc0ef1f9a2f30503fcc6058b6b85ae4858de5a4a', 1, 3, 'Personal Access Token', '[]', 0, '2019-01-19 12:58:48', '2019-01-19 12:58:48', '2019-04-20 18:28:48'),
('bea9e185a6a782241c839f993d165c60e855e1e4db1bc17140e92e53e86243346250fb1e946efd54', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:42:54', '2019-01-22 12:42:54', '2019-04-23 18:12:54'),
('c00969dc7108249673ca566ae95fb3c8d45cdd028f58d194a571e17489deac420b67ee3c50aa09f5', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:22:17', '2019-01-22 13:22:17', '2019-04-23 18:52:17'),
('c1292b2acb5e9455b419255e8f353d673da24c5f4fe47c3c8afe9674ef744e22fcfd8e7edb46872f', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:24:30', '2019-01-22 13:24:30', '2019-04-23 18:54:30'),
('c2300f2fe0d3e475c59592d8e4c4361d63b25727059489ea1018e1866e95d3088dfdfbe4d36381cc', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 00:54:27', '2019-01-23 00:54:27', '2019-04-24 06:24:27'),
('c4a878596ac810bb9c0e0d86e2d5920244f1d05e6e1d36397a2bed01681991881a8ac0b22354d0c3', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-25 10:02:45', '2019-01-25 10:02:45', '2019-04-26 15:32:45'),
('c4d4bb049ec1e18063f44c58c552f4249cb1fe7fe0f812236fcd30bb7c10f00396e73cf8d5527775', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-19 13:54:43', '2019-01-19 13:54:43', '2020-01-19 19:24:43'),
('c62a02a15521287fd4027e4876acd2ef81e109ec3d72e1c3ecb62a3cda805f8ffe0973d0b458b58a', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 03:09:03', '2019-01-23 03:09:03', '2019-04-24 08:39:03'),
('c6b0b2c2aa8292f6fe68bf9fb221586fb16f032cf2392bb6bba7e1a1350e1b30425de1027d457525', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-21 13:59:30', '2019-01-21 13:59:30', '2020-01-21 19:29:30'),
('c741cf598caf9f1fe96bb4b79c536f8f79d77f66abfbd6720fa26c8935bec5ba621a146a6cf06c81', 5, 3, 'Personal Access Token', '[]', 0, '2019-01-24 09:56:06', '2019-01-24 09:56:06', '2019-04-25 15:26:06'),
('c85f81ddf61c9512ca76c9e8f634ecec0e94a5aab95ff7057eb38feea84b83b207707d9d14a41d34', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:52:38', '2019-01-23 01:52:38', '2019-04-24 07:22:38'),
('ca3c8f5356f599b54f288568629bbb46bfdfc93549b966e18400d53b271eacbe3487404b8acc494b', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:28:08', '2019-01-23 01:28:08', '2019-04-24 06:58:08'),
('cc80f1593d85cb3361f57a698bbf65000e5a90ff9ad9b1d8130786bf170f7249fa52fdc07078d633', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-19 15:05:12', '2019-01-19 15:05:12', '2020-01-19 20:35:12'),
('cc8461361d05d60fa920fae7d0d4bc0d12c6c85e989b63aed603027302806a7b0303f92861d722f1', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:53:45', '2019-01-23 02:53:45', '2019-04-24 08:23:45'),
('ced91835d6511ec5b8af8be9f663f93ac09e699e54c76e6bf325fa70a558d1dc7a89b6a17a63b83b', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 03:15:20', '2019-01-23 03:15:20', '2019-04-24 08:45:20'),
('d1372e3963d88fc088b8b815ef04e47917fc8acf47c2c42a4563a57fc222ca361148ee8f6b78de45', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:15:34', '2019-01-22 12:15:34', '2019-04-23 17:45:34'),
('d1c4b21183c15036581de30fa5b9ddd571048cf82685dc2eee93ec800da44b066706dffc21e66a20', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-21 12:07:10', '2019-01-21 12:07:10', '2019-04-22 17:37:10'),
('d2ba2f34f540d9c37e3620e7ae075faaba0caed4a45cc6f48ff69be1a5d6215f87a368da097bfab7', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-23 09:45:47', '2019-01-23 09:45:47', '2019-04-24 15:15:47'),
('d3a9b897c3ddea06a9595451549ef3e8c0b9dc051eadfdc3442aae26a34eb2ac824bb7d54428bace', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:16:01', '2019-01-22 13:16:01', '2019-04-23 18:46:01'),
('d3f6e4572886913b73703d59c57335e24d72f19d7ce1cf574c259941370efb6cd6b8be67c125e253', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:50:13', '2019-01-23 01:50:13', '2019-04-24 07:20:14'),
('d457d9c8614e606c2d69e0115653bc336b84134db53665ec6f89f0974388a35ae02c345268aa39a4', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:49:06', '2019-01-22 12:49:06', '2019-04-23 18:19:06'),
('db36deaf01bf04b4cc36ad9ab59d13a22ec682ec46730a7be5f8ec42a0599c15aef11d9f612f9dba', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-24 09:54:58', '2019-01-24 09:54:58', '2019-04-25 15:24:58'),
('dbe619b8a7ac9bc23795888c41962625cdddeba09aa6aadfdd9e8421808d96c107b1017b4626f61c', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:10:14', '2019-01-22 12:10:14', '2019-04-23 17:40:14'),
('dc12545ff6e150aa890629259edf588eecdfe2737bb4f8fd0e0377e78b27fd4b8b008d3b11754176', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-19 14:45:26', '2019-01-19 14:45:26', '2020-01-19 20:15:26'),
('dfbd0c3e728abe0ca7c98c8c69ff941d3cbaa08e8c6b7b8300dea18c1d1f7e20e97892aae8d0483c', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:16:02', '2019-01-22 13:16:02', '2019-04-23 18:46:02'),
('dfef390ef55754ebe55f9aa1d5c8a9cd30acae8feecd79c9f86cfdbd959ea28eba730da8f9638254', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 00:55:40', '2019-01-23 00:55:40', '2019-04-24 06:25:40'),
('e4acc2f10da851396d7bf46804a23045fd0d22062215883fd1eb26456283b3c7e6bac6d470b1de8f', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:00:22', '2019-01-23 01:00:22', '2019-04-24 06:30:22'),
('e6f7e9c187410e1da11e26d9a83748b897863f28936db2e83c9cd87bb9ab3ae2befbf1e7046d7df3', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:43:04', '2019-01-22 13:43:04', '2019-04-23 19:13:04'),
('e75014aeedb9804212855828bb8865ba1443f784c64f61de6e876632aacf0dda2c987af9294ccc5d', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:55:45', '2019-01-22 13:55:45', '2019-04-23 19:25:45'),
('e912ef8c79a024e1e1d0028fce4c98cb5cfb2375652e7b13bf38fa5d16d15fda13fb3450d0fceec5', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-19 15:13:41', '2019-01-19 15:13:41', '2020-01-19 20:43:41'),
('e98c965ebf30523a2e6a1b45c33574800a035f817d20d80102340d074e2a3bdafa3d6457d089a178', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:32:24', '2019-01-23 02:32:24', '2019-04-24 08:02:24'),
('ead1f4ed2f5c1292569aaec8d594ef5ace9ee883a64887ccc3d23542aa5b620eeb52aceda7c713f1', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-24 08:39:58', '2019-01-24 08:39:58', '2019-04-25 14:09:59'),
('eaf3c3a3b85d6791f3e7cc4c45702b14bc9453962fd31e788018ade811367b87238601d4e720f56e', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 01:56:23', '2019-01-23 01:56:23', '2019-04-24 07:26:23'),
('eb1cec6ec63ae0aa49147d3e56f0acaa649afb16b3b121d3d472c5f6ab76b21e6f5a1c75b3489b0d', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:45:52', '2019-01-22 12:45:52', '2019-04-23 18:15:52'),
('ed01e10759649976fabb13b877fbd07390b276f8d6f8a1c6acbdbef6bd04a16b3b671a3de33f86cc', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:57:29', '2019-01-22 12:57:29', '2019-04-23 18:27:29'),
('ee54ec73f14d3638310b3a0d19490fc2e78ee22a1681990672ad16f4330dd7a788b80c9edadddf8f', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:09:49', '2019-01-23 02:09:49', '2019-04-24 07:39:49'),
('ee9cb932a6801772a88fbb0a6929c5da81ba57b07946d025f8b23b91a95a4c13528d7fbda2a17daa', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:14:07', '2019-01-22 12:14:07', '2019-04-23 17:44:07'),
('efc30d081618f1873773170ee4fcd8becb4a3472e7c65c16f679716c9a89a61f6ed7aea66fd78720', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:54:54', '2019-01-22 13:54:54', '2019-04-23 19:24:54'),
('f57405d37c95fa6246cc14b7ee5de67df8907b33702334a16f4a64ff20a0e7d9069873cd70be26f9', 1, 3, 'Personal Access Token', '[]', 0, '2019-01-19 14:50:23', '2019-01-19 14:50:23', '2020-01-19 20:20:23'),
('f6bcb0d1bb043974d3924e531abf293c5a9941f04374d4374c6bec50cba02c3dccced88211a70fc2', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 03:12:28', '2019-01-23 03:12:28', '2019-04-24 08:42:28'),
('f70bc882ea2bffcdadf055a1ac42ea8671c48493af785cae496913a7b2e1b3c449e8cf81a29fd41f', 3, 3, 'Personal Access Token', '[]', 0, '2019-01-23 12:20:08', '2019-01-23 12:20:08', '2019-04-24 17:50:08'),
('f8d5ef9e6030c70b37b74cdec480e7e2db562ae378e45480d38b26c1d164c15b479eaab773763831', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:32:54', '2019-01-22 12:32:54', '2019-04-23 18:02:54'),
('f9237079b3459b2dc2607f72ad6bb0a704d0d1511697df120f6d3ab8d55a8a047817d9ecb5b1cef7', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:14:28', '2019-01-23 02:14:28', '2019-04-24 07:44:28'),
('fa21d3555e39640e3e5ee4d6997a3376e982492b2d8d1e05a646683c6ad3a4b7c5d57deb1901d4a1', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:51:40', '2019-01-22 13:51:40', '2019-04-23 19:21:40'),
('fc429107c9177534855496714767c8359c6cd7c0f8735274b8fb4e8ecf34c8233d4a5b77caf48088', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 13:48:15', '2019-01-22 13:48:15', '2019-04-23 19:18:15'),
('fdc85c5aaec32f30aabc51fd5819dfff0cb3e1d98227c88f23b17a84d83e1cd146c67fb75486e031', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-22 12:26:13', '2019-01-22 12:26:13', '2019-04-23 17:56:13'),
('fe4a3dbfb8bbf3845c93a1587e8cafc3a86f72e0ee29a2badd0f194c26f25d2991d9273a36b6fe60', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-24 08:40:52', '2019-01-24 08:40:52', '2019-04-25 14:10:52'),
('ff1609797aa33ddc77971bb5b0027d3b5b99d7597059a5231648000b3286d51d2634314844083d52', 6, 3, 'Personal Access Token', '[]', 0, '2019-01-23 02:01:06', '2019-01-23 02:01:06', '2019-04-24 07:31:06');

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
(1, NULL, 'Laravel Role Managment Personal Access Client', 'q8iXC3U8pmcib9QRnuOHNeR0qbfEKx21kwrw9UO5', 'http://localhost', 1, 0, 0, '2019-01-19 11:37:48', '2019-01-19 11:37:48'),
(2, NULL, 'Laravel Role Managment Password Grant Client', 'Vq1JQjoEet3nbpnoho4K4rdIYqU4apcnd4tJBtCF', 'http://localhost', 0, 1, 0, '2019-01-19 11:37:49', '2019-01-19 11:37:49'),
(3, NULL, 'Laravel Role Managment Personal Access Client', 'b4JMMkOaJwhqJzzcFk70p4Jp9gA1nmm8vpmGIXc3', 'http://localhost', 1, 0, 0, '2019-01-19 11:38:14', '2019-01-19 11:38:14'),
(4, NULL, 'Laravel Role Managment Password Grant Client', 'yLLC5UvFu0ahIsCsQ7gKRGe8QlbMOkP6FNxDHQTr', 'http://localhost', 0, 1, 0, '2019-01-19 11:38:14', '2019-01-19 11:38:14');

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
(1, 1, '2019-01-19 11:37:49', '2019-01-19 11:37:49'),
(2, 3, '2019-01-19 11:38:14', '2019-01-19 11:38:14');

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
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `maxUsers` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `maxUsers`, `created_at`, `updated_at`) VALUES
(1, 'Free', 0, 100, NULL, NULL);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_at` datetime DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `student_id`, `amount`, `note`, `payment_at`, `type`, `transaction_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1000, 'Paid', '2019-01-23 00:00:00', 'Online', 'jhjdbg323232gfg32f3d', NULL, '2019-01-23 18:30:00', '2019-01-23 18:30:00'),
(2, 1, 0, 'Pending', NULL, 'Online', NULL, NULL, '2019-01-24 13:30:40', '2019-01-24 13:30:40'),
(3, 1, 0, 'Pending', NULL, 'Online', NULL, NULL, '2019-01-24 13:47:42', '2019-01-24 13:47:42');

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
(1, 'Add Roles', 'api', '2019-01-19 14:25:39', '2019-01-19 14:25:39'),
(2, 'Edit Roles', 'api', '2019-01-19 14:25:48', '2019-01-19 14:25:48'),
(3, 'Delete Roles', 'api', '2019-01-19 14:25:55', '2019-01-19 14:25:55'),
(4, 'View Roles', 'api', '2019-01-19 14:26:03', '2019-01-19 14:30:11'),
(5, 'Add Permissions', 'api', '2019-01-19 14:26:16', '2019-01-19 14:26:16'),
(6, 'Edit Permissions', 'api', '2019-01-19 14:26:25', '2019-01-19 14:26:25'),
(7, 'Delete Permissions', 'api', '2019-01-19 14:26:30', '2019-01-24 07:45:41'),
(8, 'View Permissions', 'api', '2019-01-19 14:26:38', '2019-01-19 14:30:19'),
(9, 'View Users', 'api', '2019-01-19 14:36:07', '2019-01-19 14:36:07'),
(10, 'Add Users', 'api', '2019-01-19 14:36:15', '2019-01-19 14:36:15'),
(11, 'Delete Users', 'api', '2019-01-19 14:36:20', '2019-01-19 14:36:20'),
(12, 'Edit Users', 'api', '2019-01-19 14:36:26', '2019-01-19 14:36:26'),
(13, 'View Attendance', 'api', '2019-01-21 12:07:07', '2019-01-21 12:07:07'),
(14, 'Edit Attendance', 'api', '2019-01-21 12:07:36', '2019-01-21 12:07:36'),
(15, 'Add Attendance', 'api', '2019-01-21 12:07:44', '2019-01-21 12:07:44'),
(16, 'Delete Attendance', 'api', '2019-01-21 12:07:53', '2019-01-21 12:07:53'),
(17, 'Add Notice', 'api', '2019-01-21 14:01:41', '2019-01-21 14:01:41'),
(18, 'Delete Notice', 'api', '2019-01-21 14:01:48', '2019-01-21 14:01:48'),
(19, 'Edit Notice', 'api', '2019-01-21 14:01:52', '2019-01-21 14:01:52'),
(20, 'View Notice', 'api', '2019-01-21 14:01:59', '2019-01-21 14:03:43'),
(21, 'View Materials', 'api', '2019-01-23 12:16:47', '2019-01-23 12:16:47'),
(22, 'Edit Materials', 'api', '2019-01-23 12:17:00', '2019-01-23 12:17:00'),
(23, 'Delete Materials', 'api', '2019-01-23 12:17:10', '2019-01-23 12:17:10'),
(24, 'Add Materials', 'api', '2019-01-23 12:18:57', '2019-01-23 12:18:57'),
(25, 'View Subjects', 'api', '2019-01-24 07:39:09', '2019-01-24 07:39:09'),
(26, 'Edit Subjects', 'api', '2019-01-24 07:39:16', '2019-01-24 07:39:16'),
(27, 'Delete Subjects', 'api', '2019-01-24 07:39:21', '2019-01-24 07:39:21'),
(28, 'Add Subjects', 'api', '2019-01-24 07:39:27', '2019-01-24 07:39:27'),
(29, 'Add Class', 'api', '2019-01-24 07:40:44', '2019-01-24 07:40:44'),
(30, 'Edit Class', 'api', '2019-01-24 07:40:50', '2019-01-24 07:40:50'),
(31, 'Delete Class', 'api', '2019-01-24 07:41:00', '2019-01-24 07:41:00'),
(32, 'View Class', 'api', '2019-01-24 07:41:19', '2019-01-24 07:41:19'),
(33, 'View Packages', 'api', '2019-01-24 07:42:29', '2019-01-24 07:42:29'),
(34, 'Edit Packages', 'api', '2019-01-24 07:42:34', '2019-01-24 07:42:34'),
(35, 'Delete Packages', 'api', '2019-01-24 07:42:40', '2019-01-24 07:42:40'),
(36, 'Add Packages', 'api', '2019-01-24 07:42:47', '2019-01-24 07:42:47'),
(37, 'View Payments', 'api', '2019-01-24 07:43:05', '2019-01-24 07:43:05'),
(40, 'Make Payments', 'api', '2019-01-24 07:43:32', '2019-01-24 07:43:45'),
(41, 'Add Qualifications', 'api', '2019-01-24 07:46:26', '2019-01-24 07:46:26'),
(42, 'Delete Qualifications', 'api', '2019-01-24 07:46:34', '2019-01-24 07:46:34'),
(43, 'Edit Qualifications', 'api', '2019-01-24 07:46:40', '2019-01-24 07:46:40'),
(44, 'View Qualifications', 'api', '2019-01-24 07:46:44', '2019-01-24 07:46:44'),
(45, 'Add School', 'api', '2019-01-24 07:47:09', '2019-01-24 07:47:09'),
(46, 'Edit School', 'api', '2019-01-24 07:47:13', '2019-01-24 07:47:13'),
(47, 'Delete School', 'api', '2019-01-24 07:47:22', '2019-01-24 07:47:22'),
(48, 'View School', 'api', '2019-01-24 07:47:26', '2019-01-24 07:47:26'),
(49, 'Add Students', 'api', '2019-01-24 07:47:55', '2019-01-24 07:47:55'),
(50, 'Delete Students', 'api', '2019-01-24 07:48:04', '2019-01-24 07:48:04'),
(51, 'Edit Students', 'api', '2019-01-24 07:48:09', '2019-01-24 07:48:09'),
(52, 'View Students', 'api', '2019-01-24 07:48:15', '2019-01-24 07:48:15'),
(53, 'Add Teachers', 'api', '2019-01-24 07:48:33', '2019-01-24 07:48:33'),
(54, 'View Teachers', 'api', '2019-01-24 07:48:38', '2019-01-24 07:48:38'),
(55, 'Delete Teachers', 'api', '2019-01-24 07:48:43', '2019-01-24 07:48:43'),
(56, 'Edit Teachers', 'api', '2019-01-24 07:48:53', '2019-01-24 07:48:53'),
(57, 'Add TimeTable', 'api', '2019-01-24 07:49:07', '2019-01-24 07:49:07'),
(58, 'Delete TimeTable', 'api', '2019-01-24 07:49:13', '2019-01-24 07:49:13'),
(59, 'Edit TimeTable', 'api', '2019-01-24 07:49:19', '2019-01-24 07:49:19'),
(60, 'View TimeTable', 'api', '2019-01-24 07:49:25', '2019-01-24 07:49:25'),
(61, 'Add Parents', 'api', '2019-01-24 07:49:34', '2019-01-24 07:49:34'),
(62, 'Delete Parents', 'api', '2019-01-24 07:49:41', '2019-01-24 07:49:41'),
(63, 'Edit Parents', 'api', '2019-01-24 07:49:46', '2019-01-24 07:49:46'),
(64, 'View Parents', 'api', '2019-01-24 07:49:52', '2019-01-24 07:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Admin', 'api', '2019-01-19 13:26:28', '2019-01-19 13:26:28'),
(2, 'CompanyAdmin', 'api', '2019-01-19 14:11:04', '2019-01-19 14:11:04'),
(3, 'SuperAdmin', 'api', '2019-01-19 14:21:58', '2019-01-19 14:21:58'),
(4, 'Teacher', 'api', '2019-01-19 14:22:07', '2019-01-19 14:22:07'),
(5, 'Student', 'api', '2019-01-19 14:22:15', '2019-01-19 14:22:15'),
(6, 'Parent', 'api', '2019-01-19 14:22:20', '2019-01-19 14:22:20');

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
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(4, 3),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(8, 3),
(9, 1),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 1),
(13, 3),
(13, 4),
(13, 5),
(13, 6),
(14, 4),
(15, 4),
(16, 4),
(17, 1),
(17, 3),
(17, 4),
(18, 1),
(18, 3),
(18, 4),
(19, 1),
(19, 3),
(19, 4),
(20, 1),
(20, 3),
(20, 4),
(20, 5),
(20, 6),
(21, 1),
(21, 3),
(21, 4),
(21, 5),
(21, 6),
(22, 4),
(23, 4),
(24, 4),
(25, 1),
(25, 3),
(25, 4),
(25, 5),
(25, 6),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(32, 4),
(32, 5),
(32, 6),
(33, 1),
(33, 3),
(33, 4),
(33, 5),
(33, 6),
(34, 3),
(35, 3),
(36, 3),
(37, 1),
(37, 3),
(37, 4),
(37, 5),
(37, 6),
(40, 3),
(40, 4),
(40, 5),
(40, 6),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(44, 4),
(44, 5),
(44, 6),
(45, 2),
(46, 2),
(46, 3),
(47, 2),
(48, 1),
(48, 2),
(48, 3),
(48, 4),
(48, 5),
(48, 6),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(52, 4),
(52, 5),
(52, 6),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(54, 4),
(54, 5),
(54, 6),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(60, 4),
(60, 5),
(60, 6),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(64, 4),
(64, 5),
(64, 6);

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(10) UNSIGNED NOT NULL,
  `Address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nextPayment_at` datetime DEFAULT NULL,
  `payhere_secret` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchant_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `package_id`, `email`, `logo`, `phone`, `Address`, `nextPayment_at`, `payhere_secret`, `merchant_id`, `created_at`, `updated_at`) VALUES
(1, 'Default Schoo;', 1, NULL, 'default.png', 0, 'address', '2019-01-31 00:00:00', 'nzrajL697y31gyuVUYy', 1211380, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `school_payments`
--

CREATE TABLE `school_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_at` datetime NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `indexNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isPayable` tinyint(1) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `admissionDate` datetime DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_group_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `indexNo`, `isPayable`, `user_id`, `admissionDate`, `gender`, `birthday`, `nationality`, `religion`, `package_id`, `parent_id`, `created_at`, `updated_at`, `subject_group_id`, `class_id`) VALUES
(1, '164112H', 0, 6, '2019-01-21 00:00:00', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1, 2),
(2, '111124V', 1, 8, '2019-01-01 00:00:00', 'Male', '2019-01-07', NULL, NULL, 1, 2, '2019-01-21 18:30:00', '2018-11-23 09:42:36', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `year`, `name`, `teacher_id`, `created_at`, `updated_at`) VALUES
(2, 2019, 'Maths', 1, '2019-01-21 18:30:00', '2018-11-23 09:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `subject_groups`
--

CREATE TABLE `subject_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `year` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_groups`
--

INSERT INTO `subject_groups` (`id`, `name`, `created_at`, `updated_at`, `year`) VALUES
(1, '12A', '2019-01-28 18:30:00', '2019-01-27 18:30:00', 2019);

-- --------------------------------------------------------

--
-- Table structure for table `subject_subject_group`
--

CREATE TABLE `subject_subject_group` (
  `subject_group_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subject_subject_group`
--

INSERT INTO `subject_subject_group` (`subject_group_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2018-11-27 18:30:00', '2018-11-27 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` double(8,2) DEFAULT NULL,
  `joinDate` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `gender`, `salary`, `joinDate`, `created_at`, `updated_at`) VALUES
(1, 7, 'Male', 10000.00, '2019-01-01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_has_qualifications`
--

CREATE TABLE `teacher_has_qualifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `qualification_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_tables`
--

CREATE TABLE `time_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `week_day` int(10) UNSIGNED NOT NULL,
  `start` time NOT NULL,
  `end` time NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_tables`
--

INSERT INTO `time_tables` (`id`, `week_day`, `start`, `end`, `teacher_id`, `subject_id`, `class_id`, `created_at`, `updated_at`) VALUES
(2, 1, '03:09:14', '04:21:34', 1, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `address`, `about`, `school_id`, `email_verified_at`, `password`, `avatar`, `active`, `activation_token`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bhanuka Rathnayaka', 'bhanuka2017@gmail.com', 'Address', 'Myself', 1, '2018-11-22 10:09:10', '$2y$10$JU6X.pevuayI.wH2lmpsm.fzlb6TeU3lLwnzrajL697y31gyuVUYy', 'avatar.png', 1, '', NULL, '2018-11-27 18:30:00', '2018-11-27 18:30:00', NULL),
(2, 'Name New Old', 'bm6555612@gmail.com', '123, Kohuwala', 'about me new n', 1, NULL, '$2y$10$pD1Di9FM.X0v2rqtkUD3ieCweXvyQDne6iVKIUK2fxOvwsiwtbv5e', 'avatar.png', 1, 'Gxl2YWZMLbmTivRXAadOvb82OZw7o43KegfBarNIgjj7D6rtiszAKWkEMFQX', NULL, '2019-01-19 13:30:42', '2019-01-20 00:35:06', NULL),
(3, 'name1', 'bm65556@gmail.com', '123, Kohuwala', 'about me', 1, NULL, '$2y$10$NILg8vVpTu3ZnroYPjVXs.S.i8XfI40t8fVdJj8oNKnxAjwbR07Bu', 'avatar.png', 1, 'adjS6EfmhvteJOtGAt1YNd6UtYwfjuK367SEcoR3jsDlvs59FWtsYK8Liapt', NULL, '2019-01-19 13:31:05', '2019-01-19 13:31:05', NULL),
(4, 'name1', 'bm65556@gmail.comm', '123, Kohuwala', 'about me', 1, NULL, '$2y$10$NYlInN00cOZ7la6HFTBKCuS.iRZrUiApJm2j6743/feZfsBvA15c6', 'avatar.png', 1, 'VwifKMkZr8CB9CgVQ0tVunJcel5gs00QE37mJO8IR3zxWLJg0uLMGYySlemn', NULL, '2019-01-19 13:33:12', '2019-01-19 13:55:47', NULL),
(5, 'Parent', 'parent@ems.com', NULL, NULL, 1, NULL, '$2y$10$3e4MEFMiei2TBPCVJDZ5FOtcfAID5rxEmR/XfP5wDO2U1BOJqTGOG', 'avatar.png', 1, 'tsaYysmcoSGwHDyNEBBqAEVY0YuDPf9YTBjI5QJbIbdDX0txEeVShGfOJFDH', NULL, '2019-01-21 12:05:40', '2019-01-21 12:05:57', NULL),
(6, 'Student School', 'student@ems.com', NULL, NULL, 1, NULL, '$2y$10$f6t6QGdTdiA17tPmcyXR8ePIfN4s2nv0tAXx4NRSIJ.Bn2x17utM.', 'avatar.png', 1, 'GaWPn1Jvi0evNGcSoUzxWuOzrSTXfe3cAKnWPPBKGY89FXaL1i2Ftmc8eRtp', NULL, '2019-01-21 12:06:18', '2019-01-21 12:06:22', NULL),
(7, 'Teacher', 'teacher@ems.com', 'address', 'about', 1, '2018-11-22 10:09:10', '$2y$10$f6t6QGdTdiA17tPmcyXR8ePIfN4s2nv0tAXx4NRSIJ.Bn2x17utM.', 'avatar.png', 1, '', NULL, '2019-01-21 18:30:00', '2018-11-23 09:42:36', NULL),
(8, 'sudent2', 'student2@ems.com', 'sffs sfsf', 'sfdssfsdf', 1, '2018-11-22 10:09:10', '$2y$10$pD1Di9FM.X0v2rqtkUD3ieCweXvyQDne6iVKIUK2fxOvwsiwtbv5e', 'avatar.png', 1, '', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_student_id_foreign` (`user_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classes_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `class_has_subjects`
--
ALTER TABLE `class_has_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_has_subjects_class_id_foreign` (`class_id`),
  ADD KEY `class_has_subjects_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `company_admins`
--
ALTER TABLE `company_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_admins_email_unique` (`email`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_results_student_id_foreign` (`student_id`),
  ADD KEY `exam_results_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `guardians`
--
ALTER TABLE `guardians`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guardians_user_id_unique` (`user_id`);

--
-- Indexes for table `guardian_student`
--
ALTER TABLE `guardian_student`
  ADD KEY `guardian_student_student_id_foreign` (`student_id`),
  ADD KEY `guardian_student_parent_id_foreign` (`guardian_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_user_id_foreign` (`user_id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materials_subject_id_foreign` (`subject_id`);

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
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_read_statuses`
--
ALTER TABLE `notice_read_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_read_statuses_user_id_foreign` (`user_id`),
  ADD KEY `notice_read_statuses_notice_id_foreign` (`notice_id`);

--
-- Indexes for table `notice_users`
--
ALTER TABLE `notice_users`
  ADD KEY `user_has__notices_user_id_foreign` (`user_id`),
  ADD KEY `user_has__notices_notice_id_foreign` (`notice_id`),
  ADD KEY `user_has__notices_role_id_foreign` (`role_id`);

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
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_student_id_foreign` (`student_id`),
  ADD KEY `payments_user_id_foreign` (`user_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
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
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schools_package_id_foreign` (`package_id`);

--
-- Indexes for table `school_payments`
--
ALTER TABLE `school_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `school_payments_school_id_foreign` (`school_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_indexno_unique` (`indexNo`),
  ADD UNIQUE KEY `students_user_id_unique` (`user_id`),
  ADD KEY `students_parent_id_foreign` (`parent_id`),
  ADD KEY `students_subject_group_id_foreign` (`subject_group_id`),
  ADD KEY `students_package_id_foreign` (`package_id`),
  ADD KEY `students_class_id_foreign` (`class_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `subject_groups`
--
ALTER TABLE `subject_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_subject_group`
--
ALTER TABLE `subject_subject_group`
  ADD KEY `subject_groups_subject_subject_group_id_foreign` (`subject_group_id`),
  ADD KEY `subject_groups_subject_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_user_id_unique` (`user_id`);

--
-- Indexes for table `teacher_has_qualifications`
--
ALTER TABLE `teacher_has_qualifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_has_qualifications_teacher_id_foreign` (`teacher_id`),
  ADD KEY `teacher_has_qualifications_qualification_id_foreign` (`qualification_id`);

--
-- Indexes for table `time_tables`
--
ALTER TABLE `time_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_tables_class_id_foreign` (`class_id`),
  ADD KEY `time_tables_subject_id_foreign` (`subject_id`),
  ADD KEY `time_tables_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_school_id_foreign` (`school_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `class_has_subjects`
--
ALTER TABLE `class_has_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_admins`
--
ALTER TABLE `company_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guardians`
--
ALTER TABLE `guardians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notice_read_statuses`
--
ALTER TABLE `notice_read_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_payments`
--
ALTER TABLE `school_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subject_groups`
--
ALTER TABLE `subject_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacher_has_qualifications`
--
ALTER TABLE `teacher_has_qualifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_tables`
--
ALTER TABLE `time_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_student_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `class_has_subjects`
--
ALTER TABLE `class_has_subjects`
  ADD CONSTRAINT `class_has_subjects_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `class_has_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD CONSTRAINT `exam_results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `exam_results_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `guardians`
--
ALTER TABLE `guardians`
  ADD CONSTRAINT `guardians_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `guardian_student`
--
ALTER TABLE `guardian_student`
  ADD CONSTRAINT `guardian_student_parent_id_foreign` FOREIGN KEY (`guardian_id`) REFERENCES `guardians` (`id`),
  ADD CONSTRAINT `guardian_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `materials`
--
ALTER TABLE `materials`
  ADD CONSTRAINT `materials_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

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
-- Constraints for table `notice_read_statuses`
--
ALTER TABLE `notice_read_statuses`
  ADD CONSTRAINT `notice_read_statuses_notice_id_foreign` FOREIGN KEY (`notice_id`) REFERENCES `notices` (`id`),
  ADD CONSTRAINT `notice_read_statuses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notice_users`
--
ALTER TABLE `notice_users`
  ADD CONSTRAINT `user_has__notices_notice_id_foreign` FOREIGN KEY (`notice_id`) REFERENCES `notices` (`id`),
  ADD CONSTRAINT `user_has__notices_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_has__notices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `schools_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`);

--
-- Constraints for table `school_payments`
--
ALTER TABLE `school_payments`
  ADD CONSTRAINT `school_payments_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `students_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `packages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `students_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `guardians` (`id`),
  ADD CONSTRAINT `students_subject_group_id_foreign` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `subject_subject_group`
--
ALTER TABLE `subject_subject_group`
  ADD CONSTRAINT `subject_groups_subject_subject_group_id_foreign` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`),
  ADD CONSTRAINT `subject_groups_subject_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `teacher_has_qualifications`
--
ALTER TABLE `teacher_has_qualifications`
  ADD CONSTRAINT `teacher_has_qualifications_qualification_id_foreign` FOREIGN KEY (`qualification_id`) REFERENCES `qualifications` (`id`),
  ADD CONSTRAINT `teacher_has_qualifications_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `time_tables`
--
ALTER TABLE `time_tables`
  ADD CONSTRAINT `time_tables_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `time_tables_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `time_tables_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
