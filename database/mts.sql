-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 17, 2021 at 09:07 AM
-- Server version: 8.0.23-0ubuntu0.20.10.1
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mts`
--

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `description`, `is_group`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Accounts & Admin', 'Accounts & Admin', 'Top Management', 1, NULL, NULL),
(2, 'Admin & Support', 'Admin & Support', 'Top Management', 1, NULL, NULL),
(3, 'CFO', 'CFO', 'Top Management', 1, NULL, NULL),
(4, 'CTO', 'CTO', 'Top Management', 1, NULL, NULL),
(5, 'CEO', 'CEO', 'Top Management', 1, NULL, NULL),
(6, 'HR & Admin', 'HR & Admin', 'Top Management', 1, NULL, NULL),
(7, 'BDM', 'BDM', 'Top Management', 1, NULL, NULL),
(8, 'Chef', 'Chef', 'Support Team', 1, NULL, NULL),
(9, 'Driver', 'Driver', 'Support Team', 1, NULL, NULL),
(10, 'Office Assistance', 'Office Assistance', 'Support Team', 1, NULL, NULL),
(11, 'Security Guard', 'Security Guard', 'Support Team', 1, NULL, NULL),
(12, 'Resort Boy', 'Resort Boy', 'Tourism Team', 1, NULL, NULL),
(13, 'Resort Manager', 'Resort Manager', 'Tourism Team', 1, NULL, NULL),
(14, 'Executive Tourism', 'Executive Tourism', 'Tourism Team', 1, NULL, NULL),
(15, 'Engineer', 'Engineer', 'Technical Team', 1, NULL, NULL),
(16, 'Executive Sourcing', 'Executive Sourcing', 'Technical Team', 1, NULL, NULL),
(17, 'Jr Engineer', 'Jr Engineer', 'Technical Team', 1, NULL, NULL),
(18, 'Project Admin', 'Project Admin', 'Technical Team', 1, NULL, NULL),
(19, 'Project Manager', 'Project Manager', 'Technical Team', 1, NULL, NULL),
(20, 'Sr System Engineer', 'Sr System Engineer', 'Technical Team', 1, NULL, NULL),
(21, 'Sr Technician', 'Sr Technician', 'Technical Team', 1, NULL, NULL),
(22, 'Splicing Executive', 'Splicing Executive', 'Technical Team', 1, NULL, NULL),
(23, 'Sr Implementation Manager', 'Sr Implementation Manager', 'Technical Team', 1, NULL, NULL),
(24, 'System Engineer', 'System Engineer', 'Technical Team', 1, NULL, NULL),
(25, 'Team Leader', 'Team Leader', 'Technical Team', 1, NULL, NULL),
(26, 'Technical Manager', 'Technical Manager', 'Technical Team', 1, NULL, NULL),
(27, 'Technician', 'Technician', 'Technical Team', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int UNSIGNED NOT NULL,
  `division_id` int UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `website`, `updated_at`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', 23.7115253, 90.4111451, 'www.dhaka.gov.bd', '2015-09-13 04:36:20'),
(2, 3, 'Faridpur', 'ফরিদপুর', 23.6070822, 89.8429406, 'www.faridpur.gov.bd', '2015-09-13 04:36:20'),
(3, 3, 'Gazipur', 'গাজীপুর', 24.0022858, 90.4264283, 'www.gazipur.gov.bd', '2015-09-13 04:36:20'),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', 23.0050857, 89.8266059, 'www.gopalganj.gov.bd', '2015-09-13 04:36:20'),
(5, 8, 'Jamalpur', 'জামালপুর', 24.937533, 89.937775, 'www.jamalpur.gov.bd', '2016-04-06 10:48:38'),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', 24.444937, 90.776575, 'www.kishoreganj.gov.bd', '2015-09-13 04:36:20'),
(7, 3, 'Madaripur', 'মাদারীপুর', 23.164102, 90.1896805, 'www.madaripur.gov.bd', '2015-09-13 04:36:20'),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', 0, 0, 'www.manikganj.gov.bd', '2015-09-13 04:36:20'),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', 0, 0, 'www.munshiganj.gov.bd', '2015-09-13 04:36:20'),
(10, 8, 'Mymensingh', 'ময়মনসিং', 0, 0, 'www.mymensingh.gov.bd', '2016-04-06 10:49:01'),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', 23.63366, 90.496482, 'www.narayanganj.gov.bd', '2015-09-13 04:36:20'),
(12, 3, 'Narsingdi', 'নরসিংদী', 23.932233, 90.71541, 'www.narsingdi.gov.bd', '2015-09-13 04:36:20'),
(13, 8, 'Netrokona', 'নেত্রকোনা', 24.870955, 90.727887, 'www.netrokona.gov.bd', '2016-04-06 10:46:31'),
(14, 3, 'Rajbari', 'রাজবাড়ি', 23.7574305, 89.6444665, 'www.rajbari.gov.bd', '2015-09-13 04:36:20'),
(15, 3, 'Shariatpur', 'শরীয়তপুর', 0, 0, 'www.shariatpur.gov.bd', '2015-09-13 04:36:20'),
(16, 8, 'Sherpur', 'শেরপুর', 25.0204933, 90.0152966, 'www.sherpur.gov.bd', '2016-04-06 10:48:21'),
(17, 3, 'Tangail', 'টাঙ্গাইল', 0, 0, 'www.tangail.gov.bd', '2015-09-13 04:36:20'),
(18, 5, 'Bogra', 'বগুড়া', 24.8465228, 89.377755, 'www.bogra.gov.bd', '2015-09-13 04:36:20'),
(19, 5, 'Joypurhat', 'জয়পুরহাট', 0, 0, 'www.joypurhat.gov.bd', '2015-09-13 04:36:20'),
(20, 5, 'Naogaon', 'নওগাঁ', 0, 0, 'www.naogaon.gov.bd', '2015-09-13 04:36:20'),
(21, 5, 'Natore', 'নাটোর', 24.420556, 89.000282, 'www.natore.gov.bd', '2015-09-13 04:36:20'),
(22, 5, 'Nawabganj', 'নবাবগঞ্জ', 24.5965034, 88.2775122, 'www.chapainawabganj.gov.bd', '2015-09-13 04:36:20'),
(23, 5, 'Pabna', 'পাবনা', 23.998524, 89.233645, 'www.pabna.gov.bd', '2015-09-13 04:36:20'),
(24, 5, 'Rajshahi', 'রাজশাহী', 0, 0, 'www.rajshahi.gov.bd', '2015-09-13 04:36:20'),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', 24.4533978, 89.7006815, 'www.sirajganj.gov.bd', '2015-09-13 04:36:20'),
(26, 6, 'Dinajpur', 'দিনাজপুর', 25.6217061, 88.6354504, 'www.dinajpur.gov.bd', '2015-09-13 04:36:20'),
(27, 6, 'Gaibandha', 'গাইবান্ধা', 25.328751, 89.528088, 'www.gaibandha.gov.bd', '2015-09-13 04:36:20'),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', 25.805445, 89.636174, 'www.kurigram.gov.bd', '2015-09-13 04:36:20'),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', 0, 0, 'www.lalmonirhat.gov.bd', '2015-09-13 04:36:20'),
(30, 6, 'Nilphamari', 'নীলফামারী', 25.931794, 88.856006, 'www.nilphamari.gov.bd', '2015-09-13 04:36:20'),
(31, 6, 'Panchagarh', 'পঞ্চগড়', 26.3411, 88.5541606, 'www.panchagarh.gov.bd', '2015-09-13 04:36:20'),
(32, 6, 'Rangpur', 'রংপুর', 25.7558096, 89.244462, 'www.rangpur.gov.bd', '2015-09-13 04:36:20'),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', 26.0336945, 88.4616834, 'www.thakurgaon.gov.bd', '2015-09-13 04:36:20'),
(34, 1, 'Barguna', 'বরগুনা', 0, 0, 'www.barguna.gov.bd', '2015-09-13 04:36:20'),
(35, 1, 'Barisal', 'বরিশাল', 0, 0, 'www.barisal.gov.bd', '2015-09-13 04:36:20'),
(36, 1, 'Bhola', 'ভোলা', 22.685923, 90.648179, 'www.bhola.gov.bd', '2015-09-13 04:36:20'),
(37, 1, 'Jhalokati', 'ঝালকাঠি', 0, 0, 'www.jhalakathi.gov.bd', '2015-09-13 04:36:20'),
(38, 1, 'Patuakhali', 'পটুয়াখালী', 22.3596316, 90.3298712, 'www.patuakhali.gov.bd', '2015-09-13 04:36:20'),
(39, 1, 'Pirojpur', 'পিরোজপুর', 0, 0, 'www.pirojpur.gov.bd', '2015-09-13 04:36:20'),
(40, 2, 'Bandarban', 'বান্দরবান', 22.1953275, 92.2183773, 'www.bandarban.gov.bd', '2015-09-13 04:36:20'),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 23.9570904, 91.1119286, 'www.brahmanbaria.gov.bd', '2015-09-13 04:36:20'),
(42, 2, 'Chandpur', 'চাঁদপুর', 23.2332585, 90.6712912, 'www.chandpur.gov.bd', '2015-09-13 04:36:20'),
(43, 2, 'Chittagong', 'চট্টগ্রাম', 22.335109, 91.834073, 'www.chittagong.gov.bd', '2015-09-13 04:36:20'),
(44, 2, 'Comilla', 'কুমিল্লা', 23.4682747, 91.1788135, 'www.comilla.gov.bd', '2015-09-13 04:36:20'),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', 0, 0, 'www.coxsbazar.gov.bd', '2015-09-13 04:36:20'),
(46, 2, 'Feni', 'ফেনী', 23.023231, 91.3840844, 'www.feni.gov.bd', '2015-09-13 04:36:20'),
(47, 2, 'Khagrachari', 'খাগড়াছড়ি', 23.119285, 91.984663, 'www.khagrachhari.gov.bd', '2015-09-13 04:36:20'),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', 22.942477, 90.841184, 'www.lakshmipur.gov.bd', '2015-09-13 04:36:20'),
(49, 2, 'Noakhali', 'নোয়াখালী', 22.869563, 91.099398, 'www.noakhali.gov.bd', '2015-09-13 04:36:20'),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', 0, 0, 'www.rangamati.gov.bd', '2015-09-13 04:36:20'),
(51, 7, 'Habiganj', 'হবিগঞ্জ', 24.374945, 91.41553, 'www.habiganj.gov.bd', '2015-09-13 04:36:20'),
(52, 7, 'Maulvibazar', 'মৌলভীবাজার', 24.482934, 91.777417, 'www.moulvibazar.gov.bd', '2015-09-13 04:36:20'),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', 25.0658042, 91.3950115, 'www.sunamganj.gov.bd', '2015-09-13 04:36:20'),
(54, 7, 'Sylhet', 'সিলেট', 24.8897956, 91.8697894, 'www.sylhet.gov.bd', '2015-09-13 04:36:20'),
(55, 4, 'Bagerhat', 'বাগেরহাট', 22.651568, 89.785938, 'www.bagerhat.gov.bd', '2015-09-13 04:36:20'),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', 23.6401961, 88.841841, 'www.chuadanga.gov.bd', '2015-09-13 04:36:20'),
(57, 4, 'Jessore', 'যশোর', 23.16643, 89.2081126, 'www.jessore.gov.bd', '2015-09-13 04:36:20'),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', 23.5448176, 89.1539213, 'www.jhenaidah.gov.bd', '2015-09-13 04:36:20'),
(59, 4, 'Khulna', 'খুলনা', 22.815774, 89.568679, 'www.khulna.gov.bd', '2015-09-13 04:36:20'),
(60, 4, 'Kushtia', 'কুষ্টিয়া', 23.901258, 89.120482, 'www.kushtia.gov.bd', '2015-09-13 04:36:20'),
(61, 4, 'Magura', 'মাগুরা', 23.487337, 89.419956, 'www.magura.gov.bd', '2015-09-13 04:36:20'),
(62, 4, 'Meherpur', 'মেহেরপুর', 23.762213, 88.631821, 'www.meherpur.gov.bd', '2015-09-13 04:36:20'),
(63, 4, 'Narail', 'নড়াইল', 23.172534, 89.512672, 'www.narail.gov.bd', '2015-09-13 04:36:20'),
(64, 4, 'Satkhira', 'সাতক্ষীরা', 0, 0, 'www.satkhira.gov.bd', '2015-09-13 04:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2020_12_15_224823_create_routelists_table', 2),
(8, '2021_01_13_163214_create_designations_table', 3),
(9, '2021_01_13_210550_create_settings_table', 4),
(15, '2021_01_20_202935_create_roles_table', 7),
(17, '2021_01_21_184827_create_permissions_table', 8),
(22, '2021_01_13_224002_create_projects_table', 9),
(23, '2021_02_22_195401_create_sites_table', 10),
(24, '2021_02_22_195401_create_vehicles_table', 11),
(25, '2021_02_22_195401_create_materials_table', 12),
(26, '2021_02_22_195401_create_tasks_material_table', 13),
(27, '2021_02_22_195401_create_tasks_site_table', 13),
(28, '2021_02_22_195401_create_tasks_table', 13),
(29, '2021_02_22_195401_create_tasks_vehicle_table', 13),
(31, '2021_02_22_195401_create_tasks_proof_table', 14),
(34, '2021_02_22_195401_create_tasks_status_table', 15),
(35, '2021_02_22_195401_create_tasks_chunck_table', 16),
(38, '2021_02_22_195401_create_tasks_requisition_bill_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `route_id` int NOT NULL,
  `user_id` int NOT NULL,
  `checked` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `route_id`, `user_id`, `checked`, `created_at`, `updated_at`) VALUES
(5, 1, 3, 'off', '2021-01-21 13:41:59', '2021-01-21 14:52:50'),
(6, 4, 3, 'off', '2021-01-21 13:41:59', '2021-01-21 14:50:55'),
(7, 5, 3, 'off', '2021-01-21 13:41:59', '2021-01-21 14:50:55'),
(8, 6, 3, 'off', '2021-01-21 13:42:19', '2021-01-21 14:50:55'),
(9, 11, 3, 'off', '2021-01-21 13:44:17', '2021-01-21 14:50:55'),
(10, 10, 3, 'off', '2021-01-21 14:00:31', '2021-01-21 14:50:55'),
(11, 20, 3, 'on', '2021-01-21 14:59:48', '2021-01-21 14:59:48'),
(12, 20, 2, 'on', '2021-01-21 15:00:01', '2021-01-21 15:00:01'),
(13, 1, 1, 'on', '2021-01-21 15:00:51', '2021-01-21 15:00:51'),
(14, 4, 1, 'on', '2021-01-21 15:00:51', '2021-01-21 15:00:51'),
(15, 5, 1, 'on', '2021-01-21 15:00:51', '2021-01-21 15:00:51'),
(16, 6, 1, 'on', '2021-01-21 15:00:51', '2021-01-21 15:00:51'),
(17, 7, 1, 'on', '2021-01-21 15:00:51', '2021-01-21 15:00:51'),
(18, 8, 1, 'on', '2021-01-21 15:00:52', '2021-01-21 15:00:52'),
(19, 9, 1, 'on', '2021-01-21 15:00:52', '2021-01-21 15:00:52'),
(20, 10, 1, 'on', '2021-01-21 15:00:52', '2021-01-21 15:00:52'),
(21, 11, 1, 'on', '2021-01-21 15:00:52', '2021-01-21 15:00:52'),
(22, 12, 1, 'on', '2021-01-21 15:00:52', '2021-01-21 15:00:52'),
(23, 13, 1, 'on', '2021-01-21 15:00:52', '2021-01-21 15:00:52'),
(24, 14, 1, 'on', '2021-01-21 15:00:52', '2021-01-21 15:00:52'),
(25, 15, 1, 'on', '2021-01-21 15:00:52', '2021-01-21 15:00:52'),
(26, 16, 1, 'on', '2021-01-21 15:00:52', '2021-01-21 15:00:52'),
(27, 19, 13, 'on', '2021-01-21 19:16:41', '2021-01-21 19:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `budget` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget_history` json DEFAULT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Administrator', 1, NULL, NULL),
(2, 'Resource', 'All employees will stored under this role', 1, NULL, NULL),
(3, 'Project Manager', 'Project Manager', 1, NULL, NULL),
(4, 'CFO', 'Chief Financial Officer', 1, NULL, NULL),
(5, 'Accountant', 'Accountant', 1, NULL, NULL),
(6, 'Member', 'Member', 1, NULL, NULL),
(7, 'Human Resource', 'Human Resource', 1, NULL, NULL),
(8, 'Approver', 'Approver', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `routelists`
--

CREATE TABLE `routelists` (
  `id` bigint UNSIGNED NOT NULL,
  `route_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `route_grouping` int DEFAULT NULL,
  `to_role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_menu_id` int DEFAULT NULL,
  `show_menu` tinyint(1) DEFAULT NULL,
  `skip_sub` tinyint(1) DEFAULT NULL,
  `dashboard_menu` tinyint(1) DEFAULT NULL,
  `font_awesome` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bulma_class_icon_bg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routelists`
--

INSERT INTO `routelists` (`id`, `route_name`, `route_url`, `route_hash`, `route_description`, `route_note`, `route_grouping`, `to_role`, `parent_menu_id`, `show_menu`, `skip_sub`, `dashboard_menu`, `font_awesome`, `bulma_class_icon_bg`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'users.index', '$2y$10$dfyk0z6c6LMhMEmpZ5fgf.rbmYhtD/zFJI0ySlp3BgOQrKj1w5YKG', 'All users will show on this page.', 'users', NULL, '1,7', NULL, 1, NULL, 1, 'fas fa-users', 'is-success', 1, '2021-01-13 11:34:50', '2021-01-24 12:56:26'),
(7, 'Route Lists', 'routelists.index', '$2y$10$TUtF7tgc8uUQvEuXXQLhKuzkEyMQ4GNvUfR3rHDESv.gLLIBoGg4O', 'Routelists', 'Routelists', NULL, '1', NULL, 1, 1, 1, 'fas fa-link', 'is-warning', 1, '2021-01-22 17:59:59', '2021-01-27 20:12:24'),
(18, 'Projects', 'projects.index', '$2y$10$PWWJxr0vrTEfqJ4YmHPPBeR9IeYuaFfG42BfViMSMf2.28lgRBqXu', 'All Projects View', 'All Projects View', NULL, '1,3', NULL, 1, NULL, 1, 'fas fa-project-diagram', 'is-danger', 1, '2021-02-25 12:43:58', '2021-03-16 14:30:29'),
(19, 'Sites', 'sites.index', '$2y$10$JdnIxP11HTfvEEhSNgFyTuZoN2.pFIcw0G/g1xdNaEZ1MSqWJ248C', 'All Sites View', 'All Sites View', NULL, '1,3', NULL, 1, NULL, 1, 'fas fa-university', 'is-rounded is-orange', 1, '2021-02-25 12:47:12', '2021-03-16 22:18:51'),
(20, 'Vehicles', 'vehicles.index', '$2y$10$TSeE0OKyTIO9LIAB5bpJXOUyUPV39lTjo/QQReQJHlWGWSDusT1Q.', 'All Vehicles View', 'All Vehicles View', NULL, '1', NULL, 1, NULL, 1, 'fas fa-truck', 'is-lavender', 1, '2021-02-25 12:49:52', '2021-03-16 22:34:16'),
(21, 'Materials', 'materials.index', '$2y$10$ErqCsuz1RsG0fG.kGT0mHODbN9u4cMgwTQxCqJT19/AZlasXRCbD2', 'All Materials View', 'All Materials View', NULL, '1', NULL, 1, NULL, 1, 'fas fa-tools', 'is-lightgreen', 1, '2021-02-25 12:52:02', '2021-03-16 22:39:17'),
(22, 'Tasks', 'tasks.index', '$2y$10$LVV2GWRx5rIZ92Gam7kKDuNW7nT8lL0LMMxBZm2KLJcEDxpQySDs6', 'All Tasks View', 'All Tasks View', NULL, '2,3,4,5,8', NULL, 1, NULL, 1, 'fas fa-tasks', 'is-link', 1, '2021-02-25 12:54:07', '2021-03-16 22:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json NOT NULL,
  `is_active` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `settings`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Samrat Khan', '{\"address\": \"L-41, R # 8, South Banasree, Rampura, Dhaka\", \"company_name\": \"Tritiyo Limited\", \"company_email\": \"info@tritiyo.com\", \"company_phone\": \"01680139540\", \"company_slogan\": \"valid reason, dynamic solution\", \"company_website\": \"http://www.tritiyo.com\"}', 1, NULL, '2021-01-23 16:48:18'),
(2, 'Payment Settings', '{\"bill_end\": null, \"time_zone\": null, \"bill_start\": null, \"requisition_end\": null, \"bill_approval_end\": null, \"requisition_start\": null, \"bill_approval_start\": null, \"requisition_approval_end\": null, \"requisition_approval_start\": null}', 1, NULL, '2021-01-23 16:49:05'),
(3, 'Time Settings', '{\"bill_end\": \"5 pm\", \"time_zone\": \"Asia/Dhaka\", \"bill_start\": \"1 am\", \"requisition_end\": \"12 pm\", \"bill_approval_end\": \"5 pm\", \"requisition_start\": \"1 am\", \"bill_approval_start\": \"1 am\", \"requisition_approval_end\": \"12 pm\", \"requisition_approval_start\": \"1 am\"}', 1, NULL, '2021-01-13 16:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `site_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_head` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completion_status` enum('Running','Rejected','Completed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `task_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int NOT NULL,
  `site_head` int NOT NULL,
  `task_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `anonymous_proof_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `task_assigned_to_head` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_for` date DEFAULT NULL,
  `manager_override_chunck` json DEFAULT NULL,
  `override_status` enum('Yes','No','Overriden') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks_chunck`
--

CREATE TABLE `tasks_chunck` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` int NOT NULL,
  `manager_data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks_material`
--

CREATE TABLE `tasks_material` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` int NOT NULL,
  `material_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `material_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `material_amount` int DEFAULT NULL,
  `material_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks_proof`
--

CREATE TABLE `tasks_proof` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` int NOT NULL,
  `proof_sent_by` int DEFAULT NULL,
  `resource_proof` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vehicle_proof` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `material_proof` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `anonymous_proof` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lat_proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks_requisition_bill`
--

CREATE TABLE `tasks_requisition_bill` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` int NOT NULL,
  `requisition_prepared_by_manager` json DEFAULT NULL,
  `requisition_submitted_by_manager` enum('Yes') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requisition_edited_by_cfo` json DEFAULT NULL,
  `requisition_approved_by_cfo` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requisition_edited_by_accountant` json DEFAULT NULL,
  `requisition_approved_by_accountant` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_prepared_by_resource` json DEFAULT NULL,
  `bill_submitted_by_resource` enum('Yes') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_edited_by_manager` json DEFAULT NULL,
  `bill_approved_by_manager` enum('Yes') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_edited_by_cfo` json DEFAULT NULL,
  `bill_approved_by_cfo` enum('Yes') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_edited_by_accountant` json DEFAULT NULL,
  `bill_approved_by_accountant` enum('Yes') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks_site`
--

CREATE TABLE `tasks_site` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` int NOT NULL,
  `site_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resource_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks_status`
--

CREATE TABLE `tasks_status` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_performed_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `performed_for` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requisition_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks_vehicle`
--

CREATE TABLE `tasks_vehicle` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` int NOT NULL,
  `vehicle_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_rent` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `company_address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `basic_salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mbanking_information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `alternative_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_status` enum('Enroll','Terminated','Long Leave','Left Job') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `employee_no`, `username`, `role`, `birthday`, `gender`, `marital_status`, `father`, `mother`, `address`, `district`, `postcode`, `phone`, `emergency_phone`, `company`, `designation`, `join_date`, `company_address`, `basic_salary`, `avatar`, `signature`, `bank_information`, `mbanking_information`, `alternative_email`, `employee_status`, `is_active`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Samrat Khan', 'info@tritiyo.com', '10001', 'u001', 1, '1987-12-10', 'Male', 'Married', 'Md Badruzzaman Khan', 'Shahinazzaman', 'Hajipur, Chonkhola, Ghatail, Tangail', 'Married', '1980', '01680139540', '01821660066', 'Tritiyo Limited', '1', '2013-01-01', 'Banasree', '40000', NULL, NULL, NULL, 'bKash: 01821660066,\r\nNagad: 01680139540', 'takeitkhan@gmail.com', NULL, 0, NULL, '$2y$10$u4iDAoSbBmwJFFXKAzJ3tuzFMV9gS7ZScaTTGOHGc.w75yIuwOasO', NULL, NULL, NULL, '2020-12-15 16:18:26', '2021-01-20 15:42:38'),
(18, 'Zakia Akhter', 'accountant@tritiyo.com', '095', 'u095', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+8801844217303', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2y$10$Q8fPKjNB5/eozLbgn8lauecwGduXbtpm37lvhU47xg7fCtrDnZc6G', NULL, NULL, NULL, '2021-01-29 23:35:43', '2021-01-29 23:35:43'),
(19, 'Nazmul Hoque', 'manager@tritiyo.com', '103', 'u103', 3, '1987-10-12', 'Male', 'Married', 'NA', 'NA', 'NA', 'Married', 'NA', '+8801844217301', NULL, 'NA', '19', '2020-01-01', 'NA', '16500', NULL, NULL, NULL, NULL, 'NA@mtsbd.net', NULL, 0, NULL, '$2y$10$8/fUue7VkW1sLfsFh.KcpOQpLiReJEPdm33SRpaRCKOIH9j6oMq56', NULL, NULL, NULL, '2021-01-29 23:36:33', '2021-01-29 23:54:27'),
(20, 'Abdul Ohab', 'resource@tritiyo.com', '231', 'u231', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+8801715179905', NULL, NULL, '15', NULL, NULL, NULL, NULL, NULL, NULL, 'bKash: 01821660066,\r\nNagad: 01680139540', NULL, NULL, 0, NULL, '$2y$10$brgYAplXsiUspJDcq7lc7.cHnkagwvvqPwCPz5OomaTosjFHaq3nS', NULL, NULL, NULL, '2021-01-29 23:37:50', '2021-03-17 08:36:20'),
(21, 'Anowarul Hoque', 'cfo@tritiyo.com', '002', 'u002', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+8801844217300', NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2y$10$J7/Nc/0XlEf03MaHuih/JepHdLXBmsUlppN7nloFJSAhHKNjLOU0e', NULL, NULL, NULL, '2021-01-29 23:38:17', '2021-01-29 23:38:17'),
(22, 'Tahrima Tarin', 'hr@tritiyo.com', '131', 'u131', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+8801844217302', NULL, NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2y$10$4BI7GR.ggbhtxm1iELh0Y.iHsE1C9O0Kbls0XWeqWYF2Oobnpem2e', NULL, NULL, NULL, '2021-01-29 23:40:13', '2021-01-29 23:40:13'),
(23, 'Noushad Nipun', 'resource1@tritiyo.com', '232', 'u232', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+8801715179905', NULL, NULL, '15', NULL, NULL, NULL, 'public/images/avatar/1615823874.jpg', 'public/images/signature/1615823874.jpg', NULL, 'bKash: 01821660066,\r\nNagad: 01680139540', NULL, NULL, 0, NULL, '$2y$10$fB67hDVPYTB/uC8L8TjmHejjslsQptPgQFlYh1aS0hwIzNtDUVSsm', NULL, NULL, NULL, '2021-01-29 23:37:50', '2021-03-15 15:57:54'),
(24, 'Mr. Approver', 'approver@tritiyo.com', '23099203', 'u23099203', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2340924830238', '2034209348', NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '$2y$10$Jz/5w2t.AWF/n0JQkSvjZuvQpqwQ05qtdibFbSYCQfwIhfbxJUJT6', NULL, NULL, NULL, '2021-02-26 12:59:51', '2021-02-26 12:59:51'),
(25, 'Mr. Resource 2', 'resource2@m.com', '209320909', 'u209320909', 2, '2021-03-16', 'Male', 'Married', 'Mr. Resource 2', 'Mr. Resource 2', 'Mr. Resource 2', 'Gazipur', '2500', '23498237840298', '209348209348', 'Mr. Resource 2', '15', '2021-03-16', 'Mr. Resource 2', '25000', NULL, NULL, NULL, NULL, NULL, 'Left Job', 0, NULL, '$2y$10$.OfIQjl/AXRZHpBnR60ngO8yYxm6MnwF/q91gWnVhj55Pq8ckpavu', NULL, NULL, NULL, '2021-02-26 17:22:26', '2021-03-16 09:57:04'),
(26, 'Mr. Resource 3', 'resource3@m.com', '300923092', 'u300923092', 7, '2020-12-09', 'Male', 'Married', '31', '31', '31', 'Faridpur', '31', '02935423084208', '430583405983', '31', '1', '2021-03-16', '31', '31', NULL, NULL, NULL, NULL, '31@mm.com', 'Terminated', 0, NULL, '$2y$10$Zmff8ylfLlbC5LPn7AvT/ua78Y6A8WOgj9xHHI.mi8yFVkukzv/4O', NULL, NULL, NULL, '2021-02-26 17:22:57', '2021-03-16 10:04:20'),
(27, 'Shahin Ahmed', 'manager2@m.com', '007', 'u007', 3, '2021-03-18', 'Male', 'Married', 'asdfas', 'asdfas', 'adf', 'Faridpur', '2500', '01821660066', '01821660055', 'Tritiyo Limited', '19', '2021-03-16', '03AGdBq25Pw3vdOweMxsa4N9pAqaJgXmfX7WYUQLAfomXtznD96mGESXb8DOacrZ0oATG9ynozMKpjcZ3WILCo5PSNpFYAov5ImVEe2QRz_lj0Xp_bjVQgvoFiojFl1FNgtb2SDe-VKPH11Ia0DNCqeLX1I6KRx7chP1M_GW0e6xSadC8JrokhqRZg0jiwBaKAk-FxhDNj3G9gbJgE6qcm61if3GE6yZhsPASx5DuCxDOWuJfB9E6nNyxFl9bhzNDAdAHo35sYwigba5cePDpl6fgUwo82YpvqDxr6oWTq1z7SJa8g_DzdpATDooKSeHvCsA3vxV6Gae04qSJ3KWRVKAXTDFXHThGGU0o4imfWMiwNKWFfiUWFVR1RaY5DBjteymo2lQFaLr4Hnij8CsWXh7ENuWuH-SG1GicIIhq33hnRFYuthNb8hPjTrQOSqWwG5oYlKhUREivbTnhXlczIFcz-AgSTK8UX_w', '25000', 'public/images/avatar/1615882834.png', 'public/images/signature/1615882834.png', NULL, NULL, 'info@tritiyo.com', 'Long Leave', 0, NULL, '$2y$10$/bpVjp9b/KC0DmZk7UtwnuJdRC5iz4UhEx5R/9H1C0Z0lVxGDF5EG', NULL, NULL, NULL, '2021-03-14 19:20:35', '2021-03-16 09:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `probably_cost` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routelists`
--
ALTER TABLE `routelists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `route_url` (`route_url`),
  ADD UNIQUE KEY `route_hash` (`route_hash`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks_chunck`
--
ALTER TABLE `tasks_chunck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks_material`
--
ALTER TABLE `tasks_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks_proof`
--
ALTER TABLE `tasks_proof`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks_requisition_bill`
--
ALTER TABLE `tasks_requisition_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks_site`
--
ALTER TABLE `tasks_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks_status`
--
ALTER TABLE `tasks_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks_vehicle`
--
ALTER TABLE `tasks_vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_employee_no_unique` (`employee_no`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `routelists`
--
ALTER TABLE `routelists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks_chunck`
--
ALTER TABLE `tasks_chunck`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks_material`
--
ALTER TABLE `tasks_material`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks_proof`
--
ALTER TABLE `tasks_proof`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks_requisition_bill`
--
ALTER TABLE `tasks_requisition_bill`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks_site`
--
ALTER TABLE `tasks_site`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks_status`
--
ALTER TABLE `tasks_status`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks_vehicle`
--
ALTER TABLE `tasks_vehicle`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
