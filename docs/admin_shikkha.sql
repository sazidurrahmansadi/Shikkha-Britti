-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 19, 2022 at 10:06 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_shikkha`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accountable_id` bigint(20) NOT NULL,
  `account_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `accountable_id`, `account_title`, `account_type`, `account_number`, `bank_name`, `branch_name`, `accountable_type`, `note`, `account_status`, `created_at`, `updated_at`) VALUES
(1, 24, 'Rasheda Begum', 'ROCKET', '017032667225', NULL, NULL, 'App\\Models\\Student', 'Self', 'ACTIVE', '2021-12-23 07:01:09', '2021-12-23 07:01:09'),
(2, 29, 'Lata Bonik', 'BKASH', '01786640212', NULL, NULL, 'App\\Models\\Student', 'Self', 'ACTIVE', '2021-12-25 16:10:00', '2021-12-25 16:10:00'),
(3, 30, 'Mobile Banking', 'BKASH', '01749698351', NULL, NULL, 'App\\Models\\Student', 'Mother', 'ACTIVE', '2021-12-26 10:26:07', '2021-12-27 05:35:25'),
(4, 33, 'Ratry Bonik', 'BKASH', '01798300284', NULL, NULL, 'App\\Models\\Student', 'Self', 'ACTIVE', '2021-12-28 14:18:21', '2021-12-28 14:18:21'),
(5, 37, 'Mobile Banking', 'BKASH', '01744300924', NULL, NULL, 'App\\Models\\Student', 'Father', 'ACTIVE', '2021-12-29 07:07:34', '2021-12-29 07:33:32'),
(6, 38, 'Mobile Banking', 'BKASH', '01749521780', NULL, NULL, 'App\\Models\\Student', 'FATHER', 'ACTIVE', '2021-12-29 07:51:23', '2021-12-29 07:51:23'),
(7, 41, 'Mobile Banking', 'BKASH', '01726823558', NULL, NULL, 'App\\Models\\Student', NULL, 'ACTIVE', '2021-12-31 10:01:29', '2021-12-31 10:01:29'),
(8, 45, 'mobile banking', 'BKASH', '01317192485', NULL, NULL, 'App\\Models\\Student', 'brother', 'ACTIVE', '2022-01-08 17:48:40', '2022-01-08 17:48:40'),
(9, 45, 'mobile banking', 'BKASH', '01317192485', NULL, NULL, 'App\\Models\\Student', 'brother', 'ACTIVE', '2022-01-08 17:49:04', '2022-01-08 17:49:04'),
(10, 48, 'Mobile Banking', 'BKASH', '01710826678', NULL, NULL, 'App\\Models\\Student', 'FATHER', 'ACTIVE', '2022-01-11 11:02:51', '2022-01-11 11:02:51'),
(11, 49, 'Mobile Banking', 'BKASH', '01713926043', NULL, NULL, 'App\\Models\\Student', 'FATHER', 'ACTIVE', '2022-01-12 11:18:39', '2022-01-12 11:18:39'),
(12, 114, 'Mobile Banking', 'BKASH', '01818838763', NULL, NULL, 'App\\Models\\Student', 'Self', 'ACTIVE', '2022-01-27 22:21:15', '2022-01-27 22:21:15'),
(13, 139, 'bKash', 'BKASH', '01706749697', NULL, NULL, 'App\\Models\\Student', 'Self', 'ACTIVE', '2022-02-03 22:34:52', '2022-02-03 22:34:52'),
(14, 144, 'bKash Account', 'BKASH', '01637460805', NULL, NULL, 'App\\Models\\Student', 'This is my account.', 'ACTIVE', '2022-02-12 00:33:53', '2022-02-12 00:33:53'),
(15, 145, 'Lamima Tasmin', 'BKASH', '01908601684', NULL, NULL, 'App\\Models\\Student', 'Self', 'ACTIVE', '2022-02-14 22:35:14', '2022-02-14 22:35:14'),
(16, 10, 'Md Asikur Rahman', 'BKASH', '01729720678', NULL, NULL, 'App\\Models\\Student', 'Self', 'ACTIVE', '2022-02-14 22:43:29', '2022-02-14 22:43:29'),
(18, 185, 'Student Account', 'BANK', '20507776700649098', 'Islami Bank,Bangladesh.', 'Nagarkanda Bazar,Nagarkanda.', 'App\\Models\\Student', 'Self', 'ACTIVE', '2022-02-19 18:17:17', '2022-02-19 18:17:17'),
(19, 109, 'Saqif Khan', 'UPAY', '01749117117', NULL, NULL, 'App\\Models\\Student', 'Self\"\"', 'ACTIVE', '2022-02-21 13:07:03', '2022-03-02 09:38:44'),
(20, 190, 'Accounts', 'BKASH', '0136753753', NULL, NULL, 'App\\Models\\Student', NULL, 'ACTIVE', '2022-02-26 11:12:25', '2022-02-26 11:12:25'),
(21, 191, 'Personal', 'NAGAD', '01621817539', NULL, NULL, 'App\\Models\\Student', 'Mother account', 'ACTIVE', '2022-03-02 06:20:46', '2022-03-02 06:20:46'),
(22, 181, 'Mobile Banking', 'BKASH', '01407673689', NULL, NULL, 'App\\Models\\Student', 'Self', 'ACTIVE', '2022-03-23 18:27:53', '2022-03-23 18:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `achievement` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`id`, `student_id`, `achievement`, `created_at`, `updated_at`) VALUES
(8, 3, NULL, '2021-11-27 20:32:38', '2021-11-27 20:32:38'),
(9, 4, 'Draw pictures, debate', '2021-12-05 18:07:59', '2021-12-05 18:07:59'),
(11, 5, NULL, '2021-12-07 10:56:08', '2021-12-07 10:56:08'),
(12, 6, 'Debater.\r\nDancer.\r\nReciter.', '2021-12-15 15:14:55', '2021-12-15 15:14:55'),
(18, 8, NULL, '2021-12-18 09:39:10', '2021-12-18 09:39:10'),
(19, 8, NULL, '2021-12-18 09:39:10', '2021-12-18 09:39:10'),
(20, 9, NULL, '2021-12-18 11:33:06', '2021-12-18 11:33:06'),
(25, 12, 'Athlete', '2021-12-19 07:19:23', '2021-12-19 07:19:23'),
(28, 13, 'Debatar e', '2021-12-19 13:41:16', '2021-12-19 13:41:16'),
(31, 14, 'Athlete', '2021-12-19 13:46:01', '2021-12-19 13:46:01'),
(34, 11, NULL, '2021-12-20 03:13:53', '2021-12-20 03:13:53'),
(35, 11, NULL, '2021-12-20 03:13:53', '2021-12-20 03:13:53'),
(39, 16, NULL, '2021-12-20 09:29:22', '2021-12-20 09:29:22'),
(40, 17, NULL, '2021-12-20 11:23:42', '2021-12-20 11:23:42'),
(42, 18, NULL, '2021-12-21 04:33:09', '2021-12-21 04:33:09'),
(43, 2, 'Test1', '2021-12-21 06:29:02', '2021-12-21 06:29:02'),
(45, 20, 'Leader of TIB YES group of Ruqayyah Hall.', '2021-12-21 06:59:32', '2021-12-21 06:59:32'),
(49, 15, NULL, '2021-12-21 10:26:33', '2021-12-21 10:26:33'),
(50, 21, '4th position on STEP Innovation project 2019 of Pabna Polytechnic Institute', '2021-12-21 14:33:01', '2021-12-21 14:33:01'),
(51, 22, NULL, '2021-12-22 05:06:35', '2021-12-22 05:06:35'),
(52, 23, NULL, '2021-12-23 06:26:04', '2021-12-23 06:26:04'),
(54, 25, NULL, '2021-12-23 08:07:46', '2021-12-23 08:07:46'),
(56, 26, 'Skill development in Computer office application. Training center, urban social service office, Rangpur.', '2021-12-23 15:00:38', '2021-12-23 15:00:38'),
(58, 7, 'Former President,Angikar Foundation ( a social organisation of Shailkupa)', '2021-12-24 16:42:27', '2021-12-24 16:42:27'),
(59, 7, 'Member, Shailkupa Roktodata Sangha.', '2021-12-24 16:42:27', '2021-12-24 16:42:27'),
(60, 7, 'Member at Consumer Youth Bangladesh,RU unit.\r\nAlso member of Rajshahi University Higher Study Club.', '2021-12-24 16:42:27', '2021-12-24 16:42:27'),
(61, 27, NULL, '2021-12-25 05:38:23', '2021-12-25 05:38:23'),
(63, 28, NULL, '2021-12-25 06:59:35', '2021-12-25 06:59:35'),
(65, 29, 'Debater, Graphic designer, Participated in many math olympiad.', '2021-12-25 15:23:44', '2021-12-25 15:23:44'),
(68, 31, 'I am a regular member of the Blood Donation Program. In addition, the general secretary of one foundation for social development work and the social service secretary of another foundation.', '2021-12-26 07:25:33', '2021-12-26 07:25:33'),
(69, 30, 'GOOD', '2021-12-26 13:16:13', '2021-12-26 13:16:13'),
(70, 32, 'I have wined a lot of prizes in school essay competitions and poem reciting.', '2021-12-27 09:48:31', '2021-12-27 09:48:31'),
(72, 33, 'Graphic designer and participated in many Math Olympiad', '2021-12-28 14:17:25', '2021-12-28 14:17:25'),
(74, 35, NULL, '2021-12-29 06:00:12', '2021-12-29 06:00:12'),
(77, 37, 'Good', '2021-12-29 07:32:58', '2021-12-29 07:32:58'),
(78, 38, 'GOOD', '2021-12-29 07:49:06', '2021-12-29 07:49:06'),
(79, 39, NULL, '2021-12-29 15:20:03', '2021-12-29 15:20:03'),
(80, 34, 'Athlete', '2021-12-29 18:01:41', '2021-12-29 18:01:41'),
(82, 41, 'GOOD', '2021-12-31 09:56:55', '2021-12-31 09:56:55'),
(87, 43, 'Organizer', '2022-01-03 16:57:22', '2022-01-03 16:57:22'),
(89, 44, NULL, '2022-01-08 10:12:59', '2022-01-08 10:12:59'),
(90, 45, NULL, '2022-01-08 14:36:22', '2022-01-08 14:36:22'),
(92, 46, NULL, '2022-01-09 06:16:06', '2022-01-09 06:16:06'),
(93, 47, NULL, '2022-01-09 06:22:56', '2022-01-09 06:22:56'),
(94, 40, 'Social work,HSTU Mojar school\r\nGraduate from BYLC', '2022-01-09 17:20:26', '2022-01-09 17:20:26'),
(95, 48, 'GOOD', '2022-01-11 11:01:51', '2022-01-11 11:01:51'),
(125, 78, NULL, '2022-01-25 07:00:47', '2022-01-25 07:00:47'),
(126, 79, NULL, '2022-01-25 07:00:52', '2022-01-25 07:00:52'),
(127, 80, NULL, '2022-01-25 07:01:11', '2022-01-25 07:01:11'),
(128, 81, NULL, '2022-01-25 07:01:15', '2022-01-25 07:01:15'),
(129, 82, NULL, '2022-01-25 07:01:17', '2022-01-25 07:01:17'),
(130, 83, NULL, '2022-01-25 07:01:46', '2022-01-25 07:01:46'),
(131, 84, NULL, '2022-01-25 07:01:50', '2022-01-25 07:01:50'),
(132, 85, NULL, '2022-01-25 07:01:52', '2022-01-25 07:01:52'),
(133, 86, NULL, '2022-01-25 07:01:54', '2022-01-25 07:01:54'),
(134, 87, NULL, '2022-01-25 07:01:56', '2022-01-25 07:01:56'),
(135, 88, NULL, '2022-01-25 07:02:03', '2022-01-25 07:02:03'),
(136, 89, NULL, '2022-01-25 07:02:05', '2022-01-25 07:02:05'),
(137, 90, NULL, '2022-01-25 07:02:18', '2022-01-25 07:02:18'),
(138, 91, NULL, '2022-01-25 07:02:21', '2022-01-25 07:02:21'),
(139, 92, NULL, '2022-01-25 07:05:59', '2022-01-25 07:05:59'),
(140, 93, NULL, '2022-01-25 07:11:09', '2022-01-25 07:11:09'),
(141, 94, NULL, '2022-01-25 07:13:07', '2022-01-25 07:13:07'),
(142, 95, NULL, '2022-01-25 07:17:03', '2022-01-25 07:17:03'),
(143, 96, NULL, '2022-01-25 07:17:19', '2022-01-25 07:17:19'),
(144, 97, NULL, '2022-01-25 07:40:31', '2022-01-25 07:40:31'),
(146, 99, 'I have got a debating certificate from my University.', '2022-01-25 10:53:13', '2022-01-25 10:53:13'),
(148, 101, NULL, '2022-01-25 11:45:52', '2022-01-25 11:45:52'),
(149, 102, NULL, '2022-01-25 11:46:44', '2022-01-25 11:46:44'),
(150, 103, NULL, '2022-01-25 11:46:48', '2022-01-25 11:46:48'),
(151, 104, NULL, '2022-01-25 11:46:51', '2022-01-25 11:46:51'),
(152, 105, NULL, '2022-01-25 11:46:54', '2022-01-25 11:46:54'),
(153, 106, NULL, '2022-01-25 14:19:33', '2022-01-25 14:19:33'),
(155, 49, 'GOOD', '2022-01-25 14:20:52', '2022-01-25 14:20:52'),
(159, 108, NULL, '2022-01-25 22:32:42', '2022-01-25 22:32:42'),
(161, 109, NULL, '2022-01-25 23:35:26', '2022-01-25 23:35:26'),
(162, 109, 'dadsaedsadsads', '2022-01-25 23:35:26', '2022-01-25 23:35:26'),
(163, 110, 'Yes', '2022-01-26 00:16:51', '2022-01-26 00:16:51'),
(164, 111, NULL, '2022-01-26 06:01:44', '2022-01-26 06:01:44'),
(166, 77, NULL, '2022-01-27 00:45:45', '2022-01-27 00:45:45'),
(167, 98, NULL, '2022-01-27 00:56:08', '2022-01-27 00:56:08'),
(168, 112, NULL, '2022-01-27 04:34:30', '2022-01-27 04:34:30'),
(169, 113, NULL, '2022-01-27 04:42:57', '2022-01-27 04:42:57'),
(170, 113, NULL, '2022-01-27 04:42:57', '2022-01-27 04:42:57'),
(171, 19, NULL, '2022-01-27 08:34:40', '2022-01-27 08:34:40'),
(175, 115, NULL, '2022-01-28 02:00:30', '2022-01-28 02:00:30'),
(176, 117, NULL, '2022-01-28 03:04:50', '2022-01-28 03:04:50'),
(178, 118, NULL, '2022-01-28 05:32:03', '2022-01-28 05:32:03'),
(181, 120, NULL, '2022-01-28 05:55:23', '2022-01-28 05:55:23'),
(182, 121, 'Passed SSC Examination', '2022-01-28 09:10:44', '2022-01-28 09:10:44'),
(184, 122, 'Kuddus', '2022-01-28 22:00:39', '2022-01-28 22:00:39'),
(185, 123, NULL, '2022-01-28 22:30:23', '2022-01-28 22:30:23'),
(186, 123, NULL, '2022-01-28 22:30:23', '2022-01-28 22:30:23'),
(187, 123, NULL, '2022-01-28 22:30:23', '2022-01-28 22:30:23'),
(188, 116, NULL, '2022-01-28 23:52:16', '2022-01-28 23:52:16'),
(189, 124, NULL, '2022-01-28 23:58:26', '2022-01-28 23:58:26'),
(191, 126, NULL, '2022-01-29 00:28:19', '2022-01-29 00:28:19'),
(196, 130, NULL, '2022-01-29 05:37:54', '2022-01-29 05:37:54'),
(197, 125, 'Sports manship', '2022-01-29 08:25:36', '2022-01-29 08:25:36'),
(198, 131, NULL, '2022-01-30 00:06:06', '2022-01-30 00:06:06'),
(199, 132, NULL, '2022-01-30 04:00:40', '2022-01-30 04:00:40'),
(200, 133, NULL, '2022-01-30 05:32:30', '2022-01-30 05:32:30'),
(201, 134, NULL, '2022-01-30 06:58:42', '2022-01-30 06:58:42'),
(202, 129, NULL, '2022-01-30 07:45:02', '2022-01-30 07:45:02'),
(203, 135, NULL, '2022-01-31 00:37:13', '2022-01-31 00:37:13'),
(204, 136, NULL, '2022-01-31 01:04:36', '2022-01-31 01:04:36'),
(205, 137, NULL, '2022-02-02 07:42:10', '2022-02-02 07:42:10'),
(206, 138, NULL, '2022-02-02 07:42:11', '2022-02-02 07:42:11'),
(207, 139, 'Debater', '2022-02-03 22:32:26', '2022-02-03 22:32:26'),
(208, 139, 'Sports', '2022-02-03 22:32:26', '2022-02-03 22:32:26'),
(209, 139, NULL, '2022-02-03 22:32:26', '2022-02-03 22:32:26'),
(213, 141, 'Online math olympiad champion', '2022-02-08 13:13:35', '2022-02-08 13:13:35'),
(214, 140, NULL, '2022-02-08 13:16:12', '2022-02-08 13:16:12'),
(215, 142, NULL, '2022-02-10 07:48:31', '2022-02-10 07:48:31'),
(216, 143, NULL, '2022-02-11 00:29:31', '2022-02-11 00:29:31'),
(218, 144, 'Computer Operator', '2022-02-12 00:26:08', '2022-02-12 00:26:08'),
(219, 145, NULL, '2022-02-12 03:32:57', '2022-02-12 03:32:57'),
(220, 146, 'Sports', '2022-02-12 08:16:02', '2022-02-12 08:16:02'),
(221, 147, 'chess playing', '2022-02-13 00:02:33', '2022-02-13 00:02:33'),
(223, 149, 'Chess', '2022-02-13 00:48:02', '2022-02-13 00:48:02'),
(224, 150, 'Cricket', '2022-02-13 01:07:04', '2022-02-13 01:07:04'),
(225, 151, 'Chess', '2022-02-13 01:20:39', '2022-02-13 01:20:39'),
(226, 152, 'Badminton', '2022-02-13 01:31:43', '2022-02-13 01:31:43'),
(227, 153, 'Fotball', '2022-02-13 01:45:48', '2022-02-13 01:45:48'),
(228, 154, 'Football', '2022-02-13 01:58:07', '2022-02-13 01:58:07'),
(229, 155, 'Badminton', '2022-02-13 02:13:52', '2022-02-13 02:13:52'),
(230, 156, 'Chess', '2022-02-13 02:27:07', '2022-02-13 02:27:07'),
(231, 157, 'Football', '2022-02-13 03:35:10', '2022-02-13 03:35:10'),
(232, 158, 'Drawing', '2022-02-13 03:49:22', '2022-02-13 03:49:22'),
(233, 159, 'Fotball', '2022-02-13 07:19:01', '2022-02-13 07:19:01'),
(234, 160, 'ICT training', '2022-02-13 07:37:41', '2022-02-13 07:37:41'),
(235, 161, NULL, '2022-02-13 07:51:12', '2022-02-13 07:51:12'),
(236, 162, 'Electrical and Electronics.', '2022-02-13 08:08:32', '2022-02-13 08:08:32'),
(237, 163, 'I have done computer training', '2022-02-13 21:41:03', '2022-02-13 21:41:03'),
(238, 164, 'ICT training', '2022-02-13 22:01:19', '2022-02-13 22:01:19'),
(239, 165, 'ICT training, swing training.', '2022-02-13 22:12:49', '2022-02-13 22:12:49'),
(240, 166, 'ICT Training.', '2022-02-13 22:23:47', '2022-02-13 22:23:47'),
(242, 167, NULL, '2022-02-13 22:31:14', '2022-02-13 22:31:14'),
(243, 168, 'ICT Training', '2022-02-13 22:34:23', '2022-02-13 22:34:23'),
(244, 169, '0', '2022-02-13 22:47:34', '2022-02-13 22:47:34'),
(245, 148, 'FootBall', '2022-02-14 00:11:41', '2022-02-14 00:11:41'),
(246, 170, 'I have done ICT training.', '2022-02-14 01:41:50', '2022-02-14 01:41:50'),
(247, 171, 'Football', '2022-02-14 01:54:05', '2022-02-14 01:54:05'),
(248, 172, 'I have done ICT training.', '2022-02-14 02:06:48', '2022-02-14 02:06:48'),
(249, 173, 'No', '2022-02-14 02:23:24', '2022-02-14 02:23:24'),
(250, 174, 'No', '2022-02-14 02:30:38', '2022-02-14 02:30:38'),
(251, 175, 'No', '2022-02-14 02:59:00', '2022-02-14 02:59:00'),
(252, 176, 'No', '2022-02-14 03:11:23', '2022-02-14 03:11:23'),
(253, 177, NULL, '2022-02-14 03:13:21', '2022-02-14 03:13:21'),
(254, 177, NULL, '2022-02-14 03:13:21', '2022-02-14 03:13:21'),
(255, 178, 'Mobile servicing.', '2022-02-14 03:19:55', '2022-02-14 03:19:55'),
(256, 179, 'Computer Training.', '2022-02-14 03:27:21', '2022-02-14 03:27:21'),
(257, 180, 'No', '2022-02-14 03:35:30', '2022-02-14 03:35:30'),
(258, 181, NULL, '2022-02-14 04:17:31', '2022-02-14 04:17:31'),
(260, 10, 'Debater', '2022-02-14 22:59:23', '2022-02-14 22:59:23'),
(262, 183, 'Athlete', '2022-02-15 04:48:31', '2022-02-15 04:48:31'),
(264, 184, NULL, '2022-02-15 08:18:39', '2022-02-15 08:18:39'),
(268, 186, 'forid', '2022-02-19 02:16:19', '2022-02-19 02:16:19'),
(271, 188, NULL, '2022-02-20 06:47:09', '2022-02-20 06:47:09'),
(274, 189, NULL, '2022-02-20 08:39:13', '2022-02-20 08:39:13'),
(275, 190, NULL, '2022-02-22 22:04:24', '2022-02-22 22:04:24'),
(278, 185, NULL, '2022-02-27 12:48:26', '2022-02-27 12:48:26'),
(279, 185, NULL, '2022-02-27 12:48:26', '2022-02-27 12:48:26'),
(280, 191, NULL, '2022-03-02 06:12:10', '2022-03-02 06:12:10'),
(281, 191, NULL, '2022-03-02 06:12:10', '2022-03-02 06:12:10'),
(282, 114, NULL, '2022-03-03 01:16:37', '2022-03-03 01:16:37'),
(283, 192, NULL, '2022-03-03 10:10:10', '2022-03-03 10:10:10'),
(286, 182, 'I took the training of \" Computer Application with Microsoft Office Network & Hardware Maintenance', '2022-03-13 09:28:11', '2022-03-13 09:28:11'),
(287, 193, 'Kids Go Coding awards', '2022-03-14 10:49:30', '2022-03-14 10:49:30'),
(288, 193, 'Children Science Congress awards 2016', '2022-03-14 10:49:30', '2022-03-14 10:49:30'),
(289, 42, NULL, '2022-03-26 00:22:41', '2022-03-26 00:22:41'),
(290, 24, NULL, '2022-04-07 05:55:26', '2022-04-07 05:55:26'),
(294, 119, NULL, '2022-05-04 02:51:42', '2022-05-04 02:51:42'),
(296, 36, NULL, '2022-05-13 22:58:48', '2022-05-13 22:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addressable_id` bigint(20) NOT NULL,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upazila` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `same_as_present` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `addressable_id`, `division`, `district`, `upazila`, `area`, `address_type`, `addressable_type`, `same_as_present`, `status`, `created_at`, `updated_at`) VALUES
(3, 2, 'Dhaka', 'Dhaka', 'Savar', 'aName', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-11-24 11:35:45', '2021-12-21 06:29:02'),
(4, 2, 'Dhaka', 'Tangail', 'Tangail Sadar', 'aName', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-11-24 11:35:45', '2021-12-21 06:29:02'),
(5, 3, 'Dhaka', 'Dhaka', 'Please select upazila', 'Darussalam, Mirpur-1, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-11-27 20:32:38', '2021-11-27 20:32:38'),
(6, 3, 'Khulna', 'Jessore', 'Chaugachha', 'Mollapara', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-11-27 20:32:38', '2021-11-27 20:32:38'),
(7, 4, 'Khulna', 'Kushtia', 'Shekhpara', 'Desh ratna shak hasina hall, Islamic University, Kushtia.', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-05 18:07:59', '2021-12-05 18:07:59'),
(8, 4, 'Rangpur', 'Dinajpur', 'Khansama', 'Village: Kumriya, Post: Kachinia-5230', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-05 18:07:59', '2021-12-05 18:07:59'),
(9, 5, 'Rangpur', 'Kurigram', 'Chilmari', 'Ramna Mistri para', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-07 09:16:14', '2021-12-07 10:56:08'),
(10, 6, 'Dhaka', 'Dhaka', 'Keraniganj', '71/10, Koltabazar, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-15 15:14:55', '2021-12-15 15:14:55'),
(11, 6, 'Chittagong', 'Lakshmipur', 'Lakshmipur Sadar', '5 no ward, Shakharipara,  Lakshmipur.', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-15 15:14:55', '2021-12-15 15:14:55'),
(12, 7, 'Khulna', 'Jhenaida', 'Shailkupa', 'Village: Aguniapara,Post office: Benipur-7320', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-18 07:36:55', '2021-12-24 16:42:27'),
(13, 8, 'Dhaka', 'Tangail', 'Kalihati', 'Baghutiya, Kalihati, Tangail.', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-18 09:34:28', '2021-12-18 09:39:10'),
(14, 8, 'Rangpur', 'Kurigram', 'Ulipur', 'Khamar Bozra,Ulipur,Kurigram.', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-18 09:34:28', '2021-12-18 09:39:10'),
(15, 9, 'Rangpur', 'Kurigram', 'Ulipur', 'VILL: UMANANDA, POST: TOBOKPUR', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-18 11:33:06', '2021-12-18 11:33:06'),
(16, 10, 'Dhaka', 'Dhaka', 'Savar', 'Savar Bus stand', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-19 06:05:02', '2022-02-14 22:59:23'),
(17, 11, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET Area', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-19 07:01:54', '2021-12-20 03:13:53'),
(18, 11, 'Rajshahi', 'Pabna', 'Ishwardi', 'Digha', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-19 07:01:54', '2021-12-20 03:13:53'),
(19, 12, 'Khulna', 'Khulna', 'Khalishpur Thana', 'Boikali,khulna', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-19 07:18:16', '2021-12-19 07:19:23'),
(20, 12, 'Khulna', 'Jhenaida', 'Shailkupa', 'Village :shiddhi,benipur', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-19 07:18:16', '2021-12-19 07:19:23'),
(21, 13, 'Khulna', 'Jhenaida', 'Shailkupa', 'Village : shiddhi,benipur', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-19 13:41:16', '2021-12-19 13:41:16'),
(22, 14, 'Rangpur', 'Kurigram', 'Ulipur', 'Tobokpur', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-19 13:42:50', '2021-12-19 13:46:01'),
(23, 14, 'Rangpur', 'Kurigram', 'Ulipur', 'Tobokpur', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-19 13:42:50', '2021-12-19 13:46:01'),
(24, 15, 'Dhaka', 'Gazipur', 'Kapasia', 'Banor Howla', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-20 07:43:06', '2021-12-21 10:26:33'),
(26, 16, 'Rangpur', 'Kurigram', 'Ulipur', 'Tabakpur', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-20 08:51:43', '2021-12-20 09:29:22'),
(27, 17, 'Rajshahi', 'Nawabganj', 'Nawabganj Sadar', 'Ramchandrapur Hat', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-20 11:23:42', '2021-12-20 11:23:42'),
(28, 18, 'Khulna', 'Jhenaida', 'Shailkupa', 'Village+ post : kancherkole', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-21 04:30:07', '2021-12-21 04:33:09'),
(29, 19, 'Khulna', 'Jhenaida', 'Shailkupa', 'Village: Kancherkole,  post: Kancherkole', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-21 06:35:31', '2022-01-27 08:34:40'),
(31, 20, 'Dhaka', 'Dhaka', 'Keraniganj', 'Ruqayyah Hall, University of Dhaka Area, Dhaka 1000.', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-21 06:59:32', '2021-12-21 06:59:32'),
(32, 20, 'Chittagong', 'Lakshmipur', 'Lakshmipur Sadar', 'Sakari para road, 5 no ward, komolbabur bari', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-21 06:59:32', '2021-12-21 06:59:32'),
(33, 21, 'Rajshahi', 'Pabna', 'Ishwardi', 'Chargorgori', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-21 14:33:01', '2021-12-21 14:33:01'),
(34, 22, 'Rajshahi', 'Bogra', 'Bogra Sadar', 'VILL: BRINDABON PARA', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-22 05:06:35', '2021-12-22 05:06:35'),
(35, 23, 'Rangpur', 'Kurigram', 'Ulipur', 'Bozra Purbo Para', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-23 06:26:04', '2021-12-23 06:26:04'),
(36, 24, 'Rajshahi', 'Rajshahi', 'Boalia Thana', 'Monnafer Mor', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-23 06:48:39', '2022-04-07 05:55:26'),
(37, 24, 'Khulna', 'Jessore', 'Chaugachha', 'Kalitola, Chowgacha Bazar, Chowgacha', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-23 06:48:39', '2022-04-07 05:55:26'),
(38, 25, 'Khulna', 'Jessore', 'Chaugachha', 'Kaletola,chowgacha municipality, chowgacha jessore.', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-23 08:07:46', '2021-12-23 08:07:46'),
(39, 26, 'Rangpur', 'Kurigram', 'Ulipur', 'Village;Bozra sorkar para,post: bozra hat', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-23 14:42:51', '2021-12-23 15:00:38'),
(40, 27, 'Dhaka', 'Dhaka', 'Keraniganj', 'Lalbag', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-23 15:47:12', '2021-12-25 05:38:23'),
(41, 27, 'Khulna', 'Jessore', 'Chaugachha', 'Ramkrishnapur', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-23 15:47:12', '2021-12-25 05:38:23'),
(42, 28, 'Rangpur', 'Kurigram', 'Chilmari', 'VILLAGE: KISAMOTBANU,BALABARI HAT.', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-25 06:57:05', '2021-12-25 06:59:35'),
(44, 29, 'Chittagong', 'Comilla', 'Comilla Sadar Dakshin', 'Salmanpur, Kotbari, Comilla University,  comilla.', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-25 15:22:11', '2021-12-25 15:23:44'),
(45, 29, 'Chittagong', 'Lakshmipur', 'Lakshmipur Sadar', 'Shakharipara, Sadar Lakshmipur.', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-25 15:22:11', '2021-12-25 15:23:44'),
(46, 30, 'Khulna', 'Jessore', 'Chaugachha', 'TENGURPUR', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-26 05:02:57', '2021-12-26 13:16:13'),
(47, 31, 'Dhaka', 'Kishoreganj', 'Pakundia', 'Charforadi,Pakundia, Kishoreganj', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-26 07:25:33', '2021-12-26 07:25:33'),
(48, 32, 'Dhaka', 'Narayanganj', 'Narayanganj Sadar', 'Pathantuli,163/A', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-27 09:48:31', '2021-12-27 09:48:31'),
(49, 32, 'Dhaka', 'Narayanganj', 'Bandar', 'North Lakkhonkhola,576/b', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-27 09:48:31', '2021-12-27 09:48:31'),
(50, 33, 'Chittagong', 'Lakshmipur', 'Lakshmipur Sadar', 'Sakhari para,Lakshmipur', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-28 14:16:09', '2021-12-28 14:17:25'),
(51, 34, 'Khulna', 'Jessore', 'Chaugachha', 'Marua, 7410', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-29 05:34:26', '2021-12-29 18:01:41'),
(52, 35, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancherkole', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-29 06:00:12', '2021-12-29 06:00:12'),
(53, 36, 'Khulna', 'Jessore', 'Jessore Sadar', 'Sajiali', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-29 06:01:32', '2022-05-13 22:58:48'),
(54, 37, 'Khulna', 'Jessore', 'Chaugachha', 'DIGHOLSHINGA', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-29 07:00:35', '2021-12-29 07:32:58'),
(55, 38, 'Khulna', 'Jessore', 'Chaugachha', 'HAZRAKHANA', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-29 07:49:06', '2021-12-29 07:49:06'),
(56, 39, 'Khulna', 'Jessore', 'Jhikargachha', 'Krishnanagar', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-29 15:20:03', '2021-12-29 15:20:03'),
(57, 40, 'Rangpur', 'Dinajpur', 'Dinajpur Sadar', 'Chourongi', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-31 08:43:52', '2022-01-09 17:20:26'),
(58, 40, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kachua', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2021-12-31 08:43:52', '2022-01-09 17:20:26'),
(59, 41, 'Khulna', 'Jessore', 'Chaugachha', 'TENGURPUR', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2021-12-31 09:56:55', '2021-12-31 09:56:55'),
(60, 42, 'Rangpur', 'Thakurgaon', 'Ranisankail', 'ranisankail', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-01 09:48:07', '2022-03-26 00:22:41'),
(61, 43, 'Rajshahi', 'Naogaon', 'Naogaon Sadar', 'KhasNaogaon', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-03 16:57:22', '2022-01-03 16:57:22'),
(62, 44, 'Khulna', 'Jessore', 'Chaugachha', 'VILL- PASHAPOLE, POST: PASHAPOLE- 7420', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-08 06:16:34', '2022-01-08 10:12:59'),
(63, 45, 'Rangpur', 'Rangpur', 'Rangpur Sadar', '5/7 satgara road, Rangpur', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-08 14:36:22', '2022-01-08 14:36:22'),
(64, 46, 'Khulna', 'Jessore', 'Chaugachha', 'Marua', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-09 06:15:07', '2022-01-09 06:16:06'),
(65, 47, 'Khulna', 'Jessore', 'Chaugachha', 'Marua', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-09 06:22:56', '2022-01-09 06:22:56'),
(66, 48, 'Khulna', 'Jessore', 'Chaugachha', 'CHOUGACHHA KALITOLA', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-11 11:01:51', '2022-01-11 11:01:51'),
(67, 49, 'Khulna', 'Jessore', 'Chaugachha', 'TARINIBASH', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-12 10:23:02', '2022-01-25 14:20:52'),
(96, 77, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:00:32', '2022-01-27 00:45:45'),
(97, 77, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:00:32', '2022-01-27 00:45:45'),
(98, 78, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:00:47', '2022-01-25 07:00:47'),
(99, 78, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:00:47', '2022-01-25 07:00:47'),
(100, 79, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:00:52', '2022-01-25 07:00:52'),
(101, 79, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:00:52', '2022-01-25 07:00:52'),
(102, 80, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:11', '2022-01-25 07:01:11'),
(103, 80, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:11', '2022-01-25 07:01:11'),
(104, 81, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:15', '2022-01-25 07:01:15'),
(105, 81, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:15', '2022-01-25 07:01:15'),
(106, 82, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:17', '2022-01-25 07:01:17'),
(107, 82, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:17', '2022-01-25 07:01:17'),
(108, 83, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:46', '2022-01-25 07:01:46'),
(109, 83, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:46', '2022-01-25 07:01:46'),
(110, 84, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:50', '2022-01-25 07:01:50'),
(111, 84, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:50', '2022-01-25 07:01:50'),
(112, 85, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:52', '2022-01-25 07:01:52'),
(113, 85, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:52', '2022-01-25 07:01:52'),
(114, 86, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:54', '2022-01-25 07:01:54'),
(115, 86, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:54', '2022-01-25 07:01:54'),
(116, 87, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:56', '2022-01-25 07:01:56'),
(117, 87, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:01:56', '2022-01-25 07:01:56'),
(118, 88, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:02:03', '2022-01-25 07:02:03'),
(119, 88, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:02:03', '2022-01-25 07:02:03'),
(120, 89, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:02:05', '2022-01-25 07:02:05'),
(121, 89, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:02:05', '2022-01-25 07:02:05'),
(122, 90, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:02:18', '2022-01-25 07:02:18'),
(123, 90, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:02:18', '2022-01-25 07:02:18'),
(124, 91, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:02:21', '2022-01-25 07:02:21'),
(125, 91, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:02:21', '2022-01-25 07:02:21'),
(126, 92, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:05:59', '2022-01-25 07:05:59'),
(127, 92, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:05:59', '2022-01-25 07:05:59'),
(128, 93, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:11:09', '2022-01-25 07:11:09'),
(129, 93, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:11:09', '2022-01-25 07:11:09'),
(130, 94, 'Dhaka', 'Dhaka', 'Savar', 'Jahangirnagar University', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:13:07', '2022-01-25 07:13:07'),
(131, 94, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancherkole', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:13:07', '2022-01-25 07:13:07'),
(132, 95, 'Dhaka', 'Gazipur', 'Gazipur Sadar', 'DUET,Joydebpur, Gazipur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:17:03', '2022-01-25 07:17:03'),
(133, 95, 'Khulna', 'Jhenaida', 'Shailkupa', 'Uttor kocuya,shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:17:03', '2022-01-25 07:17:03'),
(134, 96, 'Dhaka', 'Dhaka', 'Savar', 'Jahangirnagar University', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:17:19', '2022-01-25 07:17:19'),
(135, 96, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancherkole', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:17:19', '2022-01-25 07:17:19'),
(136, 97, 'Dhaka', 'Please select district', 'Please select upazila', 'Jahangirnagar University', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:40:31', '2022-01-25 07:40:31'),
(137, 97, 'Khulna', 'Please select district', 'Please select upazila', 'Kancherkole', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 07:40:31', '2022-01-25 07:40:31'),
(138, 98, 'Dhaka', 'Dhaka', 'Savar', 'Jahangirnagar University', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 09:32:25', '2022-01-27 00:56:08'),
(139, 98, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancherkole', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 09:32:25', '2022-01-27 00:56:08'),
(140, 99, 'Rangpur', 'Rangpur', 'Please select upazila', 'Bangabandhu Sheikh Mujibur Rahman Hall,Begum Rokeya University, Rangpur', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 10:53:13', '2022-01-25 10:53:13'),
(141, 99, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancher Kole', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 10:53:13', '2022-01-25 10:53:13'),
(142, 100, 'Rangpur', 'Rangpur', 'Rangpur Sadar', 'Bangabandhu Sheikh Mujibur Rahman Hall,Begum Rokeya University, Rangpur', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 11:11:45', '2022-01-25 11:11:45'),
(143, 100, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancher Kole', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 11:11:45', '2022-01-25 11:11:45'),
(154, 106, 'Chittagong', 'Brahmanbaria', 'Ashuganj', 'SDFGHJK', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-25 14:19:33', '2022-01-25 14:19:33'),
(155, 107, 'Dhaka', 'Dhaka', 'Dhamrai', 'dfghj', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-25 14:29:25', '2022-01-25 14:29:25'),
(156, 108, 'Dhaka', 'Dhaka', 'Savar', 'Jahangirnagar university', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 22:32:42', '2022-01-25 22:32:42'),
(157, 108, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancherkole', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-25 22:32:42', '2022-01-25 22:32:42'),
(158, 109, 'Dhaka', 'Dhaka', 'Savar', 'Mirpur', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-25 23:27:18', '2022-01-25 23:35:26'),
(159, 110, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kachua, Kancherkole, Shailkupa, Jhenaidah', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-26 00:16:51', '2022-01-26 00:16:51'),
(160, 110, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kachua,Kancherkole, Shailkupa,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-26 00:16:51', '2022-01-26 00:16:51'),
(161, 111, 'Khulna', 'Jhenaida', 'Shailkupa', 'Shadekpur', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-26 06:01:44', '2022-01-26 06:01:44'),
(162, 111, 'Khulna', 'Jhenaida', 'Shailkupa', 'Shadekpur', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-26 06:01:44', '2022-01-26 06:01:44'),
(163, 112, 'Khulna', 'Jhenaida', 'Shailkupa', 'Mirzapur', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-27 04:34:30', '2022-01-27 04:34:30'),
(164, 112, 'Khulna', 'Jhenaida', 'Shailkupa', 'Mirzapur', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-27 04:34:30', '2022-01-27 04:34:30'),
(165, 113, 'Dhaka', 'Dhaka', 'Dohar', '363,North Pirerbag, Mirpur-1, Dhaka-1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-27 04:42:57', '2022-01-27 04:42:57'),
(166, 113, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancherkole', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-27 04:42:57', '2022-01-27 04:42:57'),
(167, 114, 'Rangpur', 'Rangpur', 'Rangpur Sadar', 'Bangabandhu Sheikh Mujibur Rahman Hall,Begum Rokeya University, Rangpur', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-27 22:05:39', '2022-03-03 01:16:37'),
(168, 114, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancher Kole', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-27 22:05:39', '2022-03-03 01:16:37'),
(169, 115, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kachua', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-27 23:46:34', '2022-01-28 02:00:30'),
(170, 116, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancherkole', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-27 23:48:45', '2022-01-28 23:52:16'),
(171, 116, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancherkole', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-27 23:48:45', '2022-01-28 23:52:16'),
(172, 117, 'Khulna', 'Jessore', 'Jessore Sadar', 'Jessore sadar', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-28 03:04:50', '2022-01-28 03:04:50'),
(173, 117, 'Khulna', 'Jhenaida', 'Shailkupa', 'Bittideby raj nogor', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-28 03:04:50', '2022-01-28 03:04:50'),
(174, 118, 'Khulna', 'Jhenaida', 'Shailkupa', 'Nischintopur', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-28 05:19:16', '2022-01-28 05:32:03'),
(175, 119, 'Khulna', 'Jhenaida', 'Shailkupa', 'Khondokbaria', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-28 05:41:28', '2022-05-04 02:51:42'),
(176, 120, 'Khulna', 'Jhenaida', 'Shailkupa', 'Khondokbaria', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-28 05:54:17', '2022-01-28 05:55:23'),
(177, 121, 'Barisal', 'Bhola', 'Bhola Sadar', 'Police Line, Charnowabad, Bhola', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-28 09:10:44', '2022-01-28 09:10:44'),
(178, 122, 'Rajshahi', 'Rajshahi', 'Tanore', 'Bhaluka Kandor', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-28 21:58:29', '2022-01-28 22:00:39'),
(179, 123, 'Khulna', 'Jhenaida', 'Shailkupa', 'Mirzapur,kancherkole', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-28 22:30:23', '2022-01-28 22:30:23'),
(180, 124, 'Khulna', 'Kushtia', 'Kumarkhali', 'Khagorbaria', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-28 23:58:26', '2022-01-28 23:58:26'),
(181, 124, 'Khulna', 'Kushtia', 'Shekhpara', 'Khagorbaria', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-28 23:58:26', '2022-01-28 23:58:26'),
(182, 125, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancherkole.', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-29 00:12:32', '2022-01-29 08:25:36'),
(183, 126, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancherkol', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-29 00:28:19', '2022-01-29 00:28:19'),
(184, 126, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancherkol', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-29 00:28:19', '2022-01-29 00:28:19'),
(188, 129, 'Khulna', 'Kushtia', 'Kumarkhali', 'Khagorbaria', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-29 02:12:16', '2022-01-30 07:45:02'),
(189, 130, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kachua', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-29 05:37:54', '2022-01-29 05:37:54'),
(190, 131, 'Khulna', 'Jhenaida', 'Shailkupa', 'Brittidebi Raznagor', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-30 00:06:06', '2022-01-30 00:06:06'),
(191, 131, 'Khulna', 'Jhenaida', 'Shailkupa', 'Brittidebi Raznagor', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-30 00:06:06', '2022-01-30 00:06:06'),
(192, 132, 'Khulna', 'Kushtia', 'Kumarkhali', 'Khordovaluka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-30 04:00:40', '2022-01-30 04:00:40'),
(193, 132, 'Khulna', 'Kushtia', 'Kumarkhali', 'Khordovaluka', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-30 04:00:40', '2022-01-30 04:00:40'),
(194, 133, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancherkole', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-30 05:32:30', '2022-01-30 05:32:30'),
(195, 133, 'Khulna', 'Jhenaida', 'Shailkupa', 'Kancherkole', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-01-30 05:32:30', '2022-01-30 05:32:30'),
(196, 134, 'Khulna', 'Jhenaida', 'Shailkupa', 'Mirzapur,kancherkole', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-30 06:58:42', '2022-01-30 06:58:42'),
(197, 135, 'Khulna', 'Kushtia', 'Kumarkhali', 'Khagobaria', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-31 00:37:13', '2022-01-31 00:37:13'),
(198, 136, 'Khulna', 'Kushtia', 'Kumarkhali', 'Khagobaria', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-01-31 01:04:36', '2022-01-31 01:04:36'),
(199, 137, 'Rajshahi', 'Rajshahi', 'Durgapur', 'Shahabuzpur', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-02 07:42:10', '2022-02-02 07:42:10'),
(200, 138, 'Rajshahi', 'Rajshahi', 'Durgapur', 'Shahabuzpur', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-02 07:42:11', '2022-02-02 07:42:11'),
(201, 139, 'Rangpur', 'Panchagarh', 'Atwari', 'Chotodap', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-03 22:32:26', '2022-02-03 22:32:26'),
(202, 140, 'Dhaka', 'Dhaka', 'Please select upazila', 'Shahbag', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-06 00:36:07', '2022-02-08 13:16:12'),
(203, 140, 'Rangpur', 'Kurigram', 'Chilmari', 'Moujathana,Mondal para', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-06 00:36:07', '2022-02-08 13:16:12'),
(204, 141, 'Mymensingh', 'Netrokona', 'Khaliajuri', 'Gajipur union', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-08 13:13:35', '2022-02-08 13:13:35'),
(205, 142, 'Rangpur', 'Kurigram', 'Ulipur', 'Modhya Bozra', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-10 07:48:31', '2022-02-10 07:48:31'),
(206, 143, 'Rangpur', 'Kurigram', 'Chilmari', 'Village: Shantinagar', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-11 00:29:31', '2022-02-11 00:29:31'),
(207, 144, 'Khulna', 'Khulna', 'Khalishpur Thana', 'Boikali Road, Boyra, Khalishpur, Khulna', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-12 00:25:22', '2022-02-12 00:26:08'),
(208, 144, 'Barisal', 'Bhola', 'Bhola Sadar', 'Police Line, Charnowabad, Bhola', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-12 00:25:22', '2022-02-12 00:26:08'),
(209, 145, 'Khulna', 'Jhenaida', 'Jhenaidah Sadar', 'Chapri,Modhupur,Jhenaidah', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-12 03:32:57', '2022-02-12 03:32:57'),
(210, 146, 'Dhaka', 'Dhaka', 'Savar', 'Duaripara, Rupnagar, Mirpur, Dhaka', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-12 08:16:02', '2022-02-12 08:16:02'),
(211, 146, 'Barisal', 'Bhola', 'Bhola Sadar', '3 no West Illisha, Bhola Sadar, Bhola', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-12 08:16:02', '2022-02-12 08:16:02'),
(212, 147, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 00:02:33', '2022-02-13 00:02:33'),
(213, 147, 'Barisal', 'Bhola', 'Bhola Sadar', 'West Elisha.', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 00:02:33', '2022-02-13 00:02:33'),
(214, 148, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 00:15:30', '2022-02-14 00:11:41'),
(215, 148, 'Rangpur', 'Gaibandha', 'Gaibandha Sadar', 'Gaibandha', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 00:15:30', '2022-02-14 00:11:41'),
(216, 149, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 00:48:02', '2022-02-13 00:48:02'),
(217, 149, 'Rangpur', 'Gaibandha', 'Gaibandha Sadar', 'Gaibandha', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 00:48:02', '2022-02-13 00:48:02'),
(218, 150, 'Dhaka', 'Dhaka', 'Savar', 'Mirpur, estern Houesing , Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 01:07:04', '2022-02-13 01:07:04'),
(219, 150, 'Dhaka', 'Faridpur', 'Bhanga', 'Islampur', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 01:07:04', '2022-02-13 01:07:04'),
(220, 151, 'Dhaka', 'Dhaka', 'Savar', 'Mirpur, estern Houesing , Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 01:20:39', '2022-02-13 01:20:39'),
(221, 151, 'Dhaka', 'Madaripur', 'Rajoir', 'shakher par.', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 01:20:39', '2022-02-13 01:20:39'),
(222, 152, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 01:31:43', '2022-02-13 01:31:43'),
(223, 152, 'Barisal', 'Bhola', 'Bhola Sadar', 'Bodgar', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 01:31:43', '2022-02-13 01:31:43'),
(224, 153, 'Dhaka', 'Dhaka', 'Please select upazila', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 01:45:48', '2022-02-13 01:45:48'),
(225, 153, 'Barisal', 'Bhola', 'Bhola Sadar', 'Chodan Math', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 01:45:48', '2022-02-13 01:45:48'),
(226, 154, 'Dhaka', 'Dhaka', 'Savar', 'Mirpur,Duaripara.Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 01:58:07', '2022-02-13 01:58:07'),
(227, 154, 'Barisal', 'Bhola', 'Lalmohan', 'Dhliyahagar', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 01:58:07', '2022-02-13 01:58:07'),
(228, 155, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 02:13:52', '2022-02-13 02:13:52'),
(229, 155, 'Rangpur', 'Gaibandha', 'Sadullapur', 'Sadullapur', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 02:13:52', '2022-02-13 02:13:52'),
(230, 156, 'Dhaka', 'Dhaka', 'Savar', 'Mirpur,Duaripara.Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 02:27:07', '2022-02-13 02:27:07'),
(231, 156, 'Barisal', 'Bhola', 'Bhola Sadar', 'West Elisha.', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 02:27:07', '2022-02-13 02:27:07'),
(232, 157, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 03:35:10', '2022-02-13 03:35:10'),
(233, 157, 'Barisal', 'Patuakhali', 'Dashmina', 'patuakhali', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 03:35:10', '2022-02-13 03:35:10'),
(234, 158, 'Dhaka', 'Dhaka', 'Nawabganj', 'Mirpur,Duaripara.Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 03:49:22', '2022-02-13 03:49:22'),
(235, 158, 'Barisal', 'Patuakhali', 'Dashmina', 'patuakhali', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 03:49:22', '2022-02-13 03:49:22'),
(236, 159, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 07:19:01', '2022-02-13 07:19:01'),
(237, 159, 'Barisal', 'Bhola', 'Bhola Sadar', 'West Elisha.', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 07:19:01', '2022-02-13 07:19:01'),
(238, 160, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 07:37:41', '2022-02-13 07:37:41'),
(239, 160, 'Mymensingh', 'Sherpur', 'Jhenaigati', 'Holdigram', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 07:37:41', '2022-02-13 07:37:41'),
(240, 161, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 07:51:12', '2022-02-13 07:51:12'),
(241, 161, 'Barisal', 'Bhola', 'Bhola Sadar', 'West Elisha.', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 07:51:12', '2022-02-13 07:51:12'),
(242, 162, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 08:08:32', '2022-02-13 08:08:32'),
(243, 162, 'Barisal', 'Bhola', 'Bhola Sadar', 'West Elisha.', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 08:08:32', '2022-02-13 08:08:32'),
(244, 163, 'Dhaka', 'Dhaka', 'Savar', 'House: 37 , Rood: 02 Duaripara, Eastren Husing.', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 21:41:03', '2022-02-13 21:41:03'),
(245, 163, 'Khulna', 'Bagerhat', 'Bagerhat Sadar', 'khulna', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 21:41:03', '2022-02-13 21:41:03'),
(246, 164, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 22:01:19', '2022-02-13 22:01:19'),
(247, 164, 'Barisal', 'Bhola', 'Bhola Sadar', 'Guher Howla', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 22:01:19', '2022-02-13 22:01:19'),
(248, 165, 'Dhaka', 'Dhaka', 'Savar', 'Mirpur,Duaripara.Dhaka-1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 22:12:49', '2022-02-13 22:12:49'),
(249, 165, 'Rangpur', 'Gaibandha', 'Gaibandha Sadar', 'Ruparbajar', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 22:12:49', '2022-02-13 22:12:49'),
(250, 166, 'Dhaka', 'Dhaka', 'Savar', 'Mirpur,Duaripara.Dhaka-1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 22:23:47', '2022-02-13 22:23:47'),
(251, 166, 'Barisal', 'Bhola', 'Bhola Sadar', 'Velumiya Bazar', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 22:23:47', '2022-02-13 22:23:47'),
(252, 167, 'Rangpur', 'Kurigram', 'Ulipur', 'Bamnachora,Sonaripara,Tabakpur', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-13 22:29:27', '2022-02-13 22:31:14'),
(253, 168, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 22:34:23', '2022-02-13 22:34:23'),
(254, 168, 'Barisal', 'Bhola', 'Lalmohan', 'Coroskhina', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 22:34:23', '2022-02-13 22:34:23'),
(255, 169, 'Dhaka', 'Dhaka', 'Nawabganj', 'Mirpur,Duaripara.Dhaka-1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 22:47:34', '2022-02-13 22:47:34'),
(256, 169, 'Rangpur', 'Gaibandha', 'Gaibandha Sadar', 'Gaibandha', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-13 22:47:34', '2022-02-13 22:47:34'),
(257, 170, 'Dhaka', 'Dhaka', 'Savar', 'Mirpur,Duaripara.Dhaka-1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 01:41:50', '2022-02-14 01:41:50'),
(258, 170, 'Dhaka', 'Munshiganj', 'Tongibari', 'Rongmaher', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 01:41:50', '2022-02-14 01:41:50'),
(259, 171, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 01:54:05', '2022-02-14 01:54:05'),
(260, 171, 'Dhaka', 'Shariatpur', 'Bhedarganj', 'Bhedarganj', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 01:54:05', '2022-02-14 01:54:05'),
(261, 172, 'Dhaka', 'Dhaka', 'Nawabganj', 'Mirpur,Duaripara.Dhaka-1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 02:06:48', '2022-02-14 02:06:48'),
(262, 172, 'Barisal', 'Bhola', 'Bhola Sadar', 'West Elisha.', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 02:06:48', '2022-02-14 02:06:48'),
(263, 173, 'Dhaka', 'Dhaka', 'Savar', 'Mirpur,Duaripara.Dhaka-1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 02:23:24', '2022-02-14 02:23:24'),
(264, 173, 'Barisal', 'Bhola', 'Bhola Sadar', 'West Elisha.', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 02:23:24', '2022-02-14 02:23:24'),
(265, 174, 'Dhaka', 'Dhaka', 'Savar', 'Mirpur,Duaripara.Dhaka-1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 02:30:38', '2022-02-14 02:30:38'),
(266, 174, 'Barisal', 'Bhola', 'Daulatkhan', 'Utter joynogor', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 02:30:38', '2022-02-14 02:30:38'),
(267, 175, 'Dhaka', 'Dhaka', 'Savar', 'Mirpur,Duaripara.Dhaka-1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 02:59:00', '2022-02-14 02:59:00'),
(268, 175, 'Barisal', 'Bhola', 'Bhola Sadar', 'BagerhAT', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 02:59:00', '2022-02-14 02:59:00'),
(269, 176, 'Dhaka', 'Dhaka', 'Nawabganj', 'Mirpur, estern Houesing , Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 03:11:23', '2022-02-14 03:11:23'),
(270, 176, 'Barisal', 'Bhola', 'Bhola Sadar', 'Elisha. jonson', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 03:11:23', '2022-02-14 03:11:23'),
(271, 177, 'Rangpur', 'Kurigram', 'Ulipur', 'Bozra', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-14 03:13:22', '2022-02-14 03:13:22'),
(272, 178, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 03:19:55', '2022-02-14 03:19:55'),
(273, 178, 'Dhaka', 'Madaripur', 'Madaripur Sadar', 'kabirajpur', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 03:19:55', '2022-02-14 03:19:55'),
(274, 179, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 03:27:21', '2022-02-14 03:27:21'),
(275, 179, 'Barisal', 'Bhola', 'Bhola Sadar', 'West Elisha.', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 03:27:21', '2022-02-14 03:27:21'),
(276, 180, 'Dhaka', 'Dhaka', 'Savar', 'Duyaripara,Mirpur Dhaka 1216', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 03:35:30', '2022-02-14 03:35:30'),
(277, 180, 'Khulna', 'Khulna', 'Dumuria', 'Rayeula', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 03:35:30', '2022-02-14 03:35:30'),
(278, 181, 'Dhaka', 'Dhaka', 'Savar', 'Town hall,Mohammadpur', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 04:17:31', '2022-02-14 04:17:31'),
(279, 181, 'Rangpur', 'Kurigram', 'Ulipur', 'Bozra', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 04:17:31', '2022-02-14 04:17:31'),
(280, 10, 'Khulna', 'Jhenaida', 'Jhenaidah Sadar', 'House no:125;30 no Nazrul Islam Sarak,Sonali para,Jhenaidah', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-02-14 22:54:41', '2022-02-14 22:59:23'),
(281, 182, 'Khulna', 'Jessore', 'Jessore Sadar', 'Puraton Kashba Ghoshpara, B B Road, 116/A, Jashore', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-15 03:39:04', '2022-03-13 09:28:11'),
(282, 183, 'Rangpur', 'Panchagarh', 'Atwari', 'Borosingia', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-15 04:48:31', '2022-02-15 04:48:31'),
(283, 184, 'Rangpur', 'Panchagarh', 'Atwari', 'কিসমত দাপ', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-15 04:53:43', '2022-02-15 08:18:39'),
(284, 185, 'Dhaka', 'Faridpur', 'Nagarkanda', 'Vill:Jungardi, Post:Nagarkanda', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-19 02:03:13', '2022-02-27 12:48:26'),
(285, 186, 'Mymensingh', 'Mymensingh', 'Bhaluka', 'Rampur', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-19 02:16:19', '2022-02-19 02:16:19'),
(287, 188, 'Khulna', 'Jessore', 'Jessore Sadar', 'Puraton Kashba Ghoshpara,B.B Road,116/A,Jashore', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-20 06:47:09', '2022-02-20 06:47:09'),
(288, 189, 'Dhaka', 'Faridpur', 'Nagarkanda', 'Vill:Atail,Post :Talma', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-20 08:39:13', '2022-02-20 08:39:13'),
(289, 190, 'Khulna', 'Narail', 'Kalia', 'village', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-02-22 22:04:24', '2022-02-22 22:04:24'),
(290, 191, 'Dhaka', 'Dhaka', 'Kadamtali', 'South Donia, New A k School Road', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-03-02 06:12:10', '2022-03-02 06:12:10'),
(291, 192, 'Dhaka', 'Dhaka', 'Mohammadpur Thana', '30/3 sher shah suri Road, mohammad pur,Dhaka-1207', 'PRESENT', 'App\\Models\\Student', 1, 'ACTIVE', '2022-03-03 10:10:10', '2022-03-03 10:10:10'),
(292, 193, 'Dhaka', 'Dhaka', 'Mirpur Thana', 'House: 09, road: 05, Duaripara.', 'PRESENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-03-07 11:36:38', '2022-03-14 10:49:30'),
(293, 193, 'Barisal', 'Bhola', 'Bhola Sadar', 'Maler hat', 'PERMANENT', 'App\\Models\\Student', 0, 'ACTIVE', '2022-03-07 11:36:38', '2022-03-14 10:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `approved_applications`
--

CREATE TABLE `approved_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `scholarship_id` bigint(20) UNSIGNED NOT NULL,
  `approved_amount` double DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `approval_date` datetime DEFAULT NULL,
  `approved_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `approved_applications`
--

INSERT INTO `approved_applications` (`id`, `tenant_id`, `student_id`, `scholarship_id`, `approved_amount`, `from_date`, `to_date`, `approval_date`, `approved_by`, `account_id`, `created_at`, `updated_at`) VALUES
(3, 1, 109, 1, 3000, '2022-02-28 00:00:00', '2022-05-12 00:00:00', '2022-02-21 19:07:22', 'HB Admin', 19, '2022-02-21 13:07:22', '2022-02-21 13:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_degree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks_cgpa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssc_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssc_institution` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssc_gpa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_institution` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hsc_gpa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bachelor_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bachelor_institution` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bachelor_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bachelor_cgpa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`id`, `student_id`, `level`, `class_degree`, `institution`, `position`, `marks_cgpa`, `semester`, `year`, `ssc_year`, `ssc_institution`, `ssc_gpa`, `hsc_year`, `hsc_institution`, `hsc_gpa`, `bachelor_year`, `bachelor_institution`, `bachelor_subject`, `bachelor_cgpa`, `created_at`, `updated_at`) VALUES
(2, 2, 'School', NULL, 'iName', 'ID', '2.50', '13', '2021', '2011', 'sName', '4.00', '2013', 'hName', '4.00', NULL, NULL, NULL, NULL, '2021-11-24 11:35:45', '2021-12-21 06:29:02'),
(3, 3, 'University/Diploma', '1st Year', 'Daffodil International University', '221-15-5013', '4.00', '1', '2022', '2017', 'Model Academy', '5.00', '2020', 'Birshrestha Munshi Abdur Rouf Public College', '5.00', NULL, NULL, NULL, NULL, '2021-11-27 20:32:38', '2021-11-27 20:32:38'),
(4, 4, 'University/Diploma', '4th Year', 'Islamic University, Kushtia.', '1706068', '3.38', '6th', '2019', '2014', 'Kumria BL high school, Dinajpur.', '5.00', '2016', 'Ranirbondor Mohila college, Dinajpur.', '4.50', NULL, NULL, NULL, NULL, '2021-12-05 18:07:59', '2021-12-05 18:07:59'),
(5, 5, 'College', 'Class-12', 'Golam Habib Women\'s College', 'Class Roll 30', '5.00', 'First year exam', '2020', '2019', 'Chilmari High School', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-07 09:16:14', '2021-12-07 09:16:14'),
(6, 6, 'Bachelors', '3rd Year', 'Jagannath University, Dhaka.', 'B 160203105', '3.38', '6 th semester', '2020', '2014', 'Lakshmipur Government Girls High School', '5.00', '2016', 'Lakshmipur Government College', '4.08', NULL, NULL, NULL, NULL, '2021-12-15 15:14:55', '2021-12-15 15:14:55'),
(7, 7, 'Bachelors', '3rd Year', 'Department of Pharmacy,Rajshahi University', '1810926148', '3.30', NULL, '2019', '2015', 'Benipur High School', '5.00', '2017', 'Shailkupa Govt. College', '4.58', NULL, NULL, NULL, NULL, '2021-12-18 07:36:55', '2021-12-24 16:42:27'),
(8, 8, 'Bachelors', '2nd Year', 'Bangabandhu Textile Engineering college.', '1st ( Class representative)', '3.71', '2nd year 1 st semester.', '2021', '2014', 'Umananda High School.', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-18 09:34:28', '2021-12-18 09:34:28'),
(9, 9, 'College', 'Class-12', 'CHILMARI  GOLAM HABIB MOHIA DEGREE COLLEGE', '676206', '4.54', NULL, '2020', '2018', 'THANA HAT PILOT GIRLS HIGH SCHOOL', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-18 11:33:06', '2021-12-18 11:33:06'),
(10, 10, 'Bachelors', '1st Year', 'Government Bangla College', '19031', '9.86', NULL, '2020', '2017', 'Jhenaidah Govt High School', '4.86', '2020', 'A. Rouf Degree College', '5.00', NULL, NULL, NULL, NULL, '2021-12-19 06:05:02', '2022-02-14 22:54:41'),
(11, 11, 'Diploma', NULL, 'Pabna polytechnic institute', '8th semester, roll: 910748  (1st position)', '3.95', '8th', '2021', '2017', 'Bansherbada ML High School', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-19 07:01:54', '2021-12-20 02:47:31'),
(12, 12, 'College', 'Class-12', 'Govt.sundarban adarsha college,khulna', '2348', '5.00', 'No', '2021', '2019', 'Benipur m/l high school', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-19 07:18:16', '2021-12-19 07:18:16'),
(13, 13, 'College', 'Class-11', 'Shailkupa govt. Degree college', '205', '4.94', 'No', '2021', '2020', 'Kancherkol mariyam nesa girls high school,Jhenidah', '4.94', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-19 13:41:16', '2021-12-19 13:41:16'),
(14, 14, 'Bachelors', '1st Year', 'Bojra L.K.Amin Degree College', '2025764', '5.00', '1st', '2021', '2018', 'Baghia Momin Uddin Sarker Academy', '5.00', '2020', 'Genuine Residential College', '5.00', NULL, NULL, NULL, NULL, '2021-12-19 13:42:50', '2021-12-19 13:42:50'),
(15, 15, 'School', 'Class-9', 'Monipur High School', 'ID: 21B1DB09NA06049', '132', NULL, '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-20 07:43:06', '2021-12-21 10:24:17'),
(16, 16, 'College', 'Class-12', 'Ulipur Maharani Sarnamoyi High School', '140553', '3.33', NULL, '2019', '2017', 'Umanando  High School & College.', '4.59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-20 08:51:43', '2021-12-20 09:29:22'),
(17, 17, 'Bachelors', '4th Year', 'Nawabganj Govt. College', '05', '2.84', NULL, '2020', '2014', 'Krishnagobindapur Girls High School', '5.00', '2016', 'Krishnagobindapur Degree College', '3.75', NULL, NULL, NULL, NULL, '2021-12-20 11:23:42', '2021-12-20 11:23:42'),
(18, 18, 'Bachelors', '2nd Year', 'Islamic University Kushtia', 'Roll:1721074', '3.60', '5th semester  running', '2021', '2015', 'Kancherkole Moriyam Nesa girls High School', '5.00', '2017', 'Kancherkole  College', '5.00', NULL, NULL, NULL, NULL, '2021-12-21 04:30:07', '2021-12-21 04:30:07'),
(19, 19, 'Bachelors', '1st Year', 'Jashore University of Science and Technology', '191811', '0.00', '2nd semester', '2021', '2017', 'Benirpur High School', '4.32', '2019', 'Kancherkole college', '4.58', NULL, NULL, NULL, NULL, '2021-12-21 06:35:31', '2021-12-21 06:35:31'),
(20, 20, 'Masters', '1st Year', 'University of Dhaka', '16650', '0', '2nd', '2021', '2012', 'Lakshmipur Girls High School.', '4.75', '2015', 'Lakshmipur Government Colllege', '5.00', NULL, NULL, NULL, NULL, '2021-12-21 06:59:32', '2021-12-21 06:59:32'),
(21, 21, 'Diploma', NULL, 'Pabna Polytechnic Institute', '2nd,roll: 911152', '3.93', '8th', '2021', '2017', 'Bansherbada ML High School', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-21 14:33:01', '2021-12-21 14:33:01'),
(22, 22, 'School', 'Class-10', 'BENGALI MEDIUM HIGH SCHOOL', '21', '3.71', NULL, '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-22 05:06:35', '2021-12-22 05:06:35'),
(23, 23, 'Bachelors', '1st Year', 'Dhaka Commerce College', 'Roll :824', '0.00', '1st', '2022', '2018', 'GUNAIGACHH PILOT HIGH SCHOOL', '5.00', '2020', 'KURIGRAM GOVT. COLLEGE.', '5.00', NULL, NULL, NULL, NULL, '2021-12-23 06:26:04', '2021-12-23 06:26:04'),
(24, 24, 'Bachelors', '2nd Year', 'Rajshahi University of Engineering and Technology.', '1903093', '3.57', '1st', '2022', '2017', 'Chowgacha Hazi Sarder Mortoz Ali High School.', '5.00', '2019', 'Chowgacha Degree College.', '5.00', NULL, NULL, NULL, NULL, '2021-12-23 06:48:39', '2022-04-07 05:55:26'),
(25, 25, 'Bachelors', '1st Year', 'Government M.M college ,jessore.', '100', '3.45', NULL, '2020', '2017', 'Chowgacha sara pilot secondary girls high school.', '4.50', '2019', 'Chowgacha Mridhapara Woman college', '4.83', NULL, NULL, NULL, NULL, '2021-12-23 08:07:46', '2021-12-23 08:07:46'),
(26, 26, 'Diploma', NULL, 'Rangpur polytechnic Institute,Rangpur', 'Roll.305354', '3.71', '8', '2020', '2016', 'Satdorga nessariya kamil (M.A) Madrasha', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-23 14:42:51', '2021-12-23 14:42:51'),
(27, 27, 'Masters', '1st Year', 'University of Dhaka', '801826053', '3.35', '1st', '2021', '2010', 'Borni Ramkrishnapur High School', '5.00', '2012', 'Katgara College', '4.90', NULL, NULL, NULL, NULL, '2021-12-23 15:47:12', '2021-12-25 05:38:23'),
(28, 28, 'School', 'Class-10', 'BALABARI HAT HIGH SCHOOL', 'ROLL: 221521', '5.00', NULL, '2020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-25 06:57:05', '2021-12-25 06:57:05'),
(29, 29, 'Masters', '1st Year', 'Comilla University.', 'Third', '3.74', '1st', '2022', '2013', 'Lakshmipur Govt. Girls\' high school.', '5.00', '2015', 'Lakshmipur Govt. College', '4.50', NULL, NULL, NULL, NULL, '2021-12-25 15:22:11', '2021-12-25 15:23:44'),
(30, 30, 'School', 'Class-10', 'CHOUGACHHA SARA PILOT SECONDARY GIRLS SCHOOL', '02', '4.79', NULL, '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-26 05:02:57', '2021-12-26 05:02:57'),
(31, 31, 'Bachelors', '2nd Year', 'Department of Bangla, DU', '14', '3.33', '3rd', '2021', '2017', 'Charkawna Bahumukhi High School', '5.00', '2019', 'Pakundia Govt. College', '4.83', NULL, NULL, NULL, NULL, '2021-12-26 07:25:33', '2021-12-26 07:25:33'),
(32, 32, 'Bachelors', '2nd Year', 'Chittagong Medical College', '85', '5.00', NULL, '2021', '2017', 'I.E.T Govt. High School', '5.00', '2019', 'Govt. Tolaram College', '5.00', NULL, NULL, NULL, NULL, '2021-12-27 09:48:31', '2021-12-27 09:48:31'),
(33, 33, 'Bachelors', '4th Year', 'Jahangirnagar Univeristy', '6th', '3.62', 'no', '2023', '2014', 'Lakshmipur Govt. Girls\' High School', '5', '2016', 'Lakshmipur Govt. College', '5', NULL, NULL, NULL, NULL, '2021-12-28 14:16:09', '2021-12-28 14:16:09'),
(34, 34, 'Masters', '1st Year', 'Jashore University of Science & Technology', 'Msc- 181226', '3.20', '1st', '2021', '2011', 'Marua Yousuf Ali Khan High School', '4.50', '2013', 'Chowgacha Totikul Islam Powro College', '4.70', NULL, NULL, NULL, NULL, '2021-12-29 05:34:26', '2021-12-29 18:01:41'),
(35, 35, 'Bachelors', '1st Year', 'Mugda medical college', 'Roll-61', '5', '1st', '2021', '2016', 'Kancherkole moriam nessa school', '5', '2019', 'Kushtia Government college', '5', NULL, NULL, NULL, NULL, '2021-12-29 06:00:12', '2021-12-29 06:00:12'),
(36, 36, 'School', 'Class-9', 'Ambattala Secondary School, Jessore', '02', '4.33', NULL, '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-29 06:01:32', '2021-12-29 06:01:32'),
(37, 37, 'School', 'Class-10', 'CHOUGACHHA SARA PILOT SECONDARY GIRLS SCHOOL', '07', '5.00', NULL, '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-29 07:00:35', '2021-12-29 07:32:58'),
(38, 38, 'School', 'Class-10', 'CHOUGACHHA GOVT SHADAT PILOT SECONDARY MODEL SCHOOL', '134', '5.00', NULL, '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-29 07:49:06', '2021-12-29 07:49:06'),
(39, 39, 'School', 'Class-1', 'JHICKERGACHHA SHAHID MASHIUR RAHMAN COLLEGE', '414', '2.82', NULL, '2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-29 15:20:03', '2021-12-29 15:20:03'),
(40, 40, 'Bachelors', '1st Year', 'Hajee Mohammad Danesh Science And Technology University, Dinajpur', '2008244', '3.50', 'I', '2022', '2016', 'Benipur Multipurpose High School', '5.00', '2019', 'Kushtia Islamia College, Kushtia', '4.42', NULL, NULL, NULL, NULL, '2021-12-31 08:43:52', '2021-12-31 08:43:52'),
(41, 41, 'School', 'Class-9', 'CHOUGACHHA SARA PILOT SECONDARY GIRLS SCHOOL', '04', '5.00', NULL, '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-31 09:56:55', '2021-12-31 09:56:55'),
(42, 42, 'Bachelors', '1st Year', 'Hajee Mohammad Danesh Science & Technology University', 'Student ID: 2007420', '3.34', '2', '2020', '2017', 'R.G.P. High School', '4.86', '2019', 'Pirgonj Government College', '4.67', NULL, NULL, NULL, NULL, '2022-01-01 09:48:07', '2022-03-26 00:22:41'),
(43, 43, 'School', 'Class-10', 'Akij foundation school & collage', '13', '4.39', '1st', '2022', '2019', 'Stamford school and collage', '4.89', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-03 16:57:22', '2022-01-03 16:57:22'),
(44, 44, 'College', 'Class-12', 'PASHAPOLE AMJAMTOLA MODEL COLLEGE(115715)', '213523', '4.92', NULL, '2020', '2018', 'MUKTERPUR AM-JATOLA SECONDARY SCHOOL', '4.94', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-08 06:16:34', '2022-01-08 06:16:34'),
(45, 45, 'School', 'Class-10', 'Lalkuthi Girls\' High School & College', 'roll: 1', '5.00', 'completed', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-08 14:36:22', '2022-01-08 14:36:22'),
(46, 46, 'College', 'Class-11', 'Tariqul Islam Pawro College', '505', '5.00', '1st', '2021', '2021', 'Marua Yusup Khan School And College(115669)', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-09 06:15:07', '2022-01-09 06:15:07'),
(47, 47, 'College', 'Class-11', 'Tariqul Islam Pawro College', '506', '5.00', '1st', '2021', '2021', 'Marua Yusup Khan School And College(115669)', '4.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-09 06:22:56', '2022-01-09 06:22:56'),
(48, 48, 'School', 'Class-8', 'CHOUGACHHA SARA PILOT SECONDARY GIRLS SCHOOL', '05', '5.00', NULL, '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-11 11:01:51', '2022-01-11 11:01:51'),
(49, 49, 'School', 'Class-7', 'CHOUGACHHA SARA PILOT SECONDARY GIRLS SCHOOL', '7', '5.00', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-12 10:23:02', '2022-01-25 14:20:52'),
(50, 106, 'Bachelors', '3rd Year', 'SDFGHJK', '2345678', '3', '12', '2022', '2020', 'ERTYU', '4.29', '2020', 'SDFGHJK', '3', NULL, NULL, NULL, NULL, '2022-01-25 14:19:33', '2022-01-25 14:19:33'),
(52, 77, 'Bachelors', '2nd Year', 'Dhaka  University of Engineering &Technology', '174018', '3.36', '2nd Semester', '2021', '2012', 'Benipur Multilateral High School', '4.88', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-25 14:19:33', '2022-01-27 00:45:45'),
(53, 98, 'Bachelors', '2nd Year', 'Jahangirnagar university', '1716', '3.77', '3', '2022', '2017', 'Benipur secondery school', '5', '2019', 'Kancherkole college', '5', NULL, NULL, NULL, NULL, '2022-01-25 14:19:33', '2022-01-27 00:56:08'),
(54, 108, 'Bachelors', '2nd Year', 'Jahangirnagar university', '1900', NULL, 'Third', '2022', '2017', 'Benipur secondery school', '5.0', '2019', 'Kancherkole college', '5.0', NULL, NULL, NULL, NULL, '2022-01-25 22:32:42', '2022-01-25 22:32:42'),
(55, 109, 'School', 'Class-1', 'iName', 'ID', '-9.99', '4', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-25 23:27:18', '2022-01-25 23:27:18'),
(56, 110, 'Bachelors', '1st Year', 'Islamic University, Kushtia', 'Roll:1904071', '3.35', '2nd semester', '2022', '2017', 'Kancherkole Moriumnesa girl\'s high school', '5.00', '2019', 'Kancherkole College', '5.00', NULL, NULL, NULL, NULL, '2022-01-26 00:16:51', '2022-01-26 00:16:51'),
(57, 111, 'Bachelors', '2nd Year', 'Islamic University', '1825059', '3.30', 'Fourth', '2022', '2016', 'Benipur  Secondary School', '4.67', '2018', 'Sailkupa  City  Degree  College', '3.67', NULL, NULL, NULL, NULL, '2022-01-26 06:01:44', '2022-01-26 06:01:44'),
(58, 112, 'Bachelors', '2nd Year', 'Islamic university', '1805008', '2.95', 'Fourth', '2022', '2016', 'Benipur secondary school', '4.50', '2018', 'Kancherkole college', '4.08', NULL, NULL, NULL, NULL, '2022-01-27 04:34:30', '2022-01-27 04:34:30'),
(59, 113, 'Bachelors', '4th Year', 'Bangladesh University of Textiles', '2016-1-4-001', '3.51', '8th', '2022', '2013', 'Sher-E-Bangla Nagar Government Boys High School', '5.00', '2015', 'BCIC College', '5.00', NULL, NULL, NULL, NULL, '2022-01-27 04:42:57', '2022-01-27 04:42:57'),
(60, 114, 'Bachelors', '2nd Year', 'Begum Rokeya University, Rangpur', 'ID:1908049', '3.48', 'Third', '2022', '2016', 'Benipur High School', '4.67', '2018', 'Kancher Kole College', '4.75', NULL, NULL, NULL, NULL, '2022-01-27 22:05:39', '2022-03-03 01:16:37'),
(61, 115, 'College', 'Class-12', 'Dhaka City College', '13', '5.00', NULL, '2021', '2020', 'Kancherkol Mariam Nesa Girls High School', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-27 23:46:34', '2022-01-27 23:46:34'),
(62, 116, 'School', 'Class-10', 'Benipur secondary school', '01', '4.71', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-27 23:48:45', '2022-01-28 23:52:16'),
(63, 117, 'College', 'Class-11', 'Baf shaheen collage jessore', '57', NULL, NULL, '2022', '2020', 'Benipur  secondary school', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-28 03:04:50', '2022-01-28 03:04:50'),
(64, 118, 'College', 'Class-12', 'Shekpara d.m. college', '052', '5.00', NULL, '2022', '2020', 'Benipur Secondary school', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-28 05:19:16', '2022-01-28 05:19:16'),
(65, 119, 'School', 'Class-10', 'Benipur secondary school', '2', '5.00', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-28 05:41:28', '2022-01-28 05:41:28'),
(66, 120, 'School', 'Class-10', 'Benipur secondary school', '13', '4.83', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-28 05:54:17', '2022-01-28 05:54:17'),
(67, 121, 'Diploma', NULL, 'Infra Polytechnic Institute, Barisal', '160586', '3', '7th', '2021', '2016', 'West Bapta Ideal High School, Bhola', '4.24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-28 09:10:44', '2022-01-28 09:10:44'),
(68, 122, 'Bachelors', '1st Year', 'University of Rajshahi', 'N/A', '00', '1st', '2020', '2018', 'Malbandha High School', '5.00', '2020', 'Govt.Abdul Karim Sarkar College', '5.00', NULL, NULL, NULL, NULL, '2022-01-28 21:58:29', '2022-01-28 22:00:39'),
(69, 123, 'College', 'Class-12', 'Police lines school and college,kushtia', '106/4347', NULL, NULL, '2022', '2020', 'Benipur high school', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-28 22:30:23', '2022-01-28 22:30:23'),
(70, 124, 'School', 'Class-10', 'Panti girls school', '08', NULL, NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-28 23:58:26', '2022-01-28 23:58:26'),
(71, 125, 'Bachelors', '3rd Year', 'Islamic university,kushtia', '1704047', '3.30', '5th', '2022', '2015', 'Benifur secondary school', '4.50', '2017', 'Kancherkole,college', '4.42', NULL, NULL, NULL, NULL, '2022-01-29 00:12:32', '2022-01-29 08:25:36'),
(72, 126, 'School', 'Class-10', 'Benipur secondary  school.', '10', NULL, NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-29 00:28:19', '2022-01-29 00:28:19'),
(75, 129, 'College', 'Class-12', 'Panti Degree Collehe', '02', '0.00', 'N/A', '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-29 02:12:16', '2022-01-29 02:12:16'),
(76, 130, 'School', 'Class-10', 'Benipur Secondary school', '10', '5.00', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-29 05:37:54', '2022-01-29 05:37:54'),
(77, 131, 'School', 'Class-10', 'Panti secondary school', '27', '4.86', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-30 00:06:06', '2022-01-30 00:06:06'),
(78, 132, 'School', 'Class-10', 'Benipur secondery school', '08', NULL, NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-30 04:00:40', '2022-01-30 04:00:40'),
(79, 133, 'School', 'Class-10', 'Benipur Secondary school', '07', NULL, NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-30 05:32:30', '2022-01-30 05:32:30'),
(80, 134, 'College', 'Class-12', 'Police lines school and College, kushtia', '106/4347', '5.00', 'Nill', '2022', '2020', 'Benipur high school', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-30 06:58:42', '2022-01-30 06:58:42'),
(81, 135, 'School', 'Class-10', 'Panti Girls High School', '23', '0.00', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 00:37:13', '2022-01-31 00:37:13'),
(82, 136, 'School', 'Class-10', 'Panti Girls High School', '13', '0.00', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 01:04:36', '2022-01-31 01:04:36'),
(83, 137, 'Diploma', NULL, 'Nursing Institute, Jhenaidah', '41', '9.64', '1st semester', '2022', '2018', 'Nandanpur High School', '4.89', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-02 07:42:10', '2022-02-02 07:42:10'),
(84, 138, 'Diploma', NULL, 'Nursing Institute, Jhenaidah', '41', '9.64', '1st semester', '2022', '2018', 'Nandanpur High School', '4.89', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-02 07:42:11', '2022-02-02 07:42:11'),
(85, 139, 'School', 'Class-10', 'Atwary Pilot High School', '11', '5.00', 'S.S.C Batch 2021', '2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-03 22:32:26', '2022-02-03 22:32:26'),
(86, 140, 'Bachelors', '1st Year', 'Dhaka university', 'AA-111-107', '00', '1st', '2022', '2018', 'Thanahat A U pilot high school', '4.56', '2020', 'Collectorate school and college rangpur', '4.58', NULL, NULL, NULL, NULL, '2022-02-06 00:36:07', '2022-02-08 06:16:29'),
(87, 141, 'College', 'Class-11', 'Netrakona govt mohila College', '5', '5.00', '1st', '2022', '2021', 'Chowdhury tale hossen michiljan academy', '4.50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-08 13:13:35', '2022-02-08 13:13:35'),
(88, 142, 'Bachelors', '2nd Year', 'Chittagong University Of Engineering and Technology', '1802121', '3.60', '4', '2022', '2016', 'Bozra L.K Amin High School & College', '5.00', '2018', 'Kurigram Government College', '5.00', NULL, NULL, NULL, NULL, '2022-02-10 07:48:31', '2022-02-10 07:48:31'),
(89, 143, 'College', 'Class-11', 'Lion School & College, Rangpur', '00', '0.00', '01', '2022', '2021', 'Thanahat Pilot Girls\' High School', '5.00', '2021', 'Thanahat Pilot Girls\' High School', NULL, NULL, NULL, NULL, NULL, '2022-02-11 00:29:31', '2022-02-11 00:29:31'),
(90, 144, 'Bachelors', '1st Year', 'Imperial College of Engineering, Khulna', 'CSE-2038520113', '0', '1st', '2022', '2017', 'West Bapta Ideal High School, Bhola', '4.11', '2019', 'Bhola Government College, Bhola', '3.91', NULL, NULL, NULL, NULL, '2022-02-12 00:25:22', '2022-02-12 00:26:08'),
(91, 145, 'Diploma', NULL, 'Institute of health technology', '21', '777', '2nd year', '2022', '2019', 'Madhupur Secondary School', '4.61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-12 03:32:57', '2022-02-12 03:32:57'),
(92, 146, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '180061', '4.67', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-12 08:16:02', '2022-02-12 08:16:02'),
(93, 147, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '190078', '3.67', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 00:02:33', '2022-02-13 00:02:33'),
(94, 148, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '180050', '4.50', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 00:15:30', '2022-02-13 00:15:30'),
(95, 149, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '6', '4.58', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 00:48:02', '2022-02-13 00:48:02'),
(96, 150, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '1800239', '2.75', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 01:07:04', '2022-02-13 01:07:04'),
(97, 151, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '202015', '4.57', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 01:20:39', '2022-02-13 01:20:39'),
(98, 152, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '180037', '3.67', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 01:31:43', '2022-02-13 01:31:43'),
(99, 153, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '180031', '4.58', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 01:45:48', '2022-02-13 01:45:48'),
(100, 154, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '1800277', '4.58', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 01:58:07', '2022-02-13 01:58:07'),
(101, 155, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '180046', '4.08', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 02:13:52', '2022-02-13 02:13:52'),
(102, 156, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '1800238', '4.33', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 02:27:07', '2022-02-13 02:27:07'),
(103, 157, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '1800270', '4.08', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 03:35:10', '2022-02-13 03:35:10'),
(104, 158, 'School', 'Class-9', 'Sohag Swapnadhara Pathshala', '1800170', '4.25', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 03:49:22', '2022-02-13 03:49:22'),
(105, 159, 'School', 'Class-9', 'Sohag Swapnadhara Pathshala', '1800373', '4.83', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 07:19:01', '2022-02-13 07:19:01'),
(106, 160, 'School', 'Class-9', 'Sohag Swapnadhara Pathshala', '190033', '4.58', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 07:37:41', '2022-02-13 07:37:41'),
(107, 161, 'School', 'Class-9', 'Sohag Swapnadhara Pathshala', '180059', '3.92', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 07:51:12', '2022-02-13 07:51:12'),
(108, 162, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '180018', '3.75', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 08:08:32', '2022-02-13 08:08:32'),
(109, 163, 'College', 'Class-12', 'Sohag Swapnadhara Pathshala', '222030', '4.06', NULL, '2022', '2020', 'Rupnagar Adarshaw School', '4.05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 21:41:03', '2022-02-13 21:41:03'),
(110, 164, 'College', 'Class-11', 'Sohag Swapnadhara Pathshala', '180013', '4.67', NULL, '2022', '2021', 'Rupnagar Adarshaw School', '4.66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 22:01:19', '2022-02-13 22:01:19'),
(111, 165, 'College', 'Class-11', 'Sohag Swapnadhara Pathshala', '180014', '2.94', NULL, '2022', '2021', 'Rupnagar Adarshaw School', '2.92', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 22:12:49', '2022-02-13 22:12:49'),
(112, 166, 'College', 'Class-11', 'Sohag Swapnadhara Pathshala', '180011', '2.11', NULL, '2022', '2021', 'Rupnagar Adarshaw School', '2.1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 22:23:47', '2022-02-13 22:23:47'),
(113, 167, 'Diploma', NULL, 'Kurigram Polytechnic Institute', '6/CMT/308202', '3.50', '6', '2022', '2016', 'Thanahat Pilot Girls High School', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 22:29:27', '2022-02-13 22:29:27'),
(114, 168, 'School', 'Class-9', 'Sohag Swapnadhara Pathshala', '180036', '3.1', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 22:34:23', '2022-02-13 22:34:23'),
(115, 169, 'School', 'Class-9', 'Sohag Swapnadhara Pathshala', '190076', '3.67', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-13 22:47:34', '2022-02-13 22:47:34'),
(116, 170, 'School', 'Class-9', 'Sohag Swapnadhara Pathshala', '190077', '2.67', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-14 01:41:50', '2022-02-14 01:41:50'),
(117, 171, 'School', 'Class-9', 'Sohag Swapnadhara Pathshala', '180054', '4.83', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-14 01:54:05', '2022-02-14 01:54:05'),
(118, 172, 'School', 'Class-9', 'Sohag Swapnadhara Pathshala', '180053', '5.58', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-14 02:06:48', '2022-02-14 02:06:48'),
(119, 173, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '180021', '4.49', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-14 02:23:24', '2022-02-14 02:23:24'),
(120, 174, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '202089', '4.00', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-14 02:30:38', '2022-02-14 02:30:38'),
(121, 175, 'School', 'Class-9', 'Sohag Swapnadhara Pathshala', '1800236', '3.83', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-14 02:59:00', '2022-02-14 02:59:00'),
(122, 176, 'School', 'Class-10', 'Sohag Swapnadhara Pathshala', '180022', '3.83', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-14 03:11:23', '2022-02-14 03:11:23'),
(123, 177, 'Bachelors', '2nd Year', 'Government Titumir College', 'Roll 33', '2.88', NULL, '2019', '2016', 'Ulipur Gunaigach pilot high school', '5.00', '2018', 'Ulipur Moharani Sornomoi school & college, ulipur', '4.25', NULL, NULL, NULL, NULL, '2022-02-14 03:13:22', '2022-02-14 03:13:22'),
(124, 178, 'College', 'Class-11', 'Sohag Swapnadhara Pathshala', '180014', '2.56', NULL, '2022', '2021', 'Rupnagar Adarshaw School', '2.55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-14 03:19:55', '2022-02-14 03:19:55'),
(125, 179, 'College', 'Class-11', 'Sohag Swapnadhara Pathshala', '18009', '2.33', NULL, '2022', '2021', 'Rupnagar Adarshaw School', '4.31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-14 03:27:21', '2022-02-14 03:27:21'),
(126, 180, 'College', 'Class-11', 'Sohag Swapnadhara Pathshala', '180012', '3.78', NULL, '2022', '2021', 'Rupnagar Adarshaw School', '3.77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-14 03:35:30', '2022-02-14 03:35:30'),
(127, 181, 'College', 'Class-12', 'St. Joseph Higher Secondary School', 'ID: Sj20-11v-131', '5.00', NULL, '2022', '2020', 'N.S. Amin Residential School', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-14 04:17:31', '2022-02-14 04:17:31'),
(128, 182, 'Masters', '1st Year', 'Govt. M.M. College, Jashore', '1919016', '0.00', 'Year system', '2022', '2013', 'Govt. Girl\'s High School, Jashore', '4.19', '2015', 'Govt. Mohila College, Jashore', '4.50', '2019', 'Govt. M.M. College, Jashore', 'Political  Science', '3.08', '2022-02-15 03:39:04', '2022-03-13 09:28:11'),
(129, 183, 'College', 'Class-11', 'Mirza Golam Hafiz Degree College', '10', '5.00', 'N/A', '2022', '2021', 'Atwary Pilot High School', '5.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 04:48:31', '2022-02-15 04:48:31'),
(130, 184, 'College', 'Class-11', 'Holyland College Dinajpur', '10', '3.85', '1st', '2022', '2021', 'Atwari Model Pilot High School', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-15 04:53:43', '2022-02-15 08:18:39'),
(131, 185, 'Bachelors', '1st Year', 'University of Dhaka', 'জস-108-81', '75.25', NULL, '2022', '2018', 'M.N.Academy, Nagarkanda,Faridpur.', '5.00', '2020', 'Govt.Rajendra College,Faridpur.', '5.00', NULL, NULL, NULL, NULL, '2022-02-19 02:03:13', '2022-02-25 20:04:25'),
(132, 186, 'College', 'Class-11', 'Rampur Fazil Madrasa', '11', '4.69', 'dakhil', '2022', '2021', 'Rampur fazil Madrasah', '4.69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 02:16:19', '2022-02-19 02:16:19'),
(134, 188, 'Bachelors', '2nd Year', 'Govt. M M College,Jashore', '18228024904', '2.97', NULL, '2022', '2015', 'M.S.T.P Girls High School and  College, Jashore', '5.00', '2017', 'Govt. Mohila College, Jashore', '4.08', NULL, NULL, NULL, NULL, '2022-02-20 06:47:09', '2022-02-20 06:47:09'),
(135, 189, 'Bachelors', '1st Year', 'University of Rajshahi', 'Merit:26 (Group:1),Unit:A', NULL, NULL, '2022', '2018', 'Talma Nazimuddin High School,Nagarkanda, Faridpur.', '5.00', '2020', 'Alhaj Abdul Khaleque  College,Khaleque Bazar,Bakhunda,Faridpur.', '5.00', NULL, NULL, NULL, NULL, '2022-02-20 08:39:13', '2022-02-20 08:39:13'),
(136, 190, 'School', 'Class-8', 'I.E.T', '23', '4.99', NULL, '2022', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-22 22:04:24', '2022-02-22 22:04:24'),
(137, 191, 'College', 'Class-12', 'Begum Badrunnessa Govt Girls\' College', '10574', '4.58', 'HSC', '2022', '2019', 'A. K. School and College', '4.17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 06:12:10', '2022-03-02 06:12:10'),
(138, 192, 'Bachelors', '4th Year', 'Begum badrunnesa govt. girls\' college dhaka', '6019', '2.73', NULL, '2022', '2015', 'Mohammadpur girls high school', '3.61', '2017', 'Lalmatia mohila college', '3.75', NULL, NULL, NULL, NULL, '2022-03-03 10:10:10', '2022-03-03 10:10:10'),
(139, 193, 'College', 'Class-12', 'Duaripara Government College', 'HSC roll : 107951', '4.50', 'HSC passed', '2022', '2019', 'Sohag Swapnadhara Pathshala', '4.11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 11:36:38', '2022-03-07 11:36:38');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `documentable_id` bigint(20) NOT NULL,
  `documentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `tenant_id`, `documentable_id`, `documentable_type`, `document_title`, `type`, `document_url`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, 2, 'App\\Models\\Student', '500_F_216076387_P4tyi30vdXtstTvX9bv0lackbwzNDm7S', 'Birth Certificate/NID', '2_1637753923_500_F_216076387_P4tyi30vdXtstTvX9bv0lackbwzNDm7S.jpg', '1', '2021-11-24 11:38:43', '2021-11-24 11:38:43'),
(3, NULL, 3, 'App\\Models\\Student', '1638045384326903988806702274274', 'HSC Certificate', '3_1638045408_1638045384326903988806702274274.jpg', '1', '2021-11-27 20:36:48', '2021-11-27 20:36:48'),
(4, NULL, 5, 'App\\Models\\Student', 'IMG_20211207_133054', 'SSC Certificate', '5_1638869271_IMG_20211207_133054.jpg', '1', '2021-12-07 09:27:51', '2021-12-07 09:27:51'),
(5, NULL, 6, 'App\\Models\\Student', 'IMG_20211215_213903', 'Birth Certificate/NID', '6_1639582788_IMG_20211215_213903.jpg', '1', '2021-12-15 15:39:48', '2021-12-15 15:39:48'),
(6, NULL, 6, 'App\\Models\\Student', 'IMG_20211215_214704', 'SSC Certificate', '6_1639583245_IMG_20211215_214704.jpg', '1', '2021-12-15 15:47:25', '2021-12-15 15:47:25'),
(7, NULL, 6, 'App\\Models\\Student', 'IMG_20211215_214922', 'Studentship Certificate', '6_1639583382_IMG_20211215_214922.jpg', '1', '2021-12-15 15:49:42', '2021-12-15 15:49:42'),
(8, NULL, 6, 'App\\Models\\Student', 'IMG_20211215_214853', 'HSC Certificate', '6_1639583418_IMG_20211215_214853.jpg', '1', '2021-12-15 15:50:18', '2021-12-15 15:50:18'),
(9, NULL, 7, 'App\\Models\\Student', '163981348463887853224311362826', 'Birth Certificate/NID', '7_1639813523_163981348463887853224311362826.jpg', '1', '2021-12-18 07:45:23', '2021-12-18 07:45:23'),
(10, NULL, 7, 'App\\Models\\Student', '16398135781295052403112411132629', 'Studentship Certificate', '7_1639813607_16398135781295052403112411132629.jpg', '1', '2021-12-18 07:46:47', '2021-12-18 07:46:47'),
(11, NULL, 8, 'App\\Models\\Student', 'IMG_20211218_155957', 'Birth Certificate/NID', '8_1639821675_IMG_20211218_155957.jpg', '1', '2021-12-18 10:01:15', '2021-12-18 10:01:15'),
(12, NULL, 8, 'App\\Models\\Student', 'IMG_20211218_162545', 'SSC Certificate', '8_1639823204_IMG_20211218_162545.jpg', '1', '2021-12-18 10:26:44', '2021-12-18 10:26:44'),
(13, NULL, 8, 'App\\Models\\Student', 'IMG_20211218_164333', 'HSC Certificate', '8_1639824259_IMG_20211218_164333.jpg', '1', '2021-12-18 10:44:19', '2021-12-18 10:44:19'),
(14, NULL, 9, 'App\\Models\\Student', 'HSC', 'Other', '9_1639827707_HSC.jpg', '1', '2021-12-18 11:41:47', '2021-12-18 11:41:47'),
(15, NULL, 12, 'App\\Models\\Student', 'IMG_20211219_132849', 'SSC Certificate', '12_1639898984_IMG_20211219_132849.jpg', '1', '2021-12-19 07:29:44', '2021-12-19 07:29:44'),
(16, NULL, 11, 'App\\Models\\Student', '16399035003742073177593365833777', 'Other', '11_1639903572_16399035003742073177593365833777.jpg', '1', '2021-12-19 08:46:12', '2021-12-19 08:46:12'),
(17, NULL, 13, 'App\\Models\\Student', 'IMG_20211219_132849', 'SSC Certificate', '13_1639921380_IMG_20211219_132849.jpg', '1', '2021-12-19 13:43:00', '2021-12-19 13:43:00'),
(18, NULL, 13, 'App\\Models\\Student', 'IMG_20211219_132849', 'SSC Certificate', '13_1639921457_IMG_20211219_132849.jpg', '1', '2021-12-19 13:44:17', '2021-12-19 13:44:17'),
(20, NULL, 14, 'App\\Models\\Student', 'IMG_20211219_185345_421', 'HSC Certificate', '14_1639922506_IMG_20211219_185345_421.jpg', '1', '2021-12-19 14:01:46', '2021-12-19 14:01:46'),
(21, NULL, 15, 'App\\Models\\Student', 'IMG-20211214-WA0001', 'Birth Certificate/NID', '15_1639987053_IMG-20211214-WA0001.jpeg', '1', '2021-12-20 07:57:33', '2021-12-20 07:57:33'),
(22, NULL, 16, 'App\\Models\\Student', 'ssc', 'SSC Certificate', '16_1639990465_ssc.jpg', '1', '2021-12-20 08:54:25', '2021-12-20 08:54:25'),
(23, NULL, 16, 'App\\Models\\Student', 'hsc', 'HSC Certificate', '16_1639990483_hsc.jpg', '1', '2021-12-20 08:54:43', '2021-12-20 08:54:43'),
(24, NULL, 16, 'App\\Models\\Student', 'jonmo', 'Birth Certificate/NID', '16_1639990596_jonmo.jpg', '1', '2021-12-20 08:56:36', '2021-12-20 08:56:36'),
(25, NULL, 17, 'App\\Models\\Student', 'nid', 'Birth Certificate/NID', '17_1640000897_nid.jpg', '1', '2021-12-20 11:48:17', '2021-12-20 11:48:17'),
(26, NULL, 17, 'App\\Models\\Student', 'Honours Reg', 'Studentship Certificate', '17_1640000969_Honours Reg.jpg', '1', '2021-12-20 11:49:29', '2021-12-20 11:49:29'),
(27, NULL, 17, 'App\\Models\\Student', 'ssc', 'SSC Certificate', '17_1640000982_ssc.jpg', '1', '2021-12-20 11:49:42', '2021-12-20 11:49:42'),
(28, NULL, 17, 'App\\Models\\Student', 'hsc', 'HSC Certificate', '17_1640000998_hsc.jpg', '1', '2021-12-20 11:49:58', '2021-12-20 11:49:58'),
(29, NULL, 18, 'App\\Models\\Student', 'IMG_20211221_104447', 'HSC Certificate', '18_1640061973_IMG_20211221_104447.jpg', '1', '2021-12-21 04:46:13', '2021-12-21 04:46:13'),
(30, NULL, 20, 'App\\Models\\Student', 'NID', 'Birth Certificate/NID', '20_1640070336_NID.pdf', '1', '2021-12-21 07:05:36', '2021-12-21 07:05:36'),
(32, NULL, 21, 'App\\Models\\Student', 'received_303283231556262', 'Other', '21_1640097789_received_303283231556262.jpeg', '1', '2021-12-21 14:43:09', '2021-12-21 14:43:09'),
(33, NULL, 21, 'App\\Models\\Student', 'IMG_20211221_203541', 'SSC Certificate', '21_1640097842_IMG_20211221_203541.jpg', '1', '2021-12-21 14:44:02', '2021-12-21 14:44:02'),
(34, NULL, 21, 'App\\Models\\Student', 'received_617426202815637', 'Other', '21_1640097958_received_617426202815637.jpeg', '1', '2021-12-21 14:45:58', '2021-12-21 14:45:58'),
(35, NULL, 22, 'App\\Models\\Student', '01011443', 'Birth Certificate/NID', '22_1640149870_01011443.JPG', '1', '2021-12-22 05:11:10', '2021-12-22 05:11:10'),
(36, NULL, 22, 'App\\Models\\Student', 'FATHER NID CARD', 'Other', '22_1640150169_FATHER NID CARD.jpg', '1', '2021-12-22 05:16:09', '2021-12-22 05:16:09'),
(37, NULL, 22, 'App\\Models\\Student', 'MOTHER NID CARD', 'Other', '22_1640150187_MOTHER NID CARD.jpg', '1', '2021-12-22 05:16:27', '2021-12-22 05:16:27'),
(38, NULL, 23, 'App\\Models\\Student', 'IMG_20211223_124447', 'Birth Certificate/NID', '23_1640241980_IMG_20211223_124447.jpg', '1', '2021-12-23 06:46:20', '2021-12-23 06:46:20'),
(39, NULL, 23, 'App\\Models\\Student', 'IMG_20211223_124953', 'HSC Certificate', '23_1640242238_IMG_20211223_124953.jpg', '1', '2021-12-23 06:50:38', '2021-12-23 06:50:38'),
(40, NULL, 24, 'App\\Models\\Student', 'SSC Certificate ', 'SSC Certificate', '24_1640242277_SSC Certificate .jpg', '1', '2021-12-23 06:51:17', '2021-12-23 06:51:17'),
(41, NULL, 24, 'App\\Models\\Student', 'My id card- front', 'Birth Certificate/NID', '24_1640242367_My id card- front.jpg', '1', '2021-12-23 06:52:47', '2021-12-23 06:52:47'),
(42, NULL, 23, 'App\\Models\\Student', 'IMG_20211223_125252', 'SSC Certificate', '23_1640242398_IMG_20211223_125252.jpg', '1', '2021-12-23 06:53:18', '2021-12-23 06:53:18'),
(43, NULL, 7, 'App\\Models\\Student', 'SSC result.', 'SSC Certificate', '7_1640363185_SSC result..jpg', '1', '2021-12-24 16:26:25', '2021-12-24 16:26:25'),
(44, NULL, 7, 'App\\Models\\Student', 'HSC Result.', 'HSC Certificate', '7_1640363345_HSC Result..jpg', '1', '2021-12-24 16:29:05', '2021-12-24 16:29:05'),
(45, NULL, 7, 'App\\Models\\Student', 'B.Pharm(Hons),Part-2', 'Other', '7_1640363579_B.Pharm(Hons),Part-2.jpg', '1', '2021-12-24 16:32:59', '2021-12-24 16:32:59'),
(52, NULL, 27, 'App\\Models\\Student', 'IMG_20211225_114524', 'Birth Certificate/NID', '27_1640411273_IMG_20211225_114524.jpg', '1', '2021-12-25 05:47:53', '2021-12-25 05:47:53'),
(53, NULL, 27, 'App\\Models\\Student', 'IMG_20211225_114503', 'Studentship Certificate', '27_1640411294_IMG_20211225_114503.jpg', '1', '2021-12-25 05:48:14', '2021-12-25 05:48:14'),
(54, NULL, 27, 'App\\Models\\Student', 'IMG_20211223_215158', 'SSC Certificate', '27_1640411320_IMG_20211223_215158.jpg', '1', '2021-12-25 05:48:40', '2021-12-25 05:48:40'),
(55, NULL, 27, 'App\\Models\\Student', 'IMG_20211223_215229', 'HSC Certificate', '27_1640411341_IMG_20211223_215229.jpg', '1', '2021-12-25 05:49:01', '2021-12-25 05:49:01'),
(56, NULL, 27, 'App\\Models\\Student', 'IMG_20211223_215458', 'Other', '27_1640411382_IMG_20211223_215458.jpg', '1', '2021-12-25 05:49:42', '2021-12-25 05:49:42'),
(57, NULL, 28, 'App\\Models\\Student', '269445410_4938095859568356_3550877628214284456_n', 'SSC Certificate', '28_1640416428_269445410_4938095859568356_3550877628214284456_n.jpg', '1', '2021-12-25 07:13:48', '2021-12-25 07:13:48'),
(59, NULL, 28, 'App\\Models\\Student', '269273170_600108251072485_7211725691249393029_n', 'Birth Certificate/NID', '28_1640416515_269273170_600108251072485_7211725691249393029_n.jpg', '1', '2021-12-25 07:15:15', '2021-12-25 07:15:15'),
(60, NULL, 2, 'App\\Models\\Student', '33310655331_a5fae86c22_h-768x492', 'Other', '2_1640446263_33310655331_a5fae86c22_h-768x492.jpg', '1', '2021-12-25 15:31:03', '2021-12-25 15:31:03'),
(61, NULL, 29, 'App\\Models\\Student', 'SSC certificate ', 'SSC Certificate', '29_1640446491_SSC certificate .jpg', '1', '2021-12-25 15:34:51', '2021-12-25 15:34:51'),
(62, NULL, 29, 'App\\Models\\Student', 'HSC certificate ', 'HSC Certificate', '29_1640446691_HSC certificate .jpg', '1', '2021-12-25 15:38:11', '2021-12-25 15:38:11'),
(63, NULL, 29, 'App\\Models\\Student', 'B.Sc Certificate ', 'Other', '29_1640446928_B.Sc Certificate .jpg', '1', '2021-12-25 15:42:08', '2021-12-25 15:42:08'),
(64, NULL, 30, 'App\\Models\\Student', 'CCE12262021', 'Other', '30_1640514211_CCE12262021.pdf', '1', '2021-12-26 10:23:31', '2021-12-26 10:23:31'),
(65, NULL, 30, 'App\\Models\\Student', 'birth tonny', 'Birth Certificate/NID', '30_1640584708_birth tonny.jpg', '1', '2021-12-27 05:58:28', '2021-12-27 05:58:28'),
(66, NULL, 32, 'App\\Models\\Student', 'Screenshot_20211227-155410_Drive', 'SSC Certificate', '32_1640598963_Screenshot_20211227-155410_Drive.jpg', '1', '2021-12-27 09:56:03', '2021-12-27 09:56:03'),
(67, NULL, 32, 'App\\Models\\Student', 'Screenshot_20211227-155429_Drive', 'HSC Certificate', '32_1640598982_Screenshot_20211227-155429_Drive.jpg', '1', '2021-12-27 09:56:22', '2021-12-27 09:56:22'),
(68, NULL, 32, 'App\\Models\\Student', 'Screenshot_20211227-155454_Drive', 'Studentship Certificate', '32_1640598998_Screenshot_20211227-155454_Drive.jpg', '1', '2021-12-27 09:56:38', '2021-12-27 09:56:38'),
(69, NULL, 31, 'App\\Models\\Student', 'nid-6f272b53-620b-47ec-b8f0-a4b1de74a143', 'Birth Certificate/NID', '31_1640602086_nid-6f272b53-620b-47ec-b8f0-a4b1de74a143.pdf', '1', '2021-12-27 10:48:06', '2021-12-27 10:48:06'),
(70, NULL, 31, 'App\\Models\\Student', 'student id', 'Studentship Certificate', '31_1640602287_student id.pdf', '1', '2021-12-27 10:51:27', '2021-12-27 10:51:27'),
(71, NULL, 31, 'App\\Models\\Student', 'sscmarksheet', 'SSC Certificate', '31_1640602320_sscmarksheet.pdf', '1', '2021-12-27 10:52:00', '2021-12-27 10:52:00'),
(72, NULL, 31, 'App\\Models\\Student', 'hscmarksheet', 'HSC Certificate', '31_1640602343_hscmarksheet.pdf', '1', '2021-12-27 10:52:23', '2021-12-27 10:52:23'),
(73, NULL, 31, 'App\\Models\\Student', 'honours', 'Other', '31_1640602365_honours.pdf', '1', '2021-12-27 10:52:45', '2021-12-27 10:52:45'),
(74, NULL, 31, 'App\\Models\\Student', '27396_4', 'Other', '31_1640602604_27396_4.png', '1', '2021-12-27 10:56:44', '2021-12-27 10:56:44'),
(75, NULL, 33, 'App\\Models\\Student', 'HSC', 'Other', '33_1640702248_HSC.jpg', '1', '2021-12-28 14:37:28', '2021-12-28 14:37:28'),
(76, NULL, 33, 'App\\Models\\Student', 'SSC Marksheet', 'Other', '33_1640702276_SSC Marksheet.jpg', '1', '2021-12-28 14:37:56', '2021-12-28 14:37:56'),
(77, NULL, 34, 'App\\Models\\Student', 'Birth Certificate', 'Birth Certificate/NID', '34_1640756145_Birth Certificate.pdf', '1', '2021-12-29 05:35:45', '2021-12-29 05:35:45'),
(78, NULL, 36, 'App\\Models\\Student', '1', 'Other', '36_1640757920_1.jpg', '1', '2021-12-29 06:05:20', '2021-12-29 06:05:20'),
(79, NULL, 36, 'App\\Models\\Student', '2', 'Birth Certificate/NID', '36_1640758019_2.jpg', '1', '2021-12-29 06:06:59', '2021-12-29 06:06:59'),
(80, NULL, 37, 'App\\Models\\Student', 'ROTNA', 'Birth Certificate/NID', '37_1640761470_ROTNA.jpg', '1', '2021-12-29 07:04:30', '2021-12-29 07:04:30'),
(81, NULL, 38, 'App\\Models\\Student', 'SHOHAG', 'Birth Certificate/NID', '38_1640764221_SHOHAG.jpg', '1', '2021-12-29 07:50:21', '2021-12-29 07:50:21'),
(82, NULL, 35, 'App\\Models\\Student', 'IMG_20211212_112945', 'Other', '35_1640858139_IMG_20211212_112945.jpg', '1', '2021-12-30 09:55:39', '2021-12-30 09:55:39'),
(83, NULL, 41, 'App\\Models\\Student', 'ORPA 10', 'Birth Certificate/NID', '41_1640944790_ORPA 10.jpg', '1', '2021-12-31 09:59:50', '2021-12-31 09:59:50'),
(84, NULL, 42, 'App\\Models\\Student', 'IMG_20220101_183209', 'Birth Certificate/NID', '42_1641040358_IMG_20220101_183209.jpg', '1', '2022-01-01 12:32:38', '2022-01-01 12:32:38'),
(86, NULL, 24, 'App\\Models\\Student', 'HSC_Certificate ', 'HSC Certificate', '24_1641135586_HSC_Certificate .jpg', '1', '2022-01-02 14:59:46', '2022-01-02 14:59:46'),
(87, NULL, 43, 'App\\Models\\Student', '16412292674221524098701219618394', 'Birth Certificate/NID', '43_1641229369_16412292674221524098701219618394.jpg', '1', '2022-01-03 17:02:49', '2022-01-03 17:02:49'),
(88, NULL, 44, 'App\\Models\\Student', 'BRITH BANGLA copy', 'Birth Certificate/NID', '44_1641625930_BRITH BANGLA copy.jpg', '1', '2022-01-08 07:12:10', '2022-01-08 07:12:10'),
(89, NULL, 44, 'App\\Models\\Student', 'nid-2862260938', 'Birth Certificate/NID', '44_1641625996_nid-2862260938.pdf', '1', '2022-01-08 07:13:17', '2022-01-08 07:13:17'),
(90, NULL, 44, 'App\\Models\\Student', 'hsc reg', 'HSC Certificate', '44_1641626469_hsc reg.jpg', '1', '2022-01-08 07:21:09', '2022-01-08 07:21:09'),
(91, NULL, 44, 'App\\Models\\Student', 'ssc certificate', 'SSC Certificate', '44_1641626921_ssc certificate.jpg', '1', '2022-01-08 07:28:41', '2022-01-08 07:28:41'),
(92, NULL, 44, 'App\\Models\\Student', 'dhaka university', 'Other', '44_1641626958_dhaka university.jpg', '1', '2022-01-08 07:29:18', '2022-01-08 07:29:18'),
(93, NULL, 44, 'App\\Models\\Student', 'hsc markshit', 'HSC Certificate', '44_1641638860_hsc markshit.jpg', '1', '2022-01-08 10:47:40', '2022-01-08 10:47:40'),
(94, NULL, 44, 'App\\Models\\Student', 'dha university prement slip', 'Other', '44_1641638888_dha university prement slip.jpg', '1', '2022-01-08 10:48:08', '2022-01-08 10:48:08'),
(95, NULL, 45, 'App\\Models\\Student', 'CamScanner 01-08-2022 22.03_1', 'Birth Certificate/NID', '45_1641658594_CamScanner 01-08-2022 22.03_1.jpg', '1', '2022-01-08 16:16:34', '2022-01-08 16:16:34'),
(96, NULL, 45, 'App\\Models\\Student', 'CamScanner 01-08-2022 22.00_1', 'Other', '45_1641658622_CamScanner 01-08-2022 22.00_1.jpg', '1', '2022-01-08 16:17:02', '2022-01-08 16:17:02'),
(97, NULL, 45, 'App\\Models\\Student', 'CamScanner 01-08-2022 22.00_2', 'Other', '45_1641658646_CamScanner 01-08-2022 22.00_2.jpg', '1', '2022-01-08 16:17:26', '2022-01-08 16:17:26'),
(98, NULL, 45, 'App\\Models\\Student', 'IMG_20220109_133900', 'Other', '45_1641714041_IMG_20220109_133900.jpg', '1', '2022-01-09 07:40:41', '2022-01-09 07:40:41'),
(99, NULL, 48, 'App\\Models\\Student', '10101', 'Birth Certificate/NID', '48_1641899079_10101.jpg', '1', '2022-01-11 11:04:39', '2022-01-11 11:04:39'),
(100, NULL, 49, 'App\\Models\\Student', 'JIM-B', 'Birth Certificate/NID', '49_1641986559_JIM-B.jpg', '1', '2022-01-12 11:22:39', '2022-01-12 11:22:39'),
(101, NULL, 50, 'App\\Models\\Student', 'rakib-b', 'Birth Certificate/NID', '50_1642066118_rakib-b.jpg', '1', '2022-01-13 09:28:38', '2022-01-13 09:28:38'),
(102, NULL, 94, 'App\\Models\\Student', 'IMG_20220125_205403', 'Birth Certificate/NID', '94_1643124959_IMG_20220125_205403.jpg', '1', '2022-01-25 09:35:59', '2022-01-25 09:35:59'),
(103, NULL, 99, 'App\\Models\\Student', '16431299681671842098135585991759', 'Studentship Certificate', '99_1643130026_16431299681671842098135585991759.jpg', '1', '2022-01-25 11:00:26', '2022-01-25 11:00:26'),
(104, NULL, 101, 'App\\Models\\Student', 'aaf54106f47f9d5219e9d8476c7c27ea', 'Birth Certificate/NID', '101_1643132893_aaf54106f47f9d5219e9d8476c7c27ea.jpg', '1', '2022-01-25 11:48:13', '2022-01-25 11:48:13'),
(105, NULL, 40, 'App\\Models\\Student', 'IMG_20220126_104456', 'Birth Certificate/NID', '40_1643172362_IMG_20220126_104456.jpg', '1', '2022-01-25 22:46:02', '2022-01-25 22:46:02'),
(106, NULL, 109, 'App\\Models\\Student', '597e6a5156bc4d41bc3481a7663b59ac', 'Birth Certificate/NID', '109_1643174919_597e6a5156bc4d41bc3481a7663b59ac.jpg', '1', '2022-01-25 23:28:39', '2022-01-25 23:28:39'),
(107, NULL, 108, 'App\\Models\\Student', 'inbound8884442588045606450', 'Birth Certificate/NID', '108_1643175087_inbound8884442588045606450.jpg', '1', '2022-01-25 23:31:27', '2022-01-25 23:31:27'),
(108, NULL, 108, 'App\\Models\\Student', 'inbound6063921061246149292', 'Birth Certificate/NID', '108_1643175186_inbound6063921061246149292.jpg', '1', '2022-01-25 23:33:06', '2022-01-25 23:33:06'),
(111, NULL, 111, 'App\\Models\\Student', 'inbound5057314526457316403', 'Birth Certificate/NID', '111_1643199115_inbound5057314526457316403.jpg', '1', '2022-01-26 06:11:55', '2022-01-26 06:11:55'),
(112, NULL, 111, 'App\\Models\\Student', 'inbound6546864868266659611', 'Birth Certificate/NID', '111_1643199514_inbound6546864868266659611.jpg', '1', '2022-01-26 06:18:34', '2022-01-26 06:18:34'),
(113, NULL, 110, 'App\\Models\\Student', 'inbound7843064968958005650', 'Birth Certificate/NID', '110_1643210527_inbound7843064968958005650.jpg', '1', '2022-01-26 09:22:07', '2022-01-26 09:22:07'),
(115, NULL, 98, 'App\\Models\\Student', 'WhatsApp Image 2022-01-27 at 13.05.44', 'Birth Certificate/NID', '98_1643273205_WhatsApp Image 2022-01-27 at 13.05.44.jpeg', '1', '2022-01-27 02:46:45', '2022-01-27 02:46:45'),
(116, NULL, 112, 'App\\Models\\Student', 'inbound9033759839987404113', 'Birth Certificate/NID', '112_1643280115_inbound9033759839987404113.jpg', '1', '2022-01-27 04:41:55', '2022-01-27 04:41:55'),
(117, NULL, 113, 'App\\Models\\Student', 'Mark Sheet', 'Studentship Certificate', '113_1643280255_Mark Sheet.jpg', '1', '2022-01-27 04:44:15', '2022-01-27 04:44:15'),
(120, NULL, 19, 'App\\Models\\Student', 'IMG20220127170948', 'Birth Certificate/NID', '19_1643283235_IMG20220127170948.jpg', '1', '2022-01-27 05:33:55', '2022-01-27 05:33:55'),
(121, NULL, 19, 'App\\Models\\Student', 'IMG20220127170948', 'Birth Certificate/NID', '19_1643294158_IMG20220127170948.jpg', '1', '2022-01-27 08:35:58', '2022-01-27 08:35:58'),
(122, NULL, 19, 'App\\Models\\Student', 'IMG-20220127-WA0029', 'Birth Certificate/NID', '19_1643297866_IMG-20220127-WA0029.jpg', '1', '2022-01-27 09:37:46', '2022-01-27 09:37:46'),
(123, NULL, 114, 'App\\Models\\Student', '16433428679337657207119154134525', 'Studentship Certificate', '114_1643342979_16433428679337657207119154134525.jpg', '1', '2022-01-27 22:09:39', '2022-01-27 22:09:39'),
(124, NULL, 114, 'App\\Models\\Student', '16433429982966445746315005705356', 'Studentship Certificate', '114_1643343023_16433429982966445746315005705356.jpg', '1', '2022-01-27 22:10:23', '2022-01-27 22:10:23'),
(125, NULL, 116, 'App\\Models\\Student', '16433491730368451512539803881670', 'Birth Certificate/NID', '116_1643349253_16433491730368451512539803881670.jpg', '1', '2022-01-27 23:54:13', '2022-01-27 23:54:13'),
(126, NULL, 116, 'App\\Models\\Student', 'IMG_20220128_115158', 'Birth Certificate/NID', '116_1643349375_IMG_20220128_115158.jpg', '1', '2022-01-27 23:56:15', '2022-01-27 23:56:15'),
(127, NULL, 115, 'App\\Models\\Student', '16433564679195041849151535798779', 'Birth Certificate/NID', '115_1643356498_16433564679195041849151535798779.jpg', '1', '2022-01-28 01:54:59', '2022-01-28 01:54:59'),
(128, NULL, 115, 'App\\Models\\Student', '16433565077247679675100270644293', 'Birth Certificate/NID', '115_1643356527_16433565077247679675100270644293.jpg', '1', '2022-01-28 01:55:27', '2022-01-28 01:55:27'),
(129, NULL, 117, 'App\\Models\\Student', 'inbound2421307199960689328', 'Birth Certificate/NID', '117_1643360939_inbound2421307199960689328.jpg', '1', '2022-01-28 03:08:59', '2022-01-28 03:08:59'),
(130, NULL, 118, 'App\\Models\\Student', '16433688893345975982844768960812', 'Birth Certificate/NID', '118_1643368915_16433688893345975982844768960812.jpg', '1', '2022-01-28 05:21:55', '2022-01-28 05:21:55'),
(131, NULL, 119, 'App\\Models\\Student', '16433701066925558512709329713683', 'Birth Certificate/NID', '119_1643370140_16433701066925558512709329713683.jpg', '1', '2022-01-28 05:42:20', '2022-01-28 05:42:20'),
(132, NULL, 120, 'App\\Models\\Student', '16433708689027748981107300477282', 'Birth Certificate/NID', '120_1643370890_16433708689027748981107300477282.jpg', '1', '2022-01-28 05:54:50', '2022-01-28 05:54:50'),
(133, NULL, 124, 'App\\Models\\Student', 'inbound8532109679385926485', 'Birth Certificate/NID', '124_1643436046_inbound8532109679385926485.jpg', '1', '2022-01-29 00:00:46', '2022-01-29 00:00:46'),
(134, NULL, 126, 'App\\Models\\Student', 'inbound3246660606605372601', 'Birth Certificate/NID', '126_1643437808_inbound3246660606605372601.jpg', '1', '2022-01-29 00:30:08', '2022-01-29 00:30:08'),
(135, NULL, 130, 'App\\Models\\Student', 'IMG20220128111409', 'Birth Certificate/NID', '130_1643456432_IMG20220128111409.jpg', '1', '2022-01-29 05:40:32', '2022-01-29 05:40:32'),
(136, NULL, 125, 'App\\Models\\Student', 'inbound6978223089654808461', 'Birth Certificate/NID', '125_1643456905_inbound6978223089654808461.jpg', '1', '2022-01-29 05:48:25', '2022-01-29 05:48:25'),
(137, NULL, 125, 'App\\Models\\Student', 'inbound8054095870783177249', 'Birth Certificate/NID', '125_1643465963_inbound8054095870783177249.jpg', '1', '2022-01-29 08:19:23', '2022-01-29 08:19:23'),
(143, NULL, 132, 'App\\Models\\Student', 'IMG_20220130_161203', 'Birth Certificate/NID', '132_1643537685_IMG_20220130_161203.jpg', '1', '2022-01-30 04:14:45', '2022-01-30 04:14:45'),
(144, NULL, 132, 'App\\Models\\Student', 'IMG_20220130_161203', 'Birth Certificate/NID', '132_1643537795_IMG_20220130_161203.jpg', '1', '2022-01-30 04:16:35', '2022-01-30 04:16:35'),
(145, NULL, 131, 'App\\Models\\Student', 'inbound3620917949136112153', 'Birth Certificate/NID', '131_1643538764_inbound3620917949136112153.jpg', '1', '2022-01-30 04:32:44', '2022-01-30 04:32:44'),
(146, NULL, 133, 'App\\Models\\Student', 'inbound3608009854069113810', 'Birth Certificate/NID', '133_1643542507_inbound3608009854069113810.jpg', '1', '2022-01-30 05:35:07', '2022-01-30 05:35:07'),
(147, NULL, 133, 'App\\Models\\Student', 'inbound7470643649441580666', 'Birth Certificate/NID', '133_1643542565_inbound7470643649441580666.jpg', '1', '2022-01-30 05:36:05', '2022-01-30 05:36:05'),
(148, NULL, 134, 'App\\Models\\Student', 'inbound5278332031842937195', 'Birth Certificate/NID', '134_1643547663_inbound5278332031842937195.jpg', '1', '2022-01-30 07:01:03', '2022-01-30 07:01:03'),
(149, NULL, 129, 'App\\Models\\Student', 'WhatsApp Image 2022-01-29 at 14.05.51', 'Birth Certificate/NID', '129_1643550377_WhatsApp Image 2022-01-29 at 14.05.51.jpeg', '1', '2022-01-30 07:46:17', '2022-01-30 07:46:17'),
(150, NULL, 135, 'App\\Models\\Student', 'WhatsApp Image 2022-01-29 at 14.21.57', 'Birth Certificate/NID', '135_1643611112_WhatsApp Image 2022-01-29 at 14.21.57.jpeg', '1', '2022-01-31 00:38:32', '2022-01-31 00:38:32'),
(151, NULL, 136, 'App\\Models\\Student', 'WhatsApp Image 2022-01-29 at 14.31.01', 'Birth Certificate/NID', '136_1643612734_WhatsApp Image 2022-01-29 at 14.31.01.jpeg', '1', '2022-01-31 01:05:34', '2022-01-31 01:05:34'),
(152, NULL, 139, 'App\\Models\\Student', 'received_323071739861317', 'Studentship Certificate', '139_1643949201_received_323071739861317.jpeg', '1', '2022-02-03 22:33:21', '2022-02-03 22:33:21'),
(153, NULL, 140, 'App\\Models\\Student', 'Screenshot_2022-02-06-12-38-01-04', 'Studentship Certificate', '140_1644129516_Screenshot_2022-02-06-12-38-01-04.jpg', '1', '2022-02-06 00:38:36', '2022-02-06 00:38:36'),
(154, NULL, 140, 'App\\Models\\Student', 'nid-6464444527', 'Birth Certificate/NID', '140_1644129572_nid-6464444527.pdf', '1', '2022-02-06 00:39:32', '2022-02-06 00:39:32'),
(155, NULL, 140, 'App\\Models\\Student', 'IMG20220206100325', 'Studentship Certificate', '140_1644322694_IMG20220206100325.jpg', '1', '2022-02-08 06:18:14', '2022-02-08 06:18:14'),
(156, NULL, 140, 'App\\Models\\Student', 'IMG20220208181948', 'SSC Certificate', '140_1644322858_IMG20220208181948.jpg', '1', '2022-02-08 06:20:58', '2022-02-08 06:20:58'),
(157, NULL, 140, 'App\\Models\\Student', 'IMG20220208182007', 'HSC Certificate', '140_1644322892_IMG20220208182007.jpg', '1', '2022-02-08 06:21:32', '2022-02-08 06:21:32'),
(158, NULL, 142, 'App\\Models\\Student', 'SSC CER', 'SSC Certificate', '142_1644501990_SSC CER.jpg', '1', '2022-02-10 08:06:30', '2022-02-10 08:06:30'),
(159, NULL, 142, 'App\\Models\\Student', 'Hsc', 'HSC Certificate', '142_1644502044_Hsc.jpg', '1', '2022-02-10 08:07:24', '2022-02-10 08:07:24'),
(160, NULL, 142, 'App\\Models\\Student', '20220210_200245', 'Other', '142_1644503872_20220210_200245.jpg', '1', '2022-02-10 08:37:52', '2022-02-10 08:37:52'),
(161, NULL, 142, 'App\\Models\\Student', '20220210_202451', 'Birth Certificate/NID', '142_1644504181_20220210_202451.jpg', '1', '2022-02-10 08:43:01', '2022-02-10 08:43:01'),
(162, NULL, 142, 'App\\Models\\Student', '20220210_202512', 'Studentship Certificate', '142_1644504251_20220210_202512.jpg', '1', '2022-02-10 08:44:11', '2022-02-10 08:44:11'),
(163, NULL, 143, 'App\\Models\\Student', 'WhatsApp Image 2022-02-06 at 08.58.28', 'SSC Certificate', '143_1644561029_WhatsApp Image 2022-02-06 at 08.58.28.jpeg', '1', '2022-02-11 00:30:29', '2022-02-11 00:30:29'),
(164, NULL, 143, 'App\\Models\\Student', 'WhatsApp Image 2022-02-06 at 08.58.22', 'Other', '143_1644561058_WhatsApp Image 2022-02-06 at 08.58.22.jpeg', '1', '2022-02-11 00:30:58', '2022-02-11 00:30:58'),
(165, NULL, 121, 'App\\Models\\Student', 'WhatsApp Image 2022-02-12 at 11.16.48 AM (1)', 'SSC Certificate', '121_1644644543_WhatsApp Image 2022-02-12 at 11.16.48 AM (1).jpeg', '1', '2022-02-11 23:42:23', '2022-02-11 23:42:23'),
(166, NULL, 121, 'App\\Models\\Student', 'WhatsApp Image 2022-02-12 at 11.16.48 AM', 'Birth Certificate/NID', '121_1644644568_WhatsApp Image 2022-02-12 at 11.16.48 AM.jpeg', '1', '2022-02-11 23:42:48', '2022-02-11 23:42:48'),
(167, NULL, 121, 'App\\Models\\Student', 'WhatsApp Image 2022-02-12 at 11.16.47 AM', 'Other', '121_1644644585_WhatsApp Image 2022-02-12 at 11.16.47 AM.jpeg', '1', '2022-02-11 23:43:05', '2022-02-11 23:43:05'),
(168, NULL, 144, 'App\\Models\\Student', 'CamScanner 02-01-2022 16.44 - Page 2', 'Birth Certificate/NID', '144_1644647214_CamScanner 02-01-2022 16.44 - Page 2.jpg', '1', '2022-02-12 00:26:54', '2022-02-12 00:26:54'),
(169, NULL, 144, 'App\\Models\\Student', 'SSC 2017', 'SSC Certificate', '144_1644647237_SSC 2017.png', '1', '2022-02-12 00:27:17', '2022-02-12 00:27:17'),
(170, NULL, 144, 'App\\Models\\Student', 'HSC 2019', 'HSC Certificate', '144_1644647251_HSC 2019.png', '1', '2022-02-12 00:27:31', '2022-02-12 00:27:31'),
(171, NULL, 144, 'App\\Models\\Student', '20210907_211319_944_2', 'Other', '144_1644647498_20210907_211319_944_2.jpg', '1', '2022-02-12 00:31:38', '2022-02-12 00:31:38'),
(172, NULL, 146, 'App\\Models\\Student', 'Shorif Birthcertificate', 'Birth Certificate/NID', '146_1644721648_Shorif Birthcertificate.jpg', '1', '2022-02-12 21:07:28', '2022-02-12 21:07:28'),
(173, NULL, 148, 'App\\Models\\Student', 'mahamub', 'Birth Certificate/NID', '148_1644734016_mahamub.jpg', '1', '2022-02-13 00:33:36', '2022-02-13 00:33:36'),
(174, NULL, 147, 'App\\Models\\Student', 'rumel', 'Birth Certificate/NID', '147_1644734218_rumel.jpg', '1', '2022-02-13 00:36:58', '2022-02-13 00:36:58'),
(175, NULL, 149, 'App\\Models\\Student', 'monarul', 'Birth Certificate/NID', '149_1644734949_monarul.jpg', '1', '2022-02-13 00:49:09', '2022-02-13 00:49:09'),
(176, NULL, 150, 'App\\Models\\Student', 'rifat', 'Birth Certificate/NID', '150_1644736048_rifat.jpg', '1', '2022-02-13 01:07:28', '2022-02-13 01:07:28'),
(177, NULL, 151, 'App\\Models\\Student', 'rabbi sekh', 'Birth Certificate/NID', '151_1644736916_rabbi sekh.jpg', '1', '2022-02-13 01:21:56', '2022-02-13 01:21:56'),
(178, NULL, 152, 'App\\Models\\Student', 'sima', 'Birth Certificate/NID', '152_1644737582_sima.jpg', '1', '2022-02-13 01:33:02', '2022-02-13 01:33:02'),
(179, NULL, 153, 'App\\Models\\Student', 'golam rabbi', 'Birth Certificate/NID', '153_1644738378_golam rabbi.jpg', '1', '2022-02-13 01:46:18', '2022-02-13 01:46:18'),
(180, NULL, 154, 'App\\Models\\Student', 'hira', 'Birth Certificate/NID', '154_1644739149_hira.jpg', '1', '2022-02-13 01:59:09', '2022-02-13 01:59:09'),
(181, NULL, 155, 'App\\Models\\Student', 'merina', 'Birth Certificate/NID', '155_1644740076_merina.jpg', '1', '2022-02-13 02:14:36', '2022-02-13 02:14:36'),
(182, NULL, 156, 'App\\Models\\Student', 'sakib', 'Birth Certificate/NID', '156_1644740899_sakib.jpg', '1', '2022-02-13 02:28:19', '2022-02-13 02:28:19'),
(183, NULL, 157, 'App\\Models\\Student', 'jahid', 'Birth Certificate/NID', '157_1644745087_jahid.jpg', '1', '2022-02-13 03:38:07', '2022-02-13 03:38:07'),
(184, NULL, 158, 'App\\Models\\Student', 'rasel', 'Birth Certificate/NID', '158_1644745800_rasel.jpg', '1', '2022-02-13 03:50:00', '2022-02-13 03:50:00'),
(185, NULL, 159, 'App\\Models\\Student', 'sumon', 'Birth Certificate/NID', '159_1644758469_sumon.jpg', '1', '2022-02-13 07:21:09', '2022-02-13 07:21:09'),
(186, NULL, 160, 'App\\Models\\Student', 'shuvo islam', 'Birth Certificate/NID', '160_1644759497_shuvo islam.jpg', '1', '2022-02-13 07:38:17', '2022-02-13 07:38:17'),
(187, NULL, 161, 'App\\Models\\Student', 'momon mollah', 'Birth Certificate/NID', '161_1644760347_momon mollah.jpg', '1', '2022-02-13 07:52:27', '2022-02-13 07:52:27'),
(188, NULL, 162, 'App\\Models\\Student', 'rakib', 'Birth Certificate/NID', '162_1644761337_rakib.jpg', '1', '2022-02-13 08:08:57', '2022-02-13 08:08:57'),
(189, NULL, 163, 'App\\Models\\Student', 'asma', 'SSC Certificate', '163_1644810114_asma.jpg', '1', '2022-02-13 21:41:54', '2022-02-13 21:41:54'),
(190, NULL, 164, 'App\\Models\\Student', 'jorna', 'SSC Certificate', '164_1644811305_jorna.jpg', '1', '2022-02-13 22:01:45', '2022-02-13 22:01:45'),
(191, NULL, 165, 'App\\Models\\Student', 'rotna', 'SSC Certificate', '165_1644811999_rotna.jpg', '1', '2022-02-13 22:13:19', '2022-02-13 22:13:19'),
(192, NULL, 166, 'App\\Models\\Student', 'korban', 'SSC Certificate', '166_1644812655_korban.jpg', '1', '2022-02-13 22:24:15', '2022-02-13 22:24:15'),
(193, NULL, 168, 'App\\Models\\Student', 'rabeya', 'Birth Certificate/NID', '168_1644813290_rabeya.jpg', '1', '2022-02-13 22:34:50', '2022-02-13 22:34:50'),
(194, NULL, 169, 'App\\Models\\Student', 'liton', 'Birth Certificate/NID', '169_1644814141_liton.jpg', '1', '2022-02-13 22:49:01', '2022-02-13 22:49:01'),
(195, NULL, 170, 'App\\Models\\Student', 'jannat', 'Birth Certificate/NID', '170_1644824531_jannat.jpg', '1', '2022-02-14 01:42:11', '2022-02-14 01:42:11'),
(196, NULL, 171, 'App\\Models\\Student', 'nahid', 'Birth Certificate/NID', '171_1644825271_nahid.jpg', '1', '2022-02-14 01:54:31', '2022-02-14 01:54:31'),
(197, NULL, 172, 'App\\Models\\Student', 'sumaiya', 'Birth Certificate/NID', '172_1644826029_sumaiya.jpg', '1', '2022-02-14 02:07:09', '2022-02-14 02:07:09'),
(198, NULL, 173, 'App\\Models\\Student', 'marju', 'Birth Certificate/NID', '173_1644827032_marju.jpg', '1', '2022-02-14 02:23:52', '2022-02-14 02:23:52'),
(199, NULL, 174, 'App\\Models\\Student', 'surma', 'Birth Certificate/NID', '174_1644827473_surma.jpg', '1', '2022-02-14 02:31:13', '2022-02-14 02:31:13'),
(200, NULL, 175, 'App\\Models\\Student', 'faima', 'Birth Certificate/NID', '175_1644829185_faima.jpg', '1', '2022-02-14 02:59:45', '2022-02-14 02:59:45'),
(201, NULL, 176, 'App\\Models\\Student', 'rekha', 'Birth Certificate/NID', '176_1644829900_rekha.jpg', '1', '2022-02-14 03:11:40', '2022-02-14 03:11:40'),
(202, NULL, 178, 'App\\Models\\Student', 'rahul', 'SSC Certificate', '178_1644830419_rahul.jpg', '1', '2022-02-14 03:20:19', '2022-02-14 03:20:19'),
(203, NULL, 179, 'App\\Models\\Student', 'nayeem', 'SSC Certificate', '179_1644830866_nayeem.jpg', '1', '2022-02-14 03:27:46', '2022-02-14 03:27:46'),
(204, NULL, 180, 'App\\Models\\Student', 'sriti', 'SSC Certificate', '180_1644831355_sriti.jpg', '1', '2022-02-14 03:35:55', '2022-02-14 03:35:55'),
(205, NULL, 177, 'App\\Models\\Student', 'IMG_20220214_153839', 'Birth Certificate/NID', '177_1644831548_IMG_20220214_153839.jpg', '1', '2022-02-14 03:39:08', '2022-02-14 03:39:08'),
(206, NULL, 177, 'App\\Models\\Student', 'IMG_20220214_155642', 'SSC Certificate', '177_1644832652_IMG_20220214_155642.jpg', '1', '2022-02-14 03:57:32', '2022-02-14 03:57:32'),
(207, NULL, 177, 'App\\Models\\Student', 'IMG_20220214_155623', 'HSC Certificate', '177_1644832679_IMG_20220214_155623.jpg', '1', '2022-02-14 03:57:59', '2022-02-14 03:57:59'),
(208, NULL, 181, 'App\\Models\\Student', 'IMG_20220214_162354', 'SSC Certificate', '181_1644834279_IMG_20220214_162354.jpg', '1', '2022-02-14 04:24:39', '2022-02-14 04:24:39'),
(209, NULL, 145, 'App\\Models\\Student', 'CamScanner 02-15-2022 10.16', 'Other', '145_1644899569_CamScanner 02-15-2022 10.16.jpg', '1', '2022-02-14 22:32:49', '2022-02-14 22:32:49'),
(210, NULL, 10, 'App\\Models\\Student', '01', 'SSC Certificate', '10_1644900114_01.JPG', '1', '2022-02-14 22:41:54', '2022-02-14 22:41:54'),
(211, NULL, 10, 'App\\Models\\Student', 'nid-6460853499', 'Birth Certificate/NID', '10_1644900139_nid-6460853499.pdf', '1', '2022-02-14 22:42:19', '2022-02-14 22:42:19'),
(213, NULL, 184, 'App\\Models\\Student', 'IMG_20220215_201339', 'Birth Certificate/NID', '184_1644934779_IMG_20220215_201339.jpg', '1', '2022-02-15 08:19:39', '2022-02-15 08:19:39'),
(214, NULL, 184, 'App\\Models\\Student', 'IMG_20220215_201527', 'Studentship Certificate', '184_1644934846_IMG_20220215_201527.jpg', '1', '2022-02-15 08:20:46', '2022-02-15 08:20:46'),
(215, NULL, 182, 'App\\Models\\Student', 'NID', 'Birth Certificate/NID', '182_1644935661_NID.pdf', '1', '2022-02-15 08:34:21', '2022-02-15 08:34:21'),
(216, NULL, 182, 'App\\Models\\Student', 'CamScanner 02-15-2022 19.49_2', 'Birth Certificate/NID', '182_1644936020_CamScanner 02-15-2022 19.49_2.jpg', '1', '2022-02-15 08:40:20', '2022-02-15 08:40:20'),
(218, NULL, 182, 'App\\Models\\Student', 'SSC certificate', 'SSC Certificate', '182_1644936627_SSC certificate.jpg', '1', '2022-02-15 08:50:27', '2022-02-15 08:50:27'),
(219, NULL, 182, 'App\\Models\\Student', 'CamScanner 02-15-2022 19.49_3', 'HSC Certificate', '182_1644936692_CamScanner 02-15-2022 19.49_3.jpg', '1', '2022-02-15 08:51:32', '2022-02-15 08:51:32'),
(220, NULL, 182, 'App\\Models\\Student', 'CamScanner 02-17-2022 16.58_3', 'Studentship Certificate', '182_1645104097_CamScanner 02-17-2022 16.58_3.jpg', '1', '2022-02-17 07:21:37', '2022-02-17 07:21:37'),
(221, NULL, 182, 'App\\Models\\Student', 'CamScanner 02-17-2022 16.58_1', 'Other', '182_1645104159_CamScanner 02-17-2022 16.58_1.jpg', '1', '2022-02-17 07:22:39', '2022-02-17 07:22:39'),
(222, NULL, 182, 'App\\Models\\Student', 'CamScanner 02-17-2022 16.58_4', 'Other', '182_1645104201_CamScanner 02-17-2022 16.58_4.jpg', '1', '2022-02-17 07:23:21', '2022-02-17 07:23:21'),
(223, NULL, 185, 'App\\Models\\Student', 'certificate ', 'HSC Certificate', '185_1645259095_certificate .jpg', '1', '2022-02-19 02:24:55', '2022-02-19 02:24:55'),
(224, NULL, 187, 'App\\Models\\Student', 'WhatsApp Image 2022-02-17 at 12.57.12 PM', 'Birth Certificate/NID', '187_1645280641_WhatsApp Image 2022-02-17 at 12.57.12 PM.jpeg', '1', '2022-02-19 08:24:01', '2022-02-19 08:24:01'),
(227, NULL, 188, 'App\\Models\\Student', 'IMG-20220220-WA0001', 'Birth Certificate/NID', '188_1645362859_IMG-20220220-WA0001.jpg', '1', '2022-02-20 07:14:19', '2022-02-20 07:14:19'),
(228, NULL, 189, 'App\\Models\\Student', 'USER_SCOPED_TEMP_DATA_orca-image--353280205', 'HSC Certificate', '189_1645368364_USER_SCOPED_TEMP_DATA_orca-image--353280205.jpeg', '1', '2022-02-20 08:46:04', '2022-02-20 08:46:04'),
(229, NULL, 190, 'App\\Models\\Student', 'student-typing-clipart-silhouette', 'Other', '190_1645589149_student-typing-clipart-silhouette.jpg', '1', '2022-02-22 22:05:49', '2022-02-22 22:05:49'),
(230, NULL, 191, 'App\\Models\\Student', 'nid-7815445916', 'Birth Certificate/NID', '191_1646223892_nid-7815445916.pdf', '1', '2022-03-02 06:24:52', '2022-03-02 06:24:52'),
(231, NULL, 191, 'App\\Models\\Student', 'Screenshot_2022-03-02-18-23-34-21_40deb401b9ffe8e1df2f1cc5ba480b12', 'HSC Certificate', '191_1646223923_Screenshot_2022-03-02-18-23-34-21_40deb401b9ffe8e1df2f1cc5ba480b12.jpg', '1', '2022-03-02 06:25:23', '2022-03-02 06:25:23'),
(232, NULL, 114, 'App\\Models\\Student', '16462918783983678009262314112403', 'Studentship Certificate', '114_1646291913_16462918783983678009262314112403.jpg', '1', '2022-03-03 01:18:33', '2022-03-03 01:18:33'),
(233, NULL, 188, 'App\\Models\\Student', 'IMG-20220306-WA0004', 'SSC Certificate', '188_1646578024_IMG-20220306-WA0004.jpg', '1', '2022-03-06 08:47:04', '2022-03-06 08:47:04'),
(235, NULL, 188, 'App\\Models\\Student', 'HSC', 'HSC Certificate', '188_1646578465_HSC.pdf', '1', '2022-03-06 08:54:25', '2022-03-06 08:54:25');

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
-- Table structure for table `mentors`
--

CREATE TABLE `mentors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tenant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_11_000000_create_tenants_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_07_11_081334_create_permission_tables', 1),
(6, '2021_09_08_050705_create_students_table', 1),
(7, '2021_09_08_145015_create_degrees_table', 1),
(8, '2021_09_12_103912_create_addresses_table', 1),
(9, '2021_10_04_131940_create_achievements_table', 1),
(10, '2021_10_12_115848_create_documents_table', 1),
(11, '2021_10_20_112446_create_scholarships_table', 1),
(12, '2021_10_20_115521_create_scholarship_student_table', 1),
(13, '2021_11_09_134205_create_approved_applications_table', 1),
(14, '2021_11_22_134210_create_test_table', 1),
(15, '2021_11_24_130727_create_mentors_table', 2),
(16, '2021_11_27_153844_create_accounts_table', 2),
(17, '2021_12_18_132328_create_monthly_statements_table', 3);

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
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 28),
(2, 'App\\Models\\User', 29),
(2, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 31),
(2, 'App\\Models\\User', 32),
(2, 'App\\Models\\User', 33),
(2, 'App\\Models\\User', 34),
(2, 'App\\Models\\User', 37),
(2, 'App\\Models\\User', 39),
(2, 'App\\Models\\User', 40),
(2, 'App\\Models\\User', 41),
(2, 'App\\Models\\User', 43),
(2, 'App\\Models\\User', 44),
(2, 'App\\Models\\User', 45),
(2, 'App\\Models\\User', 46),
(2, 'App\\Models\\User', 47),
(2, 'App\\Models\\User', 48),
(2, 'App\\Models\\User', 49),
(2, 'App\\Models\\User', 50),
(2, 'App\\Models\\User', 51),
(2, 'App\\Models\\User', 52),
(2, 'App\\Models\\User', 53),
(2, 'App\\Models\\User', 54),
(2, 'App\\Models\\User', 55),
(2, 'App\\Models\\User', 56),
(2, 'App\\Models\\User', 57),
(2, 'App\\Models\\User', 58),
(2, 'App\\Models\\User', 59),
(2, 'App\\Models\\User', 60),
(2, 'App\\Models\\User', 62),
(2, 'App\\Models\\User', 63),
(2, 'App\\Models\\User', 65),
(2, 'App\\Models\\User', 66),
(2, 'App\\Models\\User', 74),
(2, 'App\\Models\\User', 76),
(2, 'App\\Models\\User', 78),
(2, 'App\\Models\\User', 80),
(2, 'App\\Models\\User', 81),
(2, 'App\\Models\\User', 82),
(2, 'App\\Models\\User', 85),
(2, 'App\\Models\\User', 87),
(2, 'App\\Models\\User', 88),
(2, 'App\\Models\\User', 89),
(2, 'App\\Models\\User', 92),
(2, 'App\\Models\\User', 93),
(2, 'App\\Models\\User', 94),
(2, 'App\\Models\\User', 95),
(2, 'App\\Models\\User', 96),
(2, 'App\\Models\\User', 97),
(2, 'App\\Models\\User', 98),
(2, 'App\\Models\\User', 99),
(2, 'App\\Models\\User', 100),
(2, 'App\\Models\\User', 102),
(2, 'App\\Models\\User', 103),
(2, 'App\\Models\\User', 105),
(2, 'App\\Models\\User', 106),
(2, 'App\\Models\\User', 108),
(2, 'App\\Models\\User', 109),
(2, 'App\\Models\\User', 110),
(2, 'App\\Models\\User', 111),
(2, 'App\\Models\\User', 112),
(2, 'App\\Models\\User', 113),
(2, 'App\\Models\\User', 117),
(2, 'App\\Models\\User', 118),
(2, 'App\\Models\\User', 119),
(2, 'App\\Models\\User', 122),
(2, 'App\\Models\\User', 124),
(2, 'App\\Models\\User', 126),
(2, 'App\\Models\\User', 127),
(2, 'App\\Models\\User', 128),
(2, 'App\\Models\\User', 129),
(2, 'App\\Models\\User', 130),
(2, 'App\\Models\\User', 131),
(2, 'App\\Models\\User', 132),
(2, 'App\\Models\\User', 134),
(2, 'App\\Models\\User', 135),
(2, 'App\\Models\\User', 136),
(2, 'App\\Models\\User', 137),
(2, 'App\\Models\\User', 138),
(2, 'App\\Models\\User', 139),
(2, 'App\\Models\\User', 140),
(2, 'App\\Models\\User', 141),
(2, 'App\\Models\\User', 142),
(2, 'App\\Models\\User', 143),
(2, 'App\\Models\\User', 144),
(2, 'App\\Models\\User', 145),
(2, 'App\\Models\\User', 146),
(2, 'App\\Models\\User', 147),
(2, 'App\\Models\\User', 148),
(2, 'App\\Models\\User', 149),
(2, 'App\\Models\\User', 150),
(2, 'App\\Models\\User', 151),
(2, 'App\\Models\\User', 153),
(2, 'App\\Models\\User', 154),
(2, 'App\\Models\\User', 155),
(2, 'App\\Models\\User', 156),
(2, 'App\\Models\\User', 157),
(2, 'App\\Models\\User', 158),
(2, 'App\\Models\\User', 159),
(2, 'App\\Models\\User', 160),
(2, 'App\\Models\\User', 161),
(2, 'App\\Models\\User', 162),
(2, 'App\\Models\\User', 163),
(2, 'App\\Models\\User', 164),
(2, 'App\\Models\\User', 165),
(2, 'App\\Models\\User', 167),
(2, 'App\\Models\\User', 168),
(2, 'App\\Models\\User', 169),
(2, 'App\\Models\\User', 189),
(2, 'App\\Models\\User', 190),
(2, 'App\\Models\\User', 191),
(2, 'App\\Models\\User', 192),
(2, 'App\\Models\\User', 193),
(2, 'App\\Models\\User', 195),
(2, 'App\\Models\\User', 198),
(2, 'App\\Models\\User', 201),
(3, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `monthly_statements`
--

CREATE TABLE `monthly_statements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `scholarship_id` bigint(20) UNSIGNED NOT NULL,
  `approved_amount` double DEFAULT NULL,
  `month_year` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monthly_statements`
--

INSERT INTO `monthly_statements` (`id`, `student_id`, `scholarship_id`, `approved_amount`, `month_year`, `note`, `account_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 109, 1, 3000, '2022-02-01', NULL, 19, 'PAID', '2022-02-21 13:11:12', '2022-02-21 13:13:02'),
(4, 109, 1, 3000, '2022-03-01', NULL, 19, 'PENDING', '2022-02-21 13:39:20', '2022-02-21 13:39:20'),
(3, 109, 1, 3000, '2022-04-01', NULL, 19, 'PAID', '2022-02-21 13:14:22', '2022-02-21 13:17:37');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11'),
(2, 'role-create', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11'),
(3, 'role-edit', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11'),
(4, 'role-delete', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11'),
(5, 'user-list', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11'),
(6, 'user-create', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11'),
(7, 'user-edit', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11'),
(8, 'user-delete', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11'),
(9, 'admin-can', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11'),
(10, 'student-can', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11'),
(11, 'student-profile-show', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11'),
(12, 'student-profile-edit', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11'),
(13, 'manage-student-list', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11'),
(14, 'superadmin-can', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11'),
(15, 'tenant-can', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11'),
(16, 'apply-scholarship', 'web', '2021-11-23 03:05:11', '2021-11-23 03:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'web', '2021-11-23 03:05:16', '2021-11-23 03:05:16'),
(2, 'STUDENT', 'web', '2021-11-23 03:07:19', '2021-11-23 03:07:19'),
(3, 'TENANT', 'web', '2021-11-23 03:07:38', '2021-11-23 03:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 2),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(15, 3),
(16, 1),
(16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `scholarships`
--

CREATE TABLE `scholarships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `scholarship_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eligibility` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scholarships`
--

INSERT INTO `scholarships` (`id`, `tenant_id`, `scholarship_title`, `level`, `eligibility`, `amount`, `payment_type`, `deadline`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hridoya Bangladesh Scholarship 2022', 'All', 'Must have completed JSC (Junior School Certificate)', 3000, 'Monthly', '2022-02-28 00:00:00', 'ACTIVE', 0, '2021-11-23 03:13:34', '2022-02-21 13:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_student`
--

CREATE TABLE `scholarship_student` (
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `scholarship_id` bigint(20) UNSIGNED NOT NULL,
  `is_approve` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scholarship_student`
--

INSERT INTO `scholarship_student` (`student_id`, `scholarship_id`, `is_approve`) VALUES
(1, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 1, 0),
(9, 1, 0),
(12, 1, 0),
(11, 1, 0),
(13, 1, 0),
(14, 1, 0),
(17, 1, 0),
(8, 1, 0),
(15, 1, 0),
(18, 1, 0),
(20, 1, 0),
(21, 1, 0),
(24, 1, 0),
(23, 1, 0),
(7, 1, 0),
(27, 1, 0),
(28, 1, 0),
(29, 1, 0),
(30, 1, 0),
(31, 1, 0),
(33, 1, 0),
(34, 1, 0),
(36, 1, 0),
(37, 1, 0),
(38, 1, 0),
(35, 1, 0),
(41, 1, 0),
(42, 1, 0),
(44, 1, 0),
(45, 1, 0),
(48, 1, 0),
(49, 1, 0),
(50, 1, 0),
(50, 1, 0),
(43, 1, 0),
(16, 1, 0),
(94, 1, 0),
(99, 1, 0),
(99, 1, 0),
(99, 1, 0),
(99, 1, 0),
(99, 1, 0),
(99, 1, 0),
(101, 1, 0),
(101, 1, 0),
(40, 1, 0),
(108, 1, 0),
(111, 1, 0),
(98, 1, 0),
(113, 1, 0),
(112, 1, 0),
(19, 1, 0),
(110, 1, 0),
(115, 1, 0),
(118, 1, 0),
(119, 1, 0),
(117, 1, 0),
(120, 1, 0),
(126, 1, 0),
(130, 1, 0),
(132, 1, 0),
(134, 1, 0),
(133, 1, 0),
(129, 1, 0),
(135, 1, 0),
(136, 1, 0),
(139, 1, 0),
(125, 1, 0),
(140, 1, 0),
(22, 1, 0),
(142, 1, 0),
(143, 1, 0),
(121, 1, 0),
(144, 1, 0),
(156, 1, 0),
(147, 1, 0),
(154, 1, 0),
(181, 1, 0),
(10, 1, 0),
(145, 1, 0),
(184, 1, 0),
(182, 1, 0),
(185, 1, 0),
(188, 1, 0),
(189, 1, 0),
(109, 1, 1),
(191, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_profession` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_profession` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siblings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aim_in_life` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `same_as_parmanent` tinyint(1) NOT NULL DEFAULT 1,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_profession` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_income` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_scholarship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `sid`, `name`, `email`, `phone`, `dob`, `father_name`, `father_profession`, `mother_name`, `mother_profession`, `siblings`, `aim_in_life`, `gender`, `same_as_parmanent`, `reference_name`, `reference_profession`, `reference_phone`, `family_income`, `income_source`, `other_scholarship`, `reason`, `created_at`, `updated_at`) VALUES
(2, 4, '2111004', 'SaqifTest', NULL, '01677278561', '1996-06-10 00:00:00', 'fName', 'fProf', 'mName', 'mProf', 'TEST', 'TEST', 'Male', 1, 'rName', 'rProf', '01000000000', '1000', 'iSource', 'Test', 'Test', '2021-11-24 11:35:45', '2021-12-21 06:29:02'),
(3, 5, '2111005', 'Fuad Hossain', 'fuadhossainbk01@gmail.com', '01627408824', '2001-04-10 00:00:00', 'Jahangir Alam', 'Ill', 'SUFIA AKTER', 'Operator', NULL, 'Want to become a Cse engineer', 'Male', 1, 'SUFIA AKTER', 'Operator', '01682130692', '10000', 'Ibn Sina diagnostic center', NULL, 'To continue study in bsc in Cse..', '2021-11-27 20:32:38', '2021-11-27 20:32:38'),
(4, 7, '2112007', 'Mt. Asma Khatun', 'mtasma380226@gmail.com', '01701586380', '1997-12-11 00:00:00', 'Md. Atikul Islam', 'Small businessman', 'Mt. Hazera Begum', 'House wife', '1/ Mt. Fatema Khatun, Dinajpur Nursing Institute, Dinajpur. \r\n2/ Mt. Sumaiya Khatun, Kumriya  BL high school, (class 10), Dinajpur.', 'I want to be an honest judge.', 'Female', 1, 'Md. A. Malek Mia', 'Deputy Chief Engineer', '01712285234', '4000', 'Father\'s sidewalk business', 'No', 'My father runs a sidewalk business, he also has asthma, can\'t afford his own medicine, I don\'t have tuition, family can\'t help me financially', '2021-12-05 18:07:59', '2021-12-05 18:07:59'),
(5, 9, '2112010', 'Rumpa Akter Rupa', 'hrrumpaakterrupa@gamail.com', '01835929782', '2002-09-01 00:00:00', 'Death Abdur Rahim', 'Was a Farmer', 'Most Jahanara Begum', 'House wife and cook', NULL, 'My aim in life is to be a good social worker. So I want to be an honest UNO', 'Female', 1, 'Md Harun Or Rashid', 'Civil Engineer (Diploma)', '01780717982', '5000', 'My mother is the only earner in our family. She maintains our family by cooking for a NGO', NULL, 'I need this scholarship  for proverty.I want to overcome proverty and reach the desired goal of life.It is impossible for my mother to bear the education expenses of me and my brother and the expenses of the family.So this scholarship   is very necessary for me to continue my studies.', '2021-12-07 09:16:14', '2021-12-07 10:56:08'),
(6, 15, '2112017', 'Joyeta Kar', 'joyetakar105@gmail.com', '01768682094', '1999-05-03 00:00:00', 'Sudarshan Kar', 'Businessman', 'Koneka Kar', 'Housewife', 'One brother. \r\nEducation- He is now University Admission Candidate. He just completed his Higher Secondary School from Lakshmipur Government College.', 'I want to be a Government Job Holder.  I want to serve my country.', 'Female', 1, 'Biplob Debnath', 'Researcher', '+1-6128101047', '10000', 'Business', 'No', 'My father is only one earning member of my family. His income isn\'t enough to manage my family expenses and also our educational expenses because I have one brother and he is a running student. I\'m studying now in Dhaka. It\'s living expense is also high. My university has no hall for living. My monthly expense is around 8000 tk to 9000 tk per month. It is so tough for me to manage this expense. So, i need financial support for continuing my study.', '2021-12-15 15:14:55', '2021-12-15 15:14:55'),
(7, 19, '2112020', 'Rabby Hasan Rafiq', 'rabbyhasanru@gmail.com', '01518698904', '1998-12-15 00:00:00', 'Md Abdur Rahim', 'Farmer', 'Jahanara Khatun', 'Housewife', 'I have three sisters.All of them are students.', 'To become a qualified pharmacist as well as an honest person.', 'Male', 1, 'Zulfiqer Sekender', 'Software Engineer ( USA)', '+17324919728', '4000', 'Farming', 'No.', 'My father is a farmer and he is the only earning member of our family.It is very difficult for him to maintain our family expenses.I have three sisters who are also studying in college and school.To continue my study,financial support is crying need  for me.\r\nNB: I have been funded monthly scholarship by Hridoya Bangladesh from 2015 after passing my SSC exam.', '2021-12-18 07:36:55', '2021-12-24 16:42:27'),
(8, 20, '2112021', 'MOHAIMINUL ISLAM', 'mohaiminul199@gmail.com', '01796041367', '1998-07-15 00:00:00', 'Mohabbat Ali', 'Died', 'Ferdoushi Begum', 'Homemaker', 'Have two sister.They are Housewife.', 'Be a Textile Engineer.', 'Male', 1, 'Shazzad Hossain', 'Assistant professor, North south University.', '01767511161', '3000', 'Relative Support.', 'I have no Scholarship.', 'My family have no source of income.It drives by relative support. For this reason, I have need financial support to continue my studies.', '2021-12-18 09:34:28', '2021-12-18 09:39:10'),
(9, 22, '2112023', 'ESITA AKTER', NULL, '01518790356', '2001-05-01 00:00:00', 'HAMIDUL ISLAM', 'FARMER', 'MAZEDA BEGUM', 'HOUSWIFE', NULL, 'It is pretty common that people will say they aim to become a doctor, astronaut, dancer, actor, painter and more.\r\n\r\nHowever, for me, my aim in life is to become a teacher. This profession has always attracted me and has my deepest respect. In other words, teaching is the most underrated and unappreciated job there is.\r\n\r\nIf you think of it like that, a teacher selflessly imparts their knowledge to the whole class. Many of them become our role models in life as well. This does not happen just because they teach well, but also because of how they carry themselves.\r\n\r\nI also want to make a difference in children’s life by becoming a teacher. It is a very fulfilling job which shapes children from an early age. In fact, I have always adored young children. Thus, my liking for the profession and children has helped me set this aim in life.\r\n\r\nIn other words, I wish to bring about a change in this world by becoming a good teacher. As a teacher has the power to change this world. We have so much to', 'Female', 1, 'SHAFIQUL ISLAM', 'GOVT. SERVICE', '01521394801', '3000', 'FARMER', NULL, 'FOR HIGHER EDUCATION', '2021-12-18 11:33:06', '2021-12-18 11:33:06'),
(10, 8, '2112025', 'Md Asikur Rahman', 'asikurr2764@gmail.com', '01729720678', '2001-12-05 00:00:00', 'Habibur Rahman', 'Dead', 'Samsun Nahar', 'Housewife', '2 Sisters', 'Botanist', 'Male', 1, 'Adv Idris Ali', 'Advocate', '01972138822', '6000', 'Pension', 'None', 'My father is no more.Our family is depend on my father\'s pension.So it is so tough to bear my study cost', '2021-12-19 06:05:02', '2022-02-14 22:59:23'),
(11, 26, '2112027', 'MD. Rajib Islam', NULL, '01783653381', '2000-12-21 00:00:00', 'Md. Kiron Pramanik', 'Day Labour', 'Mst. Rabia Khatun', 'Housewife', 'Two small brothers ( student)\r\nand one sister', 'To be  a BSC in Civil engineering', 'Male', 1, 'Annur Rahman', 'Business', '01819282014', '10000', 'Day labour', 'Hridoya Bangladesh foundation', 'For Duet admission', '2021-12-19 07:01:54', '2021-12-20 03:13:53'),
(12, 25, '2112028', 'Md.Mahfuz hasan', 'mahfuz123568@gmail.com', '01308523278', '2003-01-02 00:00:00', 'Md.Golam quddus', 'Farmer', 'Mst.shaheda aktar', 'Housewife', '1 brother(medical student) & 1 sister( student, hsc)', 'Engineer', 'Male', 1, 'Enamul haque likhon', 'Student, usa', '+13476793744', '30000', 'Farming and othe', 'No', 'My father is a farmer,  one of my brother is a medical student and one of my sister is also a student of higher secendary level so my father is unable to maintain our educational cost,,,, so i need a scholarship, to continue my study,,', '2021-12-19 07:18:16', '2021-12-19 07:19:23'),
(13, 29, '2112030', 'Mst.Mahmuda aktar kusum', 'kusumakter123456@gmail.com', '01794010208', '2004-01-03 00:00:00', 'Md.Golam quddus', 'Farmer', 'Mst.saheda aktar', 'Housewife', 'One brother(medical student) & another is student of hsc 2nd year', 'Magistrate', 'Female', 1, 'Enamul haque likhon', 'Student, usa', '+13476793744', '30000', 'Farming and others', 'No', 'All of my brothers are students now so my father is unable to maintain our educational cost so i need a scholarship to continue my study', '2021-12-19 13:41:16', '2021-12-19 13:41:16'),
(14, 28, '2112031', 'Sharmin Akter', 'mstsharmina449@gmail.com', '01741662586', '2002-07-05 00:00:00', 'Md.Nurbokto Mia', 'Fermer', 'Mst.Amina Begum', 'Housewife', NULL, 'I want to be a teacher', 'Female', 1, 'Abul Kalam Azad', 'Teacher', '01749117117', '2000', 'Fermer', 'No', 'My father is very poor', '2021-12-19 13:42:50', '2021-12-19 13:46:01'),
(15, 31, '2112032', 'Md. Saim Hossain', 'saims1900s@gmail.com', '01712085077', '2007-10-21 00:00:00', 'Late MD. Monowar Hossain', 'Business', 'Khadiza Hossain', 'Housewife', NULL, 'Engineer', 'Male', 1, 'Rashedul Haider Ripon', 'Private job', '01712085077', '25000', 'Uncle Support', NULL, 'For Education Purpose.', '2021-12-20 07:43:06', '2021-12-21 10:26:33'),
(16, 32, '2112033', 'MOST. SHEULY AKTER', NULL, '01759594662', '2001-02-07 00:00:00', 'MD. JAHANGIR ALAM', 'FARMAR', 'MOST. MOMINA BEGUM', 'HOUSE WIFE', NULL, 'My main objective is to lead a better life by being well educated', 'Female', 1, 'Md. Rafiqul Islam', 'UP Member', '01718882020', '3000', 'Agricultural work', NULL, 'The father is deprived of family expenses due to remarriage so getting higher education is risky', '2021-12-20 08:51:43', '2021-12-20 09:29:22'),
(17, 34, '2112035', 'SHAPLA KHATUN', NULL, '01703383322', '1997-12-25 00:00:00', 'MD. MIZANUR RAHMAN', 'Day Lobour', 'AYESHA BEGUM', 'Late', '2 Sister, Student', 'My aim in life is to become a good teacher', 'Female', 1, 'MD. ABDUL KHALEK', 'Retired Govt. Service', '01963623370', '5000', 'Father', 'No', 'My father is a poor day lobour.', '2021-12-20 11:23:42', '2021-12-20 11:23:42'),
(18, 18, '2112036', 'Shirabony aktar monika', 'shirabonyaktarmonika@gmail.com', '01877138209', '1999-01-01 00:00:00', 'Late Momin Mollah', 'Late', 'Fatema khatun', 'Housewife', 'l have five brothers and two sisters.Now one brother and one sisters are living with my family and studying  University', 'First  l would  like to complete my graduation with a gorious result. Than  l would like to be a teacher.', 'Female', 1, 'Enamul Haque (Likhon)', 'Likhon to student', '+13476793744', '4500', 'My brother is the only source of income  of our family.', NULL, 'My family  consists  of eight  members. My brother  is the only source of income of our family.It is very hard for my brother to bear all expenses  of the family including  my education  expenses. So l need financial  support  to continue  my education properly', '2021-12-21 04:30:07', '2021-12-21 04:33:09'),
(19, 17, '2112038', 'Md Monir khan', '191811.ais@student.just.edu.bd', '01883719636', '2001-11-05 00:00:00', 'Anowar Hossain', 'Farmer', 'Rebeka Khatun', 'Housewife', 'I have two brothers. One is married and separated from my family. And another is a student of National University.', 'I would like to be on \' Assistant Director \' of Bangladesh bank. I hope that I will be able to remove the poverty from my country.', 'Female', 1, 'MD. Enamul Haque (Likhon)', 'Student   Zicklin School of Business', '+13476793744', '6000', 'Family income source is cultivation only.', NULL, 'There are five members in my family.  But the whole family depends on my father\'s income only. Really it is vary difficult for him to bear all expenses including my education expenses.\r\nSo I need financial support to continue my study properly.', '2021-12-21 06:35:31', '2022-01-27 08:34:40'),
(20, 37, '2112039', 'Rinku Rani Shell', 'rinkushil333@gmail.com', '01571215043', '1996-11-09 00:00:00', 'Joydeb Chandra Shell', 'Small Business', 'Purnima Rani Shell', 'Housewife', 'An elder brother who is married and has a daughter. Father and Brother both engage in the business.', 'I want to be a public servant and want to do something for my country, for the people and society.', 'Female', 1, 'DR. MD. NASIR UDDIN MUNSHI', 'Professor. Department of Information Science and Library Management', 'mnmunshi@du.ac.bd', '8000', 'Small Business', NULL, 'Being a member of poor family, it is difficult for my family to support my educational expenses. As expenses of  higher education is not so easy to fulfill in this expensive city like Dhaka, a scholarship is like blessings for me. For smoothed my education journey and fulfill my aim with no barricade i need this help.', '2021-12-21 06:59:32', '2021-12-21 06:59:32'),
(21, 39, '2112042', 'MD. Ruhul Amin', 'mdruhul032@gmail.com', '01701764366', '2002-09-25 00:00:00', 'Md. Abdul Majid', 'Day Labourer', 'Mst. Ruma Khatun', 'housewife', 'One younger sister and one sister. They are also student.', 'To be a engineer. I want to complete my graduation in EEE from Duet.', 'Male', 1, 'MD. Abdus Salam', 'Government employer', '01722303245', '10000', 'Brick clink ( ইট ভাটা)', 'No', 'For Duet Admission  and Industrial attachment', '2021-12-21 14:33:01', '2021-12-21 14:33:01'),
(22, 40, '2112043', 'MOST. SAMIA HAQUE', 'msanaulhaque142@gmail.com', '01711117624', '2005-11-17 00:00:00', 'MD. SANAUL HAQUE', 'SERVICE', 'MOST. RASHIDA HAQUE', 'HOUSE WIFE', NULL, 'LAWYER', 'Female', 1, 'MD. ANWARUL HAQUE', 'BUSINESS', '01711535674', '15000', 'SERVICE', NULL, 'FINANCIAL PROBLEM', '2021-12-22 05:06:35', '2021-12-22 05:06:35'),
(23, 44, '2112046', 'Gousal Azam varsa', 'varoshavs@gmail.com', '01779951463', '2001-11-19 00:00:00', 'LATE ROUF MIA', 'NO', 'GOLAFJAN NESA', 'House wife', 'No brother and sister.', 'My aim in life is Banker.', 'Male', 1, 'Abdur Rashid', 'Teacher', '01877072928', '0.00', 'No', 'No', 'My father was a farmer. Our financial situation is very bad. My father has already died. In this situation, it is not possible for me to continue my studies. So I need financial help.', '2021-12-23 06:26:04', '2021-12-23 06:26:04'),
(24, 45, '2112047', 'Md. Rasel Rahman', 'rasel.cse19.ruet@gmail.com', '01703266722', '2002-08-11 00:00:00', 'Md. Sofiul Islam', 'Day Laborer', 'Rasheda Begum', 'Housewife', 'I have a  younger brother studying at Chowgacha Kamil Madrasa in Alim\'s 1st year and an elder sister, married.', 'As a student from Computer Science and Engineering (CSE) department I want to build my career in computer hardware and help my country be advanced in technology.', 'Male', 1, 'Md Masum Kabir', 'Teacher', '01715484048', '6000', 'labouring', NULL, 'As I mentioned before, my father is a day laborer and he is the only earning member in my family. He is unable to bear my as well as my younger brother\'s educational expense with his little income. So to continue my study without any hindrance I need financial support.', '2021-12-23 06:48:39', '2022-04-07 05:55:26'),
(25, 43, '2112049', 'SHAIMA SHANTI RAKEYA', 'shaimashantirakeya@gmail.com', '01767194934', '2002-01-31 00:00:00', 'Golam Rosul', 'Farmer', 'Asma Sultana', 'Housewife', NULL, 'My aim in life is to be a banker or teacher.', 'Female', 1, 'Masum Kabir', '01715484048', 'Teacher', '5000', 'Agriculture\'s products sell', NULL, 'Educational cost bear.', '2021-12-23 08:07:46', '2021-12-23 08:07:46'),
(26, 30, '2112051', 'MD. AKHLASUR RAHMAN ASIF', 'marahmanasif@gmile.com', '01748811744', '1999-11-27 00:00:00', 'Md.Mukul Mia', 'Farmar', 'Most.Azadi begum', 'Housewife', 'I have a two brother, Md.Ajhabul islam Akhlak and Md.Atik hasan jihad', 'An ideal electronic engineer', 'Male', 1, 'Md.Sajjad', 'Survice', '01767511161', '8000', 'Agriculture', 'No', 'I\'m Akhlasur rahman asif.my father name md. Mukul mia and mother name most. Azadi begum..I have a Two younger brother.there are name\'s of md. Ajhabul islam akhlak. He is a student at Ulipur govt. School and collage.and md. Atik hasan jihad. He is a student at Bozra (L.k) amin school and collage.my father income is very low.so my father favour not possible our\'s study.I need a scholarship running my study and which an idel electronic engineer of my country..', '2021-12-23 14:42:51', '2021-12-23 15:00:38'),
(27, 46, '2112048', 'KAKOLY KHATUN', 'kakolykhatun3@gmail.com', '01771232752', '1994-11-08 00:00:00', 'MD. ROBIUL ISLAM', 'Late', 'RASHIDA KHATUN', 'Housewife', 'I have a younger brother and he studies.', 'I want to serve the people of the country by doing good government jobs.', 'Female', 1, 'MD MASUM KABIR', 'Teacher', '01715484048', '2000', 'Poultry rearing', 'No', 'Since my father died, there is no one to support my familyfamily.We two siblings study,It is not possible for my mother to pay for our education.', '2021-12-23 15:47:12', '2021-12-25 05:38:23'),
(28, 47, '2112050', 'MOST.NUSHRAT JAHAN ESHA', 'eshanushratjahan158@gmail.com', '01744862234', '2004-10-22 00:00:00', 'MD. ELIAS ALI SARKAR', 'FARMER', 'MST. SHAHEBA KHATUN', 'HOUSE WIFE', NULL, 'MY AIM IN LIFE IS THAT,I WANT TO ADMIT IN DHAKA MEDICAL COLLEGE AND I WILL BE A DOCTOR', 'Female', 1, 'MD. ELIAS ALI SARKAR', 'FARMER', '01743113880', '6000', 'AGRICULTURE', NULL, 'MY FATHER MONTHLY INCOME ONLY 6000 TK.NOW I AM STUDIED AT RANGPUR GOVERNMENT COLLEGE, RANGPUR.I LIVE IN MESS IN RANGPUR.SO I NEED MINIMUM 4000 TK , PER MONTH . BUT MY FATHER DOES NOT FINANCIAL SUPPORT ME.', '2021-12-25 06:57:05', '2021-12-25 06:59:35'),
(29, 6, '2112052', 'Lata Bonik', 'boniklata@gmail.com', '01786640212', '1998-01-01 00:00:00', 'Tapan Bonik', 'Small Businessman', 'Mitali Bonik', 'Housewife', 'One sister & one brother. My sister is studying at jahangirnagar University & my brother is studying at Lakshmipur Govt. college.', 'My aim in life is to be a University Teacher. The profession of teaching has been very attractive to me. This has been my childhood dream. The sole aim of my life is to serve the society to become a good citizen.  To me teaching appears to be the best way to serve the society.', 'Female', 1, 'Biplob Debnath', 'Computer researcher.', '+16128101047', '7000', 'My father is the only earning member in my family. in my family.', 'I got scholarship from Hridoya Bangladesh at honours time. My father\'s financial situation is very bad so i am applying for my masters so that hridoya Bangladesh helps me to continue my studies. This scholarship is very necessary for myself.', 'I want to continue my M.Sc. in mathematics. But my father\'s income  is very poor. With this income he has to maintain a big family of five members.  I have one sister, & one brother. They are studying in different University & college. It\'s almost impossible on his part to bear my educational expenses. so i am badly in need of your help to continue my study.', '2021-12-25 15:22:11', '2021-12-25 15:23:44'),
(30, 48, '2112053', 'TONNY AKTHER', NULL, '01749698351', '2004-03-02 00:00:00', 'ABDUL RAIHAN PITUL', 'FARMER', 'AYESHA BEGUM', 'HOUSEWIFE', NULL, 'TEACHER', 'Female', 1, 'MD. MASUM KABIR', 'TEACHER', '01715484048', '5000', 'FARMER', NULL, 'To run the cost of reading.', '2021-12-26 05:02:57', '2021-12-26 13:16:13'),
(31, 33, '2112054', 'Abu Hanif', 'hanifcharforadi@gmail.com', '01313972980', '2002-01-03 00:00:00', 'Raton Mia', 'Day labourer', 'Asma Akter', 'Housewife', 'I have 1 brother and 1 sister. We are three children of parents. My brother is appearing at HSC exam this year. He is a very good student. I hope he will get admission in Dhaka University. My sister will appear at the HSC exam next year. She is also a good student.', 'I want to be a public university teacher especially my university,  Dhaka University. And so i have taken Bangla sub cause in this department maximum students can not do a good result. So, I am studying seriously so that I can make a good CGPA and and thus be a teacher of Dhaka University.', 'Male', 1, 'Emdadul Haq Hridoy', 'Teacher', '01627803025', '1500', 'Day Labour', 'I have no other scholarship and so I need this scholarship to carry on my study.', 'We have been growing up struggling with lack of money since childhood. We have no land of our own. There is not even a homestead. We live in Nana\'s house. Parents do not allow us to work. They work all the day long. Their hope is that one day we will be much educated. We are also moving forward. Our siblings are all studying regularly. We are also getting good results. But I can\'t seem to get over it. That\'s why I stop from time to time. I have reached such an age, the suffering of my parents is no longer tolerated, but what to do! InshaAllah, I too will one day be established and help the poor, I promised. When I first entered university, I used to eat once a day. Then Hridoya Bangladesh is paying for my food every month. I am very, very grateful. Hope Hridoya Bangladesh was by my side, will remain.', '2021-12-26 07:25:33', '2021-12-26 07:25:33'),
(32, 49, '2112055', 'Mubashir Ahammad Muhakkik', 'mubasshirahmedshuvro@gmail.com', '01868798367', '2001-10-04 00:00:00', 'Muhammad Shihabuddin', 'Retired', 'Nargis Akter', 'Housewife', NULL, 'My aim in life to make the world a better place everyday and help people as much as I can. My career target is to be a emergency medicine specialist.', 'Male', 1, 'Dr. Banani Barua', 'Assistant Professor,Biochemistry Department', '01712129595', '5000', 'Father\'s job', NULL, 'My father is the only incoming source in my family.After his retirement in 2014,we have faced immense financial problems. But by the grace of Almighty Allah I keep studying and managed to get into my dream Institute.\r\nMedical study in Bangladesh is very costly.As my family is unable to support me and I can not manage to do tuition due to huge syllabus within short course time,I really need some financial help to continue my study.', '2021-12-27 09:48:31', '2021-12-27 09:48:31'),
(33, 14, '2112056', 'Ratry Bonik', 'ratrybanik1998@gmail.com', '01798300284', '1999-01-01 00:00:00', 'Tapan Bonik', 'Small Businessman', 'Mitaly Bonik', 'Housewife', 'One sister and One brother. My elder sister is studying in Comilla University and  my brother is studying in Lakshmipur Govt. College', 'My aim in life is to be  a Magistrate.  This has been my childhood dream. The sole aim of my life is to serve the society to become a good citizen.', 'Female', 1, 'Biplob Debnath', 'Computer researcher', '+16128101047', '7000', 'Small Business', 'No', 'My father is  the only earning member of my family. His income is very poor.  i have one brother and sister.It is almost impossible for him to bear our  educational expenses and also maintain the family with his income. this scholarship help my father to bear my educational expenses easily. So, i am badly need your help to continue my study.', '2021-12-28 14:16:09', '2021-12-28 14:17:25'),
(34, 50, '2112057', 'MOST. NASRIN KHATUN', 'mohona578@gmail.com', '01759320132', '1995-09-20 00:00:00', 'MD. AMINUR RAHMAN', 'Farmer', 'SHEFALY KHATUN', 'Housewife', 'One sister & two brothers. (Sister HSC candidate 2021, one brother reads in class nine & other brother reads in class five)', 'To be a BCS cadre. Because of I want to serve the nation and country.', 'Female', 1, 'Md. Masum Kabir', 'Teacher', '01715-484048', '5000', 'Father', 'No', 'To study Post Graduation and Higher education.', '2021-12-29 05:34:26', '2021-12-29 18:01:41'),
(35, 52, '2112058', 'Shova khatun', 'shova19b.r@gmail.com', '01758480178', '2000-05-15 00:00:00', 'Fazlul Islam', 'Late', 'Farida khatun', 'Housewife', '3 siblings \r\n1 is married & another is studying', 'A good doctor', 'Female', 1, 'Md Enamul Haque(Likhon)', 'Student', '13476793744', '00', 'I have no income source.', 'No', 'My father(stroke) and only one brother(accident)had died. So I have no income source. My widower and sick mother can\'t give me financial support for my MBBS studies. So I need help.', '2021-12-29 06:00:12', '2021-12-29 06:00:12'),
(36, 53, '2112059', 'Mst. Tamanna Kabir Riya', NULL, '01712768238', '2005-09-13 00:00:00', 'Md. Kabirul Islam', 'N/A', 'Mst. Nilima Khatun', 'House Wife', NULL, 'Higher Study', 'Female', 1, 'Md. Masum Kabir', 'Teacher', '01715484048', '0', 'N/A', 'N/A', 'পিতা মৃত বিদ্বায় উপার্জনক্ষম লোক নাই।', '2021-12-29 06:01:32', '2022-05-13 22:58:48'),
(37, 51, '2112060', 'MOST. ROTNA KHATUN', NULL, '01744300924', '2004-04-17 00:00:00', 'RAKIB MONDAL', 'FARMER', 'ARZINA BEGUM', 'HOUSEWIFE', NULL, 'DOCTOR', 'Female', 1, 'MD. MASUM KABIR', 'TEACHER', '01715484048', '3000', 'FARMER', NULL, 'To run the cost of reading.', '2021-12-29 07:00:35', '2021-12-29 07:32:58'),
(38, 54, '2112061', 'MD. SHOHAG HOSSAIN', NULL, '01749521780', '2006-07-09 00:00:00', 'MD. BOZLUR RAHMAN', 'FARMER', 'MST. ASMA BEGUM', 'HOUSEWIFE', NULL, 'DOCTOR', 'Male', 1, 'MD. MASUM KABIR', 'TEACHER', '01715484048', '3000', 'FARMER', NULL, 'TO RUN THE COST OF READING', '2021-12-29 07:49:06', '2021-12-29 07:49:06'),
(39, 55, '2112062', 'NAYEEM ANAM', 'nayeem876m@gmail.com', '01611551874', '2000-11-26 00:00:00', 'Shoriful Alam', 'Dead', 'Monira Parven', 'Housewife', NULL, 'I am a student. I love photography and want to make it a profession', 'Male', 1, 'MD.Masum Kabir', 'Teacher', '01715484048', '0', 'N/A', NULL, 'To continue study', '2021-12-29 15:20:03', '2021-12-29 15:20:03'),
(40, 41, '2112063', 'Shaikat Biswas', 'biswasshaikat01@gmail.com', '01746915906', '2000-12-01 00:00:00', 'Deb proshad Biswas', 'Businessman', 'Kakoli Rani Biswas', 'Housewife', 'I have one brother no sister.He is a student of honours final year (management) under national university', 'My Aim in life is to be a university teacher.After completing my B.sc honours in mathematics. I want to go in abroad in order to receive M.s and phd.degree. Besides, I want to thesis some mathematical equations and also doing some social work for needy man.', 'Male', 1, 'Prof.Dr.S.M.Shahidul Islam', 'Chairman, Department Of Mathematics, HSTU', '01718617334', '13000', 'Business', 'No', 'As a student,it’s an investing period on me. We are 4 in number. In present situation, my father income is not enough to bear my family. Sometimes, we are facing some troubles to continue our study and others. So,in this situation i need financial support to continue my study.', '2021-12-31 08:43:52', '2022-01-09 17:20:26'),
(41, 58, '2112064', 'FATEMA AKTER ORPA', NULL, '01726823558', '2007-10-12 00:00:00', 'MD. MOSTAFIZUR RAHMAN', 'FARMER', 'MOST. ROUSONARA BAGUM', 'HOUSEWIFE', NULL, 'DOCYOR', 'Female', 1, 'MD. MASUM KABIR', 'TEACHER', '01715484048', '3000', 'FARMER', NULL, 'TO RUN THE COST OF READING', '2021-12-31 09:56:55', '2021-12-31 09:56:55'),
(42, 24, '2201024', 'Manosh Chandra', 'rmanosh904@gmail.com', '01780548214', '2000-02-07 00:00:00', 'Soltu Ram', 'death', 'Bahon Swory', 'housewife', 'I have 5 elder brothers.All of them are married and they work in the field.', 'Fast of all, now i am doing my graduate in Mechanical Engineering in a public university. My aim is to be a an engineer.I will try to my best for achievement my success.For that,i have to take enough preparation for job.I will do better in my life as an engineer.', 'Male', 1, 'Modan mohon', 'Grameen bank officer', '01733256198', '3000', 'field work', 'no', 'At first,we are poor.I only get my financial support from my mother. Because of my father is no more in the world.At present, she is enough old and she can\'t afford all of my educational expenses. So it is badly needed as my financial support and to continue my study.', '2022-01-01 09:48:07', '2022-03-26 00:22:41'),
(43, 23, '2201023', 'Mahdi hasan', 'mahiyooe@gmail.com', '01869217981', '2004-06-01 00:00:00', 'Ahsan habib', 'Service', 'Juiairia siddika', 'House wife', '2 sisters', 'Agriculturist', 'Male', 1, 'Julfikar Sikandar', 'Software Engineer USA', '+17324919728', '10000', 'Business', 'No Scholarship', 'For continue the Education', '2022-01-03 16:57:22', '2022-01-03 16:57:22'),
(44, 60, '2201060', 'Md Sagor Hossain', 'sagorhossen13064@gmail.com', '01789391940', '2002-07-03 00:00:00', 'MD SHAHADAT HOSSAIN', 'FARMER', 'MST REHENA BEGUM', 'HOUSEWIFE', 'TWO SISTERS\r\n1)NAME- MST RAHELA KHATUN\r\nSTATUS- MARRIED\r\n2)1)NAME- MST LUCKY KHATUN\r\nSTATUS- MARRIED', 'My aim in life is to be a ideal teacher because most of the people of my village are ignorance about their children education so i decided to be a teacher so that i can remove  ignorance from my village and make a modren village with skill generation.', 'Male', 1, 'MD AZIZUR RAHAMAN', 'LECTURER', '+88 01716856795', '4500', 'FARMING', 'N/A', 'N/A', '2022-01-08 06:16:33', '2022-01-08 10:12:59'),
(45, 59, '2201059', 'suraiyajannat', 'suraiyajannat@27gmail.com', '01767086421', '2004-04-29 00:00:00', 'Shahidul Islam', 'non-govt, Teacher', 'Ferdous Ara', 'Housewife', 'I have 2 more siblings except me. One is my brother and one is my sister. both of them are elder than me. My brother is the eldest one. His name is MD Makam Islam. He completed his SSC and HSC from Ulipur Moharani Swarnamayee School & College with a high GPA. He is pursuing his graduation at Hajee Mohammad Danesh Science and Technology University in agriculture. He is currently in the 2nd year of his graduation. He was also one of them who got a scholarship from your organization in the session of 2016-2017. This scholarship helps him in a significant way to continue his study. My sister\'s name is Safa Jannatun Mawa. She completed her SSC from Ulipur Moharani Swarnamayee School & College (vocational sectional). She is pursuing her study at Rangpur Polytechnic Institute in Power technology. She just had finished her study in 1st year.', 'I am very passionate about computer science. So I am ambitious to build my career in this field. Specifically, I dream to be a Googler. I need to have a degree in CSE to get a job at Google. So after finishing my studies in HSC with a high GPA according to our education system, I have to seat for a university admission test. As an IT-based university, BUET would be my first choice. If I am lucky enough to secure a seat at BUET I will pursue my graduation there. After I complete graduate from BUET I will start my practice through online quiz events and some skill development websites and will start working as a professional programmer. By gaining a strong profile I would secure my first position in Google company as a Noogler. The first step in becoming a Googler is to start working for Google as a Noogler. By securing my place as a Noogler I will work hard to establish my position as a Googler.', 'Female', 1, 'Md Shahidul Islam', 'Teacher', '01712226861', '23900', 'Father ( non-govt, Teacher)', 'He is my father', 'My family consists of 5 members, they are my parents and siblings. And in my family, my father is the only earner. Since I have two more siblings and my father is the sole breadwinner in our family, it is becoming very difficult for him to bear the cost of our education and all other expenses. In order to study in a reputed college and to gain a good GPA, I must have to have a strong financial backup. And my father is not fully able to carry out my educational expenses alone. Due to the financial crisis, my studies are being stopped. but I want to keep my consistency and be a self-reliant woman. If I am lucky enough and qualify for this scholarship, it will help me to continue my study until my dream is fulfilled. It will help me to contribute to my country by completing my study.', '2022-01-08 14:36:21', '2022-01-08 14:36:21'),
(46, 62, '2201062', 'MOST. ROKHSANA KHATUN', 'malamlitu@gmail.com', '01782098644', '2004-12-28 00:00:00', 'ALA UDDIN', 'Farmer', 'JAHANARA BEGUM', 'Housewife', NULL, 'Doctor', 'Female', 1, 'MD. MASUM KABIR', 'Teacher', '01715484048', '5000', 'Farmer', NULL, 'Education Expenses', '2022-01-09 06:15:06', '2022-01-09 06:16:06'),
(47, 63, '2201063', 'MOST. ARIFA KHATUN', 'malamlitu@gmail.com', '01738320929', '2003-07-03 00:00:00', 'ALTAP HOSSEN', 'Farmer', 'TASLIMA BEGUM', 'Housewife', NULL, 'Doctor', 'Female', 1, 'MD. MASUM KABIR', 'Teacher', '01715484048', '5000', 'Farmer', NULL, 'Education Expenses', '2022-01-09 06:22:56', '2022-01-09 06:22:56'),
(48, 65, '2201065', 'AIREN HAQUE BAISHAKHI', NULL, '01710826678', '2009-05-02 00:00:00', 'MD.AZIZUL HAQUE', 'LEET', 'ESMOTARA KHATUN', 'HOUSEWIFE', NULL, 'TACHER', 'Female', 1, 'MD. MASUM KABIR', 'TEACHER', '01715484048', '2000', 'HOUSEWIFE', NULL, 'To cover the cost of education.', '2022-01-11 11:01:51', '2022-01-11 11:01:51'),
(49, 66, '2201066', 'MST. JARIN KABIR JIM', 'shaplanet2003@gmail.com', '01759753789', '2010-04-17 00:00:00', 'MD. MAMUN KABIR', 'FARMER', 'MST. HERA KHATUN', 'HOUSEWIFE', NULL, 'DOCTOR', 'Female', 1, 'MD. MASUM KABIR', 'TEACHER', '01715484048', '4000', 'FARMER', NULL, 'To cover the cost of education.', '2022-01-12 10:23:02', '2022-01-25 14:20:52'),
(77, 16, '2201016', 'Md.Ahasanul Islam', 'shourab111@gmail.com', '01884907940', '1996-11-09 00:00:00', 'Md.Anayetul Islam', 'Farmer', 'M.SARMINA  SULTANA', 'Housewife', 'I have two brothers and one sister.They are studying in other universities', 'Software Engineer', 'Male', 1, 'Md.Enamul Haque(Likhon)', 'Student', '+1347-679-3744', '6000', 'My father is the only source of income of our family', 'No', 'My family consists of six member.My father is the only source of income of our family.It is very hard for him to bear all expenses of the family including my education expenses.\r\nSo I need financial help to continue my study prooerly', '2022-01-25 07:00:32', '2022-01-27 00:45:45'),
(98, 74, '2201074', 'MD Shimon Sheikh', 'shimomkkol@gmail.com', '01799778758', '2000-04-18 00:00:00', 'MD Ahez Sheikh', 'Farmer', 'Momena Khatun', 'Housewife', 'I have two brothers. One is study at Jahangirnagar University and another study of class eight', 'To become an honest teacher', 'Male', 1, 'Zulfiqer Sekender', 'Software Engineer', '1-732-491-9728', '7000', 'From agriculture', 'No', 'We have a large family. My father is farmer and he is only earner.He has to maintain our family very difficulty. At that momen he can not bear my educational expense. So I am badly in need the financial help from Hridoya Bangladesh', '2022-01-25 09:32:25', '2022-01-27 00:56:08'),
(108, 82, '2201082', 'MD. Limon Sheikh', 'lemonkkol@gmail.com', '01830892514', '2000-04-18 00:00:00', 'Md. Ahez Sheikh', 'Farmer', 'Mst. Momena khatun', 'Housewife', 'I have two brothers. One of them is study at Jahangirnagar university. Another study at class eight.', 'To become an honest teacher', 'Male', 1, 'Zulfiqer Sekender', 'Software engineer', '1-732-491-9728', '7000', 'From agriculture', 'No', 'We have a large family. My father is a poor farmer and he is the only earner. He has to maintain  our family difficulty. Now he can not bear my educational expenses. So I am badly in need the financial support from \" Hridoya Bangaladesh\".', '2022-01-25 22:32:42', '2022-01-25 22:32:42'),
(109, 81, '2201081', 'Saqif Test Student', NULL, '01674084111', '1995-06-10 00:00:00', 'fName', 'fProf', 'mName', 'mProf', 'asdasdasdsad', 'jani na', 'Male', 1, 'rName', 'rProf', '01000000000', '1000', 'iSource', 'dssadfs', 'dfsfs', '2022-01-25 23:27:18', '2022-01-25 23:35:26'),
(110, 78, '2201078', 'Jannatul Hafsa Mita', 'jmita26@gmail.com', '01907037153', '2000-11-08 00:00:00', 'Md Farhad Hossain', 'Fisherman', 'Suborna Khatun', 'House wife', 'I have one sister and one brother. My sister is in class 10 and my brother is in class 6.', 'I would like to be an ideal teacher. I want to work for the  welfare of my society and my country.', 'Female', 1, 'MD. Enamul Haque (Likhon)  Newyork,USA-10458', 'Student Zicklin School of Business.', '+13476793744', '6000', 'Cacthing fish', 'No', 'My father is a poor fisherman. He has no other income source without it. So it is quite difficult for him to bear my educational  expenses. So I need financilal support to continue  my study properly.', '2022-01-26 00:16:51', '2022-01-26 00:16:51'),
(111, 85, '2201085', 'Md Walid Hassan', 'walidqb2@mail.com', '01832383508', '2001-05-13 00:00:00', 'Abdus Samad', 'Agriculture', 'Mariam Nesa', 'Housewife', 'I have  three Brothers  and three sisters.  Both of them are separate  each other.', 'To become an honest teacher.', 'Male', 1, 'MD. Enamul Haque  (Likhon)', 'Student Zicklin School  of Business', '+13476793744', '7000', 'From  agriculture', 'No', 'I have lost  my father  two years ago.  Now , I have none who bear my educational  expenses properly.  So I am badly in need  financial  support  from  \" Hridoya Bangladesh \".', '2022-01-26 06:01:44', '2022-01-26 06:01:44'),
(112, 87, '2201087', 'Md Shipon Ali', 'shiponali301@gmail.com', '01314807976', '1998-08-20 00:00:00', 'Md. Hasmot Ali', 'Farmer', 'Mst. Monoara khatun', 'Housewife', 'I have three brothers . Both of them are separate and involved their work.', 'To be an honest teacher', 'Male', 1, 'Zulfiqer Sekender', 'Software engineer', '1-732-491-9728', '6500', 'From agriculture', 'No', 'My father is a poor peasant. He can  run our family very difficulty. He can not maintain my educational expenses. Now, I am badly in need financial support from ,\"Hridoya Bangladesh\".', '2022-01-27 04:34:30', '2022-01-27 04:34:30'),
(113, 56, '2201056', 'Akib Hayat', 'akibhayat16@gmail.com', '01746980916', '1996-05-16 00:00:00', 'M. M. Hayat Sekender', 'Servent', 'Mrs. Murshida Hayat', 'Housewife', 'Brother (Student)', 'Bangladesh Civil Service Cadre', 'Male', 1, 'Zulfiqer Sekender', 'Servant', '+1 732-404-7665', '15000', 'Father\'s job', 'No', 'I need this financial support for continue my', '2022-01-27 04:42:57', '2022-01-27 04:42:57'),
(114, 80, '2201080', 'Shoyeb Aktar Shubho', 'ais1908049brur@gmail.com', '01818838763', '2000-03-25 00:00:00', 'Md Sobur Biswas', 'Farmer', 'Mst Putul Khatun', 'Housewife', 'My only sister is now studying at College.', 'I want to be an honest and sincere Civil Service officer. I always work for the welfare of our impoverished students and marginal dominated people who don\'t get precise social valuation as well as run their daily activities well.', 'Male', 1, 'Zulfiqer Sekender', 'Software Engineer', '1-732-491-9728', '3000', 'Farming', 'No', 'This scholarship will assist me in running my study well.', '2022-01-27 22:05:39', '2022-03-03 01:16:37'),
(115, 89, '2201089', 'SHANTA ISLAM', 'sume01713@gmail.com', '01611919646', '2004-01-27 00:00:00', 'MD.SHARIFUL ISLAM', 'Business', 'MST.NASRIN SULTANA', 'Housewife', NULL, 'My aim in life is to become a doctor .', 'Female', 1, 'Md.Enamul Haque (Likhon)', 'Student', '+1347-679-3744', '10000', 'Business', NULL, 'Though my father have no other source of income. My full family is depend on this. On the other hand, I\'m a student of Dhaka City College in science group. There needs a lot of money.I\'ve no other support of bear my educational expanse. So, I need this financial support.', '2022-01-27 23:46:34', '2022-01-28 02:00:30'),
(116, 88, '2201088', 'MD. Mumit It Rahman Neloy', 'ayatmahmud70@gmail.com', '01872128707', '2007-07-25 00:00:00', 'Md. Aminur Rahman', 'Farmer', 'Mst. Aklima Begun', 'Housewife', 'I have three sisters and both of them are study in higher education.', 'To be a scientist', 'Male', 1, 'Zulfiqer Sekender', 'Software Engineer', '1-732-491-9728', '6500', 'From farmer', 'No', 'My father is a farmer. He can maintain my  education expenses very difficulty . Now he can not afford to maintain my education expenses. So I am in badly need  financial support from ,Hridoya Bangladesh\".', '2022-01-27 23:48:45', '2022-01-28 23:52:16'),
(117, 92, '2201092', 'Md Sonju', 'mdakashsonju@gmail.com', '01873694004', '2005-02-02 00:00:00', 'Md.Momin sheikh', 'Farmer', 'Mst  Salaha khatun', 'Housewife', 'I have one brother and one sister. Both of them are study.', 'I want to be a doctor', 'Male', 1, 'Enamul Haque (Likhon)', 'Student', '+1347 - 679 37 44', '5000', 'From Agriculture', 'No', 'My father is a poor farmer. He can,t maintain my educational expenses.so i badly in need financial support from, Hridoya Bangladesh.', '2022-01-28 03:04:50', '2022-01-28 03:04:50'),
(118, 93, '2201093', 'MD AMIR HAMZA', NULL, '01737308905', '2003-12-23 00:00:00', 'MD.HAFIZUR RAHMAN', 'Farmer', 'MST.SOKHINA KHATUN', 'Housewife', NULL, 'My aim in life become a BCS Cader', 'Male', 1, 'Md.Enamul Haque (Likhon)', 'Student', '+1347-679-3744', '6500', 'Agriculture r', NULL, 'I am in extended family .so, my father hardly manage our daily expanses so badly .so i need financial support for education', '2022-01-28 05:19:16', '2022-01-28 05:32:03'),
(119, 94, '2201094', 'MD. JUNAYED AHAMMED ZIHAD', NULL, '01925981990', '2006-10-20 00:00:00', 'LATE.AHAMMOD ALI', 'None', 'JOILY AHAMMED', 'housewife', NULL, 'My aim in life become to be a doctor', 'Male', 1, 'ENAMUL HAQUE (LIKHON)', 'STUDENT', '+1347-679-3744', '8000', 'Agriculture', NULL, 'My family  cannot bear my educational  expenses.', '2022-01-28 05:41:28', '2022-05-04 02:51:42'),
(120, 95, '2201095', 'SUMON AHMMED', NULL, '01764074880', '2006-07-01 00:00:00', 'MD AMINUZZAMAN DIPU', 'Farmer', 'MST SUMI KHATUN', 'Housewife', NULL, 'My aim in life become to be engineer', 'Male', 1, 'ENAMUL HAQUE (LIKHON)', 'STUDENT', '+1347-679-3744', '8000', 'Agriculture', NULL, 'My family cannot bear my enough educational expenses', '2022-01-28 05:54:16', '2022-01-28 05:55:23'),
(121, 96, '2201096', 'MD Pabel', 'mdpabel1202@gmail.com', '01786436435', '2000-02-12 00:00:00', 'Abu Taher', 'Empty', 'Farida Begum', 'Housewife', 'None', 'My aim in life to be a successful Textile Engineer.', 'Male', 1, 'Abdul Kader', 'Retired Professor', '01670774906', '0', 'Nothing', NULL, 'My Father is No More', '2022-01-28 09:10:43', '2022-01-28 09:10:43'),
(122, 97, '2201097', 'Abdul Kuddus', 'kudduscaliph@gmail.com', '01717324917', '2002-01-01 00:00:00', 'Late. Azad Khalifa', 'N/A', 'Late. Anuara Bibi', 'N/A', NULL, 'BCS', 'Male', 1, 'Minul', 'Teacher', '01722261862', '000', 'N/A', 'Nai', 'Parents mara gecen...physically disability', '2022-01-28 21:58:29', '2022-01-28 22:00:39'),
(123, 98, '2201098', 'Md nasimul haque ayon', 'mbishakib@gmail.com', '01734709339', '2004-03-04 00:00:00', 'Md Nizamul haque', 'Businessman', 'Iffat jahan', 'Housewife', NULL, 'Engineer', 'Male', 1, 'Md samiul alom', 'Teacher', '01719083540', '10000', 'bussiness', 'Nothing', 'Study', '2022-01-28 22:30:23', '2022-01-28 22:30:23'),
(124, 102, '2201102', 'Mohua mamun', 'alm077975@gmail.com', '01795379223', '2006-02-18 00:00:00', 'Md. Mamun ar- Rashid', 'Business', 'Mst. Mahabuba Rahman', 'Housewife', 'One sister. She reads in class two.', 'To be a doctor', 'Female', 1, 'Enamul Haque ( Likhon)', 'Student', '+ 1347-679-3744', '6500', 'From  business', 'No', 'My father is a   business man. He can not maintain my educational expenses .so  I am badly  in need of financial support from \" Hridoya Bangladesh\".', '2022-01-28 23:58:26', '2022-01-28 23:58:26'),
(125, 100, '2201100', 'Rakibul Islam', 'mdjual@gmail.com', '01999119275', '1998-08-05 00:00:00', 'Rustom Ali', 'Farmer', 'Late Shahara khatun', 'Late', 'Two sisters and four brothers,They are totally several from me,my father is not capable to earn.', 'I want to be a competent job holder.', 'Male', 1, 'Enamul Haque likhon', 'Student', '13476793744', '5000', 'Agriculture', 'No', 'Carrying on my study.', '2022-01-29 00:12:32', '2022-01-29 08:25:36'),
(126, 103, '2201103', 'Md Abdur Rahman', 'hmuazzem88@gmail.com', '01861710270', '2007-01-24 00:00:00', 'Muazzem  Hossain', 'Business', 'Kaniz Fatima', 'Housewife', 'Two sister\'s.  One is study at college. Another is study at  class 2.', 'To be a computer engineer.', 'Male', 1, 'Zulfiqer sekendar', 'Software  engineer', '1- 732- 491-9728', '7000', 'Business', 'No', 'My father is a business man. He can not maintain  my  educational expense.  So Iam badly in  need of financial  support from  Hridoya Bangladesh.', '2022-01-29 00:28:19', '2022-01-29 00:28:19'),
(129, 108, '2201108', 'Mst Nice Khatun', 'nicekhatun5219@gmail.com', '01757065219', '2004-12-30 00:00:00', 'Z. M. Fozlul Haque', 'Farmer', 'Mst. Afroza Khatun', 'Housewife', 'One sister and one brother. Both are studying in  different classes.', 'To be a teacher', 'Female', 1, 'Zulfiqer Sekender', 'Software Engineer', '1-732-491-9728', '6000', 'From farming', 'N/A', 'My father is a poor farmer. He has no other income source. He can not maintain my education expenses.', '2022-01-29 02:12:16', '2022-01-30 07:45:02'),
(130, 109, '2201109', 'AL SAD MUBIN', NULL, '01861307422', '2006-07-07 00:00:00', 'MD MIJANUR RAHMAN', 'Farmer', 'MST NARGIS BEGUM', 'Housewife', NULL, 'My aim in life become to be a doctor', 'Male', 1, 'ZULFIQUER SEKENDER', 'Software Engineer', '1-732-491-9728', '10000', 'Agriculture', NULL, 'My father is poor man. So, i need financial suppot for studyes', '2022-01-29 05:37:54', '2022-01-29 05:37:54'),
(131, 110, '2201110', 'Md Nahimur Rahman', 'mdnahimur88@gmail.com', '01946147612', '2006-07-17 00:00:00', 'Md Mustafizur Rahman', 'Jobman', 'Mst Suraiya Naznin', 'Housewife', 'I have one brother and one sister.Both of them are study in different class.', 'I want to be a doctor or engineer', 'Male', 1, 'Zulfiqer Sekender', 'Software engineer', '1-732-491-9728', '10000', 'From job', 'No', 'We have large family . My father is the only earner.He can moto maintain mu educational expensen.So I ami badly in need of financial support from Hridoya Bangladesh.', '2022-01-30 00:06:06', '2022-01-30 00:06:06'),
(132, 106, '2201106', 'Md Mubin Hossain', NULL, '01736842046', '2007-07-15 00:00:00', 'Me. Kamal.', 'Farmer', 'Mst. Yasmin khatun', 'Housewife', 'No', 'To become doctor', 'Male', 1, 'Zulfiqer sekender', 'Software engineer.', '1-732-491-9728', '4000', 'From agricuture', 'No', 'My father is a poor farmer. He has no other income source. He can maintain my educational expenses very difficulty. Now, I am badly in need of financial support from Hridoya Bangladesh.', '2022-01-30 04:00:40', '2022-01-30 04:00:40'),
(133, 111, '2201111', 'MD Johurul Islam Nishan', NULL, '01996896652', '2006-11-07 00:00:00', 'Let. Monnirul islam', 'No', 'Mst. Johura Begum', 'Housewife', 'One sister. She is married.', 'To be a teacher', 'Male', 1, 'Enamul Haque Likhon', 'Student', '+1347-679-3744', '4000', 'Helping sister.', 'No', 'I have lost my father. My sister maintens my educational expenses. Now she can not bear my educational expenses. So I am badly in need of financial support from Hridoya Bangladesh.', '2022-01-30 05:32:30', '2022-01-30 05:32:30'),
(134, 112, '2201112', 'Md nasimul haque', 'mdnasimulhaqueayon@gmail.comm', '01728131327', '2004-03-04 00:00:00', 'Md nizamul haque', 'Business', 'Iffat jahan', 'Housewife', 'I have one brother and two sisters.we all are studying.', 'Engineer', 'Male', 1, 'Zulfiqure sekendar', 'Software Engineer', '173-2491-9728', '10000', 'Business', 'No', 'Study', '2022-01-30 06:58:42', '2022-01-30 06:58:42'),
(135, 105, '2201105', 'Eshrat Tabassum', NULL, '01988161750', '2006-02-19 00:00:00', 'Z. M. Fozlul Haque', 'Farmer', 'Mst. Afroza Khatun', 'Housewife', 'One sister & one brother. Both of them studying in different classes.', 'To be a banker', 'Female', 1, 'Zulfiqer Sekender', 'Software Engineer', '1-732-491-9728', '6500', 'From farming', 'No', 'I am badly in need of financial support from Hridoya Bangladesh.', '2022-01-31 00:37:13', '2022-01-31 00:37:13'),
(136, 99, '2201099', 'Zannatul maua', 'rifirij@gmail.com', '01795466967', '2005-12-30 00:00:00', 'Md. Shohidul Islam', 'Late', 'Shirina Shahid', 'Housewife', 'Three sisters and one brother. Both of them are separate.', 'To be a doctor', 'Female', 1, 'Zulfiqer Sekender', 'Software Engineer', '1-732-491-9728', '4000', 'Take money from Sister', 'No', 'I have lost my father. At this moment no one can help me.', '2022-01-31 01:04:36', '2022-01-31 01:04:36'),
(137, 113, '2202113', 'Chadni Akter', 'akterchadni2936@gmail.com', '01302702780', '2002-02-12 00:00:00', 'Md. Hanif Jorder', 'Farmer', 'Miss: Taslima Bibi', 'Housewife', NULL, 'Being an idle nurse', 'Female', 1, 'Md. Hanif Jorder', 'Farmer', '01782931900', '3000', 'Agriculture', 'No', 'Study', '2022-02-02 07:42:10', '2022-02-02 07:42:10'),
(138, 113, '2202113', 'Chadni Akter', 'akterchadni2936@gmail.com', '01302702780', '2002-02-12 00:00:00', 'Md. Hanif Jorder', 'Farmer', 'Miss: Taslima Bibi', 'Housewife', NULL, 'Being an idle nurse', 'Female', 1, 'Md. Hanif Jorder', 'Farmer', '01782931900', '3000', 'Agriculture', 'No', 'Study', '2022-02-02 07:42:11', '2022-02-02 07:42:11'),
(139, 117, '2202117', 'Naem Asraf Niloy', 'naeemniloy000@gmail.com', '01706749697', '2005-02-14 00:00:00', 'Md. Abdul Khalek', 'Farmer', 'Mst. Nargis Parven', 'Housewife', 'Brother-Under S.S.C', 'Doctor', 'Male', 1, 'Mst. Nargis Parven', 'Housewife', '01793989603', '10000', 'By farming', 'No', 'Being poor', '2022-02-03 22:32:26', '2022-02-03 22:32:26'),
(140, 118, '2202118', 'Md Rana Hamid', 'ranahamidana@gmail.com', '01755432504', '2002-08-07 00:00:00', 'Md Rashedul Islam', 'Farmer', 'Mst Rajia Begum', 'House wife', 'I have a  younger brother who  reads in class 5', 'Be the most encouraging and uplifting person I know', 'Male', 1, 'Shazzad Hosain', 'Professor', '01767-511161', '10000', 'Farming', NULL, 'Recently I got the opportunity to study at Dhaka University, my family is financially indigent so they can\'t afford my education fees.', '2022-02-06 00:36:07', '2022-02-08 13:16:12'),
(141, 124, '2202124', 'Fariha', 'farihasultana721@gmail.com', '01788720902', '2004-02-10 00:00:00', 'Samsur Rahman', 'Farmer', 'Johura Begam', 'House-wife', NULL, 'Bcs cader in english', 'Female', 1, 'Arshadur Rahman', 'Adv', '01717449418', '2000', 'Agriculture', NULL, 'My family can not leads my studies', '2022-02-08 13:13:35', '2022-02-08 13:13:35'),
(142, 126, '2202126', 'Md. Rubel Sarker', 'u1802121@student.cuet.ac.bd', '01969736906', '1999-11-25 00:00:00', 'Md. Golam Robbani', 'Late', 'Mst. Dulaly Begum', 'Housewife', 'I have my two elder brothers who work in garment factory in Dhaka and both are married and separated from us.', 'To be honest and sincere Engineer.', 'Male', 1, 'Md Shazzad Hosain', 'Teacher', '01767511161', '3000', 'Bidhaba Vata (mother) and other working.', 'No.', 'My father had died when i was in one year old. After being marriage of my two elder brothers, they are separated with ther own family and thus i will not get any financial support from them. My mother is a housewife who has Bidhaba bhata and some other working. In thus condition, to continue my undergraduate financial support is badly needed.', '2022-02-10 07:48:31', '2022-02-10 07:48:31');
INSERT INTO `students` (`id`, `user_id`, `sid`, `name`, `email`, `phone`, `dob`, `father_name`, `father_profession`, `mother_name`, `mother_profession`, `siblings`, `aim_in_life`, `gender`, `same_as_parmanent`, `reference_name`, `reference_profession`, `reference_phone`, `family_income`, `income_source`, `other_scholarship`, `reason`, `created_at`, `updated_at`) VALUES
(143, 119, '2202119', 'Mst. Shangita Islam', NULL, '01718893014', '2006-06-06 00:00:00', 'Md. Saiful Islam', 'Small Business', 'Mst. Rupali Begum', 'Housewife', 'Two small brothers. One in Class four. another one is too small to go to school.', 'I want to be a doctor or, engineer.', 'Female', 1, 'Shazzad Hossain', 'Faculty', '01767511161', '5000', 'Father', 'No', 'My father doesn\'t get so much amount. He is our only income source. My brothers are so small. We have difficult conditions for living.', '2022-02-11 00:29:31', '2022-02-11 00:29:31'),
(144, 57, '2202057', 'MD Masbah Uddin', 'mashsoumik02@gmail.com', '01637460805', '2001-06-22 00:00:00', 'Abdul Mannan', 'Farmer', 'Minara Akter Minu', 'Housewife', 'Sister: \r\nName: Tasnia Tanha\r\nClass: 09\r\nSchool: Uttar Char Veduria High School, Bhola', 'I would like to be a computer engineer. It is with this goal in mind that I have been trying since my childhood to be successful and reach the goal of life. For that I need some overall cooperation. Thanks.', 'Male', 1, 'Abdul Kader', 'Retired Professor', '01670774906', '10000', 'Farming', NULL, 'I am financially very poor in terms of my family. Because of my father\'s limited income, that income goes to the family. So it is not possible for him to bear the cost of my studies. So your help and cooperation is very much needed so that I can fulfill my dream.', '2022-02-12 00:25:22', '2022-02-12 00:26:08'),
(145, 132, '2202132', 'Lamima Tasmin', 'lamimtasnim@gmail.com', '01908601684', '2003-11-13 00:00:00', 'Md Liakot Ali', 'Farmer', 'Miss Shahidah Khatun', 'Housewife', 'Two younger brother and sister.', 'Pharmacist', 'Female', 1, 'Rehena Akter', 'Teacher', '01556315800', '3000', 'Farming', 'None', 'My father becomes unable to bear my study cost so why i need financial support...', '2022-02-12 03:32:57', '2022-02-12 03:32:57'),
(146, 127, '2202127', 'Shorif Mollah', 'shorifkhanm59@gmail.com', '01966340008', '2004-01-01 00:00:00', 'Abdul Malek Mollah', 'Poultry farm worker', 'Taslima Begum', 'House wilfe', 'Two brothers and three sisters.', 'Want to be a Web-developer', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '10000', 'Poultry Farm Worker', 'No', 'My family members are five. Our family lived in Village. I am staying in Dhaka to study at Sohag Swapandhara Pathshala. My father\'s income is not sufficient to manage our family\'s expenditures.', '2022-02-12 08:16:02', '2022-02-12 08:16:02'),
(147, 140, '2202140', 'Md. Rumel Majumdar', 'rumelmojumder2020@gmail.com', '01650078198', '2007-01-01 00:00:00', 'Md..Noor Alom', 'Rikshaw-puller', 'Rahema begum', 'House wife', 'to birther', 'freelancer', 'Male', 1, 'Shagorika Das', 'co-Founder & Head Teacher of SSP', '01914494682', '10000', 'worker', 'No', 'We are in three members. My Father is a Rikshaw-puller and my mother is a housewife. Father was in an accident for two years.  That\'s why he can no bt drive rickshaws.', '2022-02-13 00:02:33', '2022-02-13 00:02:33'),
(148, 139, '2202139', 'Md. Mahabub Alom', 'mdmahabubislam4620@gmail.com', '01917610923', '2004-01-01 00:00:00', 'Shafiul Islam', 'Rikshaw-puller', 'Kilsum Bagum', 'House wife', 'One Sister One Birther', 'White Haker', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '8000', 'Rikshaw-puller', 'No', 'My family has a lot of problems, As a result, I can\'t study well, I can\'t wear private sites, in any good place so scholarship, I would be able to run my writing job well.', '2022-02-13 00:15:30', '2022-02-14 00:11:41'),
(149, 137, '2202137', 'Md. Monarul Islam', 'hasanmiya2004@gmail.com', '01917614199', '2004-12-09 00:00:00', 'Md.Shhidul Islam', 'Rikshaw-puller', 'MST.Moyna Begum', 'House wife', 'one sister one birther', 'Army', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '9000', 'Rikshaw-puller', 'No', 'My family couldn\'t take my study expenses.', '2022-02-13 00:48:02', '2022-02-13 00:48:02'),
(150, 138, '2202138', 'Md. Rifat Dhali', 'mamummamunhh-634@gmail.com', '01729996466', '2008-01-01 00:00:00', 'Md.Kalam Dali', 'Rikshaw-puller', 'MST.Swapna Begum', 'House wife', '3 Birther', 'Buisness', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '10000', 'Rikshaw-puller', 'No', 'My Family Couldn\'t take my study expense. so you give me this facility will be a good study.', '2022-02-13 01:07:04', '2022-02-13 01:07:04'),
(151, 136, '2202136', 'Md.Rabbi Shekh', NULL, '01752730115', '2007-01-23 00:00:00', 'Md.Abul Hossen', 'worker', 'MSTI.Nargis Begum', 'House wife', '2 brothers and 1 sister.', 'BCS Cader.', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '12000', 'worker', 'NO', 'My family couldn\'t MY study expenses.', '2022-02-13 01:20:39', '2022-02-13 01:20:39'),
(152, 129, '2202129', 'Sumaiya Kather Sima', NULL, '01936561709', '2004-10-11 00:00:00', 'Md.Shahalome', 'Daly worker', 'MSTI.Akhi begum', 'House wife', '2 sisters and 1 brother.', 'Banking', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '9000', 'Daly worker', 'No', 'My Family couldn\'t .my study expense.', '2022-02-13 01:31:43', '2022-02-13 01:31:43'),
(153, 131, '2202131', 'Md. Golam Rabbi', NULL, '01939472502', '2006-05-22 00:00:00', 'Syed Ahmed', 'Jobless', 'Forida begum', 'House wife', 'one brother and two sisters.', 'Army', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '9499', 'working other house', 'No', 'My family couldn\'t take my study expenses.', '2022-02-13 01:45:48', '2022-02-13 01:45:48'),
(154, 130, '2202130', 'Md.Hanif Uddin Manik', NULL, '01963345349', '2006-02-01 00:00:00', 'Faize uddin', 'Rikshaw-puller', 'Momtaj begum', 'House wife', '2 brother', 'Pilot', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '8000', 'Rikshaw-puller', 'No', 'My family couldn\'t take my study expense.', '2022-02-13 01:58:07', '2022-02-13 01:58:07'),
(155, 128, '2202128', 'Merina khatun', NULL, '01751350059', '2004-01-01 00:00:00', 'Md.Mehedul Islam', 'Painter and Furniture worker', 'MST. Lutfon Begum', 'House wife', '2 sisters and 1 brother.', 'Doctor', 'Female', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '10000', 'Pinter and work in other house', 'yes', 'My family couldn\'t take my study expense.', '2022-02-13 02:13:52', '2022-02-13 02:13:52'),
(156, 141, '2202141', 'Md. Hossen', NULL, '01921590536', '2007-01-01 00:00:00', 'Late, Md. Alom', 'No more Late', 'MTS. Golenur Begum', 'Work at Home', '3 brothers and 1 sister.', 'Singer', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '9000', 'Work at Home', 'No', 'My family couldn\'t take my study expense.', '2022-02-13 02:27:07', '2022-02-13 02:27:07'),
(157, 134, '2202134', 'Md. Jahid', NULL, '01849540088', '2007-12-09 00:00:00', 'Md.Ruhul amin', 'Rikshaw-puller', 'Hazera Begum', 'House wife', '2 brothers and 1 sister.', 'Business', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '8000', 'Rikshaw-puller', 'No', 'My family couldn\'t my study experience.', '2022-02-13 03:35:10', '2022-02-13 03:35:10'),
(158, 135, '2202135', 'Md. Rasel', NULL, '01951471732', '2007-09-12 00:00:00', 'Md.Ruhul amin', 'Rikshaw-puller', 'Hazera Begum', 'House wife', '2 brothers and 1 sister.', 'Business', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '8000', 'Rikshaw-puller', 'No', 'My family couldn\'t. my study experience.', '2022-02-13 03:49:22', '2022-02-13 03:49:22'),
(159, 147, '2202147', 'Md. Sumom Shikder', NULL, '01989161194', '2006-01-01 00:00:00', 'Monir Shikder', 'Van Driver', 'Asma Begum', 'House wife', '3 brother', 'computer software engineer.', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '13000', 'Father occupation.', 'No', 'My family lives on a low income. that is why I am benefiting. various civic benefits such as educational and medical facilities. with this facility, I will be able to continue educational activities and I want to be able to get out of this situation. I want to be a good person.', '2022-02-13 07:19:01', '2022-02-13 07:19:01'),
(160, 146, '2202146', 'Md. Shuvo', NULL, '01758472938', '2007-07-01 00:00:00', 'Samidul Hoaue', 'Manager', 'Nehera Begum', 'House wife', '1 brother snd 3 sisters.', 'cricket', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '15000', 'father Manager .', 'No', 'Now someone has given a little problem to my family. So it is not possible for my father to cover the cost of my education and family expenses.', '2022-02-13 07:37:41', '2022-02-13 07:37:41'),
(161, 143, '2202143', 'Md. Momin Mollah Shubo', NULL, '01953929502', '8008-02-22 00:00:00', 'Moslem uddin', 'Bnick mason', 'Shahinur Begum', 'House wife', '2 Brother', 'RAB', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '15000', 'Brick man', 'No', 'Now someone has given a little problem to my family. So it is not possible for my father to cover the cost of my education and family expenses.', '2022-02-13 07:51:12', '2022-02-13 07:51:12'),
(162, 142, '2202142', 'Md. Rakib Shikder', NULL, '01903539259', '2004-01-07 00:00:00', 'Satter Sikder', 'Gard', 'Yeasnur Begum', 'House keeper', '1 sister 1 brother.', 'Engineer', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '10000', 'House keeper', 'No', 'My father is too old to work anymore. My mother runs our family by working. so I want this scholarship to cover my study.', '2022-02-13 08:08:32', '2022-02-13 08:08:32'),
(163, 151, '2202151', 'Mst.Asma Akter', NULL, '01877367616', '2002-11-10 00:00:00', 'Mobark Hossain', 'work less', 'Shahanaj Begum', 'House wife', '4 sister 1 brother', 'I want to be a teacher.', 'Female', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '15000', 'Sister and Brother', 'No', 'I am a girl from a low-income family. my father can\'t work. He had an accident 3 years ago. My sister and brother are struggling to make ends meet. S, I want your help', '2022-02-13 21:41:03', '2022-02-13 21:41:03'),
(164, 149, '2202149', 'Mst.Jhorna Akter', 'jornaakthermst397@gmail.com', '01860283357', '2005-05-10 00:00:00', 'Md.Rofikul Islam', 'Daly workar', 'MST. Fukjan Begum', 'House wife', '3 sister and 2 brother', 'Teacher', 'Female', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '13000', 'Big Brother and father erning', 'No', 'I had got this opportunity I might have cognitive my study cost.', '2022-02-13 22:01:19', '2022-02-13 22:01:19'),
(165, 150, '2202150', 'Mst.Ratna Akter', 'rikbarahannkdhi@gmail.com', '01755444588', '2004-05-03 00:00:00', 'Md.Ratun Mia', 'Business', 'MST.Bobita Begum', 'House wife', '2 sisters and 1 brother.', 'Banker', 'Female', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '8000', 'Vegitable seller.', 'No', 'I have no Financial support. that\'s, why I could not, bears my study cost.', '2022-02-13 22:12:49', '2022-02-13 22:12:49'),
(166, 148, '2202148', 'Md.Korban Hossein', 'mdk367072@gamai.com', '01929438256', '2004-10-08 00:00:00', 'Md.Billal Hossain', 'Jobless', 'MST.Rina Begum', 'House keeper', '2 brothers and 1 sister.', 'Football', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '11000', 'Brother and mother', 'No', 'My family Members lot of problems. as a result. I can study well.', '2022-02-13 22:23:47', '2022-02-13 22:23:47'),
(167, 153, '2202153', 'Mst Sultana Akter', 'sultanasumi366@gmail.com', '01780724325', '2000-03-04 00:00:00', 'Md Shafirul Islam', 'Laborer', 'Mst Moslema Begum', 'Housewife', 'I have a younger sister who is studying for a Diploma in Engineering.', 'I am studying Diploma Engineering in Computer  Department. My goal is to become a Computer Engineer.', 'Female', 1, 'Md Sazzat', 'Job', '+880 1749-117117', '9000', 'Laborer', 'No', 'My father is a day laborer. It has become very difficult for her to support her family and run my studies.', '2022-02-13 22:29:27', '2022-02-13 22:31:14'),
(168, 144, '2202144', 'Rabeya Akter', NULL, '01854185776', '2003-09-06 00:00:00', '(late) Ibrahim Kholil', 'Late', 'MST.Bibi Aysha', 'House keeper', '5 brothers and 3 sisters.', 'Teacher', 'Female', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '8000', 'Mother House keeper', 'NO', 'My family couldn\'t bear my tuition.', '2022-02-13 22:34:23', '2022-02-13 22:34:23'),
(169, 145, '2202145', 'Md. Liton', 'md1806235@gmail.com', '01314932853', '2007-07-08 00:00:00', 'Md.Suidul Islam', 'Rikshaw-puller', 'MST. Lili Begum', 'Home Service', '2 brothers and 1 sister.', 'Army', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '12000', 'Rikshaw-puller', 'No', 'My family has a lot of problems. as a result . I cant study well. I couldn\'t bear private tuition.', '2022-02-13 22:47:34', '2022-02-13 22:47:34'),
(170, 163, '2202163', 'Jannatul Ferdous', NULL, '01916176186', '2006-09-27 00:00:00', 'Samad Sheikh', 'Electik', 'laiju Begum', 'House wife', '2 brothers and 2 Sisters.', 'Mejor', 'Female', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '11000', 'Father and Brither Erning.', 'No', 'My parents are separated, Because o this I could not bear my educational expense. If I get this opportunity, I could continue my study cost.', '2022-02-14 01:41:50', '2022-02-14 01:41:50'),
(171, 162, '2202162', 'Md.Nahid majhi', NULL, '01794400048', '2005-09-11 00:00:00', 'Shiddik majhi', 'Brickmason', 'Nazma Begum', 'House keeper', '4 Brother.', 'Microsft Officer.', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '11000', 'Father per month and mother fer month', 'No', 'My family lives on a low income, I have written the description of these in this form. the  Financial condition is not good. I want t to be a good man. I want to be able to get out of the situatiom.', '2022-02-14 01:54:05', '2022-02-14 01:54:05'),
(172, 161, '2202161', 'Sumaiya Akter', NULL, '01409734668', '2007-03-05 00:00:00', 'Md.Syod Mollah', 'Jobless', 'Forida begum', 'House keeper', '2 sisters and 1 brother.', 'Police', 'Female', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '10000', 'Mother House keeper', 'No', 'I and my family live on a low income, Because, of this, we are deprived of various social benefits, such as education, medical care, housing. I will be able to continue my educational activities through this facility.', '2022-02-14 02:06:48', '2022-02-14 02:06:48'),
(173, 160, '2202160', 'Marju Akter', 'marjuakkkter@gmail.com', '01984695036', '2005-09-20 00:00:00', 'Tosir Howlader', 'Day Labour', 'Bilkis Begum', 'House keeper', '2 sisters and 3 brothers.', 'Want to be a Banker.', 'Female', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '12000', 'Father and mother', 'Yes. (CEDF)', 'I have 5 members in my family. My father is an old man. He bears the expenses of our family. Again my mother is almost sick. She can\'t work properly. A lot of money is spent on her treatment. So it is not possible for them to bear the cost of my education. But I want to continue my studies.', '2022-02-14 02:23:24', '2022-02-14 02:23:24'),
(174, 159, '2202159', 'Surma Akter', NULL, '01985112081', '2006-02-14 00:00:00', 'Rafik majhi', 'Brick mason', 'Jesmin Begum', 'House keeper', '2 sisters and 1 brother.', 'Narce', 'Female', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '15000', 'Father and mother', 'No', 'My family members are not able t my education.', '2022-02-14 02:30:38', '2022-02-14 02:30:38'),
(175, 158, '2202158', 'Fahima Akter', NULL, '01925779429', '2005-01-12 00:00:00', 'Md.Hanif Mia', 'Night Gard', 'Lili Begum', 'House keeper', '1 sister and 2 brothers.', 'Nurs', 'Female', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '18000', 'Father and Brither Erning.', 'NO', 'I have 5 members in my family. My father is an old man. He bears the expenses of our family. Again my mother is almost sick. She can\'t work properly. A lot of money is spent on her treatment. So it is not possible for them to bear the cost of my education. But I want to continue my studies.', '2022-02-14 02:59:00', '2022-02-14 02:59:00'),
(176, 157, '2202157', 'Mst.Rekha Akter', 'tubashanija@gmail.com', '01868537037', '2005-07-27 00:00:00', 'Md.Joynal', 'NO', 'Parbin Begum', 'House keeper', '1 brother and 1 sister.', 'Nurse', 'Female', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '9000', 'Mother House keeper', 'No', 'My mother works alone. as there are more members in our family, a mother struggles t run the. family properly. couldn\'t afford my tuition. so I need the scholarship,', '2022-02-14 03:11:23', '2022-02-14 03:11:23'),
(177, 164, '2202164', 'Musabbirul Islam', 'musabbirul81@gmail.com', '01776829370', '2000-11-27 00:00:00', 'Abdul Karim Mia', 'Farmer', 'Musafa Aktar', 'Housewife', 'One brother & no sister \r\nMusnad Islam \r\nStudent', 'Teacher', 'Male', 1, 'Masum', 'Businessesman', '01718465648', '3000', 'Farming', 'No', 'It is difficult to study financially.', '2022-02-14 03:13:21', '2022-02-14 03:13:21'),
(178, 156, '2202156', 'Bayzid Bostami Rahul', 'djrahul2530@gmail.com', '01768250420', '2003-10-17 00:00:00', 'Jahangir Alom', 'Bed Sheet seller', 'Neharul Nesa', 'House wife', '1 sister and 1 brother.', 'Businessman', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '10000', 'Father', 'No', 'Be a backup of my father.', '2022-02-14 03:19:55', '2022-02-14 03:19:55'),
(179, 155, '2202155', 'Md.Nayee Islam', 'md.nayeem55900@gmail.com', '01836482594', '2004-09-05 00:00:00', 'Abu said', 'Jobless', 'Marium Begum', 'House wife', '5 brothers and 2 sister', 'freelancer', 'Male', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '15000', 'Brother', 'No', 'I come fee. If I  take the Scholarship. so, I will Countinue', '2022-02-14 03:27:21', '2022-02-14 03:27:21'),
(180, 154, '2202154', 'Sriti Akther', 'sritimoni2003@gmail.com', '01784463211', '2003-01-02 00:00:00', 'Md.Kholil Mia', 'Helper', 'Parul Begum', 'House keeper', '3 sister', 'Banker', 'Female', 1, 'Shagorika Das', 'Co-Founder & Head Teacher of SSP', '01914494682', '10000', 'Father and mother', 'No', 'financial problem.', '2022-02-14 03:35:30', '2022-02-14 03:35:30'),
(181, 165, '2202165', 'Md. MUSNAD Islam SOHAG', 'musnadislam977@gmail.com', '01407673689', '2004-02-09 00:00:00', 'Abdul Karim Mia', 'Farmer', 'Musafa Akter', 'Household', 'One brother', 'To be an honest Doctor', 'Male', 1, 'Md. Sajjad', 'Service holder', '01767511161', '2000', 'Agriculture', 'Government scholarship', 'I want to be a doctor but my family can\'t able to bear my educational expenses and so to fulfill my dream your help must be needed.', '2022-02-14 04:17:31', '2022-02-14 04:17:31'),
(182, 167, '2202167', 'Ummah Siratun Ferdousi Sharna', 'siratunsorna@gmail.com', '01621617010', '1997-12-04 00:00:00', 'Late. Afsar Hossain', 'Late', 'Mst. Shahana Pervin', 'Housewife', 'I\'ve two sisters.\r\nMy elder sister is married & younger sister is a student of honours 2nd year.', 'I want to do a Job', 'Female', 1, 'Ahsan Habib Palash', 'Vice-President of Engineering, Telenav', '+1 (408) 4312178', '7056', 'Father\'s pension', 'No', 'There is no earning member in my family. It\'s so hard to continue my study at this limited amount of my father\'s pension', '2022-02-15 03:39:04', '2022-03-13 09:28:11'),
(183, 169, '2202169', 'Md.Rifadujjaman Rifad', NULL, '01770955952', '2004-10-08 00:00:00', 'Md.Solaman Ali', 'Farmer', 'Mst.Hajara Khatun', 'Housewife', 'Brother-under ssc', 'Doctor', 'Male', 1, 'Md.Solaman Ali', 'Farmer', '01735822683', '1000', 'Farming', 'No', 'Begin poor', '2022-02-15 04:48:31', '2022-02-15 04:48:31'),
(184, 168, '2202168', 'MD.Jamil Hosen', 'jamilhosen2003@gmail.com', '01744251495', '2003-06-28 00:00:00', 'মোঃ সিরাজুল হক', 'Farmer', 'মোছাঃ জোসনা বেগম', 'housewife', NULL, 'Doctor', 'Male', 1, 'Md.A.T.M Mizanur Rahman', 'Teacher', '01797743331', '7500', 'Farming', 'None', 'আমার বাবা একজন কৃষক। তার পক্ষে আমার শিক্ষার ভাড় বহন করা তার পক্ষে অনেক কষ্টকর। শিক্ষাবৃত্তি পেলে উপকৃত হবো।।', '2022-02-15 04:53:43', '2022-02-15 08:18:39'),
(185, 189, '2202189', 'Md. Anwar Hossen', 'binhashem.01@gmail.com', '01831197248', '2001-06-30 00:00:00', 'Md.Abul Hashem Molla', 'Farmar', 'Meheron Nesa', 'Housewife', 'I have one sister & one brother .My sister is studying at L.L.B in Jahangirnagor University & my brother is studying at B.B.A in University of Barishal.', 'I want to be a B.C.S cadre so that I can serve the nation.Besides,I want to establish  a organisation which will help the poor & street children.', 'Male', 1, 'Al-Borhan', 'Teacher', '01712744283', '3000', 'Agriculture', 'None', 'My father is a landless poor farmar.At this moment he can not bear our educational expenses. I have not yet  got any private  tuition so that I can bear my educational expenses.That is why I badly need the scholarship .If I get the scholarship, I can continue my study.Otherwise, I cannot continue my study.Please sanction me the scholarship.', '2022-02-19 02:03:13', '2022-02-27 12:48:26'),
(186, 190, '2202190', 'Md. Forid Mia', 'foridahmedaaa6@gamil.com', '01643840050', '2005-01-01 00:00:00', 'MD ABUL KALAM', 'FARMAR', 'MST HAMIDA KHATUN', 'teacher', NULL, 'Teacher', 'Male', 1, 'robbani', 'Farmar', '01734947317', '12000', '12000', NULL, 'me', '2022-02-19 02:16:19', '2022-02-19 02:16:19'),
(188, 192, '2202192', 'Anzumand Ara Mouri', 'anzumanara468@gmail.com', '01714694249', '1999-08-19 00:00:00', 'Late. Afsar Hossain', 'Late', 'Mst. Shahana Parvin', 'Housewife', 'I have two elder sisters.\r\n1st one is married & 2nd one is a student of Master’s', 'I want to get a government job', 'Female', 1, 'Ahsan Habib Palash', 'Vice- President of Engineering, Telenav', '+1 (408) 4312178', '7056', 'Father\'s pension', 'No one', 'There is no earning member in my family.So,it is very much hard to compete my education.so,I need a support.', '2022-02-20 06:47:09', '2022-02-20 06:47:09'),
(189, 193, '2202193', 'Shopna Akter', 'shopnakter113@gmail.com', '01317880113', '2002-03-15 00:00:00', 'Md.Kanchon Molla', 'Farmar', 'Momena Begum.', 'Housewife', 'I have one sister and one brother. My sister is studying at B.S.S under national University and my brother is studying in a college.', 'I want to join Bangladesh Judicial Service so that I can establish justice in our society.Over all I want to help the helpless people in our country.', 'Female', 1, 'Md.Sohel Rana', 'Teacher', '01780186318', '4000', 'Agriculture', 'None', 'My father is a poor farmer. So he can not bear our educational expenses at this moment.ln this situation I can not continue my study. If I get the scholarship,I can continue my study.', '2022-02-20 08:39:13', '2022-02-20 08:39:13'),
(190, 122, '2202122', 'dulal_499A_test', 'abusufian482@gmail.com', '01791928169', '1999-01-11 00:00:00', 'Rahim', 'Businessman', 'Rahima', 'housewife', NULL, 'Engineer', 'Male', 1, 'Karim', 'Teacher', '99575955', '10000', 'worker', NULL, 'Poor', '2022-02-22 22:04:24', '2022-02-22 22:04:24'),
(191, 198, '2203198', 'Fatema Akter', 'henabegum4758@gmail.com', '01731587120', '2003-03-01 00:00:00', 'Md. Shamsul Haque', 'Worker', 'Hena Begum', 'House wife', NULL, 'I want to be a teacher.', 'Female', 1, 'Saiful Islam', 'Worker', '01731587120', '9000', 'Job', 'No', 'My family some member lost their job in this covid -19 situation. So my family hits much financial problem. If i don’t get any financial support, my education will be close.', '2022-03-02 06:12:10', '2022-03-02 06:12:10'),
(192, 195, '2203195', 'Sk.Ashfika Ali', 'ashfikaalisinthya@gmail.com', '01779446713', '1998-11-11 00:00:00', 'Sk Azher Ali', 'Late', 'Sk.Sazma Ali', 'Housewife', '1 younger sister and 1 younger brother', 'A successful woman', 'Female', 1, 'Shagorika Das', 'Founder of Swapnadhara Human Welfare Society', '01914494682', '15000', 'House rent', 'No', 'Mother give me Backup', '2022-03-03 10:10:10', '2022-03-03 10:10:10'),
(193, 201, '2203201', 'Shilpy Akter', 'shilpiakter10200@gmail.com', '01934273276', '2001-01-01 00:00:00', 'Mosle Uddin', 'Day laborer', 'Sufia Begum', 'Housewife', '1. I am a student.\r\n2. My elder brother is a Tailor.\r\n3. My younger brother is read in class-6. \r\n4. My younger sister is read in class-5.', 'Nursing', 'Female', 1, 'Shagorika Das', 'The head teacher of the Sohag Swapnadhara Pathshala', '01914494682', '20000', 'My Father\'s and my brother\'s job', 'I have no any other Scholarship.', 'My family\'s financial situation is not good so it is not possible for them to pay for my education. That\'s why I need financial support to continue my studies.', '2022-03-07 11:36:38', '2022-03-14 10:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hridoya Bangladesh', '2021-11-23 03:08:34', '2021-11-23 03:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `string_aim_in_life` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_aim_in_life` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longtext_aim_in_life` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `tenant_id`, `name`, `email`, `phone`, `photo_url`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Super Admin', 'superadmin@gmail.com', '01700000000', '/uploaded_photo/user_photo/USER1-1643298297.png', NULL, 'admin!@#$', NULL, '2021-11-23 03:05:16', '2022-01-27 09:44:57'),
(2, 1, 'HB Admin', 'Super Admin', '01749117117', '/uploaded_photo/user_photo/USER2-1639334022.png', NULL, 'mss352bd', NULL, '2021-11-23 03:09:43', '2022-01-24 23:01:52'),
(4, NULL, 'SaqifTest', NULL, '01677278561', '/uploaded_photo/user_photo/USER4-1639550796.png', NULL, '1234', NULL, '2021-11-24 11:00:36', '2021-12-15 06:46:36'),
(5, NULL, 'Fuad Hossain', 'fuadhossainbk01@gmail.com', '01627408824', NULL, NULL, 'nishad01', NULL, '2021-11-27 20:18:38', '2021-11-27 20:18:38'),
(6, NULL, 'Lata Bonik', 'boniklata@gmail.com', '01786640212', '/uploaded_photo/user_photo/USER6-1640444019.png', NULL, 'Latahb4537', NULL, '2021-12-05 07:04:07', '2021-12-25 14:53:39'),
(7, NULL, 'Mt. Asma Khatun', 'mtasma380226@gmail.com', '01701586380', NULL, NULL, '1234567890asma', NULL, '2021-12-05 08:01:12', '2021-12-05 08:01:12'),
(8, NULL, 'Md Asikur Rahman', 'asikurr2764@gmail.com', '01729720678', '/uploaded_photo/user_photo/USER8-1639893171.png', NULL, 'asik27445', NULL, '2021-12-06 03:16:12', '2021-12-19 05:52:51'),
(9, NULL, 'Rumpa Akter Rupa', 'hrrumpaakterrupa@gamail.com', '01835929782', NULL, NULL, '01905194920', NULL, '2021-12-07 08:18:36', '2021-12-07 08:18:36'),
(10, NULL, 'SHRABONI CHOWDHURY', NULL, '01717027383', NULL, NULL, '1234', NULL, '2021-12-09 14:56:45', '2021-12-09 14:56:45'),
(11, NULL, 'Nazmul shakid', 'shakitnazmul@gmail.com', '01580344037', NULL, NULL, 'mimshakid', NULL, '2021-12-13 12:04:29', '2021-12-13 12:04:29'),
(14, NULL, 'Ratry Bonik', 'ratrybanik1998@gmail.com', '01798300284', '/uploaded_photo/user_photo/USER14-1640334472.png', NULL, 'Lataratrytanmoy', NULL, '2021-12-15 06:44:18', '2021-12-24 08:27:52'),
(15, NULL, 'Joyeta Kar', 'joyetakar105@gmail.com', '01768682094', '/uploaded_photo/user_photo/USER15-1639551003.png', NULL, 'joyeta105**', NULL, '2021-12-15 06:46:25', '2021-12-15 06:50:03'),
(16, NULL, 'Md.Ahasanul Islam', 'shourab111@gmail.com', '01884907940', '/uploaded_photo/user_photo/USER16-1639553055.png', NULL, 'shourabduet', NULL, '2021-12-15 07:20:06', '2021-12-15 07:24:15'),
(17, NULL, 'Md Monir khan', '191811.ais@student.just.edu.bd', '01883719636', NULL, NULL, 'monir191811', NULL, '2021-12-16 08:12:35', '2021-12-16 08:12:35'),
(18, NULL, 'Shirabony aktar monika', 'shirabonyaktarmonika@gmail.com', '01877138209', NULL, NULL, '17210741', NULL, '2021-12-17 03:26:09', '2021-12-17 03:26:09'),
(19, NULL, 'Rabby Hasan Rafiq', 'rabbyhasanru@gmail.com', '01518698904', '/uploaded_photo/user_photo/USER19-1639813160.png', NULL, '6318r@bby', NULL, '2021-12-18 07:04:19', '2021-12-18 07:39:20'),
(20, NULL, 'MOHAIMINUL ISLAM', 'mohaiminul199@gmail.com', '01796041367', '/uploaded_photo/user_photo/USER20-1639821249.png', NULL, '5689', NULL, '2021-12-18 08:58:05', '2021-12-18 09:54:09'),
(21, NULL, 'Md.Mehedi hasan', 'mehedi123568@gmail.com', '01741795907', '/uploaded_photo/user_photo/USER21-1639826046.png', NULL, 'englishbangla', NULL, '2021-12-18 11:10:18', '2021-12-18 11:14:06'),
(22, NULL, 'ESITA AKTER', NULL, '01518790356', '/uploaded_photo/user_photo/USER22-1639827523.png', NULL, '123456', NULL, '2021-12-18 11:15:50', '2021-12-18 11:38:43'),
(23, NULL, 'Mahdi hasan', 'mahiyooe@gmail.com', '01869217981', NULL, NULL, 'm@hdihasan', NULL, '2021-12-18 12:14:12', '2021-12-18 12:14:12'),
(24, NULL, 'Manosh Chandra', 'rmanosh904@gmail.com', '01780548214', '/uploaded_photo/user_photo/USER24-1641019607.png', NULL, '@manosh', NULL, '2021-12-18 18:07:01', '2022-01-01 06:46:47'),
(25, NULL, 'Md.Mahfuz hasan', 'mahfuz123568@gmail.com', '01308523278', '/uploaded_photo/user_photo/USER25-1639896317.png', NULL, 'chemistry#', NULL, '2021-12-19 06:41:44', '2021-12-19 06:45:17'),
(26, NULL, 'MD. Rajib Islam', NULL, '01783653381', '/uploaded_photo/user_photo/USER26-1639969654.png', NULL, '910748', NULL, '2021-12-19 06:43:59', '2021-12-20 03:07:34'),
(27, NULL, 'MD. EMAD UDDIN RAFAN', 'gainenterprise17@gmail.com', '01867124680', NULL, NULL, '01867124680', NULL, '2021-12-19 10:53:14', '2021-12-19 10:53:14'),
(28, NULL, 'Sharmin Akter', 'mstsharmina449@gmail.com', '01741662586', '/uploaded_photo/user_photo/USER28-1639918607.png', NULL, '123456', NULL, '2021-12-19 12:46:09', '2021-12-19 12:56:47'),
(29, NULL, 'Mst.Mahmuda aktar kusum', 'kusumakter123456@gmail.com', '01794010208', '/uploaded_photo/user_photo/USER29-1639920727.png', NULL, 'bangladeshgood', NULL, '2021-12-19 13:29:43', '2021-12-19 13:32:07'),
(30, NULL, 'MD. AKHLASUR RAHMAN ASIF', 'marahmanasif@gmile.com', '01748811744', NULL, NULL, '305354', NULL, '2021-12-19 14:40:06', '2021-12-19 14:40:06'),
(31, NULL, 'Md. Saim Hossain', 'saims1900s@gmail.com', '01712085077', '/uploaded_photo/user_photo/USER31-1639984674.png', NULL, 'Saim123', NULL, '2021-12-20 07:03:39', '2021-12-20 07:17:54'),
(32, NULL, 'MOST. SHEULY AKTER', NULL, '01759594662', '/uploaded_photo/user_photo/USER32-1639990946.png', NULL, '01759594662', NULL, '2021-12-20 08:24:44', '2021-12-20 09:02:26'),
(33, NULL, 'Abu Hanif', NULL, '01313972980', '/uploaded_photo/user_photo/USER33-1640500013.png', NULL, '1290,,..', NULL, '2021-12-20 09:35:14', '2021-12-26 06:26:53'),
(34, NULL, 'SHAPLA KHATUN', NULL, '01703383322', '/uploaded_photo/user_photo/USER34-1640000273.png', NULL, '01703383322', NULL, '2021-12-20 11:01:36', '2021-12-20 11:37:53'),
(37, NULL, 'Rinku Rani Shell', 'rinkushil333@gmail.com', '01571215043', '/uploaded_photo/user_photo/USER37-1640067307.png', NULL, 'shikkah2@', NULL, '2021-12-21 06:14:35', '2021-12-21 06:15:07'),
(38, NULL, 'Most. Samia Haque', NULL, '01926898197', NULL, NULL, '1234', NULL, '2021-12-21 09:42:31', '2021-12-21 09:51:08'),
(39, NULL, 'MD. Ruhul Amin', 'mdruhul032@gmail.com', '01701764366', '/uploaded_photo/user_photo/USER39-1640098415.png', NULL, '138804@#', NULL, '2021-12-21 12:11:59', '2021-12-21 14:53:35'),
(40, NULL, 'MOST. SAMIA HAQUE', NULL, '01711117624', '/uploaded_photo/user_photo/USER40-1640148523.png', NULL, '123456', NULL, '2021-12-21 13:34:42', '2021-12-22 04:48:43'),
(41, NULL, 'Shaikat Biswas', 'biswasshaikat01@gmail.com', '01746915906', '/uploaded_photo/user_photo/USER41-1640930549.png', NULL, '(##&&3s3b%)', NULL, '2021-12-21 14:03:49', '2021-12-31 06:02:29'),
(42, NULL, 'Most.Nushrat Jahan Esha', 'eshanushratjahan158@gmail.com', '01743113880', NULL, NULL, 'esha123', NULL, '2021-12-22 12:35:21', '2021-12-22 12:35:21'),
(43, NULL, 'SHAIMA SHANTI RAKEYA', 'shaimashantirakeya@gmail.com', '01767194934', NULL, NULL, 'ria123', NULL, '2021-12-23 04:55:34', '2021-12-23 04:55:34'),
(44, NULL, 'Gousal Azam varsa', 'varoshavs@gmail.com', '01779951463', NULL, NULL, '56392', NULL, '2021-12-23 05:26:04', '2021-12-23 05:26:04'),
(45, NULL, 'Md. Rasel Rahman', 'rasel.cse19.ruet@gmail.com', '01703266722', '/uploaded_photo/user_photo/USER45-1640243018.png', NULL, '1478Rasel', NULL, '2021-12-23 05:32:43', '2021-12-23 07:03:38'),
(46, NULL, 'KAKOLY KHATUN', 'kakolykhatun3@gmail.com', '01771232752', NULL, NULL, 'kakoly50', NULL, '2021-12-23 15:28:21', '2021-12-23 15:28:21'),
(47, NULL, 'MOST.NUSHRAT JAHAN ESHA', 'arifulhasanarif00@gmail.com', '01744862234', '/uploaded_photo/user_photo/USER47-1640416389.png', NULL, 'ab448622', NULL, '2021-12-25 06:26:13', '2021-12-25 07:18:42'),
(48, NULL, 'TONNY AKTHER', NULL, '01749698351', '/uploaded_photo/user_photo/USER48-1640493924.png', NULL, '01749698351', NULL, '2021-12-25 08:42:36', '2021-12-26 04:45:24'),
(49, NULL, 'Mubashir Ahammad Muhakkik', 'mubasshirahmedshuvro@gmail.com', '+8801868798367', NULL, NULL, 'Kalnagini@32', NULL, '2021-12-26 14:57:28', '2021-12-26 14:57:28'),
(50, NULL, 'Most. Nasrin Khatun', 'mohona578@gmail.com', '01759320132', NULL, NULL, '1234', NULL, '2021-12-28 08:22:47', '2021-12-28 08:22:47'),
(51, NULL, 'MOST. ROTNA KHATUN', NULL, '01744300924', '/uploaded_photo/user_photo/USER51-1640756029.png', NULL, '01744300924', NULL, '2021-12-29 05:19:25', '2021-12-29 05:33:49'),
(52, NULL, 'Shova khatun', 'shova19b.r@gmail.com', '01758480178', NULL, NULL, 'Raja06Rani', NULL, '2021-12-29 05:40:33', '2021-12-29 05:40:33'),
(53, NULL, 'Mst. Tamanna Kabir Riya', NULL, '01712768238', '/uploaded_photo/user_photo/USER53-1640757494.png', NULL, '768238', NULL, '2021-12-29 05:41:09', '2021-12-29 05:58:14'),
(54, NULL, 'MD. SHOHAG HOSSAIN', NULL, '01749521780', '/uploaded_photo/user_photo/USER54-1640763649.png', NULL, '01749521780', NULL, '2021-12-29 07:40:14', '2021-12-29 07:40:49'),
(55, NULL, 'NAYEEM ANAM', 'nayeem876m@gmail.com', '01611551874', '/uploaded_photo/user_photo/USER55-1640777253.png', NULL, '01611551874', NULL, '2021-12-29 10:36:28', '2021-12-29 11:27:33'),
(56, NULL, 'Akib Hayat', 'akibhayat16@gmail.com', '01746980916', '/uploaded_photo/user_photo/USER56-1643279080.png', NULL, 'Akib27tex93', NULL, '2021-12-29 20:19:59', '2022-01-27 04:24:40'),
(57, NULL, 'MD Masbah Uddin', 'mashsoumik02@gmail.com', '01637460805', NULL, NULL, '12027900', NULL, '2021-12-31 06:08:38', '2021-12-31 06:08:38'),
(58, NULL, 'FATEMA AKTER ORPA', NULL, '01748105309', '/uploaded_photo/user_photo/USER58-1640940988.png', NULL, '01748105309', NULL, '2021-12-31 08:48:38', '2021-12-31 08:56:28'),
(59, NULL, 'suraiyajannat', 'suraiyajannat@27gmail.com', '01767086421', '/uploaded_photo/user_photo/USER59-1641652944.png', NULL, '01996222715', NULL, '2022-01-07 14:56:55', '2022-01-08 14:42:24'),
(60, NULL, 'Md Sagor Hossain', 'sagorhossen13064@gmail.com', '01789391940', '/uploaded_photo/user_photo/USER60-1641621529.png', NULL, 'st130645', NULL, '2022-01-08 05:06:28', '2022-01-08 05:58:49'),
(61, NULL, 'Md. Toukir Ahmed', NULL, '01571401331', NULL, NULL, 'ashik12345', NULL, '2022-01-08 08:20:41', '2022-01-08 08:20:41'),
(62, NULL, 'MOST. ROKHSANA KHATUN', NULL, '01782098644', '/uploaded_photo/user_photo/USER62-1641707827.png', NULL, 'Ti115721', NULL, '2022-01-09 05:54:55', '2022-01-09 05:57:07'),
(63, NULL, 'MOST. ARIFA KHATUN', NULL, '01738320929', '/uploaded_photo/user_photo/USER63-1641709208.png', NULL, 'Ti115721', NULL, '2022-01-09 06:18:52', '2022-01-09 06:20:08'),
(64, NULL, 'SANTA KHATUN', 'malamlitu@gmail.com', '01748176847', NULL, NULL, 'Ti115721', NULL, '2022-01-11 04:09:50', '2022-01-11 04:09:50'),
(65, NULL, 'AIREN HAQUE BAISHAKHI', NULL, '01710826678', '/uploaded_photo/user_photo/USER65-1641896760.png', NULL, '01710826678', NULL, '2022-01-11 10:07:20', '2022-01-11 10:26:00'),
(66, NULL, 'MST. JARIN KABIR JIM', 'shaplanet2003@gmail.com', '01759753789', '/uploaded_photo/user_photo/USER66-1641977494.png', NULL, '01759753789', NULL, '2022-01-12 08:49:06', '2022-01-12 08:51:34'),
(74, NULL, 'MD Shimon Sheikh', 'shimomkkol@gmail.com', '01799778758', NULL, NULL, '78758', NULL, '2022-01-24 21:47:17', '2022-01-24 21:47:17'),
(75, NULL, 'MD. RAKIB HASAN', 'indrojitmondol.jess@gmail.com', '01315953670', '/uploaded_photo/user_photo/USER75-1643089926.png', NULL, '01315953670', NULL, '2022-01-24 23:51:28', '2022-01-24 23:52:06'),
(78, NULL, 'Jannatul Hafsa Mita', 'jmita26@gmail.com', '01907037153', NULL, NULL, 'jannatul', NULL, '2022-01-25 12:40:32', '2022-01-25 12:40:32'),
(80, NULL, 'Shoyeb Aktar Shubho', 'ais1908049brur@gmail.com', '01818838763', '/uploaded_photo/user_photo/USER80-1643142996.png', NULL, '519925', NULL, '2022-01-25 14:36:02', '2022-01-25 14:36:36'),
(81, NULL, 'Saqif Test Student', NULL, '01674084111', NULL, NULL, '1234', NULL, '2022-01-25 14:39:02', '2022-01-25 14:39:02'),
(82, NULL, 'MD. Limon Sheikh', 'lemonkkol@gmail.com', '01830892514', NULL, NULL, '92514', NULL, '2022-01-25 21:48:57', '2022-01-25 21:48:57'),
(85, NULL, 'Md Walid Hassan', 'walidqb2@mail.com', '01832383508', '/uploaded_photo/user_photo/USER85-1643199440.png', NULL, '83508', NULL, '2022-01-26 05:24:48', '2022-01-26 06:17:20'),
(86, NULL, 'Yasir Muistafiz', 'mustafizridom@gmail.com', '01717010200', '/uploaded_photo/user_photo/USER86-1643201972.png', NULL, 'TGJTcnAMa77xq9Y', NULL, '2022-01-26 06:59:14', '2022-01-26 06:59:32'),
(87, NULL, 'Md Shipon Ali', 'shiponali301@gmail.com', '01314807976', NULL, NULL, '07976', NULL, '2022-01-27 03:42:35', '2022-01-27 03:42:35'),
(88, NULL, 'MD. Mumit It Rahman Neloy', 'ayatmahmud70@gmail.com', '01872128707', '/uploaded_photo/user_photo/USER88-1643345859.png', NULL, 'neloy1234', NULL, '2022-01-27 22:53:51', '2022-01-27 22:57:39'),
(89, NULL, 'Shanta Islam', 'sume01713@gmail.com', '01611919646', '/uploaded_photo/user_photo/USER89-1643348888.png', NULL, 'shanta1212', NULL, '2022-01-27 23:00:55', '2022-01-27 23:48:08'),
(92, NULL, 'Md Sonju', 'mdakashsonju@gmail.com', '01873694004', NULL, NULL, '18956', NULL, '2022-01-28 02:39:59', '2022-01-28 02:39:59'),
(93, NULL, 'MD AMIR HAMZA', NULL, '01737308905', NULL, NULL, '242496', NULL, '2022-01-28 05:07:41', '2022-01-28 05:07:41'),
(94, NULL, 'MD. JUNAYED AHAMMED ZIHAD', NULL, '01760481979', '/uploaded_photo/user_photo/USER94-1643370281.png', NULL, '199025', NULL, '2022-01-28 05:34:49', '2022-01-28 05:44:41'),
(95, NULL, 'SUMON AHMMED', NULL, '01764074880', '/uploaded_photo/user_photo/USER95-1643370970.png', NULL, '20455', NULL, '2022-01-28 05:49:03', '2022-01-28 05:56:10'),
(96, NULL, 'MD Pabel', 'mdpabel1202@gmail.com', '01786436435', NULL, NULL, '12Feb2000', NULL, '2022-01-28 08:57:35', '2022-01-28 08:57:35'),
(97, NULL, 'Abdul Kuddus', 'kudduscaliph@gmail.com', '01717324917', NULL, NULL, 'kuddus999', NULL, '2022-01-28 21:43:40', '2022-01-28 21:43:40'),
(98, NULL, 'Md nasimul haque ayon', 'mbishakib@gmail.com', '01734709339', NULL, NULL, 'id4347', NULL, '2022-01-28 22:18:46', '2022-01-28 22:18:46'),
(99, NULL, 'Zannatul maua', 'rifirij@gmail.com', '01795466967', NULL, NULL, 'zannatul123', NULL, '2022-01-28 22:24:00', '2022-01-28 22:24:00'),
(100, NULL, 'Rakibul Islam', NULL, '01999119275', NULL, NULL, '1111', NULL, '2022-01-28 23:38:30', '2022-01-28 23:38:30'),
(101, NULL, 'Mohua Mamun', NULL, '01712315089', NULL, NULL, '1111', NULL, '2022-01-28 23:43:08', '2022-01-28 23:43:08'),
(102, NULL, 'Mohua mamun', 'alm077975@gmail.com', '01795379223', NULL, NULL, '79223', NULL, '2022-01-28 23:49:20', '2022-01-28 23:49:20'),
(103, NULL, 'Md Abdur Rahman', 'hmuazzem88@gmail.com', '01861710270', NULL, NULL, '10270', NULL, '2022-01-29 00:15:41', '2022-01-29 00:15:41'),
(105, NULL, 'Eshrat Tabassum', NULL, '01988161750', NULL, NULL, '1111', NULL, '2022-01-29 00:19:29', '2022-01-29 00:19:29'),
(106, NULL, 'Md Mubin Hossai', NULL, '01736842046', NULL, NULL, '1111', NULL, '2022-01-29 00:37:12', '2022-01-29 00:37:12'),
(108, NULL, 'Mst Nice Khatun', NULL, '01757065219', NULL, NULL, '1111', NULL, '2022-01-29 02:05:05', '2022-01-29 02:05:05'),
(109, NULL, 'AL SAD MUBIN', NULL, '01861307422', '/uploaded_photo/user_photo/USER109-1643456372.png', NULL, '758699', NULL, '2022-01-29 05:23:20', '2022-01-29 05:39:32'),
(110, NULL, 'Md Nahimur Rahman', NULL, '01946147612', NULL, NULL, '1111', NULL, '2022-01-29 22:35:48', '2022-01-29 22:35:48'),
(111, NULL, 'MD Johurul Islam Nishan', NULL, '01996896652', '/uploaded_photo/user_photo/USER111-1644830739.png', NULL, '1111', NULL, '2022-01-30 04:58:29', '2022-02-14 03:25:39'),
(112, NULL, 'Md nasimul haque', 'mdnasimulhaqueayon@gmail.com', '01728131327', NULL, NULL, '289089', NULL, '2022-01-30 06:40:48', '2022-01-30 06:40:48'),
(113, NULL, 'Chadni Akter', 'akterchadni2936@gmail.com', '01302702780', NULL, NULL, '22120', NULL, '2022-02-02 07:31:30', '2022-02-02 07:31:30'),
(117, NULL, 'Naem Asraf Niloy', 'naeemniloy000@gmail.com', '01706749697', NULL, NULL, '01706749697', NULL, '2022-02-03 22:24:49', '2022-02-03 22:24:49'),
(118, NULL, 'Md Rana Hamid', 'ranahamidana@gmail.com', '01755432504', '/uploaded_photo/user_photo/USER118-1644117246.png', NULL, '782001?1@', NULL, '2022-02-05 00:33:17', '2022-02-05 21:14:06'),
(119, NULL, 'Mst. Shangita Islam', NULL, '01718893014', NULL, NULL, '1111', NULL, '2022-02-06 00:01:53', '2022-02-06 00:01:53'),
(120, NULL, 'Md.Mahamudul Hasan', 'Mahamudulhasan6216@gmail.com', '01309153200', '/uploaded_photo/user_photo/USER120-1644206275.png', NULL, '7858', NULL, '2022-02-06 21:53:13', '2022-02-06 21:57:55'),
(121, NULL, 'Newton Chakma', 'newtonchakmanc6238@gmail.com', '01741284172', NULL, NULL, 'Newton123', NULL, '2022-02-06 23:05:05', '2022-02-06 23:05:05'),
(122, NULL, 'test', 'abusufian482@gmail.com', '01791928169', NULL, NULL, 'msdt4823', NULL, '2022-02-07 08:15:23', '2022-02-22 22:07:28'),
(123, NULL, 'MD Mahadi Hasan Anik', 'mahadihasankhananik@gmail.com', '+8801877918966', NULL, NULL, '9ajmixL37JmVZXK', NULL, '2022-02-07 12:28:02', '2022-02-07 12:28:02'),
(124, NULL, 'Fariha', 'farihasultana721@gmail.com', '01788720902', NULL, NULL, 'newton', NULL, '2022-02-08 12:46:08', '2022-02-08 12:46:08'),
(125, NULL, 'জোসনা খন্দকার স্নিগ্ধা', 'snigdhakhondoker@gmail.com', '01307074336', NULL, NULL, 'CoMMerce', NULL, '2022-02-10 01:11:10', '2022-02-10 01:11:10'),
(126, NULL, 'Rubel Sarker', NULL, '01969736906', NULL, NULL, '7985', NULL, '2022-02-10 06:44:36', '2022-02-10 08:22:02'),
(127, NULL, 'Shorif Mollah', NULL, '01966340008', '/uploaded_photo/user_photo/USER127-1644675526.png', NULL, '1111', NULL, '2022-02-11 07:04:40', '2022-02-12 08:18:46'),
(128, NULL, 'Merina khatun', NULL, '01751350059', NULL, NULL, '1111', NULL, '2022-02-12 01:46:17', '2022-02-12 01:46:17'),
(129, NULL, 'Sumaiya Kather Sima', NULL, '01936561709', NULL, NULL, '1111', NULL, '2022-02-12 01:46:44', '2022-02-12 01:46:44'),
(130, NULL, 'Md.Hanif Uddin Manik', NULL, '01963345349', '/uploaded_photo/user_photo/USER130-1644818818.png', NULL, '1111', NULL, '2022-02-12 01:47:10', '2022-02-14 00:06:58'),
(131, NULL, 'Md. Golam Rabbi', NULL, '01939472502', NULL, NULL, '1111', NULL, '2022-02-12 01:48:19', '2022-02-12 01:48:19'),
(132, NULL, 'Lamima Tasmin', 'lamimtasnim@gmail.com', '01908601684', '/uploaded_photo/user_photo/USER132-1644899398.png', NULL, 'lamtaslus1@', NULL, '2022-02-12 02:59:19', '2022-02-14 22:29:58'),
(133, NULL, 'MD JAHANGIR', 'mdjahangir@gmail.com', '01781994542', NULL, NULL, 'EEQqPTcTeHfY64y', NULL, '2022-02-12 03:49:58', '2022-02-12 03:49:58'),
(134, NULL, 'Md. Jahid', NULL, '01849540088', NULL, NULL, '1111', NULL, '2022-02-12 04:26:03', '2022-02-12 04:26:03'),
(135, NULL, 'Md. Rasel', NULL, '01951471732', NULL, NULL, '1111', NULL, '2022-02-12 04:26:19', '2022-02-12 04:26:19'),
(136, NULL, 'Md.Rabbi Shekh', NULL, '01752730115', NULL, NULL, '1111', NULL, '2022-02-12 04:26:38', '2022-02-12 04:26:38'),
(137, NULL, 'Md. Monarul Islam', NULL, '01917614199', NULL, NULL, '1111', NULL, '2022-02-12 04:26:55', '2022-02-12 04:26:55'),
(138, NULL, 'Md. Rifat Dhali', NULL, '01729996466', NULL, NULL, '1111', NULL, '2022-02-12 04:27:12', '2022-02-12 04:27:12'),
(139, NULL, 'Md. Mahabub Alom', NULL, '01917610923', '/uploaded_photo/user_photo/USER139-1644818380.png', NULL, '1111', NULL, '2022-02-12 04:27:28', '2022-02-13 23:59:40'),
(140, NULL, 'Md. Rumel Majumdar', NULL, '01650078198', '/uploaded_photo/user_photo/USER140-1644818745.png', NULL, '1111', NULL, '2022-02-12 04:27:42', '2022-02-14 00:05:45'),
(141, NULL, 'Md. Hossen', NULL, '01921590536', '/uploaded_photo/user_photo/USER141-1644818635.png', NULL, '1111', NULL, '2022-02-12 04:27:57', '2022-02-14 00:03:55'),
(142, NULL, 'Md. Rakib Shikder', NULL, '01903539259', NULL, NULL, '1111', NULL, '2022-02-12 04:28:11', '2022-02-12 04:28:11'),
(143, NULL, 'Md. Momin Mollah Shubo', NULL, '01953929502', NULL, NULL, '1111', NULL, '2022-02-12 04:28:25', '2022-02-12 04:28:25'),
(144, NULL, 'Rabeya Akter', NULL, '01854185776', NULL, NULL, '1111', NULL, '2022-02-12 04:30:18', '2022-02-12 04:30:18'),
(145, NULL, 'Md. Liton', NULL, '01314932853', NULL, NULL, '1111', NULL, '2022-02-12 04:30:33', '2022-02-12 04:30:33'),
(146, NULL, 'Md. Shuvo', NULL, '01758472938', NULL, NULL, '1111', NULL, '2022-02-12 04:30:49', '2022-02-12 04:30:49'),
(147, NULL, 'Md. Sumom Shikder', NULL, '01989161194', NULL, NULL, '1111', NULL, '2022-02-12 04:31:10', '2022-02-12 04:31:10'),
(148, NULL, 'Md.Korban Hossein', NULL, '01929438256', NULL, NULL, '1111', NULL, '2022-02-12 04:31:29', '2022-02-12 04:31:29'),
(149, NULL, 'Mst.Jhorna Akter', NULL, '01860283357', NULL, NULL, '1111', NULL, '2022-02-12 04:31:44', '2022-02-12 04:31:44'),
(150, NULL, 'Mst.Ratna Akter', NULL, '01755444588', NULL, NULL, '1111', NULL, '2022-02-12 04:32:00', '2022-02-12 04:32:00'),
(151, NULL, 'Mst.Asma Akter', NULL, '01877367616', NULL, NULL, '1111', NULL, '2022-02-12 04:32:14', '2022-02-12 04:32:14'),
(152, NULL, 'MD YEASIN ARAFAT', 'shawonchowdhury489@gmail.com', '01627114073', NULL, NULL, '01627114073', NULL, '2022-02-13 04:12:58', '2022-02-13 04:12:58'),
(153, NULL, 'Mst Sultana Akter', 'sultanasumi366@gmail.com', '01780724325', '/uploaded_photo/user_photo/USER153-1644811411.png', NULL, '123456', NULL, '2022-02-13 22:01:44', '2022-02-13 22:03:31'),
(154, NULL, 'Sriti Akther', NULL, '01784463211', NULL, NULL, '01784463211', NULL, '2022-02-14 01:09:15', '2022-02-14 01:09:15'),
(155, NULL, 'Md.Nayee Islam', NULL, '01836482594', NULL, NULL, '01836482594', NULL, '2022-02-14 01:09:50', '2022-02-14 01:09:50'),
(156, NULL, 'Bayzid Bostami Rahul', NULL, '01768250420', NULL, NULL, '01768250420', NULL, '2022-02-14 01:10:15', '2022-02-14 01:10:15'),
(157, NULL, 'Mst.Rekha Akter', NULL, '01868537037', NULL, NULL, '01868537037', NULL, '2022-02-14 01:10:33', '2022-02-14 01:10:33'),
(158, NULL, 'Fahima Akter', NULL, '01925779429', NULL, NULL, '01925779429', NULL, '2022-02-14 01:11:16', '2022-02-14 01:11:16'),
(159, NULL, 'Surma Akter', NULL, '01985112081', NULL, NULL, '01985112081', NULL, '2022-02-14 01:11:56', '2022-02-14 01:11:56'),
(160, NULL, 'Marju Akter', NULL, '01984695036', NULL, NULL, '01984695036', NULL, '2022-02-14 01:12:12', '2022-02-14 01:12:12'),
(161, NULL, 'Sumaiya Akter', NULL, '01409734668', NULL, NULL, '01409734668', NULL, '2022-02-14 01:12:29', '2022-02-14 01:12:29'),
(162, NULL, 'Md.Nahid majhi', NULL, '01794400048', NULL, NULL, '01794400048', NULL, '2022-02-14 01:12:46', '2022-02-14 01:12:46'),
(163, NULL, 'Jannatul Ferdous', NULL, '01916176186', NULL, NULL, '01916176186', NULL, '2022-02-14 01:13:04', '2022-02-14 01:13:04'),
(164, NULL, 'Musabbirul Islam', 'musabbirul81@gmail.com', '01776829370', '/uploaded_photo/user_photo/USER164-1644830943.png', NULL, '474801', NULL, '2022-02-14 02:31:48', '2022-02-14 03:29:03'),
(165, NULL, 'Md. MUSNAD Islam SOHAG', 'musnadislam977@gmail.com', '01407673689', '/uploaded_photo/user_photo/USER165-1648081141.png', NULL, 'sohag2004', NULL, '2022-02-14 03:47:33', '2022-03-23 18:19:01'),
(166, NULL, 'Sabrina Sultan', 'sabrinarmc2@gmail.com', '01797988011', NULL, NULL, 'unluckysabrinaa', NULL, '2022-02-15 01:00:34', '2022-02-15 01:00:34'),
(167, NULL, 'Ummah Siratun Ferdousi Sharna', 'siratunsorna@gmail.com', '01621617010', '/uploaded_photo/user_photo/USER167-1644938844.png', NULL, '@@@@nutaris@@@@', NULL, '2022-02-15 01:41:13', '2022-02-15 09:27:24'),
(168, NULL, 'MD.Jamil Hosen', 'jamilhosen2003@gmail.com', '01744251495', NULL, NULL, '?/;:\'\"!', NULL, '2022-02-15 04:40:20', '2022-02-15 04:40:20'),
(169, NULL, 'Md.Rifadujjaman Rifad', NULL, '01770955952', NULL, NULL, '01770955952', NULL, '2022-02-15 04:40:43', '2022-02-15 04:40:43'),
(188, NULL, 'Md.Abtahi Abid', 'abidkhondone@gmail.com', '01306133891', NULL, NULL, '01715289653abid', NULL, '2022-02-18 23:49:53', '2022-02-18 23:49:53'),
(189, NULL, 'Md. Anwar Hossen', NULL, '01831197248', '/uploaded_photo/user_photo/USER189-1645258614.png', NULL, '1111', NULL, '2022-02-19 01:20:52', '2022-02-19 02:16:54'),
(190, NULL, 'Md. Forid Mia', 'foridahmedaaa6@gamil.com', '01643840050', NULL, NULL, '1234abcd', NULL, '2022-02-19 02:07:20', '2022-02-19 02:07:20'),
(192, NULL, 'Anzumand Ara Mouri', 'anzumanara468@gmail.com', '01714694249', '/uploaded_photo/user_photo/USER192-1646578529.png', NULL, '@@@aaassr&m@@@07', NULL, '2022-02-20 06:32:26', '2022-03-06 08:55:29'),
(193, NULL, 'Shopna Akter', NULL, '01317880113', '/uploaded_photo/user_photo/USER193-1645368030.png', NULL, '1111', NULL, '2022-02-20 07:09:15', '2022-02-20 08:40:30'),
(194, NULL, 'Md. Minhajul Islam', 'islamminhajul0019@gmail.com', '01644067354', '/uploaded_photo/user_photo/USER194-1645947404.png', NULL, '*islam19#', NULL, '2022-02-27 01:11:17', '2022-02-27 01:36:44'),
(195, NULL, 'Sk.Ashfika Ali', 'ashfikaalisinthya@gmail.com', '01779446713', NULL, NULL, '#2411@Ashfikasinthya', NULL, '2022-02-27 12:36:59', '2022-02-27 12:36:59'),
(196, NULL, 'Samia Akter', NULL, '01707750472', NULL, NULL, '01707750472', NULL, '2022-02-28 00:45:35', '2022-02-28 00:45:35'),
(197, NULL, 'shraboni_test', 'kanish.shraboni@gmil.com', '01723280816', NULL, NULL, 'sabu', NULL, '2022-03-01 03:10:19', '2022-03-01 03:10:19'),
(198, NULL, 'Fatema Akter', 'henabegum4758@gmail.com', '01954476637', '/uploaded_photo/user_photo/USER198-1646224219.png', NULL, 'SornaMa$5', NULL, '2022-03-02 05:55:44', '2022-03-02 06:30:19'),
(199, NULL, 'Rezuana Afrin Jui', 'rezuanajui121@gmail.com', '01310681395', NULL, NULL, '@jui123%', NULL, '2022-03-04 07:15:40', '2022-03-04 07:15:40'),
(200, NULL, 'Test user', 'manjumakhan3@gmail.com', '01765309929', NULL, NULL, 'barisal2022', NULL, '2022-03-04 23:59:47', '2022-03-04 23:59:47'),
(201, NULL, 'Shilpy Akter', 'shilpiakter10200@gmail.com', '01934273276', NULL, NULL, 'abritif1234', NULL, '2022-03-07 02:01:20', '2022-03-07 02:01:20'),
(202, NULL, 'Md. Nazmul Hossain', 'mdnazmulhossain5958@gmail.com', '01910485073', NULL, NULL, 'ppr5858#', NULL, '2022-03-27 12:24:54', '2022-03-27 12:24:54'),
(203, NULL, 'Marzia', 'marziarfq@gmail.com', '01618885687', NULL, NULL, 'marzia1122', NULL, '2022-04-21 01:18:28', '2022-04-21 01:18:28'),
(205, NULL, 'Asif Hassan', 'asifhassan95@gmail.com', '01827116341', NULL, NULL, '123456', NULL, '2022-05-21 05:58:30', '2022-05-21 05:58:30'),
(206, NULL, 'Shamia Islam', 'shamia.islam21@gmail.com', '01305955533', NULL, NULL, 'shamiaislam2009', NULL, '2022-06-17 06:18:55', '2022-06-17 06:18:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `achievements_student_id_foreign` (`student_id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approved_applications`
--
ALTER TABLE `approved_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `approved_applications_tenant_id_foreign` (`tenant_id`),
  ADD KEY `approved_applications_student_id_foreign` (`student_id`),
  ADD KEY `approved_applications_scholarship_id_foreign` (`scholarship_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `degrees_student_id_foreign` (`student_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_tenant_id_foreign` (`tenant_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mentors`
--
ALTER TABLE `mentors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mentors_tenant_id_foreign` (`tenant_id`),
  ADD KEY `mentors_user_id_foreign` (`user_id`);

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
-- Indexes for table `monthly_statements`
--
ALTER TABLE `monthly_statements`
  ADD PRIMARY KEY (`student_id`,`scholarship_id`,`month_year`),
  ADD KEY `monthly_statements_scholarship_id_foreign` (`scholarship_id`),
  ADD KEY `monthly_statements_student_id_scholarship_id_month_year_index` (`student_id`,`scholarship_id`,`month_year`);

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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
-- Indexes for table `scholarships`
--
ALTER TABLE `scholarships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scholarships_tenant_id_foreign` (`tenant_id`);

--
-- Indexes for table `scholarship_student`
--
ALTER TABLE `scholarship_student`
  ADD KEY `scholarship_student_student_id_foreign` (`student_id`),
  ADD KEY `scholarship_student_scholarship_id_foreign` (`scholarship_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_user_id_foreign` (`user_id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_tenant_id_foreign` (`tenant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `approved_applications`
--
ALTER TABLE `approved_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mentors`
--
ALTER TABLE `mentors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scholarships`
--
ALTER TABLE `scholarships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `achievements`
--
ALTER TABLE `achievements`
  ADD CONSTRAINT `achievements_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `approved_applications`
--
ALTER TABLE `approved_applications`
  ADD CONSTRAINT `approved_applications_scholarship_id_foreign` FOREIGN KEY (`scholarship_id`) REFERENCES `scholarships` (`id`),
  ADD CONSTRAINT `approved_applications_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `approved_applications_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`);

--
-- Constraints for table `degrees`
--
ALTER TABLE `degrees`
  ADD CONSTRAINT `degrees_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`);

--
-- Constraints for table `mentors`
--
ALTER TABLE `mentors`
  ADD CONSTRAINT `mentors_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`),
  ADD CONSTRAINT `mentors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `monthly_statements`
--
ALTER TABLE `monthly_statements`
  ADD CONSTRAINT `monthly_statements_scholarship_id_foreign` FOREIGN KEY (`scholarship_id`) REFERENCES `scholarships` (`id`),
  ADD CONSTRAINT `monthly_statements_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scholarships`
--
ALTER TABLE `scholarships`
  ADD CONSTRAINT `scholarships_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`);

--
-- Constraints for table `scholarship_student`
--
ALTER TABLE `scholarship_student`
  ADD CONSTRAINT `scholarship_student_scholarship_id_foreign` FOREIGN KEY (`scholarship_id`) REFERENCES `scholarships` (`id`),
  ADD CONSTRAINT `scholarship_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
