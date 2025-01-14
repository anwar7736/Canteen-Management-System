-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 13, 2022 at 01:20 PM
-- Server version: 10.3.35-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coderanwar_canteen`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_profile`
--

CREATE TABLE `admin_profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_profile`
--

INSERT INTO `admin_profile` (`id`, `shop_logo`, `shop_name`, `shop_address`, `shop_owner`, `username`, `owner_phone`, `owner_email`, `created_at`, `updated_at`) VALUES
(1, 'https://canteen-api.coderanwar.online/storage/app/public/5CWpq69d7wViYPtkQnHqw27qEVR6dPOtCgA1oR1M.webp', 'Anwar Super Canteen', 'Polashbari, Ashulia, Dhaka', 'Md Anwar Hossain', 'admin1234', '01794030592', 'anwarhossain7736@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `daily_bazar_costs`
--

CREATE TABLE `daily_bazar_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_bazar_costs`
--

INSERT INTO `daily_bazar_costs` (`id`, `year`, `month`, `date`, `name`, `amount`) VALUES
(8, 2022, 'February', '2022-02-21', 'Anwar', 3000.00),
(9, 2022, 'February', '2022-02-22', 'Anwar', 3500.00),
(12, 2022, 'March', '2022-03-14', 'Sujon Mollah', 1250.00);

-- --------------------------------------------------------

--
-- Table structure for table `daily_meal_items`
--

CREATE TABLE `daily_meal_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lunch_item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dinner_item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_meal_items`
--

INSERT INTO `daily_meal_items` (`id`, `day`, `lunch_item`, `dinner_item`, `created_at`, `updated_at`) VALUES
(1, 'শনিবার', 'মুরগীর মাংস, সবজি, ডাল, আলু ভর্তা', 'বড় মাছ, শাকসবজি, ডাল', '2022-02-07 15:58:34', '2022-02-07 10:05:13'),
(2, 'রবিবার', 'বড় মাছ, সবজি, ডাল', 'ছোট মাছ, ভর্তা, ডাল', '2022-02-07 15:58:41', '2022-02-07 15:58:43'),
(3, 'সোমবার', 'ডিম, ভর্তা, ডাল', 'বড় মাছ, সবজি, ডাল', '2022-02-07 15:58:45', '2022-02-07 15:58:46'),
(4, 'মঙ্গলবার', 'মুরগীর মাংস, সবজি, ডাল', 'মলা মাছ ভর্তা, ডাল', '2022-02-07 15:58:47', '2022-02-07 15:58:48'),
(5, 'বুধবার', 'বড় মাছ, শাক-সবজি, ডাল', 'বড় মাছ, আলু ভর্তা, ডাল', '2022-02-07 15:58:49', '2022-02-07 15:58:50'),
(6, 'বৃহস্পতিবার', 'ছোট মাছ, ভর্তা, ডাল', 'ভুনা খিচুড়ি, সবজি, ডাল', '2022-02-07 15:58:51', '2022-02-07 15:58:52'),
(7, 'শুক্রবার', 'গরুর মাংস, সবজি, ডাল', 'ডিম, শাক, ডাল', '2022-02-07 15:58:54', '2022-02-12 13:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `email_otp_verification`
--

CREATE TABLE `email_otp_verification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_otp_verification`
--

INSERT INTO `email_otp_verification` (`id`, `email`, `otp`, `time`, `date`) VALUES
(53, 'mdshahjahansheikh1995@gmail.com', '255134', '09:29:31pm', '2022-01-31'),
(55, 'anwarhossain7736@gmail.com', '911952', '09:50:45pm', '2022-02-01'),
(56, 'anwarhossain7736@gmail.com', '751875', '09:56:15pm', '2022-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meal_rates`
--

CREATE TABLE `meal_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lunch_expiry_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dinner_expiry_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lunch_rate` int(11) NOT NULL,
  `lunch_rate_bangla` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dinner_rate` int(11) NOT NULL,
  `dinner_rate_bangla` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_rate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meal_rates`
--

INSERT INTO `meal_rates` (`id`, `lunch_expiry_time`, `dinner_expiry_time`, `lunch_rate`, `lunch_rate_bangla`, `dinner_rate`, `dinner_rate_bangla`, `total_rate`, `created_at`, `updated_at`) VALUES
(1, 'বিকেল ৩টা ৩০মিনিট', 'রাত ১০টা ৩০মিনিট', 60, '৬০টাকা', 50, '৫০টাকা', 110, '2022-02-12 18:22:32', '2022-02-12 19:07:48');

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
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2021_08_01_153542_email_otp_verification', 2),
(4, '2022_01_15_180927_create_daily_meal_items_table', 3),
(5, '2022_01_15_185710_create_notifications_table', 4),
(6, '2022_01_15_190301_create_notification_details_table', 4),
(13, '2022_01_22_150933_create_payments_table', 7),
(16, '2022_01_17_153112_create_order_meals_table', 8),
(18, '2022_01_25_142927_create_monthly_statements_table', 9),
(19, '2022_01_29_165256_create_jobs_table', 10),
(24, '2022_02_08_153430_create_daily_bazar_costs_table', 12),
(25, '2022_01_17_153007_create_meal_rates_table', 13),
(28, '2022_03_14_182217_create_admin_profile_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `monthly_statements`
--

CREATE TABLE `monthly_statements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_no` int(11) NOT NULL,
  `total_lunch` int(11) NOT NULL,
  `lunch_cost` int(11) NOT NULL,
  `total_dinner` int(11) NOT NULL,
  `dinner_cost` int(11) NOT NULL,
  `total_meal` int(11) NOT NULL,
  `total_cost` int(11) NOT NULL,
  `total_payment` double(8,2) NOT NULL,
  `give` double(8,2) NOT NULL,
  `take` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monthly_statements`
--

INSERT INTO `monthly_statements` (`id`, `year`, `month`, `token_no`, `total_lunch`, `lunch_cost`, `total_dinner`, `dinner_cost`, `total_meal`, `total_cost`, `total_payment`, `give`, `take`, `created_at`, `updated_at`) VALUES
(1, 2022, 'January', 121245, 7, 420, 7, 350, 14, 770, 1870.00, 0.00, 1100.00, NULL, NULL),
(2, 2022, 'January', 475214, 2, 120, 2, 100, 4, 220, 320.50, 0.00, 100.50, NULL, NULL),
(3, 2022, 'January', 142782, 2, 120, 2, 100, 4, 220, 220.00, 0.00, 0.00, NULL, NULL),
(4, 2022, 'February', 142782, 11, 660, 10, 500, 21, 1160, 1000.00, 160.00, 0.00, NULL, NULL),
(5, 2022, 'February', 192328, 9, 540, 8, 400, 17, 940, 500.00, 440.00, 0.00, NULL, NULL),
(6, 2022, 'February', 824720, 1, 60, 1, 50, 2, 110, 0.00, 110.00, 0.00, NULL, NULL),
(7, 2022, 'March', 142782, 4, 240, 4, 200, 8, 450, 4402.00, 0.00, 3952.00, NULL, NULL),
(8, 2022, 'March', 824720, 1, 60, 1, 50, 2, 110, 0.00, 110.00, 0.00, NULL, NULL),
(9, 2022, 'October', 142782, 2, 120, 3, 150, 5, 290, 4000.00, 0.00, 3710.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `author_id`, `author_name`, `msg_title`, `msg_body`, `create_date`, `create_time`) VALUES
(5, 1, 'Md Anwar Hossain', 'Please Check Your Mail', 'Dear All,\r\nPlease check your mail', '2022-01-16', '09:44:45pm'),
(16, 1, 'Md Anwar Hossain', 'Md Anwar Hossain', 'Md Anwar Hossain', '2022-02-14', '02:04:25am'),
(20, 1, 'Md Anwar Hossain', 'Declaration for lock down situation', 'Dear All,\r\nWill be off our canteen for some lock down related issues.\r\n\r\nThanks,\r\nMd Anwar Hossain', '2022-10-13', '12:01:55pm'),
(21, 4, 'Md Anwar Hossain', 'Request for accept guest meal', 'Dear Admin,\r\nPlease accept my request for tomorrow guest meal', '2022-10-13', '12:17:44pm');

-- --------------------------------------------------------

--
-- Table structure for table `notification_details`
--

CREATE TABLE `notification_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `create_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_details`
--

INSERT INTO `notification_details` (`id`, `notification_id`, `user_id`, `status`, `create_date`, `create_time`) VALUES
(3, 5, 4, 'Latest', '2022-01-16', '09:44:45pm'),
(4, 5, 9, 'Latest', '2022-01-16', '09:44:45pm'),
(5, 5, 10, 'Latest', '2022-01-16', '09:44:45pm'),
(19, 16, 4, 'Latest', '2022-02-14', '02:04:25am'),
(20, 16, 9, 'Latest', '2022-02-14', '02:04:25am'),
(21, 16, 10, 'Latest', '2022-02-14', '02:04:25am'),
(29, 20, 4, 'Latest', '2022-10-13', '12:01:55pm'),
(30, 20, 9, 'Latest', '2022-10-13', '12:01:55pm'),
(31, 20, 10, 'Latest', '2022-10-13', '12:01:55pm'),
(32, 20, 11, 'Latest', '2022-10-13', '12:01:55pm'),
(33, 21, 1, 'Latest', '2022-10-13', '12:17:44pm');

-- --------------------------------------------------------

--
-- Table structure for table `order_meals`
--

CREATE TABLE `order_meals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token_no` int(11) NOT NULL,
  `lunch` int(11) NOT NULL,
  `lunch_amount` int(11) NOT NULL,
  `dinner` int(11) NOT NULL,
  `dinner_amount` int(11) NOT NULL,
  `total_meal` int(11) NOT NULL,
  `delivery_charge` double(8,2) NOT NULL DEFAULT 0.00,
  `total_amount` int(11) NOT NULL,
  `is_parcel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Processing',
  `notes` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meal_given_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_meals`
--

INSERT INTO `order_meals` (`id`, `user_id`, `token_no`, `lunch`, `lunch_amount`, `dinner`, `dinner_amount`, `total_meal`, `delivery_charge`, `total_amount`, `is_parcel`, `status`, `notes`, `meal_given_date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(24, 3, 121245, 5, 300, 5, 250, 10, 0.00, 550, 'No', 'Completed', NULL, '2022-01-26', NULL, '2022-01-26 17:01:12', '2022-01-26 11:01:48'),
(25, 3, 121245, 1, 60, 1, 50, 2, 0.00, 110, 'No', 'Completed', NULL, '2022-01-27', NULL, '2022-01-26 17:02:55', '2022-01-26 17:02:55'),
(26, 5, 475214, 2, 120, 2, 100, 4, 0.00, 220, 'No', 'Completed', NULL, '2022-01-27', NULL, '2022-01-26 17:05:01', '2022-01-26 17:05:01'),
(29, 3, 121245, 1, 60, 1, 50, 2, 0.00, 110, 'No', 'Completed', NULL, '2022-01-31', NULL, '2022-01-30 17:39:37', '2022-01-30 17:39:37'),
(31, 5, 475214, 1, 60, 1, 50, 2, 0.00, 110, 'No', 'Completed', NULL, '2022-02-01', NULL, '2022-01-31 16:43:08', '2022-01-31 16:43:08'),
(32, 4, 142782, 5, 300, 5, 250, 10, 0.00, 550, 'No', 'Completed', NULL, '2022-02-08', NULL, '2022-02-07 15:48:02', '2022-02-07 15:48:02'),
(33, 10, 192328, 5, 300, 5, 250, 10, 0.00, 550, 'No', 'Completed', NULL, '2022-02-08', NULL, '2022-02-07 15:54:23', '2022-02-07 15:54:23'),
(35, 10, 192328, 1, 60, 1, 50, 2, 0.00, 110, 'No', 'Completed', NULL, '2022-02-12', NULL, '2022-02-11 15:50:00', '2022-02-11 15:50:00'),
(38, 4, 142782, 2, 120, 2, 100, 4, 0.00, 220, 'No', 'Completed', NULL, '2022-02-14', NULL, '2022-02-13 10:29:23', '2022-02-13 04:30:17'),
(41, 4, 142782, 2, 120, 1, 50, 3, 0.00, 170, 'No', 'Completed', NULL, '2022-02-15', NULL, '2022-02-13 18:41:30', '2022-02-13 13:19:49'),
(42, 10, 192328, 3, 180, 2, 100, 5, 0.00, 280, 'No', 'Completed', NULL, '2022-02-15', NULL, '2022-02-13 19:07:36', '2022-02-13 13:20:34'),
(43, 9, 824720, 1, 60, 1, 50, 2, 0.00, 110, 'No', 'Completed', NULL, '2022-02-15', NULL, '2022-02-13 19:07:57', '2022-02-13 13:20:28'),
(44, 4, 142782, 1, 60, 1, 50, 2, 0.00, 110, 'No', 'Completed', NULL, '2022-02-21', NULL, '2022-02-20 14:52:51', '2022-02-20 14:52:51'),
(45, 4, 142782, 1, 60, 1, 50, 2, 0.00, 110, 'No', 'Completed', NULL, '2022-02-22', NULL, '2022-02-21 14:52:13', '2022-02-21 14:52:13'),
(49, 9, 824720, 1, 60, 1, 50, 2, 0.00, 110, 'No', 'Completed', 'তরকারিতে ঝাল কম দিয়েন', '2022-03-22', NULL, '2022-03-17 21:53:23', '2022-03-17 15:53:46'),
(50, 4, 142782, 1, 60, 1, 50, 2, 0.00, 110, 'No', 'Pending', NULL, '2022-03-22', NULL, '2022-03-17 22:50:39', '2022-03-23 09:44:00'),
(51, 4, 142782, 1, 60, 1, 50, 2, 0.00, 110, 'Yes', 'Completed', NULL, '2022-03-22', NULL, '2022-03-19 18:42:55', '2022-10-12 09:36:08'),
(52, 4, 142782, 1, 60, 1, 50, 2, 0.00, 110, 'Yes', 'Completed', NULL, '2022-03-23', NULL, '2022-03-22 17:53:15', '2022-03-22 16:45:44'),
(99, 4, 142782, 1, 60, 1, 50, 2, 0.00, 110, 'No', 'Processing', NULL, '2022-03-24', '2022-03-23 09:15:31', '2022-03-22 21:31:18', '2022-03-23 09:15:31'),
(100, 4, 142782, 1, 60, 1, 50, 2, 10.00, 120, 'Yes', 'Completed', 'আমাকে একটু ভাত বেশি করে দিয়েন', '2022-03-24', NULL, '2022-03-23 15:19:10', '2022-03-23 09:20:17'),
(101, 4, 142782, 1, 60, 1, 50, 2, 10.00, 120, 'Yes', 'Processing', NULL, '2022-10-08', NULL, '2022-10-07 17:03:26', '2022-10-07 11:03:33'),
(102, 4, 142782, 1, 60, 1, 50, 2, 10.00, 120, 'Yes', 'Processing', 'null', '2022-10-13', '2022-10-12 09:50:02', '2022-10-12 14:50:32', '2022-10-12 09:50:02'),
(103, 4, 142782, 1, 60, 2, 100, 3, 10.00, 170, 'Yes', 'Processing', NULL, '2022-10-13', NULL, '2022-10-12 15:50:16', '2022-10-12 09:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `year`, `month`, `name`, `token_no`, `email`, `phone`, `amount`, `address`, `transaction_id`, `status`, `currency`, `payment_date`, `payment_time`) VALUES
(2, 2022, 'January', 'Md Anwar Hossain', '121245', 'abc@gmail.com', '01794030592', 100.50, 'Polashbari, Ashulia, Dhaka', '61ed6e4de4448', 'Completed', 'BDT', '2022-01-23', '09:03:41pm'),
(3, 2022, 'January', 'Md Anwar Hossain', '121245', 'abc@gmail.com', '01794030592', 100.50, 'Polashbari, Ashulia, Dhaka', '16ed6e45e4504', 'Completed', 'BDT', '2022-01-24', '09:19:41pm'),
(4, 2022, 'January', 'Md Anwar Hossain', '121245', 'abc@gmail.com', '01794030592', 200.00, 'Polashbari, Ashulia, Dhaka', '61ed77db3a6a1', 'Processing', 'BDT', '2022-01-23', '09:44:27pm'),
(5, 2022, 'January', 'Md Anwar Hossain', '121245', 'abc@gmail.com', '01794030592', 149.00, 'Polashbari, Ashulia, Dhaka', '61f02b3308fdf', 'Processing', 'BDT', '2022-01-25', '10:54:11pm'),
(6, 2022, 'January', 'Md Anwar Hossain', '121245', 'abc@gmail.com', '01794030592', 20.00, 'Polashbari, Ashulia, Dhaka', '61f02b65634b8', 'Processing', 'BDT', '2022-01-25', '10:55:01pm'),
(7, 2022, 'January', 'Md Anwar Hossain', '475214', 'abc@gmail.com', '01794030592', 220.00, 'Polashbari, Ashulia, Dhaka', '61f17f7f920f3', 'Processing', 'BDT', '2022-01-26', '11:06:07pm'),
(8, 2022, 'January', 'Md Anwar Hossain', '121245', 'abc@gmail.com', '01794030592', 100.00, 'Polashbari, Ashulia, Dhaka', '61f17ff85444e', 'Processing', 'BDT', '2022-01-26', '11:08:08pm'),
(9, 2022, 'January', 'Md Anwar Hossain', '121245', 'abc@gmail.com', '01794030592', 1200.00, 'Polashbari, Ashulia, Dhaka', '61ddbfb227839', 'Completed', 'BDT', '2022-01-11', '11:34:42pm'),
(10, 2022, 'January', 'Md Anwar Hossain', '475214', 'abc@gmail.com', '01794030592', 100.50, 'Polashbari, Ashulia, Dhaka', '61f80af8e7913', 'Completed', 'BDT', '2022-01-31', '10:14:48pm'),
(11, 2022, 'February', 'Md Anwar Hossain', '142782', 'abc@gmail.com', '01794030592', 500.00, 'Polashbari, Ashulia, Dhaka', '6201405ba7b0a', 'Completed', 'BDT', '2022-02-07', '09:52:59pm'),
(12, 2022, 'February', 'Md Anwar Hossain', '192328', 'abc@gmail.com', '01794030592', 400.00, 'Polashbari, Ashulia, Dhaka', '620140c360625', 'Completed', 'BDT', '2022-02-07', '09:54:43pm'),
(18, 2022, 'February', 'Shara Enterprise', '192328', 'shara_enterprise@yahoo.com', '01715424526', 100.00, 'Polashbari, Ashulia, Dhaka', '620FB9800269E', 'Completed', 'BDT', '2022-02-18', '09:21:36pm'),
(20, 2022, 'February', 'Md Anwar Hossain', '142782', 'abc@gmail.com', '01794030592', 500.00, 'Polashbari, Ashulia, Dhaka', '6213B8694BB53', 'Processing', 'BDT', '2022-02-21', '10:06:01pm'),
(21, 2022, 'March', 'Md Anwar Hossain', '123456', 'abc@gmail.com', '01794030592', 1000.00, 'Polashbari, Ashulia, Dhaka', '62362471F1366', 'Pending', 'BDT', '2022-03-20', '12:44:02am'),
(22, 2022, 'March', 'Md Anwar Hossain', '142782', 'abc@gmail.com', '01794030592', 1000.00, 'Polashbari, Ashulia, Dhaka', '623624C00C90F', 'Canceled', 'BDT', '2022-03-20', '12:45:20am'),
(23, 2022, 'March', 'Md Anwar Hossain', '142782', 'abc@gmail.com', '01794030592', 100.50, 'Polashbari, Ashulia, Dhaka', '623B3AF5650D7', 'Pending', 'BDT', '2022-03-23', '09:21:25pm'),
(24, 2022, 'March', 'Md Anwar Hossain', '123456', 'abc@gmail.com', '01794030592', 100.50, 'Polashbari, Ashulia, Dhaka', '623B3B0CF33A4', 'Pending', 'BDT', '2022-03-23', '09:21:49pm'),
(25, 2022, 'March', 'Md Anwar Hossain', '121245', 'abc@gmail.com', '01794030592', 100.50, 'Polashbari, Ashulia, Dhaka', '623B3B1532B71', 'Pending', 'BDT', '2022-03-23', '09:21:57pm'),
(26, 2022, 'March', 'Md Anwar Hossain', '142782', 'abc@gmail.com', '01794030592', 100.50, 'Polashbari, Ashulia, Dhaka', '623B3B35E797A', 'Pending', 'BDT', '2022-03-23', '09:22:29pm'),
(27, 2022, 'March', 'Md Anwar Hossain', '142782', 'abc@gmail.com', '01794030592', 100.50, 'Polashbari, Ashulia, Dhaka', '623B3B69107C6', 'Pending', 'BDT', '2022-03-23', '09:23:21pm'),
(28, 2022, 'March', 'Md Anwar Hossain', '142782', 'abc@gmail.com', '01794030592', 100.50, 'Polashbari, Ashulia, Dhaka', '623B3B9F0E10E', 'Pending', 'BDT', '2022-03-23', '09:24:15pm'),
(29, 2022, 'March', 'Md Anwar Hossain', '142782', 'abc@gmail.com', '01794030592', 1000.00, 'Polashbari, Ashulia, Dhaka', '623B3C7C50E06', 'Pending', 'BDT', '2022-03-23', '09:27:56pm'),
(30, 2022, 'March', 'Md Anwar Hossain', '142782', 'abc@gmail.com', '01794030592', 1000.00, 'Polashbari, Ashulia, Dhaka', '623B3CCAB323A', 'Pending', 'BDT', '2022-03-23', '09:29:14pm'),
(31, 2022, 'March', 'Md Anwar Hossain', '142782', 'abc@gmail.com', '01794030592', 1000.00, 'Polashbari, Ashulia, Dhaka', '623B3CDD27FE1', 'Pending', 'BDT', '2022-03-23', '09:29:33pm'),
(32, 2022, 'October', 'Md Anwar Hossain', '123456', 'abc@gmail.com', '01794030592', 1000.00, 'Polashbari, Ashulia, Dhaka', '63405C042BAED', 'Pending', 'BDT', '2022-10-07', '11:04:04pm'),
(33, 2022, 'September', 'Md Anwar Hossain', '142782', 'abc@gmail.com', '01794030592', 1000.00, 'Polashbari, Ashulia, Dhaka', '63405C96E6FD9', 'Completed', 'BDT', '2022-10-07', '11:06:30pm'),
(34, 2022, 'October', 'Md Anwar Hossain', '142782', 'abc@gmail.com', '01794030592', 1000.00, 'Polashbari, Ashulia, Dhaka', '63405D5E4449A', 'Processing', 'BDT', '2022-10-07', '11:09:50pm'),
(35, 2022, 'October', 'Md Anwar Hossain', '142782', 'abc@gmail.com', '01794030592', 1000.00, 'Polashbari, Ashulia, Dhaka', '6346DC6AE7B37', 'Processing', 'BDT', '2022-10-12', '09:25:30pm'),
(36, 2022, 'October', 'Md Anwar Hossain', '142782', 'abc@gmail.com', '01794030592', 1000.00, 'Polashbari, Ashulia, Dhaka', '6347AA5C525A3', 'Processing', 'BDT', '2022-10-13', '12:04:12pm');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token_no` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `token_no`, `name`, `username`, `email`, `phone`, `role`, `status`, `password`, `address`, `photo`, `created_at`, `updated_at`) VALUES
(1, 101101, 'Md Anwar Hossain', 'admin1234', 'anwarhossain7736@gmail.com', '01794030592', 'admin', 'active', '$2y$10$TNTNLwY0bIY0QJlVYm27n.udAn4n8kaRYXvhpFwk/JGbbpwTuJeom', 'Polashbari, Ashulia, Dhaka', NULL, '2022-01-09 09:42:41', '2022-03-19 13:43:12'),
(4, 142782, 'Anwar', 'anwar123', 'anwar@gmail.com', '01795700837', 'user', 'active', '$2y$10$gA2dLvyNMSdZ1ZjahqksLOHWrxOQTvVU1NMvWl1xhvVqhCcLCSapu', 'Polashbari, Ashulia, Dhaka', 'http://canteen-api.coderanwar.online/storage/app/public/XMfTIzKJexI0eREqAYKOPLWFgKvg7nVJBUkrXPlF.jpg', '2022-01-09 09:42:41', '2022-10-12 09:29:46'),
(9, 824720, 'Sujon', 'sujon123', 'mdshahjahansheikh1995@gmail.com', '01715414525', 'user', 'active', '$2y$10$ms.dc/xaupEwF9pMrSMtk.nH6XlqUEH/tMMZwaP3fyil3S4roWKM2', 'Savar,Dhaka', 'http://canteen-api.coderanwar.online/storage/app/public/b014cQa0nAq1FfYzoDJw6eQTlumqhADg2qnFRWzk.jpg', '2022-02-06 10:42:12', '2022-02-20 09:40:08'),
(10, 192328, 'Shara Enterprise', 'shara1234', 'shara_enterprise@yahoo.com', '01715424526', 'user', 'inactive', '$2y$10$l205ZeJruxRam8TgnHI6Se1JUF/cRD2HFa0S7rceNgdrWBwZ14YKi', 'Polashbari, Ashulia, Dhaka', 'http://canteen-api.coderanwar.online/storage/app/public/US8GKKLqrkhlsT8dISBNQpmSYO3tUaix3KbYI5Ex.jpg', '2022-02-06 11:28:12', '2022-02-20 09:44:24'),
(11, 515874, 'Md Ariful Islam', 'ariful123', 'arifmiah8044@gmail.com', '01700000000', 'user', 'active', '$2y$10$ZTdX6tEX6Q.hv31Mf82TxusSrWi5EisBFnwb.3RBp2BaEKhbpCjLK', 'Tangail, Dhaka.', 'http://canteen-api.coderanwar.online/storage/app/public/wHzyfH4pSsQgWZzbeBdOIwfJPZ97Z3CalexxVpOD.jpg', '2022-02-16 09:17:49', '2022-02-16 13:13:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_profile`
--
ALTER TABLE `admin_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_bazar_costs`
--
ALTER TABLE `daily_bazar_costs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_meal_items`
--
ALTER TABLE `daily_meal_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_otp_verification`
--
ALTER TABLE `email_otp_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `meal_rates`
--
ALTER TABLE `meal_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthly_statements`
--
ALTER TABLE `monthly_statements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_details`
--
ALTER TABLE `notification_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_meals`
--
ALTER TABLE `order_meals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_profile`
--
ALTER TABLE `admin_profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `daily_bazar_costs`
--
ALTER TABLE `daily_bazar_costs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `daily_meal_items`
--
ALTER TABLE `daily_meal_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_otp_verification`
--
ALTER TABLE `email_otp_verification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `meal_rates`
--
ALTER TABLE `meal_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `monthly_statements`
--
ALTER TABLE `monthly_statements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `notification_details`
--
ALTER TABLE `notification_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `order_meals`
--
ALTER TABLE `order_meals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
