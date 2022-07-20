-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2022 at 09:51 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `horesydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity_roles`
--

CREATE TABLE `activity_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `metaname_id` int(11) DEFAULT NULL,
  `indicator_id` int(11) DEFAULT NULL,
  `opt_answer_id` int(11) DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `datex` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `property_id`, `metaname_id`, `indicator_id`, `opt_answer_id`, `answer`, `asset_id`, `status`, `action`, `user_id`, `datex`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 7, 'The Bed is clean', 1, 'Active', '1', 4, '2022-07-18', '2022-07-18 10:12:26', '2022-07-18 12:38:31'),
(2, 1, 1, 3, 10, 'The freizer is working', 1, 'Inactive', '1', 4, '2022-07-18', '2022-07-18 10:12:26', '2022-07-18 12:29:52'),
(3, 1, 1, 3, 8, 'The room is swept', 1, 'Active', '1', 4, '2022-07-18', '2022-07-18 10:42:03', '2022-07-18 12:38:31'),
(4, 1, 1, 3, 11, 'The light is working', 1, 'Active', '1', 4, '2022-07-18', '2022-07-18 10:42:03', '2022-07-18 12:38:31'),
(5, 1, 1, 3, 9, 'The ventilation is working', 1, 'Inactive', '1', 4, '2022-07-18', '2022-07-18 12:05:23', '2022-07-18 12:07:50'),
(6, 1, 5, 3, 8, 'The room is swept', 3, 'Active', '1', 4, '2022-07-18', '2022-07-18 12:40:22', '2022-07-18 12:40:22'),
(7, 1, 5, 3, 10, 'The freizer is working', 3, 'Active', '1', 4, '2022-07-18', '2022-07-18 12:40:22', '2022-07-18 12:40:22'),
(8, 1, 2, 1, 2, 'No', 2, 'Active', '1', 4, '2022-07-18', '2022-07-18 12:51:52', '2022-07-18 12:51:52'),
(9, 1, 2, 2, 4, 'Yes', 2, 'Active', '1', 4, '2022-07-18', '2022-07-18 12:51:52', '2022-07-18 12:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `answer_check_boxes`
--

CREATE TABLE `answer_check_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `metaname_id` int(11) DEFAULT NULL,
  `indicator_id` int(11) DEFAULT NULL,
  `opt_answer_id` int(11) DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `action` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `datex` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answer_check_boxes`
--

INSERT INTO `answer_check_boxes` (`id`, `property_id`, `metaname_id`, `indicator_id`, `opt_answer_id`, `answer`, `asset_id`, `status`, `action`, `user_id`, `datex`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 8, 'The room is swept', 1, 'Active', 1, 4, '2022-07-18', '2022-07-18 12:08:35', '2022-07-18 12:20:52'),
(2, 1, 1, 3, 9, 'The ventilation is working', 1, 'Inactive', 1, 4, '2022-07-18', '2022-07-18 12:08:35', '2022-07-18 12:38:32'),
(3, 1, 1, 3, 10, 'The freizer is working', 1, 'Inactive', 1, 4, '2022-07-18', '2022-07-18 12:08:35', '2022-07-18 12:38:32'),
(4, 1, 1, 3, 11, 'The light is working', 1, 'Active', 1, 4, '2022-07-18', '2022-07-18 12:08:35', '2022-07-18 12:28:39'),
(5, 1, 1, 3, 7, 'The Bed is clean', 1, 'Active', 1, 4, '2022-07-18', '2022-07-18 12:28:39', '2022-07-18 12:35:28'),
(6, 1, 5, 3, 9, 'The freizer is working', 3, 'Active', 1, 4, '2022-07-18', '2022-07-18 12:40:23', '2022-07-18 12:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `answer_desc_photos`
--

CREATE TABLE `answer_desc_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `metaname_id` int(11) DEFAULT NULL,
  `indicator_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(700) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` tinyint(1) DEFAULT 0,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answer_desc_photos`
--

INSERT INTO `answer_desc_photos` (`id`, `property_id`, `asset_id`, `metaname_id`, `indicator_id`, `answer_id`, `user_id`, `description`, `image`, `action`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 10:12:26', '2022-07-18 10:12:26'),
(2, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 10:12:26', '2022-07-18 10:12:26'),
(3, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 10:28:11', '2022-07-18 10:29:39'),
(4, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 10:28:11', '2022-07-18 10:29:39'),
(5, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 10:38:36', '2022-07-18 10:38:36'),
(6, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 10:38:36', '2022-07-18 10:38:36'),
(7, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 10:39:28', '2022-07-18 10:39:28'),
(8, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 10:39:28', '2022-07-18 10:39:28'),
(9, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 10:39:59', '2022-07-18 10:40:00'),
(10, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 10:39:59', '2022-07-18 10:40:00'),
(11, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 10:40:29', '2022-07-18 10:40:29'),
(12, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 10:40:29', '2022-07-18 10:40:29'),
(13, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 10:41:01', '2022-07-18 10:41:02'),
(14, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 10:41:02', '2022-07-18 10:41:02'),
(15, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 10:42:03', '2022-07-18 10:42:03'),
(16, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 10:42:03', '2022-07-18 10:42:03'),
(17, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 10:42:11', '2022-07-18 10:42:11'),
(18, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 10:42:11', '2022-07-18 10:42:11'),
(19, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 10:42:40', '2022-07-18 10:42:41'),
(20, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 10:42:40', '2022-07-18 10:42:41'),
(21, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 10:56:18', '2022-07-18 10:56:18'),
(22, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 10:56:18', '2022-07-18 10:56:18'),
(23, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 11:00:02', '2022-07-18 11:00:02'),
(24, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 11:10:59', '2022-07-18 11:10:59'),
(25, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 11:12:00', '2022-07-18 11:12:29'),
(26, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 11:31:41', '2022-07-18 11:31:42'),
(27, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 11:31:42', '2022-07-18 11:31:42'),
(28, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 11:31:52', '2022-07-18 11:31:53'),
(29, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 11:31:53', '2022-07-18 11:31:53'),
(30, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 11:31:53', '2022-07-18 11:31:53'),
(31, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 11:56:47', '2022-07-18 11:57:22'),
(32, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 11:56:47', '2022-07-18 11:57:22'),
(33, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 11:56:47', '2022-07-18 11:57:22'),
(34, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 11:56:47', '2022-07-18 11:57:22'),
(35, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 11:57:50', '2022-07-18 11:57:50'),
(36, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 11:57:50', '2022-07-18 11:57:50'),
(37, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 11:57:50', '2022-07-18 11:57:50'),
(38, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 12:04:44', '2022-07-18 12:04:47'),
(39, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 12:04:45', '2022-07-18 12:04:47'),
(40, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 12:04:45', '2022-07-18 12:04:47'),
(41, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 12:04:45', '2022-07-18 12:04:47'),
(42, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 12:05:22', '2022-07-18 12:05:27'),
(43, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 12:05:23', '2022-07-18 12:05:27'),
(44, 1, 1, 1, 3, 5, 4, 'Nill Nill Nill Nill', NULL, 0, 'Active', '2022-07-18 12:05:23', '2022-07-18 12:05:27'),
(45, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 12:05:24', '2022-07-18 12:05:27'),
(46, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 12:05:25', '2022-07-18 12:05:27'),
(47, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 12:07:49', '2022-07-18 12:07:50'),
(48, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 12:07:50', '2022-07-18 12:07:50'),
(49, 1, 1, 1, 3, 5, 4, 'Nill Nill Nill Nill Nill', NULL, 0, 'Active', '2022-07-18 12:07:50', '2022-07-18 12:07:50'),
(50, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 12:07:50', '2022-07-18 12:07:50'),
(51, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 12:07:50', '2022-07-18 12:07:50'),
(52, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 12:08:35', '2022-07-18 12:08:35'),
(53, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 12:09:05', '2022-07-18 12:09:06'),
(54, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 12:09:05', '2022-07-18 12:09:06'),
(55, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 12:12:56', '2022-07-18 12:19:42'),
(56, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 12:12:56', '2022-07-18 12:19:42'),
(57, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 12:19:59', '2022-07-18 12:20:00'),
(58, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 12:19:59', '2022-07-18 12:20:00'),
(59, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 12:20:52', '2022-07-18 12:20:52'),
(60, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 12:20:52', '2022-07-18 12:20:52'),
(61, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 12:25:44', '2022-07-18 12:25:45'),
(62, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 12:25:45', '2022-07-18 12:25:45'),
(63, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 12:25:45', '2022-07-18 12:25:45'),
(64, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 12:25:57', '2022-07-18 12:25:58'),
(65, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 12:25:58', '2022-07-18 12:25:58'),
(66, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 12:28:07', '2022-07-18 12:28:08'),
(67, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 12:28:07', '2022-07-18 12:28:08'),
(68, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 12:28:07', '2022-07-18 12:28:08'),
(69, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 12:28:38', '2022-07-18 12:28:39'),
(70, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 12:28:38', '2022-07-18 12:28:39'),
(71, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 12:29:18', '2022-07-18 12:29:19'),
(72, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 12:29:18', '2022-07-18 12:29:19'),
(73, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 12:29:18', '2022-07-18 12:29:19'),
(74, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 12:29:18', '2022-07-18 12:29:19'),
(75, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 12:29:52', '2022-07-18 12:29:52'),
(76, 1, 1, 1, 3, 2, 4, '', NULL, 0, 'Active', '2022-07-18 12:29:52', '2022-07-18 12:29:52'),
(77, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 12:29:52', '2022-07-18 12:29:52'),
(78, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 12:35:26', '2022-07-18 12:35:29'),
(79, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 12:35:27', '2022-07-18 12:35:29'),
(80, 1, 1, 1, 3, 1, 4, '', NULL, 0, 'Active', '2022-07-18 12:38:31', '2022-07-18 12:38:32'),
(81, 1, 1, 1, 3, 3, 4, '', NULL, 0, 'Active', '2022-07-18 12:38:31', '2022-07-18 12:38:32'),
(82, 1, 1, 1, 3, 4, 4, '', NULL, 0, 'Active', '2022-07-18 12:38:31', '2022-07-18 12:38:32'),
(83, 1, 3, 5, 3, 6, 4, '', NULL, 0, 'Active', '2022-07-18 12:40:22', '2022-07-18 12:40:23'),
(84, 1, 3, 5, 3, 7, 4, '', NULL, 0, 'Active', '2022-07-18 12:40:22', '2022-07-18 12:40:23'),
(85, 1, 2, 2, 1, 8, 4, '', NULL, 0, 'Active', '2022-07-18 12:51:52', '2022-07-18 12:51:52'),
(86, 1, 2, 2, 2, 9, 4, '', NULL, 0, 'Active', '2022-07-18 12:51:52', '2022-07-18 12:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `answer_update_photos`
--

CREATE TABLE `answer_update_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `index_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `metaname_id` int(11) DEFAULT NULL,
  `indicator_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(700) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answer_update_photos`
--

INSERT INTO `answer_update_photos` (`id`, `index_id`, `property_id`, `asset_id`, `metaname_id`, `indicator_id`, `answer_id`, `user_id`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 1, 1, 3, 1, 4, 'Nill', NULL, 'Active', '2022-07-18 10:12:26', '2022-07-18 12:51:52'),
(2, 1, 1, 1, 1, 3, 2, 4, 'Nill', NULL, 'Active', '2022-07-18 10:12:26', '2022-07-18 12:51:52'),
(3, 0, 1, 1, 1, 3, 3, 4, 'Nill', NULL, 'Active', '2022-07-18 10:42:03', '2022-07-18 12:51:52'),
(4, 1, 1, 1, 1, 3, 4, 4, 'Nill', NULL, 'Active', '2022-07-18 10:42:03', '2022-07-18 12:51:52'),
(5, 2, 1, 1, 1, 3, 5, 4, 'Nill', NULL, 'Active', '2022-07-18 12:05:24', '2022-07-18 12:51:52'),
(6, 0, 1, 3, 5, 3, 6, 4, 'Nill', NULL, 'Active', '2022-07-18 12:40:22', '2022-07-18 12:51:52'),
(7, 1, 1, 3, 5, 3, 7, 4, 'Nill', NULL, 'Active', '2022-07-18 12:40:22', '2022-07-18 12:51:52'),
(8, 0, 1, 2, 2, 1, 8, 4, 'Nill', NULL, 'Active', '2022-07-18 12:51:52', '2022-07-18 12:51:52'),
(9, 1, 1, 2, 2, 2, 9, 4, 'Nill', NULL, 'Active', '2022-07-18 12:51:52', '2022-07-18 12:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaname_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_brand` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_location` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_serial_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_tag_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `property_id`, `location_id`, `metaname_id`, `asset_name`, `asset_type`, `asset_brand`, `asset_location`, `asset_version`, `asset_serial_no`, `asset_barcode`, `asset_tag_no`, `asset_description`, `photo`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, '1', 'Room 001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Room 001', NULL, 'Active', 1, '2022-07-07 18:47:23', '2022-07-07 18:47:23'),
(2, '1', NULL, '2', 'Doo1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'D001', NULL, 'Active', 1, '2022-07-08 22:15:48', '2022-07-08 22:15:48'),
(3, '1', NULL, '5', 'SW001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SW001', NULL, 'Active', 1, '2022-07-08 22:37:46', '2022-07-08 22:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `asset_values`
--

CREATE TABLE `asset_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `cash_in_hand` bigint(20) UNSIGNED NOT NULL,
  `credit_customer` bigint(20) UNSIGNED NOT NULL,
  `advance_paid_to_supplier` bigint(20) UNSIGNED NOT NULL,
  `stock_value` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash_ins`
--

CREATE TABLE `cash_ins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `amount_received` int(10) UNSIGNED NOT NULL,
  `amount_to` int(10) UNSIGNED NOT NULL,
  `cash_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `checklist_statuses`
--

CREATE TABLE `checklist_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sys_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `grade` tinyint(1) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'False',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tin` int(10) UNSIGNED NOT NULL,
  `vrn` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(10) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_account_summaries`
