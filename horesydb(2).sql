-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2022 at 11:17 AM
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

--
-- Dumping data for table `activity_roles`
--

INSERT INTO `activity_roles` (`id`, `role_id`, `activity_id`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '5', '1', 'Active', 1, '2022-09-30 10:02:42', '2022-09-30 10:02:42'),
(2, '5', '4', 'Active', 1, '2022-09-30 10:25:04', '2022-09-30 10:25:04');

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
  `photo` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `answers` (`id`, `property_id`, `metaname_id`, `indicator_id`, `opt_answer_id`, `answer`, `asset_id`, `photo`, `description`, `status`, `action`, `user_id`, `datex`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 2, 'No', 1, NULL, NULL, 'Active', '1', 5, '2022-09-30', '2022-09-30 10:29:19', '2022-09-30 10:30:34'),
(2, 1, 1, 2, 4, 'Yes', 1, NULL, NULL, 'Active', '1', 5, '2022-09-30', '2022-09-30 10:29:19', '2022-09-30 10:30:34'),
(3, 1, 1, 3, 8, 'No', 1, NULL, NULL, 'Active', '1', 5, '2022-09-30', '2022-09-30 10:29:20', '2022-09-30 10:30:34'),
(4, 1, 1, 5, 15, 'N/A', 1, NULL, NULL, 'Active', '1', 5, '2022-09-30', '2022-09-30 10:29:20', '2022-09-30 10:30:34'),
(5, 1, 1, 4, 10, 'Yes', 1, NULL, NULL, 'Active', '1', 5, '2022-09-30', '2022-09-30 10:29:33', '2022-09-30 10:30:34'),
(6, 1, 1, 1, 1, 'Yes', 1, 'logo_1664654428.png', '', 'Inactive', '1', 5, '2022-10-01', '2022-10-01 20:00:25', '2022-10-01 20:00:25'),
(7, 1, 1, 2, 5, 'No', 1, NULL, '', 'Inactive', '1', 5, '2022-10-01', '2022-10-01 20:00:25', '2022-10-01 20:51:16'),
(8, 1, 1, 3, 7, 'Yes', 1, NULL, 'bn', 'Active', '1', 5, '2022-10-01', '2022-10-01 20:00:26', '2022-10-01 20:59:22'),
(9, 1, 1, 4, 12, 'N/A', 1, NULL, '', 'Active', '1', 5, '2022-10-01', '2022-10-01 20:00:26', '2022-10-01 20:59:22'),
(10, 1, 1, 5, 14, 'No', 1, NULL, '', 'Active', '1', 5, '2022-10-01', '2022-10-01 20:00:26', '2022-10-01 20:59:22'),
(11, 1, 1, 1, 2, 'No', 1, NULL, '', 'Active', '1', 5, '2022-10-01', '2022-10-01 20:47:39', '2022-10-01 20:59:22'),
(12, 1, 1, 2, 4, 'Yes', 1, NULL, '', 'Active', '1', 5, '2022-10-01', '2022-10-01 20:56:53', '2022-10-01 20:59:22'),
(13, 1, 1, 1, 2, 'No', 1, 'logof_1664658108.png', 'xxx', 'Active', '1', 5, '2022-10-02', '2022-10-01 21:01:46', '2022-10-01 21:09:03'),
(14, 1, 1, 2, 4, 'Yes', 1, NULL, 'bnm', 'Inactive', '1', 5, '2022-10-02', '2022-10-01 21:01:47', '2022-10-01 21:03:00'),
(15, 1, 1, 3, 7, 'Yes', 1, NULL, 'name of king', 'Active', '1', 5, '2022-10-02', '2022-10-01 21:01:47', '2022-10-01 21:09:04'),
(16, 1, 1, 4, 12, 'N/A', 1, NULL, 'mk', 'Active', '1', 5, '2022-10-02', '2022-10-01 21:01:47', '2022-10-01 21:09:04'),
(17, 1, 1, 5, 14, 'No', 1, NULL, 'mk', 'Active', '1', 5, '2022-10-02', '2022-10-01 21:01:48', '2022-10-01 21:09:04'),
(18, 1, 1, 2, 6, 'N/A', 1, NULL, 'bnm', 'Active', '1', 5, '2022-10-02', '2022-10-01 21:04:29', '2022-10-01 21:09:04'),
(19, 1, 1, 1, 1, 'Yes', 1, NULL, 'xxx', 'Inactive', '1', 5, '2022-10-02', '2022-10-01 21:04:53', '2022-10-01 21:04:53'),
(20, 1, 1, 1, 1, 'Yes', 1, 'logof_1664957160.png', 'Nill', 'Inactive', '1', 5, '2022-10-05', '2022-10-05 08:05:55', '2022-10-05 08:05:55'),
(21, 1, 1, 2, 5, 'No', 1, NULL, 'Nill', 'Active', '1', 5, '2022-10-05', '2022-10-05 08:05:56', '2022-10-05 08:08:36'),
(22, 1, 1, 3, 7, 'Yes', 1, NULL, 'Nill', 'Active', '1', 5, '2022-10-05', '2022-10-05 08:05:56', '2022-10-05 08:08:37'),
(23, 1, 1, 4, 12, 'N/A', 1, NULL, 'yard', 'Active', '1', 5, '2022-10-05', '2022-10-05 08:05:57', '2022-10-05 08:08:37'),
(24, 1, 1, 5, 14, 'No', 1, NULL, 'yard', 'Active', '1', 5, '2022-10-05', '2022-10-05 08:05:57', '2022-10-05 08:08:37'),
(25, 1, 1, 1, 2, 'No', 1, NULL, 'Nill', 'Active', '1', 5, '2022-10-05', '2022-10-05 08:08:36', '2022-10-05 08:08:36');

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
(1, 1, 1, 1, 1, 1, 5, '', NULL, 0, 'Active', '2022-09-30 10:29:19', '2022-09-30 10:29:21'),
(2, 1, 1, 1, 2, 2, 5, '', NULL, 0, 'Active', '2022-09-30 10:29:19', '2022-09-30 10:29:21'),
(3, 1, 1, 1, 3, 3, 5, '', NULL, 0, 'Active', '2022-09-30 10:29:20', '2022-09-30 10:29:21'),
(4, 1, 1, 1, 5, 4, 5, '', NULL, 0, 'Active', '2022-09-30 10:29:20', '2022-09-30 10:29:21'),
(5, 1, 1, 1, 1, 1, 5, '', NULL, 0, 'Active', '2022-09-30 10:29:33', '2022-09-30 10:29:34'),
(6, 1, 1, 1, 2, 2, 5, '', NULL, 0, 'Active', '2022-09-30 10:29:33', '2022-09-30 10:29:34'),
(7, 1, 1, 1, 3, 3, 5, '', NULL, 0, 'Active', '2022-09-30 10:29:33', '2022-09-30 10:29:34'),
(8, 1, 1, 1, 4, 5, 5, '', NULL, 0, 'Active', '2022-09-30 10:29:33', '2022-09-30 10:29:34'),
(9, 1, 1, 1, 5, 4, 5, '', NULL, 0, 'Active', '2022-09-30 10:29:33', '2022-09-30 10:29:34'),
(10, 1, 1, 1, 1, 1, 5, '', NULL, 0, 'Active', '2022-09-30 10:30:34', '2022-09-30 10:30:36'),
(11, 1, 1, 1, 2, 2, 5, 'desc', 'logo_1664533835.png', 0, 'Active', '2022-09-30 10:30:34', '2022-09-30 10:30:36'),
(12, 1, 1, 1, 3, 3, 5, '', NULL, 0, 'Active', '2022-09-30 10:30:34', '2022-09-30 10:30:36'),
(13, 1, 1, 1, 4, 5, 5, '', NULL, 0, 'Active', '2022-09-30 10:30:34', '2022-09-30 10:30:36'),
(14, 1, 1, 1, 5, 4, 5, '', NULL, 0, 'Active', '2022-09-30 10:30:34', '2022-09-30 10:30:36'),
(15, 1, 1, 1, 1, 6, 5, '', 'logo_1664654428.png', 0, 'Active', '2022-10-01 20:00:25', '2022-10-01 20:00:28'),
(16, 1, 1, 1, 2, 7, 5, '', NULL, 0, 'Active', '2022-10-01 20:00:25', '2022-10-01 20:00:28'),
(17, 1, 1, 1, 3, 8, 5, 'bn', NULL, 0, 'Active', '2022-10-01 20:00:26', '2022-10-01 20:00:28'),
(18, 1, 1, 1, 4, 9, 5, '', NULL, 0, 'Active', '2022-10-01 20:00:26', '2022-10-01 20:00:28'),
(19, 1, 1, 1, 5, 10, 5, '', NULL, 0, 'Active', '2022-10-01 20:00:26', '2022-10-01 20:00:28'),
(20, 1, 1, 1, 1, 11, 5, '', NULL, 0, 'Active', '2022-10-01 20:47:39', '2022-10-01 20:47:40'),
(21, 1, 1, 1, 2, 7, 5, '', NULL, 0, 'Active', '2022-10-01 20:47:40', '2022-10-01 20:47:40'),
(22, 1, 1, 1, 3, 8, 5, 'bn', NULL, 0, 'Active', '2022-10-01 20:47:40', '2022-10-01 20:47:40'),
(23, 1, 1, 1, 4, 9, 5, '', NULL, 0, 'Active', '2022-10-01 20:47:40', '2022-10-01 20:47:40'),
(24, 1, 1, 1, 5, 10, 5, '', NULL, 0, 'Active', '2022-10-01 20:47:40', '2022-10-01 20:47:40'),
(25, 1, 1, 1, 1, 11, 5, '', NULL, 0, 'Active', '2022-10-01 20:48:35', '2022-10-01 20:48:36'),
(26, 1, 1, 1, 2, 7, 5, '', NULL, 0, 'Active', '2022-10-01 20:48:35', '2022-10-01 20:48:36'),
(27, 1, 1, 1, 3, 8, 5, 'bn', NULL, 0, 'Active', '2022-10-01 20:48:35', '2022-10-01 20:48:36'),
(28, 1, 1, 1, 4, 9, 5, '', NULL, 0, 'Active', '2022-10-01 20:48:35', '2022-10-01 20:48:36'),
(29, 1, 1, 1, 5, 10, 5, '', NULL, 0, 'Active', '2022-10-01 20:48:35', '2022-10-01 20:48:36'),
(30, 1, 1, 1, 1, 11, 5, '', NULL, 0, 'Active', '2022-10-01 20:49:04', '2022-10-01 20:49:04'),
(31, 1, 1, 1, 2, 7, 5, '', NULL, 0, 'Active', '2022-10-01 20:49:04', '2022-10-01 20:49:04'),
(32, 1, 1, 1, 3, 8, 5, 'bn', NULL, 0, 'Active', '2022-10-01 20:49:04', '2022-10-01 20:49:04'),
(33, 1, 1, 1, 4, 9, 5, '', NULL, 0, 'Active', '2022-10-01 20:49:04', '2022-10-01 20:49:04'),
(34, 1, 1, 1, 5, 10, 5, '', NULL, 0, 'Active', '2022-10-01 20:49:04', '2022-10-01 20:49:04'),
(35, 1, 1, 1, 1, 11, 5, '', NULL, 0, 'Active', '2022-10-01 20:50:44', '2022-10-01 20:50:44'),
(36, 1, 1, 1, 2, 7, 5, '', NULL, 0, 'Active', '2022-10-01 20:50:44', '2022-10-01 20:50:44'),
(37, 1, 1, 1, 3, 8, 5, 'bn', NULL, 0, 'Active', '2022-10-01 20:50:44', '2022-10-01 20:50:44'),
(38, 1, 1, 1, 4, 9, 5, '', NULL, 0, 'Active', '2022-10-01 20:50:44', '2022-10-01 20:50:44'),
(39, 1, 1, 1, 5, 10, 5, '', NULL, 0, 'Active', '2022-10-01 20:50:44', '2022-10-01 20:50:44'),
(40, 1, 1, 1, 1, 11, 5, '', NULL, 0, 'Active', '2022-10-01 20:51:16', '2022-10-01 20:51:16'),
(41, 1, 1, 1, 2, 7, 5, '', NULL, 0, 'Active', '2022-10-01 20:51:16', '2022-10-01 20:51:16'),
(42, 1, 1, 1, 3, 8, 5, 'bn', NULL, 0, 'Active', '2022-10-01 20:51:16', '2022-10-01 20:51:16'),
(43, 1, 1, 1, 4, 9, 5, '', NULL, 0, 'Active', '2022-10-01 20:51:16', '2022-10-01 20:51:16'),
(44, 1, 1, 1, 5, 10, 5, '', NULL, 0, 'Active', '2022-10-01 20:51:16', '2022-10-01 20:51:16'),
(45, 1, 1, 1, 1, 11, 5, '', NULL, 0, 'Active', '2022-10-01 20:56:53', '2022-10-01 20:56:55'),
(46, 1, 1, 1, 2, 12, 5, '', NULL, 0, 'Active', '2022-10-01 20:56:53', '2022-10-01 20:56:55'),
(47, 1, 1, 1, 3, 8, 5, 'bn', NULL, 0, 'Active', '2022-10-01 20:56:54', '2022-10-01 20:56:55'),
(48, 1, 1, 1, 4, 9, 5, 'mk', NULL, 0, 'Active', '2022-10-01 20:56:54', '2022-10-01 20:56:55'),
(49, 1, 1, 1, 5, 10, 5, '', NULL, 0, 'Active', '2022-10-01 20:56:54', '2022-10-01 20:56:55'),
(50, 1, 1, 1, 1, 11, 5, '', NULL, 0, 'Active', '2022-10-01 20:59:22', '2022-10-01 20:59:23'),
(51, 1, 1, 1, 2, 12, 5, '', NULL, 0, 'Active', '2022-10-01 20:59:22', '2022-10-01 20:59:23'),
(52, 1, 1, 1, 3, 8, 5, 'bn', NULL, 0, 'Active', '2022-10-01 20:59:22', '2022-10-01 20:59:23'),
(53, 1, 1, 1, 4, 9, 5, 'mk', NULL, 0, 'Active', '2022-10-01 20:59:22', '2022-10-01 20:59:23'),
(54, 1, 1, 1, 5, 10, 5, '', NULL, 0, 'Active', '2022-10-01 20:59:22', '2022-10-01 20:59:23'),
(55, 1, 1, 1, 1, 13, 5, '', 'logof_1664658108.png', 0, 'Active', '2022-10-01 21:01:47', '2022-10-01 21:01:49'),
(56, 1, 1, 1, 2, 14, 5, '', NULL, 0, 'Active', '2022-10-01 21:01:47', '2022-10-01 21:01:49'),
(57, 1, 1, 1, 3, 15, 5, 'bn', NULL, 0, 'Active', '2022-10-01 21:01:47', '2022-10-01 21:01:49'),
(58, 1, 1, 1, 4, 16, 5, 'mk', NULL, 0, 'Active', '2022-10-01 21:01:48', '2022-10-01 21:01:49'),
(59, 1, 1, 1, 5, 17, 5, 'mk', NULL, 0, 'Active', '2022-10-01 21:01:48', '2022-10-01 21:01:49'),
(60, 1, 1, 1, 1, 13, 5, '', 'logof_1664658108.png', 0, 'Active', '2022-10-01 21:03:00', '2022-10-01 21:03:01'),
(61, 1, 1, 1, 2, 14, 5, 'bnm', NULL, 0, 'Active', '2022-10-01 21:03:00', '2022-10-01 21:03:01'),
(62, 1, 1, 1, 3, 15, 5, 'bn', NULL, 0, 'Active', '2022-10-01 21:03:00', '2022-10-01 21:03:01'),
(63, 1, 1, 1, 4, 16, 5, 'mk', NULL, 0, 'Active', '2022-10-01 21:03:00', '2022-10-01 21:03:01'),
(64, 1, 1, 1, 5, 17, 5, 'mk', NULL, 0, 'Active', '2022-10-01 21:03:00', '2022-10-01 21:03:01'),
(65, 1, 1, 1, 1, 13, 5, '', 'logof_1664658108.png', 0, 'Active', '2022-10-01 21:04:29', '2022-10-01 21:04:30'),
(66, 1, 1, 1, 2, 18, 5, 'bnm', NULL, 0, 'Active', '2022-10-01 21:04:29', '2022-10-01 21:04:30'),
(67, 1, 1, 1, 3, 15, 5, 'bn', NULL, 0, 'Active', '2022-10-01 21:04:29', '2022-10-01 21:04:30'),
(68, 1, 1, 1, 4, 16, 5, 'mk', NULL, 0, 'Active', '2022-10-01 21:04:29', '2022-10-01 21:04:30'),
(69, 1, 1, 1, 5, 17, 5, 'mk', NULL, 0, 'Active', '2022-10-01 21:04:29', '2022-10-01 21:04:30'),
(70, 1, 1, 1, 1, 19, 5, '', NULL, 0, 'Active', '2022-10-01 21:04:53', '2022-10-01 21:04:54'),
(71, 1, 1, 1, 2, 18, 5, 'bnm', NULL, 0, 'Active', '2022-10-01 21:04:53', '2022-10-01 21:04:54'),
(72, 1, 1, 1, 3, 15, 5, 'bn', NULL, 0, 'Active', '2022-10-01 21:04:53', '2022-10-01 21:04:54'),
(73, 1, 1, 1, 4, 16, 5, 'mk', NULL, 0, 'Active', '2022-10-01 21:04:53', '2022-10-01 21:04:54'),
(74, 1, 1, 1, 5, 17, 5, 'mk', NULL, 0, 'Active', '2022-10-01 21:04:53', '2022-10-01 21:04:54'),
(75, 1, 1, 1, 1, 13, 5, '', 'logof_1664658108.png', 0, 'Active', '2022-10-01 21:06:05', '2022-10-01 21:06:06'),
(76, 1, 1, 1, 2, 18, 5, 'bnm', NULL, 0, 'Active', '2022-10-01 21:06:05', '2022-10-01 21:06:06'),
(77, 1, 1, 1, 3, 15, 5, 'bn', NULL, 0, 'Active', '2022-10-01 21:06:05', '2022-10-01 21:06:06'),
(78, 1, 1, 1, 4, 16, 5, 'mk', NULL, 0, 'Active', '2022-10-01 21:06:05', '2022-10-01 21:06:06'),
(79, 1, 1, 1, 5, 17, 5, 'mk', NULL, 0, 'Active', '2022-10-01 21:06:05', '2022-10-01 21:06:06'),
(80, 1, 1, 1, 1, 13, 5, '', 'logof_1664658108.png', 0, 'Active', '2022-10-01 21:06:46', '2022-10-01 21:06:47'),
(81, 1, 1, 1, 2, 18, 5, 'bnm', NULL, 0, 'Active', '2022-10-01 21:06:46', '2022-10-01 21:06:47'),
(82, 1, 1, 1, 3, 15, 5, 'name of king', NULL, 0, 'Active', '2022-10-01 21:06:46', '2022-10-01 21:06:47'),
(83, 1, 1, 1, 4, 16, 5, 'mk', NULL, 0, 'Active', '2022-10-01 21:06:46', '2022-10-01 21:06:47'),
(84, 1, 1, 1, 5, 17, 5, 'mk', NULL, 0, 'Active', '2022-10-01 21:06:46', '2022-10-01 21:06:47'),
(85, 1, 1, 1, 1, 13, 5, 'xxx', 'logof_1664658108.png', 0, 'Active', '2022-10-01 21:09:04', '2022-10-01 21:09:05'),
(86, 1, 1, 1, 2, 18, 5, 'bnm', NULL, 0, 'Active', '2022-10-01 21:09:04', '2022-10-01 21:09:05'),
(87, 1, 1, 1, 3, 15, 5, 'name of king', NULL, 0, 'Active', '2022-10-01 21:09:04', '2022-10-01 21:09:05'),
(88, 1, 1, 1, 4, 16, 5, 'mk', NULL, 0, 'Active', '2022-10-01 21:09:04', '2022-10-01 21:09:05'),
(89, 1, 1, 1, 5, 17, 5, 'mk', NULL, 0, 'Active', '2022-10-01 21:09:04', '2022-10-01 21:09:05'),
(90, 1, 1, 1, 1, 20, 5, '', 'logof_1664957160.png', 0, 'Active', '2022-10-05 08:05:56', '2022-10-05 08:06:01'),
(91, 1, 1, 1, 2, 21, 5, '', NULL, 0, 'Active', '2022-10-05 08:05:56', '2022-10-05 08:06:01'),
(92, 1, 1, 1, 3, 22, 5, '', NULL, 0, 'Active', '2022-10-05 08:05:57', '2022-10-05 08:06:01'),
(93, 1, 1, 1, 4, 23, 5, 'yard', NULL, 0, 'Active', '2022-10-05 08:05:57', '2022-10-05 08:06:01'),
(94, 1, 1, 1, 5, 24, 5, 'baba', NULL, 0, 'Active', '2022-10-05 08:05:57', '2022-10-05 08:06:01'),
(95, 1, 1, 1, 1, 25, 5, '', NULL, 0, 'Active', '2022-10-05 08:08:36', '2022-10-05 08:08:37'),
(96, 1, 1, 1, 2, 21, 5, '', NULL, 0, 'Active', '2022-10-05 08:08:37', '2022-10-05 08:08:37'),
(97, 1, 1, 1, 3, 22, 5, '', NULL, 0, 'Active', '2022-10-05 08:08:37', '2022-10-05 08:08:37'),
(98, 1, 1, 1, 4, 23, 5, 'yard', NULL, 0, 'Active', '2022-10-05 08:08:37', '2022-10-05 08:08:37'),
(99, 1, 1, 1, 5, 24, 5, 'yard', NULL, 0, 'Active', '2022-10-05 08:08:37', '2022-10-05 08:08:37');

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
(1, 0, 1, 1, 1, 1, 1, 5, 'Nill', 'logof_1664957160.png', 'Active', '2022-09-30 10:29:19', '2022-10-05 08:08:37'),
(2, 1, 1, 1, 1, 2, 2, 5, 'Nill', 'logo_1664533835.png', 'Active', '2022-09-30 10:29:19', '2022-10-05 08:08:37'),
(3, 2, 1, 1, 1, 3, 3, 5, 'Nill', NULL, 'Active', '2022-09-30 10:29:20', '2022-10-05 08:08:37'),
(4, 3, 1, 1, 1, 5, 4, 5, 'yard', NULL, 'Active', '2022-09-30 10:29:20', '2022-10-05 08:08:37'),
(5, 3, 1, 1, 1, 4, 5, 5, 'yard', NULL, 'Active', '2022-09-30 10:29:33', '2022-10-05 08:08:37'),
(6, 0, 1, 1, 1, 1, 6, 5, 'Nill', 'logof_1664957160.png', 'Active', '2022-10-01 20:00:25', '2022-10-05 08:08:37'),
(7, 1, 1, 1, 1, 2, 7, 5, 'Nill', NULL, 'Active', '2022-10-01 20:00:26', '2022-10-05 08:08:37'),
(8, 2, 1, 1, 1, 3, 8, 5, 'Nill', NULL, 'Active', '2022-10-01 20:00:26', '2022-10-05 08:08:37'),
(9, 3, 1, 1, 1, 4, 9, 5, 'yard', NULL, 'Active', '2022-10-01 20:00:26', '2022-10-05 08:08:37'),
(10, 4, 1, 1, 1, 5, 10, 5, 'yard', NULL, 'Active', '2022-10-01 20:00:27', '2022-10-05 08:08:37'),
(11, 0, 1, 1, 1, 1, 11, 5, 'Nill', 'logof_1664957160.png', 'Active', '2022-10-01 20:47:40', '2022-10-05 08:08:37'),
(12, 1, 1, 1, 1, 2, 12, 5, 'Nill', NULL, 'Active', '2022-10-01 20:56:53', '2022-10-05 08:08:37'),
(13, 0, 1, 1, 1, 1, 13, 5, 'Nill', 'logof_1664957160.png', 'Active', '2022-10-01 21:01:47', '2022-10-05 08:08:37'),
(14, 1, 1, 1, 1, 2, 14, 5, 'Nill', NULL, 'Active', '2022-10-01 21:01:47', '2022-10-05 08:08:37'),
(15, 2, 1, 1, 1, 3, 15, 5, 'Nill', NULL, 'Active', '2022-10-01 21:01:47', '2022-10-05 08:08:37'),
(16, 3, 1, 1, 1, 4, 16, 5, 'yard', NULL, 'Active', '2022-10-01 21:01:48', '2022-10-05 08:08:37'),
(17, 4, 1, 1, 1, 5, 17, 5, 'yard', NULL, 'Active', '2022-10-01 21:01:48', '2022-10-05 08:08:37'),
(18, 1, 1, 1, 1, 2, 18, 5, 'Nill', NULL, 'Active', '2022-10-01 21:04:29', '2022-10-05 08:08:37'),
(19, 0, 1, 1, 1, 1, 19, 5, 'Nill', 'logof_1664957160.png', 'Active', '2022-10-01 21:04:53', '2022-10-05 08:08:37'),
(20, 0, 1, 1, 1, 1, 20, 5, 'Nill', 'logof_1664957160.png', 'Active', '2022-10-05 08:05:56', '2022-10-05 08:08:37'),
(21, 1, 1, 1, 1, 2, 21, 5, 'Nill', NULL, 'Active', '2022-10-05 08:05:56', '2022-10-05 08:08:37'),
(22, 2, 1, 1, 1, 3, 22, 5, 'Nill', NULL, 'Active', '2022-10-05 08:05:57', '2022-10-05 08:08:37'),
(23, 3, 1, 1, 1, 4, 23, 5, 'yard', NULL, 'Active', '2022-10-05 08:05:57', '2022-10-05 08:08:37'),
(24, 4, 1, 1, 1, 5, 24, 5, 'yard', NULL, 'Active', '2022-10-05 08:05:57', '2022-10-05 08:08:37'),
(25, 0, 1, 1, 1, 1, 25, 5, 'Nill', NULL, 'Active', '2022-10-05 08:08:36', '2022-10-05 08:08:37');

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
(1, '1', NULL, '1', 'Room No 001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Room number 001', NULL, 'Active', 1, '2022-09-30 10:26:46', '2022-09-30 10:26:46'),
(2, '1', NULL, '3', 's', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ss', NULL, 'Active', 3, '2022-10-04 19:15:30', '2022-10-04 19:15:30');

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
(1, 'Input', 'input', 'Inactive', 0, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(2, 'Checklist', 'checkbox', 'Inactive', 0, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(3, 'Selection/Optional', 'radio', 'Inactive', 0, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(4, 'Number', 'number', 'Inactive', 0, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(5, 'Description', 'textarea', 'Inactive', 0, '2022-09-30 09:29:35', '2022-09-30 09:29:35');

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
(1, 'Hr and Admin', 'Hr and Admin', 'Active', 0, 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(2, 'Hoteliar', 'Hoteliar', 'Active', 0, 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(3, 'Account', 'Account', 'Active', 0, 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(4, 'Store', 'Store', 'Active', 0, 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(5, 'House Keeping', 'House Keeping', 'Active', 0, 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35');

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
(1, 0, 1, 1, 1, 1, 1, 2, 'No', 1, 5, 'Nill', 'logof_1664957160.png', 'Active', '2022-09-30', '2022-09-30 10:29:19', '2022-09-30 10:29:19'),
(2, 1, 1, 1, 1, 2, 2, 4, 'Yes', 1, 5, 'Nill', 'logo_1664533835.png', 'Inactive', '2022-09-30', '2022-09-30 10:29:20', '2022-09-30 10:29:20'),
(3, 2, 1, 1, 1, 3, 3, 8, 'No', 1, 5, 'Nill', NULL, 'Active', '2022-09-30', '2022-09-30 10:29:20', '2022-09-30 10:29:20'),
(4, 3, 1, 1, 1, 5, 4, 15, 'N/A', 1, 5, 'yard', NULL, 'Active', '2022-09-30', '2022-09-30 10:29:20', '2022-09-30 10:29:20'),
(5, 3, 1, 1, 1, 4, 5, 10, 'Yes', 1, 5, 'yard', NULL, 'Active', '2022-09-30', '2022-09-30 10:29:33', '2022-09-30 10:29:33'),
(6, 0, 1, 1, 1, 1, 6, 1, 'Yes', 1, 5, 'Nill', 'logof_1664957160.png', 'Inactive', '2022-10-01', '2022-10-01 20:00:25', '2022-10-01 20:00:25'),
(7, 1, 1, 1, 1, 2, 7, 5, 'No', 1, 5, 'Nill', 'logo_1664533835.png', 'Active', '2022-10-01', '2022-10-01 20:00:26', '2022-10-01 20:00:26'),
(8, 2, 1, 1, 1, 3, 8, 7, 'Yes', 1, 5, 'Nill', NULL, 'Active', '2022-10-01', '2022-10-01 20:00:26', '2022-10-01 20:00:26'),
(9, 3, 1, 1, 1, 4, 9, 12, 'N/A', 1, 5, 'yard', NULL, 'Active', '2022-10-01', '2022-10-01 20:00:26', '2022-10-01 20:00:26'),
(10, 4, 1, 1, 1, 5, 10, 14, 'No', 1, 5, 'yard', NULL, 'Active', '2022-10-01', '2022-10-01 20:00:27', '2022-10-01 20:00:27'),
(11, 0, 1, 1, 1, 1, 11, 2, 'No', 1, 5, 'Nill', 'logof_1664957160.png', 'Active', '2022-10-01', '2022-10-01 20:47:40', '2022-10-01 20:47:40'),
(12, 1, 1, 1, 1, 2, 12, 4, 'Yes', 1, 5, 'Nill', 'logo_1664533835.png', 'Inactive', '2022-10-01', '2022-10-01 20:56:53', '2022-10-01 20:56:53'),
(13, 0, 1, 1, 1, 1, 13, 2, 'No', 1, 5, 'Nill', 'logof_1664957160.png', 'Active', '2022-10-02', '2022-10-01 21:01:47', '2022-10-01 21:01:47'),
(14, 1, 1, 1, 1, 2, 14, 4, 'Yes', 1, 5, 'Nill', 'logo_1664533835.png', 'Inactive', '2022-10-02', '2022-10-01 21:01:47', '2022-10-01 21:01:47'),
(15, 2, 1, 1, 1, 3, 15, 7, 'Yes', 1, 5, 'Nill', NULL, 'Active', '2022-10-02', '2022-10-01 21:01:47', '2022-10-01 21:01:47'),
(16, 3, 1, 1, 1, 4, 16, 12, 'N/A', 1, 5, 'yard', NULL, 'Active', '2022-10-02', '2022-10-01 21:01:48', '2022-10-01 21:01:48'),
(17, 4, 1, 1, 1, 5, 17, 14, 'No', 1, 5, 'yard', NULL, 'Active', '2022-10-02', '2022-10-01 21:01:48', '2022-10-01 21:01:48'),
(18, 1, 1, 1, 1, 2, 18, 6, 'N/A', 1, 5, 'Nill', 'logo_1664533835.png', 'Active', '2022-10-02', '2022-10-01 21:04:29', '2022-10-01 21:04:29'),
(19, 0, 1, 1, 1, 1, 19, 1, 'Yes', 1, 5, 'Nill', 'logof_1664957160.png', 'Inactive', '2022-10-02', '2022-10-01 21:04:53', '2022-10-01 21:04:53'),
(20, 0, 1, 1, 1, 1, 20, 1, 'Yes', 1, 5, 'Nill', 'logof_1664957160.png', 'Inactive', '2022-10-05', '2022-10-05 08:05:56', '2022-10-05 08:05:56'),
(21, 1, 1, 1, 1, 2, 21, 5, 'No', 1, 5, 'Nill', 'logo_1664533835.png', 'Active', '2022-10-05', '2022-10-05 08:05:56', '2022-10-05 08:05:56'),
(22, 2, 1, 1, 1, 3, 22, 7, 'Yes', 1, 5, 'Nill', NULL, 'Active', '2022-10-05', '2022-10-05 08:05:57', '2022-10-05 08:05:57'),
(23, 3, 1, 1, 1, 4, 23, 12, 'N/A', 1, 5, 'yard', NULL, 'Active', '2022-10-05', '2022-10-05 08:05:57', '2022-10-05 08:05:57'),
(24, 4, 1, 1, 1, 5, 24, 14, 'No', 1, 5, 'yard', NULL, 'Active', '2022-10-05', '2022-10-05 08:05:57', '2022-10-05 08:05:57'),
(25, 0, 1, 1, 1, 1, 25, 2, 'No', 1, 5, 'Nill', 'logof_1664957160.png', 'Active', '2022-10-05', '2022-10-05 08:08:36', '2022-10-05 08:08:36');

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
(1, 'Good', '2022-09-30 09:29:36', '2022-09-30 09:29:36'),
(2, 'Bad', '2022-09-30 09:29:36', '2022-09-30 09:29:36'),
(3, 'Critical', '2022-09-30 09:29:36', '2022-09-30 09:29:36');

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
(1, 'Name', 'input', 'Active', 'Inactive', 0, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(2, 'Brand Name', 'input', 'Active', 'Inactive', 0, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(3, 'Version', 'input', 'Active', 'Inactive', 0, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(4, 'Barcode', 'input', 'Active', 'Inactive', 0, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(5, 'Serial Number', 'input', 'Active', 'Inactive', 0, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(6, 'Tag Number', 'input', 'Active', 'Inactive', 0, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(7, 'Type', 'input', 'Active', 'Inactive', 0, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(8, 'Description', 'textarea', 'Active', 'Inactive', 0, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(9, 'Location', 'input', 'Active', 'Inactive', 0, '2022-09-30 09:29:35', '2022-09-30 09:29:35');

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
(1, 'Room', 'Room', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(2, 'Dinning Room', 'dinning room', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(3, 'Kitchen', 'Kitchen', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(4, 'Light', 'light', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(5, 'Swimming Pool', 'swimming pool', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(6, 'Garden', 'Garden', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(7, 'Store', 'Store', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(8, 'Garage', 'Garage', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(9, 'Fance', 'Fance', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(10, 'Entree', 'Entree', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:57:48'),
(11, 'Bathroom', 'Bathroom', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(12, 'Toilet', 'Toilet', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(13, 'Furniture', 'Furniture', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35');

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
(1, '1', 'Name', 'input', 'asset_name', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(2, '1', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(3, '2', 'Name', 'input', 'asset_name', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(4, '2', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(5, '3', 'Name', 'input', 'asset_name', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(6, '3', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(7, '4', 'Name', 'input', 'asset_name', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(8, '4', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(9, '5', 'Name', 'input', 'asset_name', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(10, '5', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(11, '6', 'Name', 'input', 'asset_name', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(12, '6', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(13, '7', 'Name', 'input', 'asset_name', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(14, '7', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(15, '8', 'Name', 'input', 'asset_name', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(16, '8', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(17, '9', 'Name', 'input', 'asset_name', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(18, '9', 'Description', 'textarea', 'asset_description', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `my_companies`
--

INSERT INTO `my_companies` (`id`, `company_name`, `tin`, `vrn`, `logo`, `address`, `phone_number`, `email`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Tanzania Specialist', '000-000-000', '0000', 'logo_1664663930.png', 'Mateves-Arusha', 0, 'info@tz.com', 'Active', '0000-00-00', '2022-10-01 22:38:17', '2022-10-01 22:39:17');

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
(1, '1', 'Yes', 'Good', 'radio', 'Active', 1, '2022-09-30 09:42:58', '2022-09-30 09:42:58'),
(2, '1', 'No', 'Bad', 'radio', 'Active', 1, '2022-09-30 09:42:58', '2022-09-30 09:42:58'),
(3, '1', 'N/A', 'Bad', 'radio', 'Active', 1, '2022-09-30 09:42:58', '2022-09-30 09:42:58'),
(4, '2', 'Yes', 'Good', 'radio', 'Active', 1, '2022-09-30 09:46:48', '2022-09-30 09:46:48'),
(5, '2', 'No', 'Bad', 'radio', 'Active', 1, '2022-09-30 09:46:48', '2022-09-30 09:46:48'),
(6, '2', 'N/A', 'Bad', 'radio', 'Active', 1, '2022-09-30 09:46:48', '2022-09-30 09:46:48'),
(7, '3', 'Yes', 'Good', 'radio', 'Active', 1, '2022-09-30 09:47:58', '2022-09-30 09:47:58'),
(8, '3', 'No', 'Bad', 'radio', 'Active', 1, '2022-09-30 09:47:59', '2022-09-30 09:47:59'),
(9, '3', 'N/A', 'Bad', 'radio', 'Active', 1, '2022-09-30 09:47:59', '2022-09-30 09:47:59'),
(10, '4', 'Yes', 'Good', 'radio', 'Active', 1, '2022-09-30 09:48:50', '2022-09-30 09:48:50'),
(11, '4', 'No', 'Bad', 'radio', 'Active', 1, '2022-09-30 09:48:51', '2022-09-30 09:48:51'),
(12, '4', 'N/A', 'Bad', 'radio', 'Active', 1, '2022-09-30 09:48:51', '2022-09-30 09:48:51'),
(13, '5', 'Yes', 'Good', 'radio', 'Active', 1, '2022-09-30 09:49:43', '2022-09-30 09:49:43'),
(14, '5', 'No', 'Bad', 'radio', 'Active', 1, '2022-09-30 09:49:43', '2022-09-30 09:49:43'),
(15, '5', 'N/A', 'Bad', 'radio', 'Active', 1, '2022-09-30 09:49:43', '2022-09-30 09:49:43');

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

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('generaladmin@hakunamatatabookings.co.tz', 'Z0GRbkozvtbG3BPRO0BVF8aHoMw86mG8cAjEM0qT64ALiHD72fHYjN306hopey63', '2022-10-06 09:02:23'),
('buruwawa@gmail.com', 'vPmY1f1dU7b68l3O01nrhwc6RapOkK3p3EwBranDN18qvOuu28hHshV97gPeyJek', '2022-10-06 09:05:52');

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
(1, 'Manyara best view', 'Hotel', 4, 19, 'Manyara', '0000000033', 'bigyr@mailinator.com', 'Manyara best view', 'logof_1664532285.png', 'Active', 1, '2022-09-30 10:04:45', '2022-10-01 17:59:54');

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
  `col3` tinyint(1) NOT NULL DEFAULT 0,
  `col1` tinyint(1) NOT NULL DEFAULT 0,
  `col2` tinyint(1) NOT NULL DEFAULT 0,
  `col18` tinyint(1) NOT NULL DEFAULT 0,
  `col5` tinyint(1) NOT NULL DEFAULT 0,
  `col4` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qns_appliedtos`
--

INSERT INTO `qns_appliedtos` (`id`, `metaname_id`, `indicator_id`, `status`, `user_id`, `col3`, `col1`, `col2`, `col18`, `col5`, `col4`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'Active', 1, 0, 0, 0, 0, 1, 0, '2022-09-30 09:42:58', '2022-09-30 09:42:58'),
(2, '1', '2', 'Active', 1, 0, 0, 0, 0, 1, 0, '2022-09-30 09:46:48', '2022-09-30 09:46:48'),
(3, '1', '3', 'Active', 1, 0, 0, 0, 0, 1, 0, '2022-09-30 09:47:59', '2022-09-30 09:47:59'),
(4, '1', '4', 'Active', 1, 0, 0, 0, 0, 1, 0, '2022-09-30 09:48:51', '2022-09-30 09:48:51'),
(5, '1', '5', 'Active', 1, 0, 0, 0, 0, 1, 0, '2022-09-30 09:49:43', '2022-09-30 09:49:43'),
(6, '4', '4', 'Active', 1, 0, 0, 0, 0, 0, 0, '2022-09-30 10:24:01', '2022-09-30 10:24:01');

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
  `user_id` int(11) DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `user_id`, `guard_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', NULL, 'web', 'Active', '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(2, 'GeneralAdmin', NULL, 'web', 'Active', '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(3, 'Admin', NULL, 'web', 'Active', '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(4, 'GeneralManager', NULL, 'web', 'Active', '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(5, 'Manager', NULL, 'web', 'Active', '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(6, 'Account', NULL, 'web', 'Active', '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(7, 'Store', NULL, 'web', 'Active', '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(8, 'User', NULL, 'web', 'Active', '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(9, 'm', 1, 'web', 'Inactive', '2022-10-03 10:48:02', '2022-10-03 10:48:17');

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
('DKYVzUXFfY4RZwJvR4gs0NRQq6KzKQ1wHVvBrdct', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:105.0) Gecko/20100101 Firefox/105.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoic3BtZjJHU0pCMVFlMVlQNzZTZFI2VmJueDZ5SVNyVFV4SGF0V2hxTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQyOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvcmVwb3J0LXZpZXcvMTMvc3cuanMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkMHJ2aDJ4bC5FcXRHZkYuSVNWNEdmZXIuQTVTZzE2ZkRIdnNWQWJmN1VMYi9qWEFzakphVFMiO30=', 1665998245);

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
(1, 'TV (remote) works and programmed correctly', 'Active', 1, '2022-09-30 09:42:58', '2022-09-30 09:42:58'),
(2, 'All electrical outlets functional', 'Active', 1, '2022-09-30 09:46:48', '2022-09-30 09:46:48'),
(3, 'All lightning functional', 'Active', 1, '2022-09-30 09:47:58', '2022-09-30 09:47:58'),
(4, 'All flooring/carpet clean', 'Active', 1, '2022-09-30 09:48:50', '2022-09-30 09:48:50'),
(5, 'Art/frame clean and in good condition', 'Active', 1, '2022-09-30 09:49:43', '2022-09-30 09:49:43');

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
(1, 'Super Admin', 1, 1, 'superadmin@hakunamatatabookings.co.tz', '2022-09-30 09:29:34', '$2y$10$0rvh2xl.EqtGfF.ISV4Gfer.A5Sg16fDHvsVAbf7ULb/jXAsjJaTS', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-09-30 09:29:34', '2022-09-30 09:29:34'),
(2, 'General Admin', 1, 1, 'generaladmin@hakunamatatabookings.co.tz', '2022-09-30 09:29:34', '$2y$10$2XkjNBLDeg/dFpn0sd2Z7e/R52PKuUN3zbpsnSwDLexIjoHfX6l1.', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-09-30 09:29:34', '2022-09-30 09:29:34'),
(3, 'Admin', 1, 1, 'admin@hakunamatatabookings.co.tz', '2022-09-30 09:29:34', '$2y$10$fU50zFJttQmuSBaN7gh5he6rjaw7rK.9fxD/qcoi5J9waClw6CgMa', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-09-30 09:29:34', '2022-09-30 09:29:34'),
(4, 'General Manager', 1, 1, 'generalmanager@hakunamatatabookings.co.tz', '2022-09-30 09:29:34', '$2y$10$QmgMHpIRq2Wx2iQg5lZYI.7E6.gvWYEEhpLRsijKUsO2ex8VfO0tq', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-09-30 09:29:34', '2022-09-30 09:29:34'),
(5, 'Manager', 1, 1, 'manager@hakunamatatabookings.co.tz', '2022-09-30 09:29:34', '$2y$10$IE/NsedW/R2VXSrvMX6NJ.hiPUb9DtrjZTrFfJDJs.ifCrA5MxQ/C', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-09-30 09:29:34', '2022-09-30 09:29:34'),
(6, 'Account', 1, 1, 'account@hakunamatatabookings.co.tz', '2022-09-30 09:29:34', '$2y$10$Zv5aVgND1B1MZzC5goT.luYaB.lEfv/cWYNrOEhasqk2hyY5dIwEu', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-09-30 09:29:34', '2022-09-30 09:29:34'),
(7, 'Store', 1, 1, 'store@hakunamatatabookings.co.tz', '2022-09-30 09:29:34', '$2y$10$kG5RG8xhnafQ1wYHVioufeqrSBdL0jtPcgETlUUOojD6DQIKEs912', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-09-30 09:29:34', '2022-09-30 09:29:34'),
(8, 'User', 1, 1, 'user@hakunamatatabookings.co.tz', '2022-09-30 09:29:34', '$2y$10$jyERTwKWcWBiLanDrkOza.WDm3bJ6NMHaMFVF0oBFbQeurNyCwPXi', NULL, NULL, NULL, NULL, NULL, 'Active', 0, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(9, 'Malachi Zimmerman', 1, 3, 'wunyti@mailinator.com', NULL, '$2y$10$hNv7JkZEjxok6Fgae4RFXOEVTC2v2G9UBQCflkOEPxugDARnk5EAm', NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-10-03 10:29:11', '2022-10-03 10:29:11'),
(10, 'Quamar Webb', 1, 3, 'dydafa@mailinator.com', NULL, '$2y$10$0gv5xVyrBz1H0WnTxBUZsuv7vwo0t/KPvCP..7ikZ4fxzTxd2LR/G', NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-10-03 10:31:40', '2022-10-03 10:31:40'),
(11, 'Dai Ramirez', 1, 3, 'kubukuc@mailinator.com', NULL, '$2y$10$YGqbFU3qchJjZDTSwAKtC.JN6GS5bOGwcXkzSD5W9taecKr8TZgqG', NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-10-03 10:39:45', '2022-10-03 10:39:45'),
(12, 'Buruhani Wawa', 1, 1, 'buruwawa@gmail.com', NULL, '$2y$10$ePi0v9so9la7alfP05nGheA3Gjo0DcsXfelMpj1m76GDkR/I7M372', NULL, NULL, NULL, NULL, NULL, 'Active', 1, '2022-10-03 11:00:41', '2022-10-06 09:01:17');

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
(1, '6', '1', 'Active', 1, '2022-09-30 10:01:08', '2022-09-30 10:01:08'),
(2, '5', '1', 'Active', 1, '2022-09-30 10:22:44', '2022-09-30 10:22:44');

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

--
-- Dumping data for table `user_properties`
--

INSERT INTO `user_properties` (`id`, `sys_user_id`, `property_id`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '9', '1', 'Active', 1, '2022-10-03 10:29:12', '2022-10-03 10:29:12'),
(2, '10', '1', 'Active', 1, '2022-10-03 10:31:40', '2022-10-03 10:31:40'),
(3, '11', '1', 'Active', 1, '2022-10-03 10:39:45', '2022-10-03 10:39:45'),
(4, '12', '1', 'Active', 1, '2022-10-03 11:00:41', '2022-10-03 11:00:41');

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
(1, '1', '1', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(2, '2', '2', 'Active', 2, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(3, '3', '3', 'Active', 3, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(4, '4', '4', 'Active', 4, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(5, '5', '5', 'Active', 1, '2022-09-30 09:29:35', '2022-09-30 10:18:51'),
(6, '6', '6', 'Active', 6, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(7, '7', '7', 'Active', 7, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(8, '8', '8', 'Active', 8, '2022-09-30 09:29:35', '2022-09-30 09:29:35'),
(9, '5', '5', 'Inactive', 1, '2022-09-30 10:02:03', '2022-09-30 10:18:28');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `answer_check_boxes`
--
ALTER TABLE `answer_check_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `answer_desc_photos`
--
ALTER TABLE `answer_desc_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `answer_update_photos`
--
ALTER TABLE `answer_update_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `metaname_datatypes`
--
ALTER TABLE `metaname_datatypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `my_companies`
--
ALTER TABLE `my_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `my_payments`
--
ALTER TABLE `my_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `optional_answers`
--
ALTER TABLE `optional_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `set_indicators`
--
ALTER TABLE `set_indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_activities`
--
ALTER TABLE `user_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_properties`
--
ALTER TABLE `user_properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_registers`
--
ALTER TABLE `user_registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