--

CREATE TABLE `customer_account_summaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL DEFAULT 0,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallets`
--

CREATE TABLE `customer_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `balance` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_wallet_summuries`
--

CREATE TABLE `customer_wallet_summuries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `wallet_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `wallet_amount` int(11) NOT NULL DEFAULT 0,
  `wallet_balance` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `datatypes`
--

CREATE TABLE `datatypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `datatype_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datatype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'input',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Inactive',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datatypes`
--

INSERT INTO `datatypes` (`id`, `datatype_name`, `datatype`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Input', 'input', 'Inactive', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(2, 'Checklist', 'checkbox', 'Inactive', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(3, 'Selection/Optional', 'radio', 'Inactive', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(4, 'Number', 'number', 'Inactive', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(5, 'Description', 'textarea', 'Inactive', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `users` int(11) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `unit_name`, `status`, `users`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Hr and Admin', 'Hr and Admin', 'Active', 0, 1, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(2, 'Hoteliar', 'Hoteliar', 'Active', 0, 1, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(3, 'Account', 'Account', 'Active', 0, 1, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(4, 'Store', 'Store', 'Active', 0, 1, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(5, 'House Keeping', 'House Keeping', 'Active', 0, 1, '2022-07-07 18:33:01', '2022-07-07 18:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `department_roles`
--

CREATE TABLE `department_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `direct_expenses`
--

CREATE TABLE `direct_expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expenses_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_ind_updates`
--

CREATE TABLE `dynamic_ind_updates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `index_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `metaname_id` int(11) DEFAULT NULL,
  `indicator_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  `opt_answer_id` int(11) DEFAULT NULL,
  `answer_value` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` int(11) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(700) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `datex` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamic_ind_updates`
--

INSERT INTO `dynamic_ind_updates` (`id`, `index_id`, `property_id`, `asset_id`, `metaname_id`, `indicator_id`, `answer_id`, `opt_answer_id`, `answer_value`, `value`, `user_id`, `description`, `image`, `status`, `datex`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 1, 1, 3, 1, 7, 'The Bed is clean', 1, 4, 'Nill', NULL, 'Active', '2022-07-18', '2022-07-18 10:12:26', '2022-07-18 10:12:26'),
(2, 1, 1, 1, 1, 3, 2, 10, 'The freizer is working', 1, 4, 'Nill', NULL, 'Inactive', '2022-07-18', '2022-07-18 10:12:26', '2022-07-18 10:12:26'),
(3, 0, 1, 1, 1, 3, 3, 8, 'The room is swept', 1, 4, 'Nill', NULL, 'Active', '2022-07-18', '2022-07-18 10:42:03', '2022-07-18 10:42:03'),
(4, 1, 1, 1, 1, 3, 4, 11, 'The light is working', 1, 4, 'Nill', NULL, 'Active', '2022-07-18', '2022-07-18 10:42:03', '2022-07-18 10:42:03'),
(5, 2, 1, 1, 1, 3, 5, 9, 'The ventilation is working', 1, 4, 'Nill', NULL, 'Inactive', '2022-07-18', '2022-07-18 12:05:24', '2022-07-18 12:05:24'),
(6, 0, 1, 3, 5, 3, 6, 8, 'The room is swept', 1, 4, 'Nill', NULL, 'Active', '2022-07-18', '2022-07-18 12:40:22', '2022-07-18 12:40:22'),
(7, 1, 1, 3, 5, 3, 7, 10, 'The freizer is working', 1, 4, 'Nill', NULL, 'Active', '2022-07-18', '2022-07-18 12:40:22', '2022-07-18 12:40:22'),
(8, 0, 1, 2, 2, 1, 8, 2, 'No', 1, 4, 'Nill', NULL, 'Active', '2022-07-18', '2022-07-18 12:51:52', '2022-07-18 12:51:52'),
(9, 1, 1, 2, 2, 2, 9, 4, 'Yes', 1, 4, 'Nill', NULL, 'Active', '2022-07-18', '2022-07-18 12:51:52', '2022-07-18 12:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expenses_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `key_indicators`
--

CREATE TABLE `key_indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `key_indicators`
--

INSERT INTO `key_indicators` (`id`, `key_name`, `created_at`, `updated_at`) VALUES
(1, 'Good', '2022-07-11 10:13:46', '2022-07-11 10:13:46'),
(2, 'Bad', '2022-07-11 10:13:46', '2022-07-11 10:13:46'),
(3, 'Critical', '2022-07-11 10:13:46', '2022-07-11 10:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `liablity_values`
--

CREATE TABLE `liablity_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payable_supplier` bigint(20) UNSIGNED NOT NULL,
  `expenses` bigint(20) UNSIGNED NOT NULL,
  `advance_paid_by_customer` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE `metadata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `metadata_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datatype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `statusx` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Inactive',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`id`, `metadata_name`, `datatype`, `status`, `statusx`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Name', 'input', 'Active', 'Inactive', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(2, 'Brand Name', 'input', 'Active', 'Inactive', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(3, 'Version', 'input', 'Active', 'Inactive', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(4, 'Barcode', 'input', 'Active', 'Inactive', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(5, 'Serial Number', 'input', 'Active', 'Inactive', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(6, 'Tag Number', 'input', 'Active', 'Inactive', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(7, 'Type', 'input', 'Active', 'Inactive', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(8, 'Description', 'textarea', 'Active', 'Inactive', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(9, 'Location', 'input', 'Active', 'Inactive', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `metanames`
--

CREATE TABLE `metanames` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `metaname_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metaname_description` varchar(240) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stop',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metanames`
--

INSERT INTO `metanames` (`id`, `metaname_name`, `metaname_description`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rooms', 'Rooms', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:33:46'),
(2, 'Dinning Rooms', 'dinning rooms', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(3, 'Kitchen', 'Kitchen', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(4, 'Light', 'light', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:32:26'),
(5, 'Swimming Pool', 'swimming pool', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(6, 'Garden', 'Garden', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(7, 'Store', 'Store', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(8, 'Garage', 'Garage', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(9, 'Fance', 'Fance', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `metaname_datatypes`
--

CREATE TABLE `metaname_datatypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `metaname_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datatype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datatype_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metaname_datatypes`
--

INSERT INTO `metaname_datatypes` (`id`, `metaname_id`, `metadata_name`, `datatype`, `datatype_name`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1', 'Name', 'input', 'asset_name', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(2, '1', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(3, '2', 'Name', 'input', 'asset_name', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(4, '2', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(5, '3', 'Name', 'input', 'asset_name', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(6, '3', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(7, '4', 'Name', 'input', 'asset_name', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(8, '4', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(9, '5', 'Name', 'input', 'asset_name', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(10, '5', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(11, '6', 'Name', 'input', 'asset_name', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(12, '6', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(13, '7', 'Name', 'input', 'asset_name', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(14, '7', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(15, '8', 'Name', 'input', 'asset_name', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(16, '8', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(17, '9', 'Name', 'input', 'asset_name', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53'),
(18, '9', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-07-07 21:30:53', '2022-07-07 21:30:53');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_06_28_183926_create_permission_tables', 1),
(7, '2021_06_30_085227_create_warehouses_table', 1),
(8, '2021_06_30_085250_create_suppliers_table', 1),
(9, '2021_06_30_085300_create_stocks_table', 1),
(10, '2021_06_30_130240_create_customers_table', 1),
(11, '2021_06_30_141059_create_orders_table', 1),
(12, '2021_07_01_082350_create_order_items_table', 1),
(13, '2021_07_01_084817_create_stockings_table', 1),
(14, '2021_07_03_085912_create_sales_table', 1),
(15, '2021_07_03_140323_create_sessions_table', 1),
(16, '2021_07_05_131159_create_sub_stores_table', 1),
(17, '2021_07_09_124552_create_payments_table', 1),
(18, '2021_07_09_165459_create_purchases_table', 1),
(19, '2021_07_16_143331_create_purchase_orders_table', 1),
(20, '2021_07_16_175603_create_purchase_items_table', 1),
(21, '2021_07_20_154102_create_accounts_table', 1),
(22, '2021_07_21_163204_create_payment_categories_table', 1),
(23, '2021_07_21_165818_create_cash_ins_table', 1),
(24, '2021_07_23_172534_create_expense_categories_table', 1),
(25, '2021_07_23_183809_create_direct_expenses_table', 1),
(26, '2021_07_27_143817_create_supplier_accounts_table', 1),
(27, '2021_07_28_102946_create_customer_account_summaries_table', 1),
(28, '2021_07_28_192513_create_supplier_account_summaries_table', 1),
(29, '2021_09_05_141028_create_customer_wallets_table', 1),
(30, '2021_09_05_141041_create_supplier_wallets_table', 1),
(31, '2021_09_07_202550_create_customer_wallet_summuries_table', 1),
(32, '2021_09_07_202606_create_supplier_wallet_summuries_table', 1),
(33, '2021_11_10_220050_create_asset_values_table', 1),
(34, '2021_11_10_220151_create_liablity_values_table', 1),
(35, '2022_01_01_220945_create_rental_items_table', 1),
(36, '2022_01_01_221017_create_rentals_table', 1),
(37, '2022_01_01_221558_create_rental_orders_table', 1),
(38, '2022_01_01_221617_create_rental_order_items_table', 1),
(39, '2022_01_03_192231_create_my_companies_table', 1),
(40, '2022_01_03_193204_create_my_payments_table', 1),
(41, '2022_03_04_153123_create_pending_stocks_table', 1),
(42, '2022_04_14_132826_create_departments_table', 1),
(43, '2022_04_14_195447_create_properties_table', 1),
(44, '2022_04_16_183133_create_datatypes_table', 1),
(45, '2022_04_16_190935_create_metadata_table', 1),
(46, '2022_04_16_204544_create_metanames_table', 1),
(47, '2022_04_16_215036_create_metaname_datatypes_table', 1),
(48, '2022_04_18_174405_create_assets_table', 1),
(49, '2022_04_23_170409_create_qns_numbers_table', 1),
(50, '2022_04_23_170417_create_set_indicators_table', 1),
(51, '2022_04_23_170419_create_answer_desc_photos_table', 1),
(52, '2022_04_23_170419_create_answer_update_photos_table', 1),
(53, '2022_04_23_170419_create_answers_table', 1),
(54, '2022_04_23_170420_create_optional_answers_table', 1),
(55, '2022_05_04_184641_create_activity_roles_table', 1),
(56, '2022_05_04_184641_create_department_roles_table', 1),
(57, '2022_05_04_184641_create_qns_appliedtos_table', 1),
(58, '2022_05_13_151407_create_user_registers_table', 1),
(59, '2022_05_22_115551_create_user_activities_table', 1),
(60, '2022_05_22_115551_create_user_roles_table', 1),
(61, '2022_05_22_115552_create_user_properties_table', 1),
(62, '2022_06_10_163515_create_report_tests_table', 1),
(63, '2022_06_15_125409_create_checklist_statuses_table', 1),
(64, '2022_06_21_153251_create_dynamic_ind_updates_table', 1),
(65, '2022_06_21_153252_create_key_indicators_table', 2),
(66, '2022_04_23_170420_create_answers_check_boxes_table', 3),
(67, '2022_04_23_170420_create_answer_check_boxes_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5),
(6, 'App\\Models\\User', 6),
(7, 'App\\Models\\User', 7),
(8, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `my_companies`
--

CREATE TABLE `my_companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vrn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` int(10) UNSIGNED NOT NULL,
  `email` varchar(48) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `my_payments`
--

CREATE TABLE `my_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` int(10) UNSIGNED NOT NULL,
  `my_id` int(10) UNSIGNED NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount_paid` int(10) UNSIGNED NOT NULL,
  `end_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_via` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `optional_answers`
--

CREATE TABLE `optional_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `indicator_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_classification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datatype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `optional_answers`
--

INSERT INTO `optional_answers` (`id`, `indicator_id`, `answer`, `answer_classification`, `datatype`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1', 'Yes', 'Good', 'radio', 'Active', 1, '2022-07-07 19:02:15', '2022-07-07 19:02:15'),
(2, '1', 'No', 'Bad', 'radio', 'Active', 1, '2022-07-07 19:02:15', '2022-07-07 19:02:15'),
(3, '1', 'N/A', 'Critical', 'radio', 'Active', 1, '2022-07-07 19:02:15', '2022-07-07 19:02:15'),
(4, '2', 'Yes', 'Good', 'radio', 'Active', 1, '2022-07-07 19:03:17', '2022-07-07 19:03:17'),
(5, '2', 'No', 'Bad', 'radio', 'Active', 1, '2022-07-07 19:03:17', '2022-07-07 19:03:17'),
(6, '2', 'N/A', 'Critical', 'radio', 'Active', 1, '2022-07-07 19:03:17', '2022-07-07 19:03:17'),
(7, '3', 'The Bed is clean', 'Good', 'checkbox', 'Active', 1, '2022-07-07 19:05:59', '2022-07-07 19:05:59'),
(8, '3', 'The room is swept', 'Good', 'checkbox', 'Active', 1, '2022-07-07 19:05:59', '2022-07-07 19:05:59'),
(9, '3', 'The ventilation is working', 'Good', 'checkbox', 'Active', 1, '2022-07-07 19:05:59', '2022-07-07 19:05:59'),
(10, '3', 'The freizer is working', 'Good', 'checkbox', 'Active', 1, '2022-07-07 19:05:59', '2022-07-07 19:05:59'),
(11, '3', 'The light is working', 'Good', 'checkbox', 'Active', 1, '2022-07-07 19:05:59', '2022-07-07 19:05:59'),
(12, '4', 'Yes', 'Good', 'radio', 'Active', 1, '2022-07-07 19:09:38', '2022-07-07 19:09:38'),
(13, '4', 'No', 'Bad', 'radio', 'Active', 1, '2022-07-07 19:09:38', '2022-07-07 19:09:38'),
(14, '4', 'N/A', 'Critical', 'radio', 'Active', 1, '2022-07-07 19:09:38', '2022-07-07 19:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `warehouse_id` int(10) UNSIGNED NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `width` decimal(10,2) UNSIGNED NOT NULL,
  `height` decimal(10,2) UNSIGNED NOT NULL,
  `qty` decimal(10,2) UNSIGNED NOT NULL,
  `buying_price` int(10) UNSIGNED NOT NULL,
  `selling_price` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `paid` int(10) UNSIGNED NOT NULL,
  `wallet` decimal(8,2) NOT NULL DEFAULT 0.00,
  `balance` int(10) UNSIGNED NOT NULL,
  `receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_categories`
--

CREATE TABLE `payment_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pending_stocks`
--

CREATE TABLE `pending_stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `trans_no` int(10) UNSIGNED NOT NULL,
  `from_store` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Qty_issued` decimal(8,2) DEFAULT NULL,
  `to_store` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Qty_received` decimal(8,2) DEFAULT NULL,
  `trans_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_rank` int(10) UNSIGNED NOT NULL,
  `room_no` int(10) UNSIGNED NOT NULL,
  `location_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `property_name`, `property_category`, `property_rank`, `room_no`, `location_name`, `phone`, `email`, `property_description`, `photo`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Manyara best view', 'Lodge', 4, 12, 'Mto wa Umbu', '8886', 'superadmin@hakunamatatabookings.co.tz', 'Mto wa mbu', 'logof_1657219536.png', 'Active', 1, '2022-07-07 18:45:36', '2022-07-07 18:45:37'),
(2, 'Zanzibar view', 'Hotel', 4, 14, 'Zanzibar', '7777', 'generaladmin@hakunamatatabookings.co.tz', NULL, '012_1657785634.jpg', 'Active', 1, '2022-07-07 18:46:40', '2022-07-14 08:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `paid` int(10) UNSIGNED NOT NULL,
  `balance` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `width` decimal(10,2) UNSIGNED NOT NULL,
  `height` decimal(10,2) UNSIGNED NOT NULL,
  `qty` decimal(10,3) UNSIGNED NOT NULL,
  `buying_price` decimal(10,2) UNSIGNED NOT NULL,
  `cost` decimal(12,2) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `warehouse_id` int(10) UNSIGNED NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `paid` int(11) NOT NULL DEFAULT 0,
  `balance` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qns_appliedtos`
--

CREATE TABLE `qns_appliedtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `metaname_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicator_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `col4` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qns_appliedtos`
--

INSERT INTO `qns_appliedtos` (`id`, `metaname_id`, `indicator_id`, `status`, `user_id`, `col4`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'Active', 1, 1, '2022-07-07 19:02:15', '2022-07-07 19:02:15'),
(2, '1', '2', 'Active', 1, 1, '2022-07-07 19:03:17', '2022-07-07 19:03:17'),
(3, '1', '3', 'Active', 1, 1, '2022-07-07 19:05:59', '2022-07-07 19:05:59'),
(4, '1', '4', 'Active', 1, 1, '2022-07-07 19:09:38', '2022-07-07 19:09:38'),
(5, '2', '3', 'Active', 1, 1, '2022-07-08 22:14:45', '2022-07-08 22:14:45'),
(6, '2', '4', 'Active', 1, 1, '2022-07-08 22:14:45', '2022-07-08 22:14:45'),
(7, '2', '1', 'Active', 1, 1, '2022-07-08 22:16:25', '2022-07-08 22:16:25'),
(8, '2', '2', 'Active', 1, 1, '2022-07-08 22:16:26', '2022-07-08 22:16:26'),
(9, '5', '3', 'Active', 1, 1, '2022-07-08 22:38:38', '2022-07-08 22:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `qns_numbers`
--

CREATE TABLE `qns_numbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qns_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datatype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metaname_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_serial_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_tag_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `paid` int(10) UNSIGNED NOT NULL,
  `balance` int(10) UNSIGNED NOT NULL,
  `wallet` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rental_items`
--

CREATE TABLE `rental_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` int(10) UNSIGNED NOT NULL,
  `descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rental_orders`
--

CREATE TABLE `rental_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rental_order_items`
--

CREATE TABLE `rental_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `fee` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED NOT NULL,
  `total_fee` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_tests`
--

CREATE TABLE `report_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'web', 'Active', '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(2, 'GeneralAdmin', 'web', 'Active', '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(3, 'Admin', 'web', 'Active', '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(4, 'GeneralManager', 'web', 'Active', '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(5, 'Manager', 'web', 'Active', '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(6, 'Account', 'web', 'Active', '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(7, 'Store', 'web', 'Active', '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(8, 'User', 'web', 'Active', '2022-07-07 18:33:01', '2022-07-07 18:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `discount` int(10) UNSIGNED NOT NULL,
  `vat` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `paid` int(10) UNSIGNED NOT NULL,
  `wallet` decimal(8,2) NOT NULL DEFAULT 0.00,
  `balance` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1GWfxP0zOnqhIjtZgZ3SSd3FlIx9ZHmaZgPwWBJ8', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiYVdvNG1lemg4WEtsemVSSjRxbjY1S3R0VHROd2I5Z203Q0VKNXF2ZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM5OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvcmVjb3ZlcnktcHJvcGVydHkiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkdXZHVHZ4QS5McjE5WElOVElnalo3dXgucHlqWFF3TG0xWk92UUQ1WFFFTklONmlSbEY0aGkiO30=', 1658149597);

-- --------------------------------------------------------

--
-- Table structure for table `set_indicators`
--

CREATE TABLE `set_indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qns` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `set_indicators`
--

INSERT INTO `set_indicators` (`id`, `qns`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'The room is cleaned', 'Active', 1, '2022-07-07 19:02:15', '2022-07-07 19:02:15'),
(2, 'The Tv inside the room is working', 'Active', 1, '2022-07-07 19:03:17', '2022-07-07 19:03:17'),
(3, 'The room list', 'Active', 1, '2022-07-07 19:05:59', '2022-07-07 19:05:59'),
(4, 'The door is at good condition', 'Active', 1, '2022-07-07 19:09:38', '2022-07-07 19:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `stockings`
--

CREATE TABLE `stockings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `qty` decimal(10,2) NOT NULL,
  `current_qty` decimal(10,2) UNSIGNED NOT NULL,
  `from` int(10) UNSIGNED NOT NULL,
  `to` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `selling_price` int(10) UNSIGNED NOT NULL,
  `stock_alert` int(11) NOT NULL DEFAULT 0,
  `vat` double(8,2) NOT NULL DEFAULT 0.00,
  `descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_stores`
--

CREATE TABLE `sub_stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse` int(10) UNSIGNED NOT NULL,
  `warehouse_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `current_qty` decimal(10,2) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` int(10) UNSIGNED NOT NULL,
  `tin` int(10) UNSIGNED NOT NULL,
  `vrn` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_accounts`
--

CREATE TABLE `supplier_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_account_summaries`
--

CREATE TABLE `supplier_account_summaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_wallets`
--

CREATE TABLE `supplier_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `balance` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_wallet_summuries`
--

CREATE TABLE `supplier_wallet_summuries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `wallet_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `wallet_amount` int(11) NOT NULL DEFAULT 0,
  `wallet_balance` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `property_id`, `department_id`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 1, 1, 'superadmin@hakunamatatabookings.co.tz', '2022-07-07 18:33:00', '$2y$10$7inGW0wTSA0ooe1A6bB25eQiNnORF9rKc7Oa5IFLs.9mmZKLVWK0i', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-07-07 18:33:00', '2022-07-07 18:33:00'),
(2, 'General Admin', 1, 1, 'generaladmin@hakunamatatabookings.co.tz', '2022-07-07 18:33:00', '$2y$10$yvf4Yib2/KAdKSKcgE66s.2R8W6PoOjoK1uivpunJWbzLIwE80LGS', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-07-07 18:33:00', '2022-07-07 18:33:00'),
(3, 'Admin', 1, 1, 'admin@hakunamatatabookings.co.tz', '2022-07-07 18:33:00', '$2y$10$gKrRp0.Sv0FTZPbw1GL4Ae6.poyz4LjfCbBLD31hellC4RkO32wCW', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-07-07 18:33:00', '2022-07-07 18:33:00'),
(4, 'General Manager', 1, 1, 'generalmanager@hakunamatatabookings.co.tz', '2022-07-07 18:33:00', '$2y$10$uvGTvxA.Lr19XINTIgjZ7ux.pyjXQwLm1ZOvQD5XQENIN6iRlF4hi', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-07-07 18:33:00', '2022-07-07 18:33:00'),
(5, 'Manager', 1, 1, 'manager@hakunamatatabookings.co.tz', '2022-07-07 18:33:00', '$2y$10$yD9g2JXE1fHiiRYqtJvdM.H10gsXNHVoXJfDhwdko0uY5vOCivsAe', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-07-07 18:33:00', '2022-07-07 18:33:00'),
(6, 'Account', 1, 1, 'account@hakunamatatabookings.co.tz', '2022-07-07 18:33:00', '$2y$10$7Ifj4k4AWgiEC1hGJrOAUurGBe7cOrTXBGQHBIM4QDbgGtz2TSSFe', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(7, 'Store', 1, 1, 'store@hakunamatatabookings.co.tz', '2022-07-07 18:33:01', '$2y$10$M6xDght8PlQvbu0h8yASOuBZ0D3cTmlCkbPLJE5xViFkr3RGLt1hm', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(8, 'User', 1, 1, 'user@hakunamatatabookings.co.tz', '2022-07-07 18:33:01', '$2y$10$T91fcotKPO4Cy6tZNZubmOU4s.KPRh9.wNENbzm7h6vm1iafvUZ6m', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-07-07 18:33:01', '2022-07-07 18:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_activities`
--

CREATE TABLE `user_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sys_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_activities`
--

INSERT INTO `user_activities` (`id`, `sys_user_id`, `activity_id`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '4', '1', 'Active', 1, '2022-07-07 18:48:21', '2022-07-07 18:48:21'),
(2, '4', '2', 'Active', 1, '2022-07-08 22:16:52', '2022-07-08 22:16:52'),
(3, '4', '5', 'Active', 1, '2022-07-08 22:38:12', '2022-07-08 22:38:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_properties`
--

CREATE TABLE `user_properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sys_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_registers`
--

CREATE TABLE `user_registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sys_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `sys_user_id`, `role_id`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'Active', 1, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(2, '2', '2', 'Active', 2, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(3, '3', '3', 'Active', 3, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(4, '4', '4', 'Active', 4, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(5, '5', '5', 'Active', 5, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(6, '6', '6', 'Active', 6, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(7, '7', '7', 'Active', 7, '2022-07-07 18:33:01', '2022-07-07 18:33:01'),
(8, '8', '8', 'Active', 8, '2022-07-07 18:33:01', '2022-07-07 18:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_warehouse` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_roles`
--
ALTER TABLE `activity_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer_check_boxes`
--
ALTER TABLE `answer_check_boxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer_desc_photos`
--
ALTER TABLE `answer_desc_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer_update_photos`
--
ALTER TABLE `answer_update_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asset_values`
--
ALTER TABLE `asset_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_ins`
--
ALTER TABLE `cash_ins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checklist_statuses`
--
ALTER TABLE `checklist_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_account_summaries`
--
ALTER TABLE `customer_account_summaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_wallets`
--
ALTER TABLE `customer_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_wallet_summuries`
--
ALTER TABLE `customer_wallet_summuries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datatypes`
--
ALTER TABLE `datatypes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `datatypes_datatype_name_unique` (`datatype_name`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_unit_name_unique` (`unit_name`);

--
-- Indexes for table `department_roles`
--
ALTER TABLE `department_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `direct_expenses`
--
ALTER TABLE `direct_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_ind_updates`
--
ALTER TABLE `dynamic_ind_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `key_indicators`
--
ALTER TABLE `key_indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `liablity_values`
--
ALTER TABLE `liablity_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `metadata_metadata_name_unique` (`metadata_name`);

--
-- Indexes for table `metanames`
--
ALTER TABLE `metanames`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `metanames_metaname_name_unique` (`metaname_name`);

--
-- Indexes for table `metaname_datatypes`
--
ALTER TABLE `metaname_datatypes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `my_companies`
--
ALTER TABLE `my_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_payments`
--
ALTER TABLE `my_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `optional_answers`
--
ALTER TABLE `optional_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_categories`
--
ALTER TABLE `payment_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_stocks`
--
ALTER TABLE `pending_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `properties_property_name_unique` (`property_name`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qns_appliedtos`
--
ALTER TABLE `qns_appliedtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qns_numbers`
--
ALTER TABLE `qns_numbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_items`
--
ALTER TABLE `rental_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_orders`
--
ALTER TABLE `rental_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_order_items`
--
ALTER TABLE `rental_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_tests`
--
ALTER TABLE `report_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `set_indicators`
--
ALTER TABLE `set_indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockings`
--
ALTER TABLE `stockings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_stores`
--
ALTER TABLE `sub_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_email_unique` (`email`);

--
-- Indexes for table `supplier_accounts`
--
ALTER TABLE `supplier_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_account_summaries`
--
ALTER TABLE `supplier_account_summaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_wallets`
--
ALTER TABLE `supplier_wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `supplier_wallets_supplier_id_unique` (`supplier_id`);

--
-- Indexes for table `supplier_wallet_summuries`
--
ALTER TABLE `supplier_wallet_summuries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_activities`
--
ALTER TABLE `user_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_properties`
--
ALTER TABLE `user_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_registers`
--
ALTER TABLE `user_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
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
-- AUTO_INCREMENT for table `activity_roles`
--
ALTER TABLE `activity_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `answer_check_boxes`
--
ALTER TABLE `answer_check_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `answer_desc_photos`
--
ALTER TABLE `answer_desc_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `answer_update_photos`
--
ALTER TABLE `answer_update_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `asset_values`
--
ALTER TABLE `asset_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash_ins`
--
ALTER TABLE `cash_ins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `checklist_statuses`
--
ALTER TABLE `checklist_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_account_summaries`
--
ALTER TABLE `customer_account_summaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_wallets`
--
ALTER TABLE `customer_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_wallet_summuries`
--
ALTER TABLE `customer_wallet_summuries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datatypes`
--
ALTER TABLE `datatypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `department_roles`
--
ALTER TABLE `department_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `direct_expenses`
--
ALTER TABLE `direct_expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dynamic_ind_updates`
--
ALTER TABLE `dynamic_ind_updates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `key_indicators`
--
ALTER TABLE `key_indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `liablity_values`
--
ALTER TABLE `liablity_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `metanames`
--
ALTER TABLE `metanames`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `metaname_datatypes`
--
ALTER TABLE `metaname_datatypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `my_companies`
--
ALTER TABLE `my_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `my_payments`
--
ALTER TABLE `my_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `optional_answers`
--
ALTER TABLE `optional_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_categories`
--
ALTER TABLE `payment_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending_stocks`
--
ALTER TABLE `pending_stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qns_appliedtos`
--
ALTER TABLE `qns_appliedtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `qns_numbers`
--
ALTER TABLE `qns_numbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rental_items`
--
ALTER TABLE `rental_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rental_orders`
--
ALTER TABLE `rental_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rental_order_items`
--
ALTER TABLE `rental_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `report_tests`
--
ALTER TABLE `report_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `set_indicators`
--
ALTER TABLE `set_indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stockings`
--
ALTER TABLE `stockings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_stores`
--
ALTER TABLE `sub_stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_accounts`
--
ALTER TABLE `supplier_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_account_summaries`
--
ALTER TABLE `supplier_account_summaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_wallets`
--
ALTER TABLE `supplier_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_wallet_summuries`
--
ALTER TABLE `supplier_wallet_summuries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_activities`
--
ALTER TABLE `user_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_properties`
--
ALTER TABLE `user_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_registers`
--
ALTER TABLE `user_registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
