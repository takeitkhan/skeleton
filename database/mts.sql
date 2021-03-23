-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 22, 2021 at 08:24 AM
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

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `name`, `unit`, `created_at`, `updated_at`) VALUES
(1, 'DSL Modem', '300', '2021-03-17 10:15:05', '2021-03-17 10:15:05'),
(2, 'PoE Injector', '500', '2021-03-17 10:15:47', '2021-03-17 10:15:47'),
(3, 'Mi-Fi -BroadBand Wi-FI Hub', '750', '2021-03-17 10:16:37', '2021-03-17 10:16:37'),
(4, 'POE Switch', '400', '2021-03-17 10:16:56', '2021-03-17 10:16:56'),
(5, 'Network Hub', '500', '2021-03-17 10:17:16', '2021-03-17 10:17:16'),
(6, 'Broadband Filter', '800', '2021-03-17 10:17:42', '2021-03-17 10:17:42'),
(7, 'Ethernet cable', '100', '2021-03-17 10:20:14', '2021-03-17 10:20:14'),
(8, 'Coaxial cable', '240', '2021-03-17 10:20:29', '2021-03-17 10:20:29'),
(9, 'Cat6 Cable', '230', '2021-03-17 10:22:20', '2021-03-17 10:22:20'),
(10, 'Cat 5 Cable', NULL, '2021-03-17 10:22:29', '2021-03-17 10:22:29');

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
(38, '2021_02_22_195401_create_tasks_requisition_bill_table', 17),
(39, '2021_03_21_195401_create_task_site_complete_table', 18);

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

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `code`, `type`, `manager`, `customer`, `address`, `vendor`, `supplier`, `location`, `office`, `start`, `end`, `budget`, `summary`, `budget_history`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Banglalink_L900', 'Banglalink_L900', 'Service', '57', 'Banglalink', 'Bangladesh', 'Banglalink', 'Banglalink', 'Bangladesh', 'Dhaka', '2021-01-01', '2021-06-19', '30000000', 'Banglalink', NULL, 1, '2021-01-13 17:18:27', '2021-03-17 15:24:17'),
(2, 'SCL Maintenance_Gajipur_kapasia', '0001', 'Maintenance', '19', 'Summit Communications LTD', 'Gajipur', 'Summit Communications LTD', 'Summit Communications LTD', 'Gajipur', 'Dhaka', '2021-01-01', '2021-01-29', '200000', 'Summit Communications LTD', NULL, 1, '2021-01-22 18:19:52', '2021-03-18 04:57:25'),
(3, 'Banglalink_New BTS', 'Banglalink_New BTS', 'Service', '56', 'Banglalink', 'Bangladesh', 'Banglalink', 'Banglalink', 'Bangladesh', 'Dhaka', '2020-10-31', '2022-01-02', '300000', 'Banglalink_New BTS', NULL, 1, '2021-02-02 04:14:35', '2021-02-02 04:15:10'),
(4, 'Base_Edotco_Rollout', 'Base_Edotco_Rollout', 'Service', '58', 'Base Technologies Ltd', 'Bangladesh', 'Base Technologies Ltd', 'Base Technologies Ltd', 'Bangladesh', 'Dhaka', '2021-02-01', '2022-01-02', '2000000', 'Base_Edotco_Rollout', NULL, 1, '2021-02-02 04:16:53', '2021-02-02 04:39:03'),
(5, 'Edotco_RMS', 'Edotco_RMS', 'Service', '55', 'Edotco', 'Bangladesh', 'Edotco', 'Edotco', 'Bangladesh', 'Dhaka', '2021-02-01', '2022-01-02', '2000000', 'Edotco_RMS', NULL, 1, '2021-02-02 04:18:11', '2021-02-02 04:18:11'),
(6, 'Base_BL_Battery Swap', 'Base_BL_Battery Swap', 'Service', '55', 'Base Technologies Ltd', 'Bangladesh', 'Base Technologies Ltd', 'Base Technologies Ltd', 'Bangladesh', 'Dhaka', '2021-02-02', '2021-05-31', '800000', 'Base_BL_Battery Swap', NULL, 1, '2021-02-02 04:21:41', '2021-02-02 04:21:41'),
(7, 'Sarbs_GP_Battery Expansion', 'Sarbs_GP_Battery Expansion', 'Service', '58', 'Sarbs Communications Ltd', 'Bangladesh', 'Sarbs Communications Ltd', 'Sarbs Communications Ltd', 'Bangladesh', 'Dhaka', '2021-01-31', '2021-06-30', '1000000', 'Saarbs_GP_Battery Expansion', NULL, 1, '2021-02-02 04:25:45', '2021-02-02 04:25:45'),
(8, 'SCL Maintenance_Narshingdi', 'SCL Maintenance_Narshingdi', 'Maintenance', '19', 'Summit Communications Ltd', 'Narshingdi', 'Summit Communications Ltd', 'Summit Communications Ltd', 'Narshingdi', 'Dhaka', '2020-01-02', '2022-01-02', '20000', 'SCL Maintenance_Narshingdi', NULL, 1, '2021-02-02 04:35:26', '2021-02-02 04:35:26'),
(9, 'SCL Maintenance_Tangail', 'SCL Maintenance_Tangail', 'Maintenance', '19', 'Summit Communications Ltd', 'Tangail', 'Summit Communications Ltd', 'Maintenance', 'Tangail', 'Dhaka', '2020-01-01', '2022-01-01', '2000000', 'SCL Maintenance_Tangail', NULL, 1, '2021-02-02 04:37:27', '2021-02-02 04:37:27'),
(10, 'Banglalink_Relocation', 'Banglalink_Relocation', 'Service', '57', 'Banglalink', 'Bangladesh', 'Banglalink', 'Banglalink', 'Bangladesh', 'Dhaka', '2020-01-01', '2022-01-01', '2000000', 'Banglalink_Relocation', NULL, 1, '2021-02-02 04:41:59', '2021-02-02 04:41:59'),
(11, 'Base_Edotco_Rectifier Swap', 'Base_Edotco_Rectifier Swap', 'Service', '55', 'Base Technologies Ltd', 'Bangladesh', 'Base Technologies Ltd', 'Base Technologies Ltd', 'Bangladesh', 'Dhaka', '2020-10-01', '2022-04-01', '2000000', 'Banglalink_Cell Split', NULL, 1, '2021-02-02 05:34:10', '2021-02-10 00:57:37'),
(12, 'Banglalink_Cell Split', 'Banglalink_Cell Split', 'Service', '57', 'Banglalink', 'Bangladesh', 'Banglalink', 'Banglalink', 'Bangladesh', 'Dhaka', '2020-10-01', '2022-04-01', '2000000', 'Banglalink_Cell Split', NULL, 1, '2021-02-02 05:35:53', '2021-02-02 05:35:53'),
(13, 'Banglalink_Antenna Swap', 'Banglalink_Antenna Swap', 'Service', '27', 'Banglalink', 'Bangladesh', 'Banglalink', 'Banglalink', 'Bangladesh', 'Dhaka', '2020-10-01', '2022-03-01', '2000000', 'Banglalink_Antenna Swap', NULL, 1, '2021-02-02 05:37:35', '2021-03-17 09:21:58'),
(14, 'Edotco_Smartlock', 'Edotco_Smartlock', 'Service', '55', 'Edotco', 'Bangladesh', 'Edotco', 'Edotco', 'Bangladesh', 'Dhaka', '2021-03-08', '2021-03-31', '42000', 'Edotco_Smartlock', NULL, 1, '2021-03-08 11:17:34', '2021-03-17 15:23:51'),
(15, 'SCL Maintenance_Gajipur_Sofipur', 'Maintenance_Gajipur_Sofipur', 'Maintanance', '19', 'Summit Communications LTD', 'Sofipur', 'Summit Communications LTD', 'Summit Communications LTD', 'Sofipur', 'Dhaka', '2021-03-18', '2022-03-23', '1200000', 'SCL Maintenance_Gajipur_Sofipur', NULL, 1, '2021-03-18 05:00:03', '2021-03-18 05:00:03'),
(16, 'AGRO', '0001', 'Fruits', '19', 'AGORA', 'N/A', 'AGORA', 'AGORA', 'Dhaka', 'Dhaka', '2021-03-21', '2021-03-26', '5000000', 'Test', NULL, 1, '2021-03-21 12:59:30', '2021-03-21 12:59:30');

-- --------------------------------------------------------

--
-- Stand-in structure for view `projects_datas`
-- (See below for the actual view)
--
CREATE TABLE `projects_datas` (
`all_projects_datas` longtext
,`code` varchar(191)
,`id` bigint unsigned
,`manager` varchar(191)
,`type` varchar(191)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `requisition_datas`
-- (See below for the actual view)
--
CREATE TABLE `requisition_datas` (
`all_requisition_datas` longtext
,`id` bigint unsigned
,`task_id` int
);

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
(1, 'Users', 'users.index', '$2y$10$ApfLaLRIGGb89n6Ee5lTPeAjwz.HEktFMKj0wCr6W3pzXIQxr.bQC', 'All users will show on this page.', 'users', NULL, '1,7', NULL, 1, NULL, 1, 'fas fa-users', 'is-info', 1, '2021-01-13 11:34:50', '2021-03-18 10:01:07'),
(7, 'Route Lists', 'routelists.index', '$2y$10$TUtF7tgc8uUQvEuXXQLhKuzkEyMQ4GNvUfR3rHDESv.gLLIBoGg4O', 'Routelists', 'Routelists', NULL, '1', NULL, 1, 1, 1, 'fas fa-link', 'is-warning', 1, '2021-01-22 17:59:59', '2021-01-27 20:12:24'),
(18, 'Projects', 'projects.index', '$2y$10$vQXiP0Jwimioa94L38zCgO2wHcQyTuBsnTveFoUhBz.PkjHPxW4ca', 'All Projects View', 'All Projects View', NULL, '1,3,8', NULL, 1, NULL, 1, 'fas fa-project-diagram', 'is-danger', 1, '2021-02-25 12:43:58', '2021-03-19 08:34:36'),
(19, 'Sites', 'sites.index', '$2y$10$bxz76JnlGUq8VeeLlfG0xOPAjkNUh1Eg34N3RgJX/M3HJzkOFc9ky', 'All Sites View', 'All Sites View', NULL, '1,3,8', NULL, 1, NULL, 1, 'fas fa-university', 'is-rounded is-orange', 1, '2021-02-25 12:47:12', '2021-03-18 20:43:27'),
(20, 'Vehicles', 'vehicles.index', '$2y$10$M0PzqIu2fiDEU1MYewhk0eSojug1YFYN0iJ/mn/wXV1aQHdd/p2RO', 'All Vehicles View', 'All Vehicles View', NULL, '1,3,8', NULL, 1, NULL, 1, 'fas fa-truck', 'is-lavender', 1, '2021-02-25 12:49:52', '2021-03-19 12:20:57'),
(21, 'Materials', 'materials.index', '$2y$10$oFPM86tQGeR7E4kPSMg94.SlNZIr9s/LX0uIWb3SQnU3ZurBDnKLi', 'All Materials View', 'All Materials View', NULL, '1,3,8', NULL, 1, NULL, 1, 'fas fa-tools', 'is-lightgreen', 1, '2021-02-25 12:52:02', '2021-03-19 12:21:18'),
(22, 'Tasks', 'tasks.index', '$2y$10$l6fXQvYz9936FaZIW6EiIe6XPWi4pCDFHpmQisVwk8Pc3gU6bkuxK', 'All Tasks View', 'All Tasks View', NULL, '1,2,3,4,5,8', NULL, 1, NULL, 1, 'fas fa-tasks', 'is-link', 1, '2021-02-25 12:54:07', '2021-03-17 19:48:50'),
(23, 'Tasks Advanced Search', 'tasks.search', '$2y$10$KazBeWU0GjMyZK9t0wGHnuKbYX4dg9sN.26chtugs16iBx.U0elAS', 'Task Advanced Search', 'Task Advanced Search', NULL, '1,3,4,5,8', 22, 1, 1, 1, 'fas fa-search', 'is-purple', 1, '2021-03-18 19:11:44', '2021-03-18 19:11:44');

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

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `project_id`, `user_id`, `location`, `site_code`, `material`, `site_head`, `budget`, `completion_status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Badda, Dhaka', 'SBLL900', NULL, NULL, NULL, 'Running', '2021-03-17 09:23:30', '2021-03-17 09:23:30'),
(2, 2, NULL, 'Konabari, Gazipur', 'SCLGAZ001', NULL, NULL, NULL, 'Completed', '2021-03-17 09:26:13', '2021-03-21 15:13:47'),
(3, 3, NULL, 'Dhanmondi, Dhaka', 'BL_NBTS987', NULL, NULL, NULL, 'Running', '2021-03-17 09:27:00', '2021-03-17 09:27:14'),
(4, 5, NULL, 'Abdullahpur, Dhaka', 'ERMS_2371', NULL, NULL, NULL, 'Running', '2021-03-17 09:28:07', '2021-03-17 09:29:45'),
(5, 7, NULL, 'Badda, Dhaka', 'SARBS_GPB_1212', NULL, NULL, NULL, 'Running', '2021-03-17 09:30:52', '2021-03-17 09:30:52'),
(6, 9, NULL, 'Tangail', 'SCL_1938', NULL, NULL, NULL, 'Running', '2021-03-17 09:32:09', '2021-03-17 09:32:09'),
(7, 6, NULL, 'Rampura, Dhaka', 'BLBASE_1219', NULL, NULL, NULL, 'Running', '2021-03-17 09:33:26', '2021-03-17 09:33:26'),
(8, 10, NULL, 'Feni', 'BLRLC_3921', NULL, NULL, NULL, 'Running', '2021-03-17 09:34:17', '2021-03-17 09:34:17'),
(9, 12, NULL, 'Malibagh, Dhaka', 'BLCELSPL_1219', NULL, NULL, NULL, 'Running', '2021-03-17 09:37:01', '2021-03-17 09:37:01'),
(10, 14, NULL, 'Rajshahi', 'ESMLOCK_6206', NULL, NULL, NULL, 'Running', '2021-03-17 09:38:18', '2021-03-17 09:38:18'),
(11, 4, NULL, 'Mirzapur, Tangail', 'BREOUT_1941', NULL, NULL, NULL, 'Running', '2021-03-17 10:25:01', '2021-03-17 10:25:01'),
(12, 2, NULL, 'Kapasia', 'GPSY1 to GPTPB1', NULL, NULL, NULL, 'Completed', '2021-03-18 05:01:00', '2021-03-21 14:51:21'),
(13, 2, NULL, 'Kapasia', 'GAZ0079 to GAZ0089', NULL, NULL, NULL, 'Completed', '2021-03-18 05:01:21', '2021-03-21 15:09:28'),
(14, 2, NULL, 'Kapasia', 'DHK_X1718 TO GAZ03', NULL, NULL, NULL, 'Running', '2021-03-18 05:01:41', '2021-03-18 05:01:41'),
(15, 2, NULL, 'Kapasia', 'Kaligonj Up pop to Nagari', NULL, NULL, NULL, 'Running', '2021-03-18 05:01:55', '2021-03-18 05:01:55'),
(16, 15, NULL, 'Sofipur', 'GPKLK04 to GPKLK66', NULL, NULL, NULL, 'Running', '2021-03-18 05:02:42', '2021-03-18 05:02:42'),
(17, 15, NULL, 'Sofipur', 'GPKLK66 to GPKLK36', NULL, NULL, NULL, 'Running', '2021-03-18 05:02:59', '2021-03-18 05:02:59'),
(18, 15, NULL, 'Sofipur', 'GPKLK66-GPSDR09', NULL, NULL, NULL, 'Running', '2021-03-18 05:03:16', '2021-03-18 05:03:16'),
(19, 15, NULL, 'Sofipur', 'GPDHK_X2586 to DHK_X2288', NULL, NULL, NULL, 'Running', '2021-03-18 05:03:32', '2021-03-18 05:03:32'),
(20, 8, NULL, 'Narshingdi', 'NGARH04 to CCL', NULL, NULL, NULL, 'Rejected', '2021-03-18 05:04:02', '2021-03-18 05:04:02'),
(21, 8, NULL, 'Narshingdi', 'GPSDR06 TO BANBEIS', NULL, NULL, NULL, 'Completed', '2021-03-18 05:04:24', '2021-03-18 05:04:24'),
(22, 8, NULL, 'Narshingdi', 'NSSDR04 to NSSDR09', NULL, NULL, NULL, 'Running', '2021-03-18 05:07:16', '2021-03-18 05:07:16'),
(23, 8, NULL, 'Narshingdi', 'DHK_X1803 to DHK_X2551', NULL, NULL, NULL, 'Running', '2021-03-18 05:07:32', '2021-03-18 05:07:32'),
(24, 9, NULL, 'Tangail', 'Kalihati 04 to TAN 7', NULL, NULL, NULL, 'Running', '2021-03-18 05:07:55', '2021-03-18 05:07:55'),
(25, 9, NULL, 'Tangail', 'TAN0007 to TNKLH04', NULL, NULL, NULL, 'Completed', '2021-03-18 05:08:10', '2021-03-21 14:51:21'),
(26, 10, 0, 'Badda, Dhaka', 'DHK_X0061', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 10, 0, 'Konabari, Gazipur', 'DHK_X0492', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 10, 0, 'Dhanmondi, Dhaka', 'DHK_X1819', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 10, 0, 'Abdullahpur, Dhaka', 'DHK_X0691', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 10, 0, 'Badda, Dhaka', 'CTG_X0048', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 10, 0, 'Tangail', 'DHK_X0652', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 10, 0, 'Rampura, Dhaka', 'CTG_X1767', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 10, 0, 'Feni', 'RAJ_G0942', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 10, 0, 'Malibagh, Dhaka', 'RAJ_X0385', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 10, 0, 'Rajshahi', 'SYL_X0040', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 10, 0, 'Mirzapur, Tangail', 'CTG_X0108', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 10, 0, 'Kapasia', 'SYL_X0041', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 10, 0, 'Kapasia', 'DHK_X2097', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 10, 0, 'Kapasia', 'RAJ_X0371', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 10, 0, 'Kapasia', 'RAJ_X0373', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 10, 0, 'Sofipur', 'DHK_X0196', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 12, 0, 'Sofipur', 'CTG_W1774', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 12, 0, 'Sofipur', 'DHK_X2945', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 12, 0, 'Sofipur', 'DHK_M2407', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 12, 0, 'Narshingdi', 'KHU_X0055', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 12, 0, 'Narshingdi', 'CTG_X0134', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 12, 0, 'Narshingdi', 'DHK_X0610', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 12, 0, 'Narshingdi', 'CTG_X0612', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 12, 0, 'Tangail', 'DHK_X1892', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 12, 0, 'Tangail', 'DHK_M0635', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 12, 0, 'Tangail', 'KHU_X1786', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 12, 0, 'Tangail', 'DHK_X5632', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 12, 0, 'Badda, Dhaka', 'KHU_X0033', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 12, 0, 'Konabari, Gazipur', 'CTG_X0050', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 12, 0, 'Dhanmondi, Dhaka', 'KHU_X0013', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 12, 0, 'Abdullahpur, Dhaka', 'CTG_X0129', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 12, 0, 'Badda, Dhaka', 'RAJ_X0043', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 12, 0, 'Tangail', 'DHK_X2989', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 12, 0, 'Rampura, Dhaka', 'RAJ_X0090', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 12, 0, 'Feni', 'DHK_G3771', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 13, 0, 'Malibagh, Dhaka', 'RAJ_X0010', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 13, 0, 'Rajshahi', 'RAJ_X0095', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 13, 0, 'Mirzapur, Tangail', 'KHU_X0178', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 13, 0, 'Kapasia', 'CTG_M1424', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 13, 0, 'Kapasia', 'RAJ_X0059', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 13, 0, 'Kapasia', 'DHK_T0062', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 13, 0, 'Kapasia', 'CTG_R2145', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 13, 0, 'Sofipur', 'CTG_R2104', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 13, 0, 'Sofipur', 'DHK_X0061', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 13, 0, 'Sofipur', 'DHK_X0492', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 13, 0, 'Sofipur', 'DHK_X1819', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 13, 0, 'Narshingdi', 'DHK_X0691', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 13, 0, 'Narshingdi', 'CTG_X0048', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 13, 0, 'Narshingdi', 'DHK_X0652', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 13, 0, 'Narshingdi', 'CTG_X1767', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 13, 0, 'Tangail', 'RAJ_G0942', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 13, 0, 'Tangail', 'RAJ_X0385', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 13, 0, 'Tangail', 'SYL_X0040', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 13, 0, 'Tangail', 'CTG_X0108', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 13, 0, 'Kapasia', 'SYL_X0041', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 13, 0, 'Kapasia', 'DHK_X2097', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 13, 0, 'Sofipur', 'RAJ_X0371', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 13, 0, 'Sofipur', 'RAJ_X0373', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 13, 0, 'Sofipur', 'DHK_X0196', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 11, 0, 'Sofipur', 'DHK_Y7537', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 11, 0, 'Narshingdi', 'KHU_Y2034', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 11, 0, 'Narshingdi', 'KHU_Y2046', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 11, 0, 'Narshingdi', 'DHK_Y3903', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 11, 0, 'Narshingdi', 'DHK_Y3911', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 11, 0, 'Tangail', 'DHK_Y8093', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 11, 0, 'Tangail', 'DHK_Y8113', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 11, 0, 'Tangail', 'DHK_Y8190', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 11, 0, 'Tangail', 'DHK_Y5067', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 11, 0, 'Badda, Dhaka', 'KHU_Y1974', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 11, 0, 'Konabari, Gazipur', 'DHK_Y7527', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 11, 0, 'Dhanmondi, Dhaka', 'KHU_Y2023', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 11, 0, 'Abdullahpur, Dhaka', 'KHU_Y2072', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 11, 0, 'Badda, Dhaka', 'DHK_Y8184', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 11, 0, 'Tangail', 'DHK_Y7530', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 11, 0, 'Rampura, Dhaka', 'KHU_Y2063', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 11, 0, 'Feni', 'DHK_Y3918', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 11, 0, 'Malibagh, Dhaka', 'DHK_Y3920', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 11, 0, 'Rajshahi', 'KHU_Y2015', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 11, 0, 'Mirzapur, Tangail', 'KHU_Y2045', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 11, 0, 'Kapasia', 'DHK_Y8079', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 11, 0, 'Kapasia', 'KHU_Y1975', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 11, 0, 'Kapasia', 'KHU_Y1978', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 11, 0, 'Kapasia', 'KHU_Y1961', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 11, 0, 'Sofipur', 'KHU_Y2039', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 11, 0, 'Sofipur', 'DHK_Y8063', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 11, 0, 'Sofipur', 'DHK_R4189', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 11, 0, 'Sofipur', 'KHU_R2084', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 11, 0, 'Badda, Dhaka', 'DHK_R3700', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 14, 0, 'Konabari, Gazipur', 'TGADD1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 14, 0, 'Dhanmondi, Dhaka', 'TGKTP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 14, 0, 'Abdullahpur, Dhaka', 'NASPH2', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 14, 0, 'Badda, Dhaka', 'NTMLL1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 14, 0, 'Tangail', 'NWLPM1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 14, 0, 'Rampura, Dhaka', 'RSTLD1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 14, 0, 'Feni', 'NASPB1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 14, 0, 'Malibagh, Dhaka', 'DPFKB1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 14, 0, 'Rajshahi', 'NAKKR1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 14, 0, 'Mirzapur, Tangail', 'NTCRT1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 14, 0, 'Kapasia', 'NWMLP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 14, 0, 'Kapasia', 'RSDBL1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 14, 0, 'Kapasia', 'NAISP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 14, 0, 'Kapasia', 'TGCHM1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 15, 0, 'Sofipur', 'TGGNH1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:02:33'),
(129, 15, 0, 'Sofipur', 'NTJNL1', NULL, NULL, NULL, 'Completed', '0000-00-00 00:00:00', '2021-03-21 15:16:31'),
(130, 15, 0, 'Sofipur', 'NWBKR1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:03:55'),
(131, 15, 0, 'Sofipur', 'NASRG1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:04:49'),
(132, 15, 0, 'Narshingdi', 'DPBBH1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(133, 15, 0, 'Narshingdi', 'NAPRS1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:07:34'),
(134, 15, 0, 'Narshingdi', 'NWBDM1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:07:38'),
(135, 15, 0, 'Narshingdi', 'NTVIP2', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:10:24'),
(136, 15, 0, 'Tangail', 'NAJKH1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:10:24'),
(137, 15, 0, 'Tangail', 'TGDLH1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(138, 15, 0, 'Tangail', 'RSHPR1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(139, 15, 0, 'Tangail', 'NTCDK1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(140, 15, 0, '', 'PGCLR1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:07:42'),
(141, 15, 0, '', 'RSKKH1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(142, 15, 0, 'Badda, Dhaka', 'RSBRL1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(143, 15, 0, 'Konabari, Gazipur', 'TGCRN1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(144, 15, 0, 'Dhanmondi, Dhaka', 'NWSBG3', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(145, 15, 0, 'Abdullahpur, Dhaka', 'NWJKM1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(146, 15, 0, 'Badda, Dhaka', 'DPBJR1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(147, 15, 0, 'Tangail', 'RSKKM1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(148, 14, 0, 'Rampura, Dhaka', 'DPCRBR', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 14, 0, 'Feni', 'NAVMP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 14, 0, 'Malibagh, Dhaka', 'RPMED1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 14, 0, 'Rajshahi', 'RSGDM1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 14, 0, 'Mirzapur, Tangail', 'DPKMP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 14, 0, 'Kapasia', 'NAMNH1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 14, 0, 'Kapasia', 'NAKZM1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 14, 0, 'Kapasia', 'NWMNK1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 14, 0, 'Kapasia', 'DPKTR1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 14, 0, 'Sofipur', 'DPMDP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 14, 0, 'Sofipur', 'NAKMD1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 14, 0, 'Sofipur', 'NAKTB1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 14, 0, 'Sofipur', 'RSGGP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 14, 0, 'Narshingdi', 'NAMDP3', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 14, 0, 'Narshingdi', 'DPJNP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 14, 0, 'Narshingdi', 'RPBTG1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 14, 0, 'Narshingdi', 'NAUPS1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 14, 0, 'Tangail', 'NATJM2', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 14, 0, 'Tangail', 'NWMBP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 14, 0, 'Tangail', 'RSMCM', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 14, 0, 'Tangail', 'RPHRG2', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 14, 0, 'Badda, Dhaka', 'RSRSN1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 15, 0, 'Konabari, Gazipur', 'KGJTP1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(171, 15, 0, 'Dhanmondi, Dhaka', 'NWRSP1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(172, 15, 0, 'Abdullahpur, Dhaka', 'RSGBD1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(173, 15, 0, 'Badda, Dhaka', 'DPVNH1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(174, 15, 0, 'Tangail', 'RSHRG1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(175, 15, 0, 'Rampura, Dhaka', 'NWSMB1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(176, 15, 0, 'Feni', 'DPZHB1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(177, 15, 0, 'Malibagh, Dhaka', 'KGCBM1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(178, 15, 0, 'Rajshahi', 'TGBHL1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(179, 15, 0, 'Mirzapur, Tangail', 'PGSNP1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(180, 15, 0, 'Kapasia', 'RSPAK1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(181, 15, 0, 'Kapasia', 'KGPND1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(182, 15, 0, 'Kapasia', 'KGSLK1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(183, 15, 0, 'Kapasia', 'DPKTD1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(184, 15, 0, 'Sofipur', 'RSSMP1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(185, 15, 0, 'Sofipur', 'RSVGR1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(186, 15, 0, 'Sofipur', 'TGSKP1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(187, 15, 0, 'Sofipur', 'KGRJB1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(188, 15, 0, 'Narshingdi', 'KGVCM3', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(189, 15, 0, 'Narshingdi', 'NTJLL1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(190, 15, 0, 'Narshingdi', 'KGKLH1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(191, 15, 0, 'Narshingdi', 'RSKNP1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(192, 15, 0, 'Tangail', 'NABED1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(193, 15, 0, 'Tangail', 'DPMRP1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(194, 15, 0, 'Tangail', 'NTBGP1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(195, 15, 0, 'Tangail', 'JYNPB1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(196, 15, 0, 'Kapasia', 'NAAMR1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(197, 15, 0, 'Kapasia', 'DPPTG1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(198, 15, 0, 'Sofipur', 'NPBSB1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(199, 15, 0, 'Sofipur', 'NTDGP1', NULL, NULL, NULL, 'Running', '0000-00-00 00:00:00', '2021-03-21 00:11:53'),
(200, 1, 0, 'Sofipur', 'NTDNP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 3, 0, 'Sofipur', 'NASTD1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 4, 0, 'Narshingdi', 'KGBRK1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 5, 0, 'Narshingdi', 'TGPAR1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 6, 0, 'Narshingdi', 'RSHRP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 7, 0, 'Narshingdi', 'NPPCB1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 1, 0, 'Tangail', 'NPDMR1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 1, 0, 'Tangail', 'NTTRM1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 1, 0, 'Tangail', 'RSALG1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 1, 0, 'Tangail', 'NAELP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 1, 0, 'Badda, Dhaka', 'LMSJN1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 1, 0, 'Konabari, Gazipur', 'JYSHB1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 1, 0, 'Dhanmondi, Dhaka', 'RSKPR1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 1, 0, 'Abdullahpur, Dhaka', 'NPBTG1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 1, 0, 'Badda, Dhaka', 'RSBSP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 1, 0, 'Tangail', 'RSKRH1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 1, 0, 'Rampura, Dhaka', 'RSSAP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 1, 0, 'Feni', 'GBRGB1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 1, 0, 'Malibagh, Dhaka', 'NPNTR1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 1, 0, 'Rajshahi', 'RPLLB1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 1, 0, 'Mirzapur, Tangail', 'RPLLB2', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 1, 0, 'Kapasia', 'RPBKT1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 1, 0, 'Kapasia', 'NPRMG1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 1, 0, 'Kapasia', 'RSDGP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 1, 0, 'Kapasia', 'RSGDG1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 1, 0, 'Sofipur', 'DPGGB1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 1, 0, 'Sofipur', 'RSMDP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 1, 0, 'Sofipur', 'RSPNH1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 3, 0, 'Sofipur', 'RSKTG1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 3, 0, 'Badda, Dhaka', 'SGTWN5', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 3, 0, 'Konabari, Gazipur', 'RPCDP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 3, 0, 'Dhanmondi, Dhaka', 'SGTWN2', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 3, 0, 'Abdullahpur, Dhaka', 'NTKCK2', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 3, 0, 'Badda, Dhaka', 'NTSHB1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 3, 0, 'Tangail', 'RSUCD1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 3, 0, 'Rampura, Dhaka', 'RSBSN1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 3, 0, 'Feni', 'NPCHR1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 3, 0, 'Malibagh, Dhaka', 'PBSMZ1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 3, 0, 'Rajshahi', 'PBBMG1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 3, 0, 'Mirzapur, Tangail', 'PBHRP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 3, 0, 'Kapasia', 'PBRAP1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 3, 0, 'Kapasia', 'PBARM1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 3, 0, 'Kapasia', 'PBFRD2', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 3, 0, 'Kapasia', 'NBGLB1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 3, 0, 'Sofipur', 'RSPNG1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 3, 0, 'Sofipur', 'RSMZN1', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 3, 0, 'Sofipur', 'NWBLH2', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 3, 0, 'Sofipur', 'RAJ_L0032', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 3, 0, 'Narshingdi', 'RAJ_L0047', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 3, 0, 'Narshingdi', 'RAJ_L0101', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 3, 0, 'Badda, Dhaka', 'RAJ_L0136', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 3, 0, 'Tangail', 'RAJ_L0142', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 3, 0, 'Rampura, Dhaka', 'RAJ_L0195', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 3, 0, 'Feni', 'RAJ_L0201', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 3, 0, 'Malibagh, Dhaka', 'RAJ_L0226', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 3, 0, 'Rajshahi', 'RAJ_L0229', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 3, 0, 'Mirzapur, Tangail', 'RAJ_L0239', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 3, 0, 'Kapasia', 'RAJ_L0258', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 4, 0, 'Badda, Dhaka', 'RAJ_L0284', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 4, 0, 'Konabari, Gazipur', 'RAJ_L0285', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 4, 0, 'Dhanmondi, Dhaka', 'RAJ_L0313', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 4, 0, 'Abdullahpur, Dhaka', 'RAJ_L0321', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 4, 0, 'Badda, Dhaka', 'RAJ_L0324', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 4, 0, 'Tangail', 'RAJ_L0461', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 4, 0, 'Rampura, Dhaka', 'RAJ_L0464', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 4, 0, 'Feni', 'RAJ_L0534', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 4, 0, 'Malibagh, Dhaka', 'RAJ_L0586', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 4, 0, 'Rajshahi', 'RAJ_L0599', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 4, 0, 'Mirzapur, Tangail', 'RAJ_L0617', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 4, 0, 'Kapasia', 'RAJ_L0656', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 4, 0, 'Kapasia', 'RAJ_L0704', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 4, 0, 'Kapasia', 'RAJ_L0718', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 4, 0, 'Kapasia', 'DHK_L0189', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 4, 0, 'Sofipur', 'DHK_L4033', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 5, 0, 'Sofipur', 'DHK_L1793', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 5, 0, 'Sofipur', 'DHK_L1029', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 5, 0, 'Sofipur', 'DHK_L1028', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 5, 0, 'Narshingdi', 'DHK_L4032', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 5, 0, 'Narshingdi', 'DHK_L3819', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 5, 0, 'Narshingdi', 'DHK_L2270', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 5, 0, 'Narshingdi', 'DHK_L1183', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 5, 0, 'Tangail', 'DHK_L1179', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 5, 0, 'Tangail', 'RAJ_L0789', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 5, 0, 'Tangail', 'RAJ_L0965', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 5, 0, 'Tangail', 'RAJ_L1426', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 5, 0, 'Badda, Dhaka', 'RAJ_L1460', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 5, 0, 'Konabari, Gazipur', 'RAJ_L1496', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 5, 0, 'Dhanmondi, Dhaka', 'RAJ_L1509', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 5, 0, 'Abdullahpur, Dhaka', 'RAJ_L0338', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 5, 0, 'Badda, Dhaka', 'RAJ_L0399', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 5, 0, 'Tangail', 'RAJ_L0507', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 5, 0, 'Rampura, Dhaka', 'RAJ_L0325', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 5, 0, 'Feni', 'RAJ_L0111', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 5, 0, 'Malibagh, Dhaka', 'RAJ_L0102', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 5, 0, 'Rajshahi', 'RAJ_L0544', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 5, 0, 'Mirzapur, Tangail', 'RAJ_L0086', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 5, 0, 'Kapasia', 'RAJ_L0104', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 4, 0, 'Kapasia', 'RAJ_L0110', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 4, 0, 'Kapasia', 'RAJ_L0116', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 4, 0, 'Kapasia', 'RAJ_L0117', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 4, 0, 'Sofipur', 'RAJ_L0120', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 4, 0, 'Sofipur', 'RAJ_L0125', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 4, 0, 'Sofipur', 'RAJ_L0132', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 4, 0, 'Sofipur', 'RAJ_L0172', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 4, 0, 'Narshingdi', 'RAJ_L0234', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 4, 0, 'Narshingdi', 'RAJ_L0235', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 4, 0, 'Narshingdi', 'RAJ_L0253', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 4, 0, 'Narshingdi', 'RAJ_L0295', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 4, 0, 'Tangail', 'RAJ_L0323', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 4, 0, 'Tangail', 'RAJ_L0340', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 4, 0, 'Tangail', 'RAJ_L0344', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 4, 0, 'Tangail', 'RAJ_L0513', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 4, 0, 'Kapasia', 'RAJ_L0677', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 4, 0, 'Kapasia', 'RAJ_L0717', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 4, 0, 'Sofipur', 'RAJ_L1042', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 4, 0, 'Sofipur', 'RAJ_L1256', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 4, 0, 'Sofipur', 'SYL_L0154', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 4, 0, 'Sofipur', 'SYL_L0170', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 4, 0, 'Narshingdi', 'RAJ_L0027', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 4, 0, 'Narshingdi', 'RAJ_L0045', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 4, 0, 'Narshingdi', 'RAJ_L0401', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 4, 0, 'Narshingdi', 'RAJ_L0402', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 4, 0, 'Tangail', 'RAJ_L0463', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 5, 0, 'Tangail', 'RAJ_L0502', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 6, 0, 'Tangail', 'RAJ_L0530', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 6, 0, 'Tangail', 'RAJ_L0533', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 6, 0, 'Badda, Dhaka', 'RAJ_L0649', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 6, 0, 'Konabari, Gazipur', 'RAJ_L0651', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 6, 0, 'Dhanmondi, Dhaka', 'RAJ_L0669', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 6, 0, 'Abdullahpur, Dhaka', 'RAJ_L0682', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 6, 0, 'Badda, Dhaka', 'RAJ_L0843', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 6, 0, 'Tangail', 'RAJ_L0940', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 6, 0, 'Rampura, Dhaka', 'RAJ_L1021', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 6, 0, 'Feni', 'RAJ_L1044', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 6, 0, 'Malibagh, Dhaka', 'RAJ_L1062', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 6, 0, 'Rajshahi', 'RAJ_L1139', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 6, 0, 'Mirzapur, Tangail', 'RAJ_L1208', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 6, 0, 'Kapasia', 'SYL_L0202', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 6, 0, 'Kapasia', 'RAJ_L0123', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 6, 0, 'Kapasia', 'RAJ_L0711', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 6, 0, 'Kapasia', 'RAJ_L0732', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 6, 0, 'Sofipur', 'RAJ_L0009', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 6, 0, 'Sofipur', 'RAJ_L0069', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 6, 0, 'Sofipur', 'DHK_L0165', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 6, 0, 'Sofipur', 'DHK_L0166', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 6, 0, 'Badda, Dhaka', 'DHK_L0496', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 6, 0, 'Konabari, Gazipur', 'DHK_L0628', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 6, 0, 'Dhanmondi, Dhaka', 'DHK_L1176', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 6, 0, 'Abdullahpur, Dhaka', 'DHK_L1601', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 6, 0, 'Badda, Dhaka', 'DHK_L1726', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 6, 0, 'Tangail', 'DHK_L1943', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 6, 0, 'Rampura, Dhaka', 'DHK_L2242', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 6, 0, 'Feni', 'DHK_L2695', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 6, 0, 'Malibagh, Dhaka', 'DHK_L2823', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 6, 0, 'Rajshahi', 'DHK_L2882', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 7, 0, 'Mirzapur, Tangail', 'DHK_L3570', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 7, 0, 'Kapasia', 'DHK_L3734', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 7, 0, 'Kapasia', 'DHK_L4183', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 7, 0, 'Kapasia', 'DHK_L4845', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 7, 0, 'Kapasia', 'DHK_L5219', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 7, 0, 'Sofipur', 'DHK_L5361', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 7, 0, 'Sofipur', 'DHK_L5367', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 7, 0, 'Sofipur', 'DHK_L5373', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 7, 0, 'Sofipur', 'DHK_L5375', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 7, 0, 'Narshingdi', 'DHK_L2927', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 7, 0, 'Narshingdi', 'DHK_L4171', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 7, 0, 'Narshingdi', 'DHK_L5216', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 7, 0, 'Narshingdi', 'DHK_L5245', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 7, 0, 'Tangail', 'DHK_L5256', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 7, 0, 'Badda, Dhaka', 'DHK_L3339', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 7, 0, 'Tangail', 'DHK_L4879', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 6, 0, 'Rampura, Dhaka', 'SYL_L0009', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 6, 0, 'Feni', 'SYL_L0194', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 6, 0, 'Malibagh, Dhaka', 'DHK_L5546', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 6, 0, 'Rajshahi', 'DHK_L0493', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 6, 0, 'Mirzapur, Tangail', 'CTG_X0810', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 6, 0, 'Kapasia', 'CTG_X0249', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 6, 0, 'Abdullahpur, Dhaka', 'SYL_X0023', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 6, 0, 'Badda, Dhaka', 'SYL_X0005', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 6, 0, 'Tangail', 'CTG_X0455', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 6, 0, 'Rampura, Dhaka', 'DHK_X1186', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 6, 0, 'Feni', 'DHK_G3766', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 6, 0, 'Malibagh, Dhaka', 'SYL_X0112', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 6, 0, 'Rajshahi', 'DHK_X3441', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 6, 0, 'Mirzapur, Tangail', 'DHK_X3437', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 6, 0, 'Kapasia', 'SYL_X0187', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 6, 0, 'Kapasia', 'CTG_G1357', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 6, 0, 'Kapasia', 'SYL_X0446', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 6, 0, 'Kapasia', 'SYL_X0004', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 6, 0, 'Sofipur', 'CTG_G1370', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 6, 0, 'Sofipur', 'SYL_X0029', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 6, 0, 'Sofipur', 'SYL_X0542', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 6, 0, 'Sofipur', 'SYL_X0156', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 6, 0, 'Narshingdi', 'CTG_X0813', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 6, 0, 'Narshingdi', 'SYL_R0601', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 6, 0, 'Narshingdi', 'CTG_X0310', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 6, 0, 'Narshingdi', 'CTG_X0301', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 6, 0, 'Tangail', 'DHK_G5551', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 7, 0, 'Tangail', 'SYL_X0221', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 7, 0, 'Tangail', 'SYL_W0121', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 7, 0, 'Tangail', 'CTG_X1391', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 7, 0, 'Badda, Dhaka', 'RAJ_X1319', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 7, 0, 'Konabari, Gazipur', 'SYL_X0357', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 7, 0, 'Dhanmondi, Dhaka', 'CTG_X1084', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 7, 0, 'Abdullahpur, Dhaka', 'CTG_X0923', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 7, 0, 'Badda, Dhaka', 'CTG_X0810', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 7, 0, 'Tangail', 'CTG_X0249', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 7, 0, 'Rampura, Dhaka', 'SYL_X0023', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 7, 0, 'Feni', 'SYL_X0005', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 7, 0, 'Malibagh, Dhaka', 'CTG_X0455', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 7, 0, 'Rajshahi', 'DHK_X1186', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 7, 0, 'Mirzapur, Tangail', 'DHK_G3766', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 7, 0, 'Kapasia', 'SYL_X0112', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 7, 0, 'Kapasia', 'DHK_X3441', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 7, 0, 'Kapasia', 'DHK_X3437', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 7, 0, 'Kapasia', 'SYL_X0187', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 7, 0, 'Sofipur', 'CTG_G1357', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 7, 0, 'Sofipur', 'SYL_X0446', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 16, 0, 'Dhaka', '0001', NULL, NULL, NULL, '', '0000-00-00 00:00:00', '2021-03-21 13:04:57');

-- --------------------------------------------------------

--
-- Stand-in structure for view `sites_datas`
-- (See below for the actual view)
--
CREATE TABLE `sites_datas` (
`all_sites_datas` mediumtext
,`completion_status` enum('Running','Rejected','Completed')
,`id` bigint unsigned
,`project_id` int
,`site_code` varchar(191)
,`site_head` varchar(191)
);

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

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `task_name`, `task_code`, `task_type`, `project_id`, `site_head`, `task_details`, `anonymous_proof_details`, `task_assigned_to_head`, `task_for`, `manager_override_chunck`, `override_status`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 19, 'new test', NULL, 'general', 8, 23, 'test', 'put data for your activity', 'Yes', '2021-03-19', NULL, NULL, '1', '2021-03-18 10:09:48', '2021-03-18 10:11:27'),
(2, 19, 'rectification work', NULL, 'general', 9, 25, 'rectification work need to be done very carefully', 'ned picture of working', 'Yes', '2021-03-20', NULL, NULL, '1', '2021-03-19 07:46:14', '2021-03-19 07:47:07'),
(3, 19, 'emergency', NULL, 'emergency', 8, 20, 'emergency', 'emergency', 'Yes', '2021-03-19', NULL, NULL, '1', '2021-03-19 08:01:24', '2021-03-19 08:01:40'),
(4, 19, 'Kapasia scl maintenance', NULL, 'general', 2, 24, 'Task details here', NULL, 'Yes', '2021-03-20', NULL, NULL, '1', '2021-03-19 10:50:38', '2021-03-19 12:04:08'),
(5, 19, 'Narsingdhi maintenance', NULL, 'general', 8, 34, 'tsk details', 'purchase bill slip', 'Yes', '2021-03-20', NULL, NULL, '1', '2021-03-19 10:52:43', '2021-03-19 12:05:19'),
(6, 19, 'Shofipur Maintenance', NULL, 'general', 15, 23, 'Task details', NULL, 'Yes', '2021-03-20', NULL, NULL, '1', '2021-03-19 10:54:58', '2021-03-19 11:57:32'),
(7, 19, 'Tangail Maintenance', NULL, 'general', 9, 41, 'Task details', 'material vehicle image', 'Yes', '2021-03-20', NULL, NULL, '1', '2021-03-19 10:57:46', '2021-03-19 11:57:27'),
(8, 19, 'Kapasia Maintenace 2', NULL, 'general', 2, 39, 'task detauils', NULL, 'Yes', '2021-03-20', NULL, NULL, '1', '2021-03-19 11:01:27', '2021-03-19 11:57:23'),
(9, 55, 'Swap Battery Banglalink', NULL, 'general', 6, 103, 'Banglalink Swap Battery  Task details', 'pucahse bill slip', 'Yes', '2021-03-20', NULL, NULL, '1', '2021-03-19 11:08:18', '2021-03-19 12:06:20'),
(10, 55, 'Edoctco Smartlock', NULL, 'general', 14, 27, 'task details', NULL, 'Yes', '2021-03-20', NULL, NULL, '1', '2021-03-19 11:11:38', '2021-03-19 12:06:04'),
(11, 55, 'Base recrtifier swap', NULL, 'general', 11, 31, 'task details', 'material image', 'Yes', '2021-03-20', NULL, NULL, '1', '2021-03-19 11:13:39', '2021-03-19 12:05:59'),
(12, 55, 'Edotco RMS', NULL, 'general', 5, 32, 'task details', NULL, 'Yes', '2021-03-20', NULL, NULL, '1', '2021-03-19 11:30:35', '2021-03-19 12:05:51'),
(13, 55, 'Emergency Battery swap', NULL, 'emergency', 6, 29, 'Banglalink battery swap emergency service', 'Purchase slip\r\nmaterial Image \r\nVehicle image', 'Yes', '2021-03-19', NULL, NULL, '1', '2021-03-19 11:34:50', '2021-03-19 12:05:46'),
(14, 55, 'Emergency Edocto Smartlock', NULL, 'general', 14, 33, 'Emergency Edocto Smartlock', 'Emergency Edocto Smartlock', 'Yes', '2021-03-20', NULL, NULL, '1', '2021-03-19 11:48:31', '2021-03-19 11:49:33'),
(15, 19, 'Emergency Narsingdhi SCL Maintenace', NULL, 'general', 8, 44, 'Emergency narsingdhi SCL Maintenance', 'vehicle image prooof', 'Yes', '2021-03-20', NULL, NULL, '1', '2021-03-19 11:53:31', '2021-03-19 11:57:19'),
(16, 19, 'Emergency Tangail SCL Maintenance', NULL, 'general', 9, 35, 'Emergency Task For Tangail SCL Maintenance.', NULL, 'Yes', '2021-03-20', '{\"task\": [{\"id\": 16, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 35, \"task_code\": null, \"task_name\": \"Emergency Tangail SCL Maintenance\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T11:56:16.000000Z\", \"project_id\": 9, \"updated_at\": \"2021-03-19T11:57:13.000000Z\", \"task_details\": \"Emergency Task For Tangail SCL Maintenance\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null}], \"task_site\": [{\"id\": 58, \"site_id\": \"24\", \"task_id\": 16, \"created_at\": \"2021-03-19T11:56:32.000000Z\", \"updated_at\": \"2021-03-19T11:56:32.000000Z\", \"resource_id\": \"23\"}, {\"id\": 59, \"site_id\": \"24\", \"task_id\": 16, \"created_at\": \"2021-03-19T11:56:32.000000Z\", \"updated_at\": \"2021-03-19T11:56:32.000000Z\", \"resource_id\": \"25\"}, {\"id\": 60, \"site_id\": \"25\", \"task_id\": 16, \"created_at\": \"2021-03-19T11:56:32.000000Z\", \"updated_at\": \"2021-03-19T11:56:32.000000Z\", \"resource_id\": \"23\"}, {\"id\": 61, \"site_id\": \"25\", \"task_id\": 16, \"created_at\": \"2021-03-19T11:56:32.000000Z\", \"updated_at\": \"2021-03-19T11:56:32.000000Z\", \"resource_id\": \"25\"}], \"task_vehicle\": [{\"id\": 19, \"task_id\": 16, \"created_at\": \"2021-03-19T11:56:48.000000Z\", \"updated_at\": \"2021-03-19T11:56:48.000000Z\", \"vehicle_id\": \"3\", \"vehicle_note\": \"vehicle note\", \"vehicle_rent\": \"3000\"}], \"task_material\": [{\"id\": 19, \"task_id\": 16, \"created_at\": \"2021-03-19T11:56:59.000000Z\", \"updated_at\": \"2021-03-19T11:56:59.000000Z\", \"material_id\": \"4\", \"material_qty\": \"4\", \"material_note\": null, \"material_amount\": 400}]}', 'Yes', '1', '2021-03-19 11:56:16', '2021-03-20 06:29:17'),
(18, 19, 'Test by Samrat', NULL, 'general', 8, 121, 'Test by Samrat', 'sadsaFDASDF', 'Yes', '2021-03-20', '{\"task\": [{\"id\": 18, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 121, \"task_code\": null, \"task_name\": \"Test by Samrat\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T15:02:11.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"task_details\": \"Test by Samrat\", \"override_status\": \"No\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null}], \"task_site\": [{\"id\": 63, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 64, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}, {\"id\": 65, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 66, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"id\": 20, \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:48.000000Z\", \"updated_at\": \"2021-03-19T16:03:48.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"dfasdfa\", \"vehicle_rent\": \"2500\"}, {\"id\": 21, \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:48.000000Z\", \"updated_at\": \"2021-03-19T16:03:48.000000Z\", \"vehicle_id\": \"4\", \"vehicle_note\": \"adfasdfasdf\", \"vehicle_rent\": \"2800\"}], \"task_material\": [{\"id\": 20, \"task_id\": 18, \"created_at\": \"2021-03-19T16:04:18.000000Z\", \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"material_id\": \"3\", \"material_qty\": \"1\", \"material_note\": \"adfasdfas\", \"material_amount\": 2500}, {\"id\": 21, \"task_id\": 18, \"created_at\": \"2021-03-19T16:04:18.000000Z\", \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"material_id\": \"4\", \"material_qty\": \"2\", \"material_note\": \"awrweqrqw\", \"material_amount\": 2000}, {\"id\": 22, \"task_id\": 18, \"created_at\": \"2021-03-19T16:04:18.000000Z\", \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"material_id\": \"2\", \"material_qty\": \"1\", \"material_note\": \"asdfasd\", \"material_amount\": 1500}]}', 'Overriden', '1', '2021-03-19 15:02:11', '2021-03-19 16:06:32'),
(19, 19, 'PAT perform', NULL, 'general', 2, 20, 'PAT perform', 'material reciept', 'Yes', '2021-03-21', '{\"task\": [{\"id\": 19, \"user_id\": 19, \"task_for\": \"2021-03-21\", \"is_active\": \"1\", \"site_head\": 20, \"task_code\": null, \"task_name\": \"PAT perform\", \"task_type\": \"general\", \"created_at\": \"2021-03-20T07:16:07.000000Z\", \"project_id\": 2, \"updated_at\": \"2021-03-20T07:29:23.000000Z\", \"task_details\": \"PAT perform\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"material reciept\"}], \"task_site\": [{\"id\": 73, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 74, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}, {\"id\": 75, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 76, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"id\": 23, \"task_id\": 19, \"created_at\": \"2021-03-20T07:24:33.000000Z\", \"updated_at\": \"2021-03-20T07:24:33.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"vehicle\", \"vehicle_rent\": \"2000\"}, {\"id\": 24, \"task_id\": 19, \"created_at\": \"2021-03-20T07:24:33.000000Z\", \"updated_at\": \"2021-03-20T07:24:33.000000Z\", \"vehicle_id\": \"3\", \"vehicle_note\": \"vehile note\", \"vehicle_rent\": \"2599\"}], \"task_material\": [{\"id\": 24, \"task_id\": 19, \"created_at\": \"2021-03-20T07:26:00.000000Z\", \"updated_at\": \"2021-03-20T07:26:00.000000Z\", \"material_id\": \"2\", \"material_qty\": \"2\", \"material_note\": \"matwerial\", \"material_amount\": 500}, {\"id\": 25, \"task_id\": 19, \"created_at\": \"2021-03-20T07:26:00.000000Z\", \"updated_at\": \"2021-03-20T07:26:00.000000Z\", \"material_id\": \"3\", \"material_qty\": \"1\", \"material_note\": \"somehing\", \"material_amount\": 200}]}', 'Overriden', '1', '2021-03-20 07:16:07', '2021-03-20 07:45:09'),
(20, 19, 'Test by CEO', NULL, 'general', 15, 26, 'Its a test TASK as normal.', 'Its a test TASK as normal.', NULL, '2021-03-22', NULL, NULL, '1', '2021-03-21 11:32:19', '2021-03-21 11:34:00'),
(21, 19, 'Delivery', NULL, 'general', 16, 24, 'Details Test (General)', NULL, 'Yes', '2021-03-22', '{\"task\": [{\"id\": 21, \"user_id\": 19, \"task_for\": \"2021-03-22\", \"is_active\": \"1\", \"site_head\": 24, \"task_code\": null, \"task_name\": \"Delivery\", \"task_type\": \"general\", \"created_at\": \"2021-03-21T13:02:59.000000Z\", \"project_id\": 16, \"updated_at\": \"2021-03-21T13:07:36.000000Z\", \"task_details\": \"Details Test (General)\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null}], \"task_site\": [{\"id\": 78, \"site_id\": \"418\", \"task_id\": 21, \"created_at\": \"2021-03-21T13:06:03.000000Z\", \"updated_at\": \"2021-03-21T13:06:03.000000Z\", \"resource_id\": \"26\"}], \"task_vehicle\": [{\"id\": 28, \"task_id\": 21, \"created_at\": \"2021-03-21T13:06:20.000000Z\", \"updated_at\": \"2021-03-21T13:06:20.000000Z\", \"vehicle_id\": \"1\", \"vehicle_note\": \"Test\", \"vehicle_rent\": \"500\"}], \"task_material\": [{\"id\": 27, \"task_id\": 21, \"created_at\": \"2021-03-21T13:06:55.000000Z\", \"updated_at\": \"2021-03-21T13:06:55.000000Z\", \"material_id\": \"1\", \"material_qty\": \"200\", \"material_note\": \"T\", \"material_amount\": 200}]}', 'Overriden', '1', '2021-03-21 13:02:59', '2021-03-21 13:22:19'),
(22, 19, 'habijani', NULL, 'general', 2, 25, 'hdhfkdfjdj', NULL, NULL, '2021-03-22', NULL, NULL, '1', '2021-03-21 15:41:43', '2021-03-21 15:41:43'),
(23, 19, 'Test task site', NULL, 'general', 15, 31, 'hdksdksj', NULL, NULL, '2021-03-22', NULL, NULL, '1', '2021-03-21 15:43:47', '2021-03-21 15:43:47'),
(24, 55, 'dafasdfas', NULL, 'general', 5, 27, 'asdfasdfasdf', NULL, NULL, '2021-03-22', NULL, NULL, '1', '2021-03-21 17:46:44', '2021-03-21 17:46:44');

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

--
-- Dumping data for table `tasks_chunck`
--

INSERT INTO `tasks_chunck` (`id`, `task_id`, `manager_data`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"task\": {\"id\": 1, \"user_id\": 19, \"task_for\": \"2021-03-19\", \"is_active\": \"1\", \"site_head\": 23, \"task_code\": null, \"task_name\": \"new test\", \"task_type\": \"general\", \"created_at\": \"2021-03-18T10:09:48.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-18T10:11:27.000000Z\", \"task_details\": \"test\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"put data for your activity\", \"manager_override_chunck\": null}, \"task_site\": [{\"id\": 1, \"site_id\": \"21\", \"task_id\": 1, \"created_at\": \"2021-03-18T10:10:57.000000Z\", \"updated_at\": \"2021-03-18T10:10:57.000000Z\", \"resource_id\": \"24\"}], \"task_proof\": [{\"id\": 1, \"task_id\": 1, \"lat_proof\": null, \"created_at\": \"2021-03-18T11:34:11.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-18T11:34:11.000000Z\", \"proof_sent_by\": 23, \"vehicle_proof\": \"202103/161606725146008162_305261926746134_3665438503312818176_o.jpg\", \"material_proof\": null, \"resource_proof\": \"202103/16160672511.png\", \"anonymous_proof\": \"202103/161606725120180417_155305.jpg\"}], \"task_status\": [{\"id\": 1, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"1\", \"created_at\": \"2021-03-18T10:09:48.000000Z\", \"updated_at\": \"2021-03-18T10:09:48.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 2, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"1\", \"created_at\": \"2021-03-18T10:11:27.000000Z\", \"updated_at\": \"2021-03-18T10:11:27.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 3, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"1\", \"created_at\": \"2021-03-18T10:12:07.000000Z\", \"updated_at\": \"2021-03-18T10:12:07.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"23\"}, {\"id\": 4, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"1\", \"created_at\": \"2021-03-18T11:34:11.000000Z\", \"updated_at\": \"2021-03-18T11:34:11.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"23\"}], \"task_vehicle\": [{\"id\": 1, \"task_id\": 1, \"created_at\": \"2021-03-18T10:11:13.000000Z\", \"updated_at\": \"2021-03-18T10:11:13.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"test\", \"vehicle_rent\": \"1500\"}], \"task_material\": []}', '2021-03-18 12:17:31', '2021-03-18 12:17:31'),
(2, 14, '{\"task\": {\"id\": 14, \"user_id\": 55, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 33, \"task_code\": null, \"task_name\": \"Emergency Edocto Smartlock\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T11:48:31.000000Z\", \"project_id\": 14, \"updated_at\": \"2021-03-19T11:49:33.000000Z\", \"task_details\": \"Emergency Edocto Smartlock\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"Emergency Edocto Smartlock\", \"manager_override_chunck\": null}, \"task_site\": [{\"id\": 55, \"site_id\": \"115\", \"task_id\": 14, \"created_at\": \"2021-03-19T11:48:43.000000Z\", \"updated_at\": \"2021-03-19T11:48:43.000000Z\", \"resource_id\": \"24\"}, {\"id\": 56, \"site_id\": \"115\", \"task_id\": 14, \"created_at\": \"2021-03-19T11:48:43.000000Z\", \"updated_at\": \"2021-03-19T11:48:43.000000Z\", \"resource_id\": \"25\"}], \"task_proof\": [{\"id\": 4, \"task_id\": 14, \"lat_proof\": null, \"created_at\": \"2021-03-19T12:07:41.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-19T12:07:41.000000Z\", \"proof_sent_by\": 33, \"vehicle_proof\": \"202103/1616155661tug_boat.png\", \"material_proof\": \"202103/1616155661turn_buckle.jpg\", \"resource_proof\": \"202103/1616155661truck.jpg\", \"anonymous_proof\": \"202103/1616155661tyre_mounted_crane.png\"}], \"task_status\": [{\"id\": 42, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"14\", \"created_at\": \"2021-03-19T11:48:31.000000Z\", \"updated_at\": \"2021-03-19T11:48:31.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"55\"}, {\"id\": 43, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"14\", \"created_at\": \"2021-03-19T11:49:33.000000Z\", \"updated_at\": \"2021-03-19T11:49:33.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"55\"}, {\"id\": 58, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"14\", \"created_at\": \"2021-03-19T12:07:15.000000Z\", \"updated_at\": \"2021-03-19T12:07:15.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"33\"}, {\"id\": 59, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"14\", \"created_at\": \"2021-03-19T12:07:41.000000Z\", \"updated_at\": \"2021-03-19T12:07:41.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"33\"}, {\"id\": 60, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"14\", \"created_at\": \"2021-03-19T12:09:18.000000Z\", \"updated_at\": \"2021-03-19T12:09:18.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [{\"id\": 16, \"task_id\": 14, \"created_at\": \"2021-03-19T11:49:03.000000Z\", \"updated_at\": \"2021-03-19T11:49:03.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"Emergency Edocto Smartlock\", \"vehicle_rent\": \"1500\"}, {\"id\": 17, \"task_id\": 14, \"created_at\": \"2021-03-19T11:49:03.000000Z\", \"updated_at\": \"2021-03-19T11:49:03.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"Emergency Edocto Smartlock\", \"vehicle_rent\": \"2500\"}], \"task_material\": [{\"id\": 16, \"task_id\": 14, \"created_at\": \"2021-03-19T11:49:31.000000Z\", \"updated_at\": \"2021-03-19T11:49:31.000000Z\", \"material_id\": \"3\", \"material_qty\": \"250\", \"material_note\": \"Emergency Edocto Smartlock\", \"material_amount\": 2500}, {\"id\": 17, \"task_id\": 14, \"created_at\": \"2021-03-19T11:49:31.000000Z\", \"updated_at\": \"2021-03-19T11:49:31.000000Z\", \"material_id\": \"4\", \"material_qty\": \"1\", \"material_note\": \"Emergency Edocto Smartlock\", \"material_amount\": 1800}]}', '2021-03-19 12:09:15', '2021-03-19 12:19:19'),
(3, 3, '{\"task\": {\"id\": 3, \"user_id\": 19, \"task_for\": \"2021-03-19\", \"is_active\": \"1\", \"site_head\": 20, \"task_code\": null, \"task_name\": \"emergency\", \"task_type\": \"emergency\", \"created_at\": \"2021-03-19T08:01:24.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-19T08:01:40.000000Z\", \"task_details\": \"emergency\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"emergency\", \"manager_override_chunck\": null}, \"task_site\": [{\"id\": 4, \"site_id\": \"21\", \"task_id\": 3, \"created_at\": \"2021-03-19T08:01:35.000000Z\", \"updated_at\": \"2021-03-19T08:01:35.000000Z\", \"resource_id\": \"24\"}], \"task_proof\": [{\"id\": 3, \"task_id\": 3, \"lat_proof\": null, \"created_at\": \"2021-03-19T08:02:08.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-19T08:02:08.000000Z\", \"proof_sent_by\": 20, \"vehicle_proof\": null, \"material_proof\": null, \"resource_proof\": \"202103/1616140928153752777_2298499106960730_5442579171905822302_o.jpg\", \"anonymous_proof\": \"202103/1616140928153500434_3784910748229332_1904611150990061542_o.jpg\"}], \"task_status\": [{\"id\": 28, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"3\", \"created_at\": \"2021-03-19T08:01:24.000000Z\", \"updated_at\": \"2021-03-19T08:01:24.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 29, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"3\", \"created_at\": \"2021-03-19T08:01:40.000000Z\", \"updated_at\": \"2021-03-19T08:01:40.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 30, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"3\", \"created_at\": \"2021-03-19T08:01:58.000000Z\", \"updated_at\": \"2021-03-19T08:01:58.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"20\"}, {\"id\": 31, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"3\", \"created_at\": \"2021-03-19T08:02:08.000000Z\", \"updated_at\": \"2021-03-19T08:02:08.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"20\"}, {\"id\": 61, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"3\", \"created_at\": \"2021-03-19T12:09:24.000000Z\", \"updated_at\": \"2021-03-19T12:09:24.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [], \"task_material\": []}', '2021-03-19 12:09:23', '2021-03-19 12:09:24'),
(4, 2, '{\"task\": {\"id\": 2, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 25, \"task_code\": null, \"task_name\": \"rectification work\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T07:46:14.000000Z\", \"project_id\": 9, \"updated_at\": \"2021-03-19T07:47:07.000000Z\", \"task_details\": \"rectification work need to be done very carefully\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"ned picture of working\", \"manager_override_chunck\": null}, \"task_site\": [{\"id\": 2, \"site_id\": \"25\", \"task_id\": 2, \"created_at\": \"2021-03-19T07:47:04.000000Z\", \"updated_at\": \"2021-03-19T07:47:04.000000Z\", \"resource_id\": \"24\"}, {\"id\": 3, \"site_id\": \"25\", \"task_id\": 2, \"created_at\": \"2021-03-19T07:47:04.000000Z\", \"updated_at\": \"2021-03-19T07:47:04.000000Z\", \"resource_id\": \"29\"}], \"task_proof\": [{\"id\": 2, \"task_id\": 2, \"lat_proof\": null, \"created_at\": \"2021-03-19T07:56:50.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-19T07:56:50.000000Z\", \"proof_sent_by\": 25, \"vehicle_proof\": null, \"material_proof\": null, \"resource_proof\": \"202103/1616140610golden_1a93300a-ab8f-4c06-9ec6-48639bb24282.jpg\", \"anonymous_proof\": \"202103/1616140610WhatsApp Image 2021-02-21 at 15.39.11.jpeg\"}], \"task_status\": [{\"id\": 24, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"2\", \"created_at\": \"2021-03-19T07:46:14.000000Z\", \"updated_at\": \"2021-03-19T07:46:14.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 25, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"2\", \"created_at\": \"2021-03-19T07:47:07.000000Z\", \"updated_at\": \"2021-03-19T07:47:07.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 26, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"2\", \"created_at\": \"2021-03-19T07:49:08.000000Z\", \"updated_at\": \"2021-03-19T07:49:08.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"25\"}, {\"id\": 27, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"2\", \"created_at\": \"2021-03-19T07:56:50.000000Z\", \"updated_at\": \"2021-03-19T07:56:50.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"25\"}, {\"id\": 62, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"2\", \"created_at\": \"2021-03-19T12:09:34.000000Z\", \"updated_at\": \"2021-03-19T12:09:34.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [], \"task_material\": []}', '2021-03-19 12:09:32', '2021-03-19 12:09:34'),
(5, 13, '{\"task\": {\"id\": 13, \"user_id\": 55, \"task_for\": \"2021-03-19\", \"is_active\": \"1\", \"site_head\": 29, \"task_code\": null, \"task_name\": \"Emergency Battery swap\", \"task_type\": \"emergency\", \"created_at\": \"2021-03-19T11:34:50.000000Z\", \"project_id\": 6, \"updated_at\": \"2021-03-19T12:05:46.000000Z\", \"task_details\": \"Banglalink battery swap emergency service\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"Purchase slip\\r\\nmaterial Image \\r\\nVehicle image\", \"manager_override_chunck\": null}, \"task_site\": [{\"id\": 48, \"site_id\": \"204\", \"task_id\": 13, \"created_at\": \"2021-03-19T11:35:22.000000Z\", \"updated_at\": \"2021-03-19T11:35:22.000000Z\", \"resource_id\": \"20\"}, {\"id\": 49, \"site_id\": \"204\", \"task_id\": 13, \"created_at\": \"2021-03-19T11:35:22.000000Z\", \"updated_at\": \"2021-03-19T11:35:22.000000Z\", \"resource_id\": \"25\"}, {\"id\": 50, \"site_id\": \"204\", \"task_id\": 13, \"created_at\": \"2021-03-19T11:35:22.000000Z\", \"updated_at\": \"2021-03-19T11:35:22.000000Z\", \"resource_id\": \"27\"}, {\"id\": 51, \"site_id\": \"324\", \"task_id\": 13, \"created_at\": \"2021-03-19T11:35:22.000000Z\", \"updated_at\": \"2021-03-19T11:35:22.000000Z\", \"resource_id\": \"20\"}, {\"id\": 52, \"site_id\": \"324\", \"task_id\": 13, \"created_at\": \"2021-03-19T11:35:22.000000Z\", \"updated_at\": \"2021-03-19T11:35:22.000000Z\", \"resource_id\": \"25\"}, {\"id\": 53, \"site_id\": \"324\", \"task_id\": 13, \"created_at\": \"2021-03-19T11:35:22.000000Z\", \"updated_at\": \"2021-03-19T11:35:22.000000Z\", \"resource_id\": \"27\"}], \"task_proof\": [{\"id\": 5, \"task_id\": 13, \"lat_proof\": null, \"created_at\": \"2021-03-19T12:11:16.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-19T12:11:16.000000Z\", \"proof_sent_by\": 29, \"vehicle_proof\": \"202103/1616155876steel_mat.png\", \"material_proof\": \"202103/1616155876turn_buckle.jpg\", \"resource_proof\": \"202103/1616155876terrain.png\", \"anonymous_proof\": \"202103/1616155876tyre_mounted_crane.png\"}], \"task_status\": [{\"id\": 41, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"13\", \"created_at\": \"2021-03-19T11:34:50.000000Z\", \"updated_at\": \"2021-03-19T11:34:50.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"55\"}, {\"id\": 53, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"13\", \"created_at\": \"2021-03-19T12:05:46.000000Z\", \"updated_at\": \"2021-03-19T12:05:46.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"55\"}, {\"id\": 63, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"13\", \"created_at\": \"2021-03-19T12:10:49.000000Z\", \"updated_at\": \"2021-03-19T12:10:49.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"29\"}, {\"id\": 64, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"13\", \"created_at\": \"2021-03-19T12:11:16.000000Z\", \"updated_at\": \"2021-03-19T12:11:16.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"29\"}, {\"id\": 73, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"13\", \"created_at\": \"2021-03-19T12:19:24.000000Z\", \"updated_at\": \"2021-03-19T12:19:24.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [{\"id\": 15, \"task_id\": 13, \"created_at\": \"2021-03-19T11:35:55.000000Z\", \"updated_at\": \"2021-03-19T11:35:55.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"Tata 1 ton truck rent\", \"vehicle_rent\": \"4500\"}], \"task_material\": [{\"id\": 15, \"task_id\": 13, \"created_at\": \"2021-03-19T11:36:42.000000Z\", \"updated_at\": \"2021-03-19T11:36:42.000000Z\", \"material_id\": \"1\", \"material_qty\": \"2\", \"material_note\": \"material dsl modem\", \"material_amount\": 340}]}', '2021-03-19 12:19:23', '2021-03-19 12:19:24'),
(6, 12, '{\"task\": {\"id\": 12, \"user_id\": 55, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 32, \"task_code\": null, \"task_name\": \"Edotco RMS\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T11:30:35.000000Z\", \"project_id\": 5, \"updated_at\": \"2021-03-19T12:05:51.000000Z\", \"task_details\": \"task details\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null, \"manager_override_chunck\": null}, \"task_site\": [{\"id\": 44, \"site_id\": \"275\", \"task_id\": 12, \"created_at\": \"2021-03-19T11:30:47.000000Z\", \"updated_at\": \"2021-03-19T11:30:47.000000Z\", \"resource_id\": \"23\"}, {\"id\": 45, \"site_id\": \"275\", \"task_id\": 12, \"created_at\": \"2021-03-19T11:30:47.000000Z\", \"updated_at\": \"2021-03-19T11:30:47.000000Z\", \"resource_id\": \"24\"}, {\"id\": 46, \"site_id\": \"276\", \"task_id\": 12, \"created_at\": \"2021-03-19T11:30:47.000000Z\", \"updated_at\": \"2021-03-19T11:30:47.000000Z\", \"resource_id\": \"23\"}, {\"id\": 47, \"site_id\": \"276\", \"task_id\": 12, \"created_at\": \"2021-03-19T11:30:47.000000Z\", \"updated_at\": \"2021-03-19T11:30:47.000000Z\", \"resource_id\": \"24\"}], \"task_proof\": [{\"id\": 6, \"task_id\": 12, \"lat_proof\": null, \"created_at\": \"2021-03-19T12:13:08.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-19T12:13:08.000000Z\", \"proof_sent_by\": 32, \"vehicle_proof\": \"202103/1616155988tug_boat.png\", \"material_proof\": \"202103/1616155988turn_buckle.jpg\", \"resource_proof\": \"202103/1616155988construction3.jpg\", \"anonymous_proof\": null}], \"task_status\": [{\"id\": 40, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"12\", \"created_at\": \"2021-03-19T11:30:35.000000Z\", \"updated_at\": \"2021-03-19T11:30:35.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"55\"}, {\"id\": 54, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"12\", \"created_at\": \"2021-03-19T12:05:51.000000Z\", \"updated_at\": \"2021-03-19T12:05:51.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"55\"}, {\"id\": 65, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"12\", \"created_at\": \"2021-03-19T12:12:11.000000Z\", \"updated_at\": \"2021-03-19T12:12:11.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"32\"}, {\"id\": 66, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"12\", \"created_at\": \"2021-03-19T12:13:08.000000Z\", \"updated_at\": \"2021-03-19T12:13:08.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"32\"}, {\"id\": 74, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"12\", \"created_at\": \"2021-03-19T12:19:28.000000Z\", \"updated_at\": \"2021-03-19T12:19:28.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [{\"id\": 14, \"task_id\": 12, \"created_at\": \"2021-03-19T11:31:04.000000Z\", \"updated_at\": \"2021-03-19T11:31:04.000000Z\", \"vehicle_id\": \"4\", \"vehicle_note\": \"vehicle note\", \"vehicle_rent\": \"2000\"}], \"task_material\": [{\"id\": 13, \"task_id\": 12, \"created_at\": \"2021-03-19T11:32:01.000000Z\", \"updated_at\": \"2021-03-19T11:32:01.000000Z\", \"material_id\": \"4\", \"material_qty\": \"2\", \"material_note\": \"material note\", \"material_amount\": 1000}, {\"id\": 14, \"task_id\": 12, \"created_at\": \"2021-03-19T11:32:01.000000Z\", \"updated_at\": \"2021-03-19T11:32:01.000000Z\", \"material_id\": \"7\", \"material_qty\": \"1\", \"material_note\": \"cable needed ethernate\", \"material_amount\": 150}]}', '2021-03-19 12:19:27', '2021-03-19 12:19:29'),
(7, 11, '{\"task\": {\"id\": 11, \"user_id\": 55, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 31, \"task_code\": null, \"task_name\": \"Base recrtifier swap\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T11:13:39.000000Z\", \"project_id\": 11, \"updated_at\": \"2021-03-19T12:05:59.000000Z\", \"task_details\": \"task details\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"material image\", \"manager_override_chunck\": null}, \"task_site\": [{\"id\": 40, \"site_id\": \"85\", \"task_id\": 11, \"created_at\": \"2021-03-19T11:14:05.000000Z\", \"updated_at\": \"2021-03-19T11:14:05.000000Z\", \"resource_id\": \"24\"}, {\"id\": 41, \"site_id\": \"85\", \"task_id\": 11, \"created_at\": \"2021-03-19T11:14:05.000000Z\", \"updated_at\": \"2021-03-19T11:14:05.000000Z\", \"resource_id\": \"26\"}, {\"id\": 42, \"site_id\": \"89\", \"task_id\": 11, \"created_at\": \"2021-03-19T11:14:05.000000Z\", \"updated_at\": \"2021-03-19T11:14:05.000000Z\", \"resource_id\": \"24\"}, {\"id\": 43, \"site_id\": \"89\", \"task_id\": 11, \"created_at\": \"2021-03-19T11:14:05.000000Z\", \"updated_at\": \"2021-03-19T11:14:05.000000Z\", \"resource_id\": \"26\"}], \"task_proof\": [{\"id\": 7, \"task_id\": 11, \"lat_proof\": null, \"created_at\": \"2021-03-19T12:15:58.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-19T12:15:58.000000Z\", \"proof_sent_by\": 31, \"vehicle_proof\": \"202103/1616156158truck.jpg\", \"material_proof\": \"202103/1616156158sling.png\", \"resource_proof\": \"202103/1616156158barge.png\", \"anonymous_proof\": \"202103/1616156158rubber_sheet.png\"}], \"task_status\": [{\"id\": 39, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"11\", \"created_at\": \"2021-03-19T11:13:39.000000Z\", \"updated_at\": \"2021-03-19T11:13:39.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"55\"}, {\"id\": 55, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"11\", \"created_at\": \"2021-03-19T12:05:59.000000Z\", \"updated_at\": \"2021-03-19T12:05:59.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"55\"}, {\"id\": 67, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"11\", \"created_at\": \"2021-03-19T12:15:37.000000Z\", \"updated_at\": \"2021-03-19T12:15:37.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"31\"}, {\"id\": 68, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"11\", \"created_at\": \"2021-03-19T12:15:58.000000Z\", \"updated_at\": \"2021-03-19T12:15:58.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"31\"}, {\"id\": 75, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"11\", \"created_at\": \"2021-03-19T12:19:36.000000Z\", \"updated_at\": \"2021-03-19T12:19:36.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [{\"id\": 13, \"task_id\": 11, \"created_at\": \"2021-03-19T11:14:39.000000Z\", \"updated_at\": \"2021-03-19T11:14:39.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"vehicle note\", \"vehicle_rent\": \"2400\"}], \"task_material\": [{\"id\": 11, \"task_id\": 11, \"created_at\": \"2021-03-19T11:28:44.000000Z\", \"updated_at\": \"2021-03-19T11:28:44.000000Z\", \"material_id\": \"3\", \"material_qty\": \"10\", \"material_note\": \"material information\", \"material_amount\": 3000}]}', '2021-03-19 12:19:35', '2021-03-19 12:19:36'),
(8, 10, '{\"task\": {\"id\": 10, \"user_id\": 55, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 27, \"task_code\": null, \"task_name\": \"Edoctco Smartlock\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T11:11:38.000000Z\", \"project_id\": 14, \"updated_at\": \"2021-03-19T12:06:04.000000Z\", \"task_details\": \"task details\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null, \"manager_override_chunck\": null}, \"task_site\": [{\"id\": 39, \"site_id\": \"114\", \"task_id\": 10, \"created_at\": \"2021-03-19T11:11:51.000000Z\", \"updated_at\": \"2021-03-19T11:11:51.000000Z\", \"resource_id\": \"29\"}], \"task_proof\": [{\"id\": 8, \"task_id\": 10, \"lat_proof\": null, \"created_at\": \"2021-03-19T12:17:07.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-19T12:17:07.000000Z\", \"proof_sent_by\": 27, \"vehicle_proof\": \"202103/1616156227mbec.png\", \"material_proof\": \"202103/1616156227d_shackle.png\", \"resource_proof\": \"202103/1616156227chain_kappa.png\", \"anonymous_proof\": null}], \"task_status\": [{\"id\": 38, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"10\", \"created_at\": \"2021-03-19T11:11:38.000000Z\", \"updated_at\": \"2021-03-19T11:11:38.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"55\"}, {\"id\": 56, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"10\", \"created_at\": \"2021-03-19T12:06:04.000000Z\", \"updated_at\": \"2021-03-19T12:06:04.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"55\"}, {\"id\": 69, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"10\", \"created_at\": \"2021-03-19T12:16:53.000000Z\", \"updated_at\": \"2021-03-19T12:16:53.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"27\"}, {\"id\": 70, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"10\", \"created_at\": \"2021-03-19T12:17:07.000000Z\", \"updated_at\": \"2021-03-19T12:17:07.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"27\"}, {\"id\": 76, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"10\", \"created_at\": \"2021-03-19T12:19:44.000000Z\", \"updated_at\": \"2021-03-19T12:19:44.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [{\"id\": 12, \"task_id\": 10, \"created_at\": \"2021-03-19T11:12:10.000000Z\", \"updated_at\": \"2021-03-19T11:12:10.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"vehicle note\", \"vehicle_rent\": \"90\"}], \"task_material\": [{\"id\": 9, \"task_id\": 10, \"created_at\": \"2021-03-19T11:12:35.000000Z\", \"updated_at\": \"2021-03-19T11:12:35.000000Z\", \"material_id\": \"3\", \"material_qty\": \"3\", \"material_note\": \"metaerial note\", \"material_amount\": 300}]}', '2021-03-19 12:19:41', '2021-03-19 12:19:44'),
(9, 9, '{\"task\": {\"id\": 9, \"user_id\": 55, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 103, \"task_code\": null, \"task_name\": \"Swap Battery Banglalink\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T11:08:18.000000Z\", \"project_id\": 6, \"updated_at\": \"2021-03-19T12:06:20.000000Z\", \"task_details\": \"Banglalink Swap Battery  Task details\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"pucahse bill slip\", \"manager_override_chunck\": null}, \"task_site\": [{\"id\": 27, \"site_id\": \"204\", \"task_id\": 9, \"created_at\": \"2021-03-19T11:09:07.000000Z\", \"updated_at\": \"2021-03-19T11:09:07.000000Z\", \"resource_id\": \"23\"}, {\"id\": 28, \"site_id\": \"204\", \"task_id\": 9, \"created_at\": \"2021-03-19T11:09:07.000000Z\", \"updated_at\": \"2021-03-19T11:09:07.000000Z\", \"resource_id\": \"24\"}, {\"id\": 29, \"site_id\": \"204\", \"task_id\": 9, \"created_at\": \"2021-03-19T11:09:07.000000Z\", \"updated_at\": \"2021-03-19T11:09:07.000000Z\", \"resource_id\": \"25\"}, {\"id\": 30, \"site_id\": \"204\", \"task_id\": 9, \"created_at\": \"2021-03-19T11:09:07.000000Z\", \"updated_at\": \"2021-03-19T11:09:07.000000Z\", \"resource_id\": \"26\"}, {\"id\": 31, \"site_id\": \"324\", \"task_id\": 9, \"created_at\": \"2021-03-19T11:09:08.000000Z\", \"updated_at\": \"2021-03-19T11:09:08.000000Z\", \"resource_id\": \"23\"}, {\"id\": 32, \"site_id\": \"324\", \"task_id\": 9, \"created_at\": \"2021-03-19T11:09:08.000000Z\", \"updated_at\": \"2021-03-19T11:09:08.000000Z\", \"resource_id\": \"24\"}, {\"id\": 33, \"site_id\": \"324\", \"task_id\": 9, \"created_at\": \"2021-03-19T11:09:08.000000Z\", \"updated_at\": \"2021-03-19T11:09:08.000000Z\", \"resource_id\": \"25\"}, {\"id\": 34, \"site_id\": \"324\", \"task_id\": 9, \"created_at\": \"2021-03-19T11:09:08.000000Z\", \"updated_at\": \"2021-03-19T11:09:08.000000Z\", \"resource_id\": \"26\"}, {\"id\": 35, \"site_id\": \"325\", \"task_id\": 9, \"created_at\": \"2021-03-19T11:09:08.000000Z\", \"updated_at\": \"2021-03-19T11:09:08.000000Z\", \"resource_id\": \"23\"}, {\"id\": 36, \"site_id\": \"325\", \"task_id\": 9, \"created_at\": \"2021-03-19T11:09:08.000000Z\", \"updated_at\": \"2021-03-19T11:09:08.000000Z\", \"resource_id\": \"24\"}, {\"id\": 37, \"site_id\": \"325\", \"task_id\": 9, \"created_at\": \"2021-03-19T11:09:08.000000Z\", \"updated_at\": \"2021-03-19T11:09:08.000000Z\", \"resource_id\": \"25\"}, {\"id\": 38, \"site_id\": \"325\", \"task_id\": 9, \"created_at\": \"2021-03-19T11:09:08.000000Z\", \"updated_at\": \"2021-03-19T11:09:08.000000Z\", \"resource_id\": \"26\"}], \"task_proof\": [{\"id\": 9, \"task_id\": 9, \"lat_proof\": null, \"created_at\": \"2021-03-19T12:18:47.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-19T12:18:47.000000Z\", \"proof_sent_by\": 103, \"vehicle_proof\": \"202103/1616156327parlym.png\", \"material_proof\": \"202103/1616156327tyre_mounted_crane.png\", \"resource_proof\": \"202103/1616156327lntpower.png\", \"anonymous_proof\": \"202103/1616156327chain_kappa.png\"}], \"task_status\": [{\"id\": 37, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"9\", \"created_at\": \"2021-03-19T11:08:18.000000Z\", \"updated_at\": \"2021-03-19T11:08:18.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"55\"}, {\"id\": 57, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"9\", \"created_at\": \"2021-03-19T12:06:20.000000Z\", \"updated_at\": \"2021-03-19T12:06:20.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"55\"}, {\"id\": 71, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"9\", \"created_at\": \"2021-03-19T12:18:29.000000Z\", \"updated_at\": \"2021-03-19T12:18:29.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"103\"}, {\"id\": 72, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"9\", \"created_at\": \"2021-03-19T12:18:47.000000Z\", \"updated_at\": \"2021-03-19T12:18:47.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"103\"}, {\"id\": 77, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"9\", \"created_at\": \"2021-03-19T12:19:49.000000Z\", \"updated_at\": \"2021-03-19T12:19:49.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [{\"id\": 11, \"task_id\": 9, \"created_at\": \"2021-03-19T11:09:27.000000Z\", \"updated_at\": \"2021-03-19T11:09:27.000000Z\", \"vehicle_id\": \"1\", \"vehicle_note\": \"vehicle note\", \"vehicle_rent\": \"2500\"}], \"task_material\": [{\"id\": 6, \"task_id\": 9, \"created_at\": \"2021-03-19T11:10:36.000000Z\", \"updated_at\": \"2021-03-19T11:10:36.000000Z\", \"material_id\": \"2\", \"material_qty\": \"3\", \"material_note\": \"material note\", \"material_amount\": 200}]}', '2021-03-19 12:19:47', '2021-03-19 12:19:49'),
(10, 17, '{\"task\": {\"id\": 17, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 36, \"task_code\": null, \"task_name\": \"dgdfdfhdf\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T14:51:28.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-19T14:51:34.000000Z\", \"task_details\": \"fgdfbdfb\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null, \"manager_override_chunck\": null}, \"task_site\": [], \"task_proof\": [{\"id\": 12, \"task_id\": 17, \"lat_proof\": null, \"created_at\": \"2021-03-19T14:52:14.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-19T14:52:14.000000Z\", \"proof_sent_by\": 36, \"vehicle_proof\": null, \"material_proof\": null, \"resource_proof\": null, \"anonymous_proof\": null}], \"task_status\": [{\"id\": 83, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"17\", \"created_at\": \"2021-03-19T14:51:28.000000Z\", \"updated_at\": \"2021-03-19T14:51:28.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 84, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"17\", \"created_at\": \"2021-03-19T14:51:34.000000Z\", \"updated_at\": \"2021-03-19T14:51:34.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 85, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"17\", \"created_at\": \"2021-03-19T14:51:58.000000Z\", \"updated_at\": \"2021-03-19T14:51:58.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"36\"}, {\"id\": 86, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"17\", \"created_at\": \"2021-03-19T14:52:14.000000Z\", \"updated_at\": \"2021-03-19T14:52:14.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"36\"}, {\"id\": 87, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"17\", \"created_at\": \"2021-03-19T14:52:59.000000Z\", \"updated_at\": \"2021-03-19T14:52:59.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [], \"task_material\": []}', '2021-03-19 14:52:54', '2021-03-19 14:52:59'),
(11, 15, '{\"task\": {\"id\": 15, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 44, \"task_code\": null, \"task_name\": \"Emergency Narsingdhi SCL Maintenace\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T11:53:31.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-19T11:57:19.000000Z\", \"task_details\": \"Emergency narsingdhi SCL Maintenance\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"vehicle image prooof\", \"manager_override_chunck\": null}, \"task_site\": [{\"id\": 57, \"site_id\": \"23\", \"task_id\": 15, \"created_at\": \"2021-03-19T11:53:47.000000Z\", \"updated_at\": \"2021-03-19T11:53:47.000000Z\", \"resource_id\": \"25\"}], \"task_proof\": [{\"id\": 10, \"task_id\": 15, \"lat_proof\": null, \"created_at\": \"2021-03-19T12:24:46.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-19T12:24:46.000000Z\", \"proof_sent_by\": 44, \"vehicle_proof\": \"202103/1616156686construction1.jpg\", \"material_proof\": \"202103/1616156686hec.png\", \"resource_proof\": \"202103/1616156686construction2.jpg\", \"anonymous_proof\": \"202103/1616156686steel_mat.png\"}], \"task_status\": [{\"id\": 44, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"15\", \"created_at\": \"2021-03-19T11:53:31.000000Z\", \"updated_at\": \"2021-03-19T11:53:31.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 47, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"15\", \"created_at\": \"2021-03-19T11:57:19.000000Z\", \"updated_at\": \"2021-03-19T11:57:19.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 79, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"15\", \"created_at\": \"2021-03-19T12:23:48.000000Z\", \"updated_at\": \"2021-03-19T12:23:48.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"44\"}, {\"id\": 80, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"15\", \"created_at\": \"2021-03-19T12:24:46.000000Z\", \"updated_at\": \"2021-03-19T12:24:46.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"44\"}, {\"id\": 88, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"15\", \"created_at\": \"2021-03-19T14:57:07.000000Z\", \"updated_at\": \"2021-03-19T14:57:07.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [{\"id\": 18, \"task_id\": 15, \"created_at\": \"2021-03-19T11:54:06.000000Z\", \"updated_at\": \"2021-03-19T11:54:06.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"1 ton truck\", \"vehicle_rent\": \"2000\"}], \"task_material\": [{\"id\": 18, \"task_id\": 15, \"created_at\": \"2021-03-19T11:54:31.000000Z\", \"updated_at\": \"2021-03-19T11:54:31.000000Z\", \"material_id\": \"2\", \"material_qty\": \"1\", \"material_note\": \"poe injector material\", \"material_amount\": 200}]}', '2021-03-19 14:57:06', '2021-03-19 14:57:07'),
(12, 18, '{\"task\": {\"id\": 18, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 121, \"task_code\": null, \"task_name\": \"Test by Samrat\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T15:02:11.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-19T16:04:51.000000Z\", \"task_details\": \"Test by Samrat\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"sadsaFDASDF\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 18, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-20\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 121, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Test by Samrat\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-19T15:02:11.000000Z\\\", \\\"project_id\\\": 8, \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"task_details\\\": \\\"Test by Samrat\\\", \\\"override_status\\\": \\\"No\\\", \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 63, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 64, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 65, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 66, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"dfasdfa\\\", \\\"vehicle_rent\\\": \\\"2500\\\"}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"4\\\", \\\"vehicle_note\\\": \\\"adfasdfasdf\\\", \\\"vehicle_rent\\\": \\\"2800\\\"}], \\\"task_material\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"adfasdfas\\\", \\\"material_amount\\\": 2500}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"4\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"awrweqrqw\\\", \\\"material_amount\\\": 2000}, {\\\"id\\\": 22, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"asdfasd\\\", \\\"material_amount\\\": 1500}]}\"}, \"task_site\": [{\"id\": 63, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 64, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}, {\"id\": 65, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 66, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}], \"task_proof\": [{\"id\": 13, \"task_id\": 18, \"lat_proof\": null, \"created_at\": \"2021-03-19T15:18:33.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-19T15:18:33.000000Z\", \"proof_sent_by\": 121, \"vehicle_proof\": null, \"material_proof\": null, \"resource_proof\": \"202103/1616167113153752777_2298499106960730_5442579171905822302_o.jpg\", \"anonymous_proof\": null}], \"task_status\": [{\"id\": 89, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"18\", \"created_at\": \"2021-03-19T15:02:11.000000Z\", \"updated_at\": \"2021-03-19T15:02:11.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 90, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"18\", \"created_at\": \"2021-03-19T15:15:38.000000Z\", \"updated_at\": \"2021-03-19T15:15:38.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 91, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"18\", \"created_at\": \"2021-03-19T15:18:26.000000Z\", \"updated_at\": \"2021-03-19T15:18:26.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"121\"}, {\"id\": 92, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"18\", \"created_at\": \"2021-03-19T15:18:33.000000Z\", \"updated_at\": \"2021-03-19T15:18:33.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"121\"}, {\"id\": 94, \"code\": \"task_override_data\", \"message\": \"Task data override by manager\", \"task_id\": \"18\", \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 95, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"18\", \"created_at\": \"2021-03-19T16:04:51.000000Z\", \"updated_at\": \"2021-03-19T16:04:51.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [{\"id\": 20, \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:48.000000Z\", \"updated_at\": \"2021-03-19T16:03:48.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"dfasdfa\", \"vehicle_rent\": \"2500\"}, {\"id\": 21, \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:48.000000Z\", \"updated_at\": \"2021-03-19T16:03:48.000000Z\", \"vehicle_id\": \"4\", \"vehicle_note\": \"adfasdfasdf\", \"vehicle_rent\": \"2800\"}], \"task_material\": [{\"id\": 20, \"task_id\": 18, \"created_at\": \"2021-03-19T16:04:18.000000Z\", \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"material_id\": \"3\", \"material_qty\": \"1\", \"material_note\": \"adfasdfas\", \"material_amount\": 2500}, {\"id\": 21, \"task_id\": 18, \"created_at\": \"2021-03-19T16:04:18.000000Z\", \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"material_id\": \"4\", \"material_qty\": \"2\", \"material_note\": \"awrweqrqw\", \"material_amount\": 2000}, {\"id\": 22, \"task_id\": 18, \"created_at\": \"2021-03-19T16:04:18.000000Z\", \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"material_id\": \"2\", \"material_qty\": \"1\", \"material_note\": \"asdfasd\", \"material_amount\": 1500}]}', '2021-03-19 16:02:53', '2021-03-19 16:04:51');
INSERT INTO `tasks_chunck` (`id`, `task_id`, `manager_data`, `created_at`, `updated_at`) VALUES
(13, 16, '{\"task\": {\"id\": 16, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 35, \"task_code\": null, \"task_name\": \"Emergency Tangail SCL Maintenance\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T11:56:16.000000Z\", \"project_id\": 9, \"updated_at\": \"2021-03-20T06:29:17.000000Z\", \"task_details\": \"Emergency Task For Tangail SCL Maintenance.\", \"override_status\": \"Yes\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null, \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 16, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-20\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 35, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Emergency Tangail SCL Maintenance\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-19T11:56:16.000000Z\\\", \\\"project_id\\\": 9, \\\"updated_at\\\": \\\"2021-03-19T11:57:13.000000Z\\\", \\\"task_details\\\": \\\"Emergency Task For Tangail SCL Maintenance\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 58, \\\"site_id\\\": \\\"24\\\", \\\"task_id\\\": 16, \\\"created_at\\\": \\\"2021-03-19T11:56:32.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T11:56:32.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 59, \\\"site_id\\\": \\\"24\\\", \\\"task_id\\\": 16, \\\"created_at\\\": \\\"2021-03-19T11:56:32.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T11:56:32.000000Z\\\", \\\"resource_id\\\": \\\"25\\\"}, {\\\"id\\\": 60, \\\"site_id\\\": \\\"25\\\", \\\"task_id\\\": 16, \\\"created_at\\\": \\\"2021-03-19T11:56:32.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T11:56:32.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 61, \\\"site_id\\\": \\\"25\\\", \\\"task_id\\\": 16, \\\"created_at\\\": \\\"2021-03-19T11:56:32.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T11:56:32.000000Z\\\", \\\"resource_id\\\": \\\"25\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 19, \\\"task_id\\\": 16, \\\"created_at\\\": \\\"2021-03-19T11:56:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T11:56:48.000000Z\\\", \\\"vehicle_id\\\": \\\"3\\\", \\\"vehicle_note\\\": \\\"vehicle note\\\", \\\"vehicle_rent\\\": \\\"3000\\\"}], \\\"task_material\\\": [{\\\"id\\\": 19, \\\"task_id\\\": 16, \\\"created_at\\\": \\\"2021-03-19T11:56:59.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T11:56:59.000000Z\\\", \\\"material_id\\\": \\\"4\\\", \\\"material_qty\\\": \\\"4\\\", \\\"material_note\\\": null, \\\"material_amount\\\": 400}]}\"}, \"task_site\": [{\"id\": 67, \"site_id\": \"24\", \"task_id\": 16, \"created_at\": \"2021-03-20T06:27:55.000000Z\", \"updated_at\": \"2021-03-20T06:27:55.000000Z\", \"resource_id\": \"23\"}, {\"id\": 68, \"site_id\": \"24\", \"task_id\": 16, \"created_at\": \"2021-03-20T06:27:55.000000Z\", \"updated_at\": \"2021-03-20T06:27:55.000000Z\", \"resource_id\": \"24\"}, {\"id\": 69, \"site_id\": \"24\", \"task_id\": 16, \"created_at\": \"2021-03-20T06:27:55.000000Z\", \"updated_at\": \"2021-03-20T06:27:55.000000Z\", \"resource_id\": \"25\"}, {\"id\": 70, \"site_id\": \"25\", \"task_id\": 16, \"created_at\": \"2021-03-20T06:27:55.000000Z\", \"updated_at\": \"2021-03-20T06:27:55.000000Z\", \"resource_id\": \"23\"}, {\"id\": 71, \"site_id\": \"25\", \"task_id\": 16, \"created_at\": \"2021-03-20T06:27:55.000000Z\", \"updated_at\": \"2021-03-20T06:27:55.000000Z\", \"resource_id\": \"24\"}, {\"id\": 72, \"site_id\": \"25\", \"task_id\": 16, \"created_at\": \"2021-03-20T06:27:55.000000Z\", \"updated_at\": \"2021-03-20T06:27:55.000000Z\", \"resource_id\": \"25\"}], \"task_proof\": [{\"id\": 14, \"task_id\": 16, \"lat_proof\": null, \"created_at\": \"2021-03-20T04:18:19.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-20T04:18:19.000000Z\", \"proof_sent_by\": 35, \"vehicle_proof\": \"202103/1616213899conference_nevers_03-833x430.jpg\", \"material_proof\": \"202103/1616213899maxresdefault.jpg\", \"resource_proof\": \"202103/1616213899WhatsApp Image 2021-02-21 at 15.39.11.jpeg\", \"anonymous_proof\": null}], \"task_status\": [{\"id\": 45, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"16\", \"created_at\": \"2021-03-19T11:56:16.000000Z\", \"updated_at\": \"2021-03-19T11:56:16.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 46, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"16\", \"created_at\": \"2021-03-19T11:57:13.000000Z\", \"updated_at\": \"2021-03-19T11:57:13.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 78, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"16\", \"created_at\": \"2021-03-19T12:21:31.000000Z\", \"updated_at\": \"2021-03-19T12:21:31.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"35\"}, {\"id\": 110, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"16\", \"created_at\": \"2021-03-20T04:18:19.000000Z\", \"updated_at\": \"2021-03-20T04:18:19.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"35\"}, {\"id\": 125, \"code\": \"task_override_data\", \"message\": \"Task data override by manager\", \"task_id\": \"16\", \"created_at\": \"2021-03-20T06:27:40.000000Z\", \"updated_at\": \"2021-03-20T06:27:40.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}], \"task_vehicle\": [{\"id\": 22, \"task_id\": 16, \"created_at\": \"2021-03-20T06:27:40.000000Z\", \"updated_at\": \"2021-03-20T06:27:40.000000Z\", \"vehicle_id\": \"3\", \"vehicle_note\": \"vehicle note\", \"vehicle_rent\": \"2900\"}], \"task_material\": [{\"id\": 23, \"task_id\": 16, \"created_at\": \"2021-03-20T06:27:48.000000Z\", \"updated_at\": \"2021-03-20T06:27:48.000000Z\", \"material_id\": \"4\", \"material_qty\": \"4\", \"material_note\": null, \"material_amount\": 300}]}', '2021-03-20 04:26:07', '2021-03-20 06:30:02'),
(14, 6, '{\"task\": {\"id\": 6, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 23, \"task_code\": null, \"task_name\": \"Shofipur Maintenance\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T10:54:58.000000Z\", \"project_id\": 15, \"updated_at\": \"2021-03-19T11:57:32.000000Z\", \"task_details\": \"Task details\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null, \"manager_override_chunck\": null}, \"task_site\": [{\"id\": 11, \"site_id\": \"19\", \"task_id\": 6, \"created_at\": \"2021-03-19T10:55:18.000000Z\", \"updated_at\": \"2021-03-19T10:55:18.000000Z\", \"resource_id\": \"20\"}, {\"id\": 12, \"site_id\": \"19\", \"task_id\": 6, \"created_at\": \"2021-03-19T10:55:18.000000Z\", \"updated_at\": \"2021-03-19T10:55:18.000000Z\", \"resource_id\": \"29\"}, {\"id\": 13, \"site_id\": \"129\", \"task_id\": 6, \"created_at\": \"2021-03-19T10:55:18.000000Z\", \"updated_at\": \"2021-03-19T10:55:18.000000Z\", \"resource_id\": \"20\"}, {\"id\": 14, \"site_id\": \"129\", \"task_id\": 6, \"created_at\": \"2021-03-19T10:55:18.000000Z\", \"updated_at\": \"2021-03-19T10:55:18.000000Z\", \"resource_id\": \"29\"}], \"task_proof\": [{\"id\": 16, \"task_id\": 6, \"lat_proof\": null, \"created_at\": \"2021-03-20T04:23:33.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-20T04:23:33.000000Z\", \"proof_sent_by\": 23, \"vehicle_proof\": \"202103/1616214213Ali Hossain id card.jpg\", \"material_proof\": \"202103/161621421320150421323.jpg\", \"resource_proof\": \"202103/161621421346495099_307591319846528_4272101207943675904_o.jpg\", \"anonymous_proof\": null}], \"task_status\": [{\"id\": 34, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"6\", \"created_at\": \"2021-03-19T10:54:58.000000Z\", \"updated_at\": \"2021-03-19T10:54:58.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 50, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"6\", \"created_at\": \"2021-03-19T11:57:32.000000Z\", \"updated_at\": \"2021-03-19T11:57:32.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 113, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"6\", \"created_at\": \"2021-03-20T04:23:10.000000Z\", \"updated_at\": \"2021-03-20T04:23:10.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"23\"}, {\"id\": 114, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"6\", \"created_at\": \"2021-03-20T04:23:33.000000Z\", \"updated_at\": \"2021-03-20T04:23:33.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"23\"}, {\"id\": 120, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"6\", \"created_at\": \"2021-03-20T04:26:34.000000Z\", \"updated_at\": \"2021-03-20T04:26:34.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [{\"id\": 7, \"task_id\": 6, \"created_at\": \"2021-03-19T10:55:31.000000Z\", \"updated_at\": \"2021-03-19T10:55:31.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"vehicle note\", \"vehicle_rent\": \"2000\"}], \"task_material\": [{\"id\": 3, \"task_id\": 6, \"created_at\": \"2021-03-19T10:55:43.000000Z\", \"updated_at\": \"2021-03-19T10:55:43.000000Z\", \"material_id\": \"3\", \"material_qty\": \"1\", \"material_note\": \"material note\", \"material_amount\": 700}]}', '2021-03-20 04:26:33', '2021-03-20 04:26:34'),
(15, 7, '{\"task\": {\"id\": 7, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 41, \"task_code\": null, \"task_name\": \"Tangail Maintenance\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T10:57:46.000000Z\", \"project_id\": 9, \"updated_at\": \"2021-03-19T11:57:27.000000Z\", \"task_details\": \"Task details\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"material vehicle image\", \"manager_override_chunck\": null}, \"task_site\": [{\"id\": 15, \"site_id\": \"24\", \"task_id\": 7, \"created_at\": \"2021-03-19T10:58:39.000000Z\", \"updated_at\": \"2021-03-19T10:58:39.000000Z\", \"resource_id\": \"23\"}, {\"id\": 16, \"site_id\": \"24\", \"task_id\": 7, \"created_at\": \"2021-03-19T10:58:39.000000Z\", \"updated_at\": \"2021-03-19T10:58:39.000000Z\", \"resource_id\": \"26\"}, {\"id\": 17, \"site_id\": \"24\", \"task_id\": 7, \"created_at\": \"2021-03-19T10:58:39.000000Z\", \"updated_at\": \"2021-03-19T10:58:39.000000Z\", \"resource_id\": \"27\"}, {\"id\": 18, \"site_id\": \"25\", \"task_id\": 7, \"created_at\": \"2021-03-19T10:58:39.000000Z\", \"updated_at\": \"2021-03-19T10:58:39.000000Z\", \"resource_id\": \"23\"}, {\"id\": 19, \"site_id\": \"25\", \"task_id\": 7, \"created_at\": \"2021-03-19T10:58:39.000000Z\", \"updated_at\": \"2021-03-19T10:58:39.000000Z\", \"resource_id\": \"26\"}, {\"id\": 20, \"site_id\": \"25\", \"task_id\": 7, \"created_at\": \"2021-03-19T10:58:39.000000Z\", \"updated_at\": \"2021-03-19T10:58:39.000000Z\", \"resource_id\": \"27\"}], \"task_proof\": [{\"id\": 15, \"task_id\": 7, \"lat_proof\": null, \"created_at\": \"2021-03-20T04:22:20.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-20T04:22:20.000000Z\", \"proof_sent_by\": 41, \"vehicle_proof\": \"202103/161621414044862248_321247682011506_3943235849851764736_n.jpg\", \"material_proof\": \"202103/161621414046495099_307591319846528_4272101207943675904_o.jpg\", \"resource_proof\": \"202103/1616214140Ali Hossain.jpg\", \"anonymous_proof\": \"202103/161621414046495099_307591319846528_4272101207943675904_o.jpg\"}], \"task_status\": [{\"id\": 35, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"7\", \"created_at\": \"2021-03-19T10:57:46.000000Z\", \"updated_at\": \"2021-03-19T10:57:46.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 49, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"7\", \"created_at\": \"2021-03-19T11:57:27.000000Z\", \"updated_at\": \"2021-03-19T11:57:27.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 111, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"7\", \"created_at\": \"2021-03-20T04:19:39.000000Z\", \"updated_at\": \"2021-03-20T04:19:39.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"41\"}, {\"id\": 112, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"7\", \"created_at\": \"2021-03-20T04:22:20.000000Z\", \"updated_at\": \"2021-03-20T04:22:20.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"41\"}, {\"id\": 121, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"7\", \"created_at\": \"2021-03-20T04:26:56.000000Z\", \"updated_at\": \"2021-03-20T04:26:56.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [{\"id\": 8, \"task_id\": 7, \"created_at\": \"2021-03-19T10:59:22.000000Z\", \"updated_at\": \"2021-03-19T10:59:22.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"ve\", \"vehicle_rent\": \"5500\"}, {\"id\": 9, \"task_id\": 7, \"created_at\": \"2021-03-19T10:59:22.000000Z\", \"updated_at\": \"2021-03-19T10:59:22.000000Z\", \"vehicle_id\": \"3\", \"vehicle_note\": \"vehicle\", \"vehicle_rent\": \"8000\"}], \"task_material\": [{\"id\": 4, \"task_id\": 7, \"created_at\": \"2021-03-19T10:59:51.000000Z\", \"updated_at\": \"2021-03-19T10:59:51.000000Z\", \"material_id\": \"3\", \"material_qty\": \"20\", \"material_note\": \"material note\", \"material_amount\": 3000}]}', '2021-03-20 04:26:45', '2021-03-20 04:26:56'),
(16, 8, '{\"task\": {\"id\": 8, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 39, \"task_code\": null, \"task_name\": \"Kapasia Maintenace 2\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T11:01:27.000000Z\", \"project_id\": 2, \"updated_at\": \"2021-03-19T11:57:23.000000Z\", \"task_details\": \"task detauils\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null, \"manager_override_chunck\": null}, \"task_site\": [{\"id\": 21, \"site_id\": \"13\", \"task_id\": 8, \"created_at\": \"2021-03-19T11:01:55.000000Z\", \"updated_at\": \"2021-03-19T11:01:55.000000Z\", \"resource_id\": \"23\"}, {\"id\": 22, \"site_id\": \"13\", \"task_id\": 8, \"created_at\": \"2021-03-19T11:01:55.000000Z\", \"updated_at\": \"2021-03-19T11:01:55.000000Z\", \"resource_id\": \"24\"}, {\"id\": 23, \"site_id\": \"13\", \"task_id\": 8, \"created_at\": \"2021-03-19T11:01:55.000000Z\", \"updated_at\": \"2021-03-19T11:01:55.000000Z\", \"resource_id\": \"26\"}, {\"id\": 24, \"site_id\": \"15\", \"task_id\": 8, \"created_at\": \"2021-03-19T11:01:55.000000Z\", \"updated_at\": \"2021-03-19T11:01:55.000000Z\", \"resource_id\": \"23\"}, {\"id\": 25, \"site_id\": \"15\", \"task_id\": 8, \"created_at\": \"2021-03-19T11:01:55.000000Z\", \"updated_at\": \"2021-03-19T11:01:55.000000Z\", \"resource_id\": \"24\"}, {\"id\": 26, \"site_id\": \"15\", \"task_id\": 8, \"created_at\": \"2021-03-19T11:01:55.000000Z\", \"updated_at\": \"2021-03-19T11:01:55.000000Z\", \"resource_id\": \"26\"}], \"task_proof\": [{\"id\": 11, \"task_id\": 8, \"lat_proof\": null, \"created_at\": \"2021-03-19T12:27:01.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-19T12:27:01.000000Z\", \"proof_sent_by\": 39, \"vehicle_proof\": \"202103/1616156821crawler_crane.png\", \"material_proof\": \"202103/1616156821d_shackle.png\", \"resource_proof\": \"202103/1616156821construction1.jpg\", \"anonymous_proof\": null}], \"task_status\": [{\"id\": 36, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"8\", \"created_at\": \"2021-03-19T11:01:27.000000Z\", \"updated_at\": \"2021-03-19T11:01:27.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 48, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"8\", \"created_at\": \"2021-03-19T11:57:23.000000Z\", \"updated_at\": \"2021-03-19T11:57:23.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 81, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"8\", \"created_at\": \"2021-03-19T12:26:49.000000Z\", \"updated_at\": \"2021-03-19T12:26:49.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"39\"}, {\"id\": 82, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"8\", \"created_at\": \"2021-03-19T12:27:01.000000Z\", \"updated_at\": \"2021-03-19T12:27:01.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"39\"}, {\"id\": 122, \"code\": \"approver_declined\", \"message\": \"Declined by approver\", \"task_id\": \"8\", \"created_at\": \"2021-03-20T04:27:05.000000Z\", \"updated_at\": \"2021-03-20T04:27:05.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [{\"id\": 10, \"task_id\": 8, \"created_at\": \"2021-03-19T11:02:23.000000Z\", \"updated_at\": \"2021-03-19T11:02:23.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"vehicle nioyte\", \"vehicle_rent\": \"3500\"}], \"task_material\": [{\"id\": 5, \"task_id\": 8, \"created_at\": \"2021-03-19T11:02:45.000000Z\", \"updated_at\": \"2021-03-19T11:02:45.000000Z\", \"material_id\": \"2\", \"material_qty\": \"1\", \"material_note\": \"material\", \"material_amount\": 700}]}', '2021-03-20 04:27:01', '2021-03-20 09:17:23'),
(17, 5, '{\"task\": {\"id\": 5, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 34, \"task_code\": null, \"task_name\": \"Narsingdhi maintenance\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T10:52:43.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-19T12:05:19.000000Z\", \"task_details\": \"tsk details\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"purchase bill slip\", \"manager_override_chunck\": null}, \"task_site\": [{\"id\": 9, \"site_id\": \"23\", \"task_id\": 5, \"created_at\": \"2021-03-19T10:53:07.000000Z\", \"updated_at\": \"2021-03-19T10:53:07.000000Z\", \"resource_id\": \"31\"}, {\"id\": 10, \"site_id\": \"23\", \"task_id\": 5, \"created_at\": \"2021-03-19T10:53:07.000000Z\", \"updated_at\": \"2021-03-19T10:53:07.000000Z\", \"resource_id\": \"36\"}], \"task_proof\": [{\"id\": 17, \"task_id\": 5, \"lat_proof\": null, \"created_at\": \"2021-03-20T04:24:51.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-20T04:24:51.000000Z\", \"proof_sent_by\": 34, \"vehicle_proof\": \"202103/16162142911.png\", \"material_proof\": \"202103/161621429142045044_286665755272418_3551841982747770880_o.jpg\", \"resource_proof\": \"202103/161621429144862248_321247682011506_3943235849851764736_n.jpg\", \"anonymous_proof\": \"202103/161621429146008162_305261926746134_3665438503312818176_o.jpg\"}], \"task_status\": [{\"id\": 33, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"5\", \"created_at\": \"2021-03-19T10:52:43.000000Z\", \"updated_at\": \"2021-03-19T10:52:43.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 52, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"5\", \"created_at\": \"2021-03-19T12:05:19.000000Z\", \"updated_at\": \"2021-03-19T12:05:19.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 115, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"5\", \"created_at\": \"2021-03-20T04:24:27.000000Z\", \"updated_at\": \"2021-03-20T04:24:27.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"34\"}, {\"id\": 116, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"5\", \"created_at\": \"2021-03-20T04:24:51.000000Z\", \"updated_at\": \"2021-03-20T04:24:51.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"34\"}, {\"id\": 123, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"5\", \"created_at\": \"2021-03-20T04:30:15.000000Z\", \"updated_at\": \"2021-03-20T04:30:15.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [{\"id\": 4, \"task_id\": 5, \"created_at\": \"2021-03-19T10:53:40.000000Z\", \"updated_at\": \"2021-03-19T10:53:40.000000Z\", \"vehicle_id\": \"3\", \"vehicle_note\": \"vehicle note\", \"vehicle_rent\": \"2000\"}, {\"id\": 5, \"task_id\": 5, \"created_at\": \"2021-03-19T10:53:40.000000Z\", \"updated_at\": \"2021-03-19T10:53:40.000000Z\", \"vehicle_id\": \"4\", \"vehicle_note\": \"vehicle note\", \"vehicle_rent\": \"3000\"}], \"task_material\": [{\"id\": 2, \"task_id\": 5, \"created_at\": \"2021-03-19T10:53:55.000000Z\", \"updated_at\": \"2021-03-19T10:53:55.000000Z\", \"material_id\": \"3\", \"material_qty\": \"5\", \"material_note\": \"material note\", \"material_amount\": 680}]}', '2021-03-20 04:30:14', '2021-03-20 04:30:15'),
(18, 4, '{\"task\": {\"id\": 4, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 24, \"task_code\": null, \"task_name\": \"Kapasia scl maintenance\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T10:50:38.000000Z\", \"project_id\": 2, \"updated_at\": \"2021-03-19T12:04:08.000000Z\", \"task_details\": \"Task details here\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null, \"manager_override_chunck\": null}, \"task_site\": [{\"id\": 5, \"site_id\": \"12\", \"task_id\": 4, \"created_at\": \"2021-03-19T10:51:15.000000Z\", \"updated_at\": \"2021-03-19T10:51:15.000000Z\", \"resource_id\": \"20\"}, {\"id\": 6, \"site_id\": \"12\", \"task_id\": 4, \"created_at\": \"2021-03-19T10:51:15.000000Z\", \"updated_at\": \"2021-03-19T10:51:15.000000Z\", \"resource_id\": \"26\"}, {\"id\": 7, \"site_id\": \"13\", \"task_id\": 4, \"created_at\": \"2021-03-19T10:51:15.000000Z\", \"updated_at\": \"2021-03-19T10:51:15.000000Z\", \"resource_id\": \"20\"}, {\"id\": 8, \"site_id\": \"13\", \"task_id\": 4, \"created_at\": \"2021-03-19T10:51:15.000000Z\", \"updated_at\": \"2021-03-19T10:51:15.000000Z\", \"resource_id\": \"26\"}], \"task_proof\": [{\"id\": 18, \"task_id\": 4, \"lat_proof\": null, \"created_at\": \"2021-03-20T04:25:52.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-20T04:25:52.000000Z\", \"proof_sent_by\": 24, \"vehicle_proof\": \"202103/1616214352579_DBC.jpg\", \"material_proof\": \"202103/161621435220180417_155305.jpg\", \"resource_proof\": \"202103/161621435244862248_321247682011506_3943235849851764736_n.jpg\", \"anonymous_proof\": null}], \"task_status\": [{\"id\": 32, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"4\", \"created_at\": \"2021-03-19T10:50:38.000000Z\", \"updated_at\": \"2021-03-19T10:50:38.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 51, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"4\", \"created_at\": \"2021-03-19T12:04:08.000000Z\", \"updated_at\": \"2021-03-19T12:04:08.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 117, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"4\", \"created_at\": \"2021-03-20T04:25:35.000000Z\", \"updated_at\": \"2021-03-20T04:25:35.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"24\"}, {\"id\": 118, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"4\", \"created_at\": \"2021-03-20T04:25:52.000000Z\", \"updated_at\": \"2021-03-20T04:25:52.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"24\"}, {\"id\": 124, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"4\", \"created_at\": \"2021-03-20T04:30:23.000000Z\", \"updated_at\": \"2021-03-20T04:30:23.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [{\"id\": 6, \"task_id\": 4, \"created_at\": \"2021-03-19T10:54:05.000000Z\", \"updated_at\": \"2021-03-19T10:54:05.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"vehicle\", \"vehicle_rent\": \"4500\"}], \"task_material\": [{\"id\": 1, \"task_id\": 4, \"created_at\": \"2021-03-19T10:52:06.000000Z\", \"updated_at\": \"2021-03-19T10:52:06.000000Z\", \"material_id\": \"3\", \"material_qty\": \"10\", \"material_note\": \"material note\", \"material_amount\": 800}]}', '2021-03-20 04:30:21', '2021-03-20 04:30:23'),
(19, 19, '{\"task\": {\"id\": 19, \"user_id\": 19, \"task_for\": \"2021-03-21\", \"is_active\": \"1\", \"site_head\": 20, \"task_code\": null, \"task_name\": \"PAT perform\", \"task_type\": \"general\", \"created_at\": \"2021-03-20T07:16:07.000000Z\", \"project_id\": 2, \"updated_at\": \"2021-03-20T07:45:09.000000Z\", \"task_details\": \"PAT perform\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"material reciept\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 19, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-21\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 20, \\\"task_code\\\": null, \\\"task_name\\\": \\\"PAT perform\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-20T07:16:07.000000Z\\\", \\\"project_id\\\": 2, \\\"updated_at\\\": \\\"2021-03-20T07:29:23.000000Z\\\", \\\"task_details\\\": \\\"PAT perform\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": \\\"material reciept\\\"}], \\\"task_site\\\": [{\\\"id\\\": 73, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 74, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 75, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 76, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 23, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"vehicle\\\", \\\"vehicle_rent\\\": \\\"2000\\\"}, {\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"3\\\", \\\"vehicle_note\\\": \\\"vehile note\\\", \\\"vehicle_rent\\\": \\\"2599\\\"}], \\\"task_material\\\": [{\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"matwerial\\\", \\\"material_amount\\\": 500}, {\\\"id\\\": 25, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"somehing\\\", \\\"material_amount\\\": 200}]}\"}, \"task_site\": [{\"id\": 73, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 74, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}, {\"id\": 75, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 76, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}], \"task_proof\": [{\"id\": 19, \"task_id\": 19, \"lat_proof\": null, \"created_at\": \"2021-03-20T07:35:58.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-20T07:35:58.000000Z\", \"proof_sent_by\": 20, \"vehicle_proof\": \"202103/1616225758Screenshot (7).png\", \"material_proof\": \"202103/1616225758Screenshot (10).png\", \"resource_proof\": \"202103/1616225758Screenshot (1).png\", \"anonymous_proof\": \"202103/1616225758Screenshot (9).png\"}], \"task_status\": [{\"id\": 126, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"19\", \"created_at\": \"2021-03-20T07:16:07.000000Z\", \"updated_at\": \"2021-03-20T07:16:07.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 127, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"19\", \"created_at\": \"2021-03-20T07:29:23.000000Z\", \"updated_at\": \"2021-03-20T07:29:23.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 128, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"19\", \"created_at\": \"2021-03-20T07:32:21.000000Z\", \"updated_at\": \"2021-03-20T07:32:21.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"20\"}, {\"id\": 129, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"19\", \"created_at\": \"2021-03-20T07:35:58.000000Z\", \"updated_at\": \"2021-03-20T07:35:58.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"20\"}, {\"id\": 131, \"code\": \"task_override_data\", \"message\": \"Task data override by manager\", \"task_id\": \"19\", \"created_at\": \"2021-03-20T07:41:56.000000Z\", \"updated_at\": \"2021-03-20T07:41:56.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 132, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"19\", \"created_at\": \"2021-03-20T07:45:09.000000Z\", \"updated_at\": \"2021-03-20T07:45:09.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [{\"id\": 25, \"task_id\": 19, \"created_at\": \"2021-03-20T07:41:56.000000Z\", \"updated_at\": \"2021-03-20T07:41:56.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"vehicle\", \"vehicle_rent\": \"2500\"}, {\"id\": 26, \"task_id\": 19, \"created_at\": \"2021-03-20T07:41:56.000000Z\", \"updated_at\": \"2021-03-20T07:41:56.000000Z\", \"vehicle_id\": \"3\", \"vehicle_note\": \"vehile note\", \"vehicle_rent\": \"2599\"}], \"task_material\": [{\"id\": 24, \"task_id\": 19, \"created_at\": \"2021-03-20T07:26:00.000000Z\", \"updated_at\": \"2021-03-20T07:26:00.000000Z\", \"material_id\": \"2\", \"material_qty\": \"2\", \"material_note\": \"matwerial\", \"material_amount\": 500}, {\"id\": 25, \"task_id\": 19, \"created_at\": \"2021-03-20T07:26:00.000000Z\", \"updated_at\": \"2021-03-20T07:26:00.000000Z\", \"material_id\": \"3\", \"material_qty\": \"1\", \"material_note\": \"somehing\", \"material_amount\": 200}]}', '2021-03-20 07:38:57', '2021-03-20 07:45:09'),
(20, 21, '{\"task\": {\"id\": 21, \"user_id\": 19, \"task_for\": \"2021-03-22\", \"is_active\": \"1\", \"site_head\": 24, \"task_code\": null, \"task_name\": \"Delivery\", \"task_type\": \"general\", \"created_at\": \"2021-03-21T13:02:59.000000Z\", \"project_id\": 16, \"updated_at\": \"2021-03-21T13:22:19.000000Z\", \"task_details\": \"Details Test (General)\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null, \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 21, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-22\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 24, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Delivery\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-21T13:02:59.000000Z\\\", \\\"project_id\\\": 16, \\\"updated_at\\\": \\\"2021-03-21T13:07:36.000000Z\\\", \\\"task_details\\\": \\\"Details Test (General)\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 78, \\\"site_id\\\": \\\"418\\\", \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"resource_id\\\": \\\"26\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 28, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"vehicle_id\\\": \\\"1\\\", \\\"vehicle_note\\\": \\\"Test\\\", \\\"vehicle_rent\\\": \\\"500\\\"}], \\\"task_material\\\": [{\\\"id\\\": 27, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"material_id\\\": \\\"1\\\", \\\"material_qty\\\": \\\"200\\\", \\\"material_note\\\": \\\"T\\\", \\\"material_amount\\\": 200}]}\"}, \"task_site\": [{\"id\": 78, \"site_id\": \"418\", \"task_id\": 21, \"created_at\": \"2021-03-21T13:06:03.000000Z\", \"updated_at\": \"2021-03-21T13:06:03.000000Z\", \"resource_id\": \"26\"}], \"task_proof\": [{\"id\": 20, \"task_id\": 21, \"lat_proof\": null, \"created_at\": \"2021-03-21T13:12:10.000000Z\", \"long_proof\": null, \"updated_at\": \"2021-03-21T13:12:10.000000Z\", \"proof_sent_by\": 24, \"vehicle_proof\": \"202103/1616332330147273980_1326555601054434_3148641681603728284_o.jpg\", \"material_proof\": \"202103/1616332330106205472_1427550094299260_4716041731091231978_n.jpg\", \"resource_proof\": \"202103/16163323301c1b2bbc-83d6-410c-9dfc-15b71b6a0eda.jpg\", \"anonymous_proof\": null}], \"task_status\": [{\"id\": 150, \"code\": \"task_created\", \"message\": \"Task created by manager\", \"task_id\": \"21\", \"created_at\": \"2021-03-21T13:02:59.000000Z\", \"updated_at\": \"2021-03-21T13:02:59.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 151, \"code\": \"task_assigned_to_head\", \"message\": \"Task assigned to head\", \"task_id\": \"21\", \"created_at\": \"2021-03-21T13:07:36.000000Z\", \"updated_at\": \"2021-03-21T13:07:36.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 152, \"code\": \"head_accepted\", \"message\": \"Task accepted by site head\", \"task_id\": \"21\", \"created_at\": \"2021-03-21T13:09:33.000000Z\", \"updated_at\": \"2021-03-21T13:09:33.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"24\"}, {\"id\": 153, \"code\": \"proof_given\", \"message\": \"Task proof given by site head\", \"task_id\": \"21\", \"created_at\": \"2021-03-21T13:12:10.000000Z\", \"updated_at\": \"2021-03-21T13:12:10.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"24\"}, {\"id\": 155, \"code\": \"task_override_data\", \"message\": \"Task data override by manager\", \"task_id\": \"21\", \"created_at\": \"2021-03-21T13:18:58.000000Z\", \"updated_at\": \"2021-03-21T13:18:58.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"19\"}, {\"id\": 156, \"code\": \"approver_approved\", \"message\": \"Task approved by approver\", \"task_id\": \"21\", \"created_at\": \"2021-03-21T13:22:19.000000Z\", \"updated_at\": \"2021-03-21T13:22:19.000000Z\", \"performed_for\": null, \"requisition_id\": null, \"action_performed_by\": \"122\"}], \"task_vehicle\": [{\"id\": 29, \"task_id\": 21, \"created_at\": \"2021-03-21T13:18:58.000000Z\", \"updated_at\": \"2021-03-21T13:18:58.000000Z\", \"vehicle_id\": \"1\", \"vehicle_note\": \"Test\", \"vehicle_rent\": \"700\"}], \"task_material\": [{\"id\": 27, \"task_id\": 21, \"created_at\": \"2021-03-21T13:06:55.000000Z\", \"updated_at\": \"2021-03-21T13:06:55.000000Z\", \"material_id\": \"1\", \"material_qty\": \"200\", \"material_note\": \"T\", \"material_amount\": 200}]}', '2021-03-21 13:16:49', '2021-03-21 13:22:19');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tasks_datas`
-- (See below for the actual view)
--
CREATE TABLE `tasks_datas` (
`all_tasks_datas` longtext
,`id` bigint unsigned
,`project_id` int
,`site_head` int
,`task_code` varchar(191)
,`task_for` date
,`task_name` varchar(191)
,`task_type` varchar(191)
,`user_id` int
);

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

--
-- Dumping data for table `tasks_material`
--

INSERT INTO `tasks_material` (`id`, `task_id`, `material_id`, `material_qty`, `material_amount`, `material_note`, `created_at`, `updated_at`) VALUES
(1, 4, '3', '10', 800, 'material note', '2021-03-19 10:52:06', '2021-03-19 10:52:06'),
(2, 5, '3', '5', 680, 'material note', '2021-03-19 10:53:55', '2021-03-19 10:53:55'),
(3, 6, '3', '1', 700, 'material note', '2021-03-19 10:55:43', '2021-03-19 10:55:43'),
(4, 7, '3', '20', 3000, 'material note', '2021-03-19 10:59:51', '2021-03-19 10:59:51'),
(5, 8, '2', '1', 700, 'material', '2021-03-19 11:02:45', '2021-03-19 11:02:45'),
(6, 9, '2', '3', 200, 'material note', '2021-03-19 11:10:36', '2021-03-19 11:10:36'),
(9, 10, '3', '3', 300, 'metaerial note', '2021-03-19 11:12:35', '2021-03-19 11:12:35'),
(11, 11, '3', '10', 3000, 'material information', '2021-03-19 11:28:44', '2021-03-19 11:28:44'),
(13, 12, '4', '2', 1000, 'material note', '2021-03-19 11:32:01', '2021-03-19 11:32:01'),
(14, 12, '7', '1', 150, 'cable needed ethernate', '2021-03-19 11:32:01', '2021-03-19 11:32:01'),
(15, 13, '1', '2', 340, 'material dsl modem', '2021-03-19 11:36:42', '2021-03-19 11:36:42'),
(16, 14, '3', '250', 2500, 'Emergency Edocto Smartlock', '2021-03-19 11:49:31', '2021-03-19 11:49:31'),
(17, 14, '4', '1', 1800, 'Emergency Edocto Smartlock', '2021-03-19 11:49:31', '2021-03-19 11:49:31'),
(18, 15, '2', '1', 200, 'poe injector material', '2021-03-19 11:54:31', '2021-03-19 11:54:31'),
(20, 18, '3', '1', 2500, 'adfasdfas', '2021-03-19 16:04:18', '2021-03-19 16:04:18'),
(21, 18, '4', '2', 2000, 'awrweqrqw', '2021-03-19 16:04:18', '2021-03-19 16:04:18'),
(22, 18, '2', '1', 1500, 'asdfasd', '2021-03-19 16:04:18', '2021-03-19 16:04:18'),
(23, 16, '4', '4', 300, NULL, '2021-03-20 06:27:48', '2021-03-20 06:27:48'),
(24, 19, '2', '2', 500, 'matwerial', '2021-03-20 07:26:00', '2021-03-20 07:26:00'),
(25, 19, '3', '1', 200, 'somehing', '2021-03-20 07:26:00', '2021-03-20 07:26:00'),
(26, 20, '2', '2', 2000, 'Test', '2021-03-21 11:36:35', '2021-03-21 11:36:35'),
(27, 21, '1', '200', 200, 'T', '2021-03-21 13:06:55', '2021-03-21 13:06:55');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tasks_material_datas`
-- (See below for the actual view)
--
CREATE TABLE `tasks_material_datas` (
`id` bigint unsigned
,`material_amount` int
,`material_id` varchar(191)
,`material_name` varchar(191)
,`material_note` varchar(255)
,`material_qty` varchar(191)
,`material_unit` varchar(191)
,`task_id` int
,`tasks_material_datas` text
);

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

--
-- Dumping data for table `tasks_proof`
--

INSERT INTO `tasks_proof` (`id`, `task_id`, `proof_sent_by`, `resource_proof`, `vehicle_proof`, `material_proof`, `anonymous_proof`, `lat_proof`, `long_proof`, `created_at`, `updated_at`) VALUES
(1, 1, 23, '202103/16160672511.png', '202103/161606725146008162_305261926746134_3665438503312818176_o.jpg', NULL, '202103/161606725120180417_155305.jpg', NULL, NULL, '2021-03-18 11:34:11', '2021-03-18 11:34:11'),
(2, 2, 25, '202103/1616140610golden_1a93300a-ab8f-4c06-9ec6-48639bb24282.jpg', NULL, NULL, '202103/1616140610WhatsApp Image 2021-02-21 at 15.39.11.jpeg', NULL, NULL, '2021-03-19 07:56:50', '2021-03-19 07:56:50'),
(3, 3, 20, '202103/1616140928153752777_2298499106960730_5442579171905822302_o.jpg', NULL, NULL, '202103/1616140928153500434_3784910748229332_1904611150990061542_o.jpg', NULL, NULL, '2021-03-19 08:02:08', '2021-03-19 08:02:08'),
(4, 14, 33, '202103/1616155661truck.jpg', '202103/1616155661tug_boat.png', '202103/1616155661turn_buckle.jpg', '202103/1616155661tyre_mounted_crane.png', NULL, NULL, '2021-03-19 12:07:41', '2021-03-19 12:07:41'),
(5, 13, 29, '202103/1616155876terrain.png', '202103/1616155876steel_mat.png', '202103/1616155876turn_buckle.jpg', '202103/1616155876tyre_mounted_crane.png', NULL, NULL, '2021-03-19 12:11:16', '2021-03-19 12:11:16'),
(6, 12, 32, '202103/1616155988construction3.jpg', '202103/1616155988tug_boat.png', '202103/1616155988turn_buckle.jpg', NULL, NULL, NULL, '2021-03-19 12:13:08', '2021-03-19 12:13:08'),
(7, 11, 31, '202103/1616156158barge.png', '202103/1616156158truck.jpg', '202103/1616156158sling.png', '202103/1616156158rubber_sheet.png', NULL, NULL, '2021-03-19 12:15:58', '2021-03-19 12:15:58'),
(8, 10, 27, '202103/1616156227chain_kappa.png', '202103/1616156227mbec.png', '202103/1616156227d_shackle.png', NULL, NULL, NULL, '2021-03-19 12:17:07', '2021-03-19 12:17:07'),
(9, 9, 103, '202103/1616156327lntpower.png', '202103/1616156327parlym.png', '202103/1616156327tyre_mounted_crane.png', '202103/1616156327chain_kappa.png', NULL, NULL, '2021-03-19 12:18:47', '2021-03-19 12:18:47'),
(10, 15, 44, '202103/1616156686construction2.jpg', '202103/1616156686construction1.jpg', '202103/1616156686hec.png', '202103/1616156686steel_mat.png', NULL, NULL, '2021-03-19 12:24:46', '2021-03-19 12:24:46'),
(11, 8, 39, '202103/1616156821construction1.jpg', '202103/1616156821crawler_crane.png', '202103/1616156821d_shackle.png', NULL, NULL, NULL, '2021-03-19 12:27:01', '2021-03-19 12:27:01'),
(12, 17, 36, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-19 14:52:14', '2021-03-19 14:52:14'),
(13, 18, 121, '202103/1616167113153752777_2298499106960730_5442579171905822302_o.jpg', NULL, NULL, NULL, NULL, NULL, '2021-03-19 15:18:33', '2021-03-19 15:18:33'),
(14, 16, 35, '202103/1616213899WhatsApp Image 2021-02-21 at 15.39.11.jpeg', '202103/1616213899conference_nevers_03-833x430.jpg', '202103/1616213899maxresdefault.jpg', NULL, NULL, NULL, '2021-03-20 04:18:19', '2021-03-20 04:18:19'),
(15, 7, 41, '202103/1616214140Ali Hossain.jpg', '202103/161621414044862248_321247682011506_3943235849851764736_n.jpg', '202103/161621414046495099_307591319846528_4272101207943675904_o.jpg', '202103/161621414046495099_307591319846528_4272101207943675904_o.jpg', NULL, NULL, '2021-03-20 04:22:20', '2021-03-20 04:22:20'),
(16, 6, 23, '202103/161621421346495099_307591319846528_4272101207943675904_o.jpg', '202103/1616214213Ali Hossain id card.jpg', '202103/161621421320150421323.jpg', NULL, NULL, NULL, '2021-03-20 04:23:33', '2021-03-20 04:23:33'),
(17, 5, 34, '202103/161621429144862248_321247682011506_3943235849851764736_n.jpg', '202103/16162142911.png', '202103/161621429142045044_286665755272418_3551841982747770880_o.jpg', '202103/161621429146008162_305261926746134_3665438503312818176_o.jpg', NULL, NULL, '2021-03-20 04:24:51', '2021-03-20 04:24:51'),
(18, 4, 24, '202103/161621435244862248_321247682011506_3943235849851764736_n.jpg', '202103/1616214352579_DBC.jpg', '202103/161621435220180417_155305.jpg', NULL, NULL, NULL, '2021-03-20 04:25:52', '2021-03-20 04:25:52'),
(19, 19, 20, '202103/1616225758Screenshot (1).png', '202103/1616225758Screenshot (7).png', '202103/1616225758Screenshot (10).png', '202103/1616225758Screenshot (9).png', NULL, NULL, '2021-03-20 07:35:58', '2021-03-20 07:35:58'),
(20, 21, 24, '202103/16163323301c1b2bbc-83d6-410c-9dfc-15b71b6a0eda.jpg', '202103/1616332330147273980_1326555601054434_3148641681603728284_o.jpg', '202103/1616332330106205472_1427550094299260_4716041731091231978_n.jpg', NULL, NULL, NULL, '2021-03-21 13:12:10', '2021-03-21 13:12:10');

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

--
-- Dumping data for table `tasks_requisition_bill`
--

INSERT INTO `tasks_requisition_bill` (`id`, `task_id`, `requisition_prepared_by_manager`, `requisition_submitted_by_manager`, `requisition_edited_by_cfo`, `requisition_approved_by_cfo`, `requisition_edited_by_accountant`, `requisition_approved_by_accountant`, `bill_prepared_by_resource`, `bill_submitted_by_resource`, `bill_edited_by_manager`, `bill_approved_by_manager`, `bill_edited_by_cfo`, `bill_approved_by_cfo`, `bill_edited_by_accountant`, `bill_approved_by_accountant`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"task\": [{\"id\": 1, \"user_id\": 19, \"task_for\": \"2021-03-19\", \"is_active\": \"1\", \"site_head\": 23, \"task_code\": null, \"task_name\": \"new test\", \"task_type\": \"general\", \"created_at\": \"2021-03-18T10:09:48.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-18T10:11:27.000000Z\", \"task_details\": \"test\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"put data for your activity\", \"manager_override_chunck\": null}], \"task_site\": [{\"id\": 1, \"site_id\": \"21\", \"task_id\": 1, \"created_at\": \"2021-03-18T10:10:57.000000Z\", \"updated_at\": \"2021-03-18T10:10:57.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"id\": 1, \"task_id\": 1, \"created_at\": \"2021-03-18T10:11:13.000000Z\", \"updated_at\": \"2021-03-18T10:11:13.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"test\", \"vehicle_rent\": \"1500\"}], \"task_material\": [], \"task_regular_amount\": {\"da\": {\"da_notes\": \"test\", \"da_amount\": \"200\"}, \"other\": {\"other_notes\": \"test\", \"other_amount\": \"200\"}, \"labour\": {\"labour_notes\": \"test\", \"labour_amount\": \"200\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"test\", \"pa_amount\": \"200\"}], \"task_transport_breakdown\": [{\"ta_note\": \"test\", \"ta_amount\": \"200\", \"transport_type\": \"Bus\", \"where_to_where\": \"test\"}, {\"ta_note\": \"test\", \"ta_amount\": \"200\", \"transport_type\": \"CNG\", \"where_to_where\": \"test\"}, {\"ta_note\": null, \"ta_amount\": \"200\", \"transport_type\": \"Taxi\", \"where_to_where\": \"test\"}]}', 'Yes', '{\"task\": [{\"id\": 1, \"user_id\": 19, \"task_for\": \"2021-03-19\", \"is_active\": \"1\", \"site_head\": 23, \"task_code\": null, \"task_name\": \"new test\", \"task_type\": \"general\", \"created_at\": \"2021-03-18T10:09:48.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-18T10:11:27.000000Z\", \"task_details\": \"test\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"put data for your activity\", \"manager_override_chunck\": null}], \"task_site\": [{\"id\": 1, \"site_id\": \"21\", \"task_id\": 1, \"created_at\": \"2021-03-18T10:10:57.000000Z\", \"updated_at\": \"2021-03-18T10:10:57.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"id\": 2, \"task_id\": 1, \"created_at\": \"2021-03-18T12:27:16.000000Z\", \"updated_at\": \"2021-03-18T12:27:16.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"edit test\", \"vehicle_rent\": \"1400\"}], \"task_material\": [], \"task_regular_amount\": {\"da\": {\"da_notes\": \"edit test\", \"da_amount\": \"100\"}, \"other\": {\"other_notes\": \"edit test\", \"other_amount\": \"100\"}, \"labour\": {\"labour_notes\": \"edit test\", \"labour_amount\": \"100\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"edit test\", \"pa_amount\": \"100\"}], \"task_transport_breakdown\": [{\"ta_note\": \"edit test\", \"ta_amount\": \"100\", \"transport_type\": \"Bus\", \"where_to_where\": \"test\"}, {\"ta_note\": \"edit test\", \"ta_amount\": \"100\", \"transport_type\": \"CNG\", \"where_to_where\": \"test\"}, {\"ta_note\": \"edit test\", \"ta_amount\": \"100\", \"transport_type\": \"Taxi\", \"where_to_where\": \"test\"}]}', 'Yes', '{\"task\": [{\"id\": 1, \"user_id\": 19, \"task_for\": \"2021-03-19\", \"is_active\": \"1\", \"site_head\": 23, \"task_code\": null, \"task_name\": \"new test\", \"task_type\": \"general\", \"created_at\": \"2021-03-18T10:09:48.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-18T10:11:27.000000Z\", \"task_details\": \"test\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"put data for your activity\", \"manager_override_chunck\": null}], \"task_site\": [{\"id\": 1, \"site_id\": \"21\", \"task_id\": 1, \"created_at\": \"2021-03-18T10:10:57.000000Z\", \"updated_at\": \"2021-03-18T10:10:57.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"id\": 2, \"task_id\": 1, \"created_at\": \"2021-03-18T12:27:16.000000Z\", \"updated_at\": \"2021-03-18T12:27:16.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"edit test\", \"vehicle_rent\": \"1400\"}], \"task_material\": [], \"task_regular_amount\": {\"da\": {\"da_notes\": \"edit test\", \"da_amount\": \"100\"}, \"other\": {\"other_notes\": \"edit test\", \"other_amount\": \"100\"}, \"labour\": {\"labour_notes\": \"edit test\", \"labour_amount\": \"100\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"edit test\", \"pa_amount\": \"100\"}], \"task_transport_breakdown\": [{\"ta_note\": \"edit test\", \"ta_amount\": \"100\", \"transport_type\": \"Bus\", \"where_to_where\": \"test\"}, {\"ta_note\": \"edit test\", \"ta_amount\": \"100\", \"transport_type\": \"CNG\", \"where_to_where\": \"test\"}, {\"ta_note\": \"edit test\", \"ta_amount\": \"100\", \"transport_type\": \"Taxi\", \"where_to_where\": \"test\"}]}', 'Yes', '{\"task\": [{\"id\": 1, \"user_id\": 19, \"task_for\": \"2021-03-19\", \"is_active\": \"1\", \"site_head\": 23, \"task_code\": null, \"task_name\": \"new test\", \"task_type\": \"general\", \"created_at\": \"2021-03-18T10:09:48.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-18T10:11:27.000000Z\", \"task_details\": \"test\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"put data for your activity\", \"manager_override_chunck\": null}], \"task_site\": [{\"id\": 1, \"site_id\": \"21\", \"task_id\": 1, \"created_at\": \"2021-03-18T10:10:57.000000Z\", \"updated_at\": \"2021-03-18T10:10:57.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"vehicle_id\": \"2\", \"vehicle_note\": \"test\", \"vehicle_rent\": \"2000\"}], \"task_material\": [{\"material_id\": \"2\", \"material_qty\": \"1\", \"material_note\": \"test\", \"material_amount\": \"300\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"test\", \"da_amount\": \"200\"}, \"other\": {\"other_notes\": \"test\", \"other_amount\": \"200\"}, \"labour\": {\"labour_notes\": \"test\", \"labour_amount\": \"200\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"test\", \"pa_amount\": \"200\"}], \"task_transport_breakdown\": [{\"ta_note\": \"test\", \"ta_amount\": \"200\", \"transport_type\": \"Taxi\", \"where_to_where\": \"test\"}]}', 'Yes', '{\"task\": [{\"id\": 1, \"user_id\": 19, \"task_for\": \"2021-03-19\", \"is_active\": \"1\", \"site_head\": 23, \"task_code\": null, \"task_name\": \"new test\", \"task_type\": \"general\", \"created_at\": \"2021-03-18T10:09:48.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-18T10:11:27.000000Z\", \"task_details\": \"test\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"put data for your activity\", \"manager_override_chunck\": null}], \"task_site\": [{\"id\": 1, \"site_id\": \"21\", \"task_id\": 1, \"created_at\": \"2021-03-18T10:10:57.000000Z\", \"updated_at\": \"2021-03-18T10:10:57.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"vehicle_id\": \"2\", \"vehicle_note\": \"test\", \"vehicle_rent\": \"2000\"}], \"task_material\": [{\"material_id\": \"2\", \"material_qty\": \"1\", \"material_note\": \"test\", \"material_amount\": \"300\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"test\", \"da_amount\": \"200\"}, \"other\": {\"other_notes\": \"test\", \"other_amount\": \"200\"}, \"labour\": {\"labour_notes\": \"test\", \"labour_amount\": \"200\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"test\", \"pa_amount\": \"200\"}], \"task_transport_breakdown\": [{\"ta_note\": \"test\", \"ta_amount\": \"200\", \"transport_type\": \"Taxi\", \"where_to_where\": \"test\"}]}', 'Yes', '{\"task\": [{\"id\": 1, \"user_id\": 19, \"task_for\": \"2021-03-19\", \"is_active\": \"1\", \"site_head\": 23, \"task_code\": null, \"task_name\": \"new test\", \"task_type\": \"general\", \"created_at\": \"2021-03-18T10:09:48.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-18T10:11:27.000000Z\", \"task_details\": \"test\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"put data for your activity\", \"manager_override_chunck\": null}], \"task_site\": [{\"id\": 1, \"site_id\": \"21\", \"task_id\": 1, \"created_at\": \"2021-03-18T10:10:57.000000Z\", \"updated_at\": \"2021-03-18T10:10:57.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"vehicle_id\": \"2\", \"vehicle_note\": \"test\", \"vehicle_rent\": \"2000\"}], \"task_material\": [{\"material_id\": \"2\", \"material_qty\": \"1\", \"material_note\": \"test\", \"material_amount\": \"300\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"test\", \"da_amount\": \"100\"}, \"other\": {\"other_notes\": \"test\", \"other_amount\": \"200\"}, \"labour\": {\"labour_notes\": \"test\", \"labour_amount\": \"100\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"test\", \"pa_amount\": \"100\"}], \"task_transport_breakdown\": [{\"ta_note\": \"test\", \"ta_amount\": \"100\", \"transport_type\": \"Taxi\", \"where_to_where\": \"test\"}]}', 'Yes', '{\"task\": [{\"id\": 1, \"user_id\": 19, \"task_for\": \"2021-03-19\", \"is_active\": \"1\", \"site_head\": 23, \"task_code\": null, \"task_name\": \"new test\", \"task_type\": \"general\", \"created_at\": \"2021-03-18T10:09:48.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-18T10:11:27.000000Z\", \"task_details\": \"test\", \"override_status\": null, \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"put data for your activity\", \"manager_override_chunck\": null}], \"task_site\": [{\"id\": 1, \"site_id\": \"21\", \"task_id\": 1, \"created_at\": \"2021-03-18T10:10:57.000000Z\", \"updated_at\": \"2021-03-18T10:10:57.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"vehicle_id\": \"2\", \"vehicle_note\": \"test\", \"vehicle_rent\": \"2000\"}], \"task_material\": [{\"material_id\": \"2\", \"material_qty\": \"1\", \"material_note\": \"test\", \"material_amount\": \"300\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"test\", \"da_amount\": \"100\"}, \"other\": {\"other_notes\": \"test\", \"other_amount\": \"200\"}, \"labour\": {\"labour_notes\": \"test\", \"labour_amount\": \"100\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"test\", \"pa_amount\": \"100\"}], \"task_transport_breakdown\": [{\"ta_note\": \"test\", \"ta_amount\": \"100\", \"transport_type\": \"Taxi\", \"where_to_where\": \"test\"}]}', 'Yes', '2021-03-18 12:19:44', '2021-03-18 18:31:53'),
(3, 18, '{\"task\": [{\"id\": 18, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 121, \"task_code\": null, \"task_name\": \"Test by Samrat\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T15:02:11.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-19T16:04:51.000000Z\", \"task_details\": \"Test by Samrat\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"sadsaFDASDF\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 18, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-20\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 121, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Test by Samrat\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-19T15:02:11.000000Z\\\", \\\"project_id\\\": 8, \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"task_details\\\": \\\"Test by Samrat\\\", \\\"override_status\\\": \\\"No\\\", \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 63, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 64, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 65, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 66, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"dfasdfa\\\", \\\"vehicle_rent\\\": \\\"2500\\\"}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"4\\\", \\\"vehicle_note\\\": \\\"adfasdfasdf\\\", \\\"vehicle_rent\\\": \\\"2800\\\"}], \\\"task_material\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"adfasdfas\\\", \\\"material_amount\\\": 2500}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"4\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"awrweqrqw\\\", \\\"material_amount\\\": 2000}, {\\\"id\\\": 22, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"asdfasd\\\", \\\"material_amount\\\": 1500}]}\"}], \"task_site\": [{\"id\": 63, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 64, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}, {\"id\": 65, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 66, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"id\": 20, \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:48.000000Z\", \"updated_at\": \"2021-03-19T16:03:48.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"dfasdfa\", \"vehicle_rent\": \"2500\"}, {\"id\": 21, \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:48.000000Z\", \"updated_at\": \"2021-03-19T16:03:48.000000Z\", \"vehicle_id\": \"4\", \"vehicle_note\": \"adfasdfasdf\", \"vehicle_rent\": \"2800\"}], \"task_material\": [{\"id\": 20, \"task_id\": 18, \"created_at\": \"2021-03-19T16:04:18.000000Z\", \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"material_id\": \"3\", \"material_qty\": \"1\", \"material_note\": \"adfasdfas\", \"material_amount\": 2500}, {\"id\": 21, \"task_id\": 18, \"created_at\": \"2021-03-19T16:04:18.000000Z\", \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"material_id\": \"4\", \"material_qty\": \"2\", \"material_note\": \"awrweqrqw\", \"material_amount\": 2000}, {\"id\": 22, \"task_id\": 18, \"created_at\": \"2021-03-19T16:04:18.000000Z\", \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"material_id\": \"2\", \"material_qty\": \"1\", \"material_note\": \"asdfasd\", \"material_amount\": 1500}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"DSFASDF\", \"da_amount\": \"1000\"}, \"other\": {\"other_notes\": \"DASFREWQ\", \"other_amount\": \"1000\"}, \"labour\": {\"labour_notes\": \"ASDFSDFGDS\", \"labour_amount\": \"1000\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"ASDFA\", \"pa_amount\": \"500\"}, {\"pa_note\": \"SADFASD\", \"pa_amount\": \"500\"}, {\"pa_note\": \"SDAFSAD\", \"pa_amount\": \"500\"}, {\"pa_note\": \"ASDFSFDHGFGDJ\", \"pa_amount\": \"500\"}], \"task_transport_breakdown\": [{\"ta_note\": \"ADASDFAS\", \"ta_amount\": \"25\", \"transport_type\": \"Rickshaw\", \"where_to_where\": \"ERQWERQ\"}, {\"ta_note\": \"ASDFAS\", \"ta_amount\": \"25\", \"transport_type\": \"Van\", \"where_to_where\": \"WEQTRTYRTUYHFGH\"}, {\"ta_note\": \"SADFASDF\", \"ta_amount\": \"500\", \"transport_type\": \"Bus\", \"where_to_where\": \"HGJHK\"}]}', 'Yes', '{\"task\": [{\"id\": 18, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 121, \"task_code\": null, \"task_name\": \"Test by Samrat\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T15:02:11.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-19T16:06:32.000000Z\", \"task_details\": \"Test by Samrat\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"sadsaFDASDF\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 18, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-20\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 121, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Test by Samrat\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-19T15:02:11.000000Z\\\", \\\"project_id\\\": 8, \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"task_details\\\": \\\"Test by Samrat\\\", \\\"override_status\\\": \\\"No\\\", \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 63, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 64, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 65, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 66, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"dfasdfa\\\", \\\"vehicle_rent\\\": \\\"2500\\\"}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"4\\\", \\\"vehicle_note\\\": \\\"adfasdfasdf\\\", \\\"vehicle_rent\\\": \\\"2800\\\"}], \\\"task_material\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"adfasdfas\\\", \\\"material_amount\\\": 2500}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"4\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"awrweqrqw\\\", \\\"material_amount\\\": 2000}, {\\\"id\\\": 22, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"asdfasd\\\", \\\"material_amount\\\": 1500}]}\"}], \"task_site\": [{\"id\": 63, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 64, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}, {\"id\": 65, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 66, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"id\": 20, \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:48.000000Z\", \"updated_at\": \"2021-03-19T16:03:48.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"dfasdfa\", \"vehicle_rent\": \"2500\"}, {\"id\": 21, \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:48.000000Z\", \"updated_at\": \"2021-03-19T16:03:48.000000Z\", \"vehicle_id\": \"4\", \"vehicle_note\": \"adfasdfasdf\", \"vehicle_rent\": \"2800\"}], \"task_material\": [{\"id\": 20, \"task_id\": 18, \"created_at\": \"2021-03-19T16:04:18.000000Z\", \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"material_id\": \"3\", \"material_qty\": \"1\", \"material_note\": \"adfasdfas\", \"material_amount\": 2500}, {\"id\": 21, \"task_id\": 18, \"created_at\": \"2021-03-19T16:04:18.000000Z\", \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"material_id\": \"4\", \"material_qty\": \"2\", \"material_note\": \"awrweqrqw\", \"material_amount\": 2000}, {\"id\": 22, \"task_id\": 18, \"created_at\": \"2021-03-19T16:04:18.000000Z\", \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"material_id\": \"2\", \"material_qty\": \"1\", \"material_note\": \"asdfasd\", \"material_amount\": 1500}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"DSFASDF\", \"da_amount\": \"1000\"}, \"other\": {\"other_notes\": \"DASFREWQ\", \"other_amount\": \"1000\"}, \"labour\": {\"labour_notes\": \"ASDFSDFGDS\", \"labour_amount\": \"1000\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"ASDFA\", \"pa_amount\": \"500\"}, {\"pa_note\": \"SADFASD\", \"pa_amount\": \"500\"}, {\"pa_note\": \"SDAFSAD\", \"pa_amount\": \"500\"}, {\"pa_note\": \"ASDFSFDHGFGDJ\", \"pa_amount\": \"500\"}], \"task_transport_breakdown\": [{\"ta_note\": \"ADASDFAS\", \"ta_amount\": \"25\", \"transport_type\": \"Rickshaw\", \"where_to_where\": \"ERQWERQ\"}, {\"ta_note\": \"ASDFAS\", \"ta_amount\": \"25\", \"transport_type\": \"Van\", \"where_to_where\": \"WEQTRTYRTUYHFGH\"}, {\"ta_note\": \"SADFASDF\", \"ta_amount\": \"500\", \"transport_type\": \"Bus\", \"where_to_where\": \"HGJHK\"}]}', 'Yes', '{\"task\": [{\"id\": 18, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 121, \"task_code\": null, \"task_name\": \"Test by Samrat\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T15:02:11.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-19T16:06:32.000000Z\", \"task_details\": \"Test by Samrat\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"sadsaFDASDF\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 18, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-20\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 121, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Test by Samrat\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-19T15:02:11.000000Z\\\", \\\"project_id\\\": 8, \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"task_details\\\": \\\"Test by Samrat\\\", \\\"override_status\\\": \\\"No\\\", \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 63, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 64, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 65, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 66, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"dfasdfa\\\", \\\"vehicle_rent\\\": \\\"2500\\\"}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"4\\\", \\\"vehicle_note\\\": \\\"adfasdfasdf\\\", \\\"vehicle_rent\\\": \\\"2800\\\"}], \\\"task_material\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"adfasdfas\\\", \\\"material_amount\\\": 2500}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"4\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"awrweqrqw\\\", \\\"material_amount\\\": 2000}, {\\\"id\\\": 22, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"asdfasd\\\", \\\"material_amount\\\": 1500}]}\"}], \"task_site\": [{\"id\": 63, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 64, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}, {\"id\": 65, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 66, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"id\": 20, \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:48.000000Z\", \"updated_at\": \"2021-03-19T16:03:48.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"dfasdfa\", \"vehicle_rent\": \"2500\"}, {\"id\": 21, \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:48.000000Z\", \"updated_at\": \"2021-03-19T16:03:48.000000Z\", \"vehicle_id\": \"4\", \"vehicle_note\": \"adfasdfasdf\", \"vehicle_rent\": \"2800\"}], \"task_material\": [{\"id\": 20, \"task_id\": 18, \"created_at\": \"2021-03-19T16:04:18.000000Z\", \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"material_id\": \"3\", \"material_qty\": \"1\", \"material_note\": \"adfasdfas\", \"material_amount\": 2500}, {\"id\": 21, \"task_id\": 18, \"created_at\": \"2021-03-19T16:04:18.000000Z\", \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"material_id\": \"4\", \"material_qty\": \"2\", \"material_note\": \"awrweqrqw\", \"material_amount\": 2000}, {\"id\": 22, \"task_id\": 18, \"created_at\": \"2021-03-19T16:04:18.000000Z\", \"updated_at\": \"2021-03-19T16:04:18.000000Z\", \"material_id\": \"2\", \"material_qty\": \"1\", \"material_note\": \"asdfasd\", \"material_amount\": 1500}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"DSFASDF\", \"da_amount\": \"1000\"}, \"other\": {\"other_notes\": \"DASFREWQ\", \"other_amount\": \"1000\"}, \"labour\": {\"labour_notes\": \"ASDFSDFGDS\", \"labour_amount\": \"1000\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"ASDFA\", \"pa_amount\": \"500\"}, {\"pa_note\": \"SADFASD\", \"pa_amount\": \"500\"}, {\"pa_note\": \"SDAFSAD\", \"pa_amount\": \"500\"}, {\"pa_note\": \"ASDFSFDHGFGDJ\", \"pa_amount\": \"500\"}], \"task_transport_breakdown\": [{\"ta_note\": \"ADASDFAS\", \"ta_amount\": \"25\", \"transport_type\": \"Rickshaw\", \"where_to_where\": \"ERQWERQ\"}, {\"ta_note\": \"ASDFAS\", \"ta_amount\": \"25\", \"transport_type\": \"Van\", \"where_to_where\": \"WEQTRTYRTUYHFGH\"}, {\"ta_note\": \"SADFASDF\", \"ta_amount\": \"500\", \"transport_type\": \"Bus\", \"where_to_where\": \"HGJHK\"}]}', 'Yes', '{\"task\": [{\"id\": 18, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 121, \"task_code\": null, \"task_name\": \"Test by Samrat\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T15:02:11.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-19T16:06:32.000000Z\", \"task_details\": \"Test by Samrat\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"sadsaFDASDF\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 18, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-20\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 121, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Test by Samrat\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-19T15:02:11.000000Z\\\", \\\"project_id\\\": 8, \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"task_details\\\": \\\"Test by Samrat\\\", \\\"override_status\\\": \\\"No\\\", \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 63, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 64, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 65, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 66, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"dfasdfa\\\", \\\"vehicle_rent\\\": \\\"2500\\\"}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"4\\\", \\\"vehicle_note\\\": \\\"adfasdfasdf\\\", \\\"vehicle_rent\\\": \\\"2800\\\"}], \\\"task_material\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"adfasdfas\\\", \\\"material_amount\\\": 2500}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"4\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"awrweqrqw\\\", \\\"material_amount\\\": 2000}, {\\\"id\\\": 22, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"asdfasd\\\", \\\"material_amount\\\": 1500}]}\"}], \"task_site\": [{\"id\": 63, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 64, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}, {\"id\": 65, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 66, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"vehicle_id\": \"2\", \"vehicle_note\": \"xcbvxcbv\", \"vehicle_rent\": \"2000\"}], \"task_material\": [{\"material_id\": \"2\", \"material_qty\": \"12\", \"material_note\": \"cdxbvxcbv\", \"material_amount\": \"2500\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"xc vxcv\", \"da_amount\": \"500\"}, \"other\": {\"other_notes\": \"xcvxzcv\", \"other_amount\": \"100\"}, \"labour\": {\"labour_notes\": \"xcvxcv\", \"labour_amount\": \"500\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"xcvxcvx\", \"pa_amount\": \"200\"}], \"task_transport_breakdown\": [{\"ta_note\": \"xcvxcv\", \"ta_amount\": \"200\", \"transport_type\": \"CNG\", \"where_to_where\": \"dsfdsfv\"}]}', 'Yes', '{\"task\": [{\"id\": 18, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 121, \"task_code\": null, \"task_name\": \"Test by Samrat\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T15:02:11.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-19T16:06:32.000000Z\", \"task_details\": \"Test by Samrat\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"sadsaFDASDF\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 18, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-20\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 121, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Test by Samrat\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-19T15:02:11.000000Z\\\", \\\"project_id\\\": 8, \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"task_details\\\": \\\"Test by Samrat\\\", \\\"override_status\\\": \\\"No\\\", \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 63, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 64, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 65, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 66, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"dfasdfa\\\", \\\"vehicle_rent\\\": \\\"2500\\\"}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"4\\\", \\\"vehicle_note\\\": \\\"adfasdfasdf\\\", \\\"vehicle_rent\\\": \\\"2800\\\"}], \\\"task_material\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"adfasdfas\\\", \\\"material_amount\\\": 2500}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"4\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"awrweqrqw\\\", \\\"material_amount\\\": 2000}, {\\\"id\\\": 22, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"asdfasd\\\", \\\"material_amount\\\": 1500}]}\"}], \"task_site\": [{\"id\": 63, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 64, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}, {\"id\": 65, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 66, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"vehicle_id\": \"2\", \"vehicle_note\": \"xcbvxcbv\", \"vehicle_rent\": \"2000\"}], \"task_material\": [{\"material_id\": \"2\", \"material_qty\": \"12\", \"material_note\": \"cdxbvxcbv\", \"material_amount\": \"2500\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"xc vxcv\", \"da_amount\": \"500\"}, \"other\": {\"other_notes\": \"xcvxzcv\", \"other_amount\": \"100\"}, \"labour\": {\"labour_notes\": \"xcvxcv\", \"labour_amount\": \"500\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"xcvxcvx\", \"pa_amount\": \"200\"}], \"task_transport_breakdown\": [{\"ta_note\": \"xcvxcv\", \"ta_amount\": \"200\", \"transport_type\": \"CNG\", \"where_to_where\": \"dsfdsfv\"}]}', 'Yes', '{\"task\": [{\"id\": 18, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 121, \"task_code\": null, \"task_name\": \"Test by Samrat\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T15:02:11.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-19T16:06:32.000000Z\", \"task_details\": \"Test by Samrat\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"sadsaFDASDF\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 18, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-20\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 121, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Test by Samrat\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-19T15:02:11.000000Z\\\", \\\"project_id\\\": 8, \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"task_details\\\": \\\"Test by Samrat\\\", \\\"override_status\\\": \\\"No\\\", \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 63, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 64, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 65, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 66, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"dfasdfa\\\", \\\"vehicle_rent\\\": \\\"2500\\\"}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"4\\\", \\\"vehicle_note\\\": \\\"adfasdfasdf\\\", \\\"vehicle_rent\\\": \\\"2800\\\"}], \\\"task_material\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"adfasdfas\\\", \\\"material_amount\\\": 2500}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"4\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"awrweqrqw\\\", \\\"material_amount\\\": 2000}, {\\\"id\\\": 22, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"asdfasd\\\", \\\"material_amount\\\": 1500}]}\"}], \"task_site\": [{\"id\": 63, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 64, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}, {\"id\": 65, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 66, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"vehicle_id\": \"2\", \"vehicle_note\": \"xcbvxcbv\", \"vehicle_rent\": \"2000\"}], \"task_material\": [{\"material_id\": \"2\", \"material_qty\": \"12\", \"material_note\": \"cdxbvxcbv\", \"material_amount\": \"2500\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"xc vxcv\", \"da_amount\": \"400\"}, \"other\": {\"other_notes\": \"xcvxzcv\", \"other_amount\": \"0\"}, \"labour\": {\"labour_notes\": \"xcvxcv\", \"labour_amount\": \"400\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"xcvxcvx\", \"pa_amount\": \"100\"}], \"task_transport_breakdown\": [{\"ta_note\": \"xcvxcv\", \"ta_amount\": \"100\", \"transport_type\": \"CNG\", \"where_to_where\": \"dsfdsfv\"}]}', 'Yes', '{\"task\": [{\"id\": 18, \"user_id\": 19, \"task_for\": \"2021-03-20\", \"is_active\": \"1\", \"site_head\": 121, \"task_code\": null, \"task_name\": \"Test by Samrat\", \"task_type\": \"general\", \"created_at\": \"2021-03-19T15:02:11.000000Z\", \"project_id\": 8, \"updated_at\": \"2021-03-19T16:06:32.000000Z\", \"task_details\": \"Test by Samrat\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"sadsaFDASDF\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 18, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-20\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 121, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Test by Samrat\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-19T15:02:11.000000Z\\\", \\\"project_id\\\": 8, \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"task_details\\\": \\\"Test by Samrat\\\", \\\"override_status\\\": \\\"No\\\", \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 63, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 64, \\\"site_id\\\": \\\"22\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 65, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"20\\\"}, {\\\"id\\\": 66, \\\"site_id\\\": \\\"23\\\", \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:27.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"dfasdfa\\\", \\\"vehicle_rent\\\": \\\"2500\\\"}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:03:48.000000Z\\\", \\\"vehicle_id\\\": \\\"4\\\", \\\"vehicle_note\\\": \\\"adfasdfasdf\\\", \\\"vehicle_rent\\\": \\\"2800\\\"}], \\\"task_material\\\": [{\\\"id\\\": 20, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"adfasdfas\\\", \\\"material_amount\\\": 2500}, {\\\"id\\\": 21, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"4\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"awrweqrqw\\\", \\\"material_amount\\\": 2000}, {\\\"id\\\": 22, \\\"task_id\\\": 18, \\\"created_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-19T16:04:18.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"asdfasd\\\", \\\"material_amount\\\": 1500}]}\"}], \"task_site\": [{\"id\": 63, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 64, \"site_id\": \"22\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}, {\"id\": 65, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"20\"}, {\"id\": 66, \"site_id\": \"23\", \"task_id\": 18, \"created_at\": \"2021-03-19T16:03:27.000000Z\", \"updated_at\": \"2021-03-19T16:03:27.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"vehicle_id\": \"2\", \"vehicle_note\": \"xcbvxcbv\", \"vehicle_rent\": \"2000\"}], \"task_material\": [{\"material_id\": \"2\", \"material_qty\": \"12\", \"material_note\": \"cdxbvxcbv\", \"material_amount\": \"2500\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"xc vxcv\", \"da_amount\": \"400\"}, \"other\": {\"other_notes\": \"xcvxzcv\", \"other_amount\": \"0\"}, \"labour\": {\"labour_notes\": \"xcvxcv\", \"labour_amount\": \"400\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"xcvxcvx\", \"pa_amount\": \"100\"}], \"task_transport_breakdown\": [{\"ta_note\": \"xcvxcv\", \"ta_amount\": \"100\", \"transport_type\": \"CNG\", \"where_to_where\": \"dsfdsfv\"}]}', 'Yes', '2021-03-19 16:06:13', '2021-03-19 23:29:50');
INSERT INTO `tasks_requisition_bill` (`id`, `task_id`, `requisition_prepared_by_manager`, `requisition_submitted_by_manager`, `requisition_edited_by_cfo`, `requisition_approved_by_cfo`, `requisition_edited_by_accountant`, `requisition_approved_by_accountant`, `bill_prepared_by_resource`, `bill_submitted_by_resource`, `bill_edited_by_manager`, `bill_approved_by_manager`, `bill_edited_by_cfo`, `bill_approved_by_cfo`, `bill_edited_by_accountant`, `bill_approved_by_accountant`, `created_at`, `updated_at`) VALUES
(4, 19, '{\"task\": [{\"id\": 19, \"user_id\": 19, \"task_for\": \"2021-03-21\", \"is_active\": \"1\", \"site_head\": 20, \"task_code\": null, \"task_name\": \"PAT perform\", \"task_type\": \"general\", \"created_at\": \"2021-03-20T07:16:07.000000Z\", \"project_id\": 2, \"updated_at\": \"2021-03-20T07:45:09.000000Z\", \"task_details\": \"PAT perform\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"material reciept\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 19, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-21\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 20, \\\"task_code\\\": null, \\\"task_name\\\": \\\"PAT perform\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-20T07:16:07.000000Z\\\", \\\"project_id\\\": 2, \\\"updated_at\\\": \\\"2021-03-20T07:29:23.000000Z\\\", \\\"task_details\\\": \\\"PAT perform\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": \\\"material reciept\\\"}], \\\"task_site\\\": [{\\\"id\\\": 73, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 74, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 75, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 76, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 23, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"vehicle\\\", \\\"vehicle_rent\\\": \\\"2000\\\"}, {\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"3\\\", \\\"vehicle_note\\\": \\\"vehile note\\\", \\\"vehicle_rent\\\": \\\"2599\\\"}], \\\"task_material\\\": [{\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"matwerial\\\", \\\"material_amount\\\": 500}, {\\\"id\\\": 25, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"somehing\\\", \\\"material_amount\\\": 200}]}\"}], \"task_site\": [{\"id\": 73, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 74, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}, {\"id\": 75, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 76, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"id\": 25, \"task_id\": 19, \"created_at\": \"2021-03-20T07:41:56.000000Z\", \"updated_at\": \"2021-03-20T07:41:56.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"vehicle\", \"vehicle_rent\": \"2500\"}, {\"id\": 26, \"task_id\": 19, \"created_at\": \"2021-03-20T07:41:56.000000Z\", \"updated_at\": \"2021-03-20T07:41:56.000000Z\", \"vehicle_id\": \"3\", \"vehicle_note\": \"vehile note\", \"vehicle_rent\": \"2599\"}], \"task_material\": [{\"id\": 24, \"task_id\": 19, \"created_at\": \"2021-03-20T07:26:00.000000Z\", \"updated_at\": \"2021-03-20T07:26:00.000000Z\", \"material_id\": \"2\", \"material_qty\": \"2\", \"material_note\": \"matwerial\", \"material_amount\": 500}, {\"id\": 25, \"task_id\": 19, \"created_at\": \"2021-03-20T07:26:00.000000Z\", \"updated_at\": \"2021-03-20T07:26:00.000000Z\", \"material_id\": \"3\", \"material_qty\": \"1\", \"material_note\": \"somehing\", \"material_amount\": 200}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"nietere\", \"da_amount\": \"100\"}, \"other\": {\"other_notes\": \"hjshjhdd\", \"other_amount\": \"400\"}, \"labour\": {\"labour_notes\": \"jshjhds\", \"labour_amount\": \"400\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"pa note\", \"pa_amount\": \"250\"}, {\"pa_note\": \"pa note 2\", \"pa_amount\": \"100\"}], \"task_transport_breakdown\": [{\"ta_note\": \"ta note\", \"ta_amount\": \"500\", \"transport_type\": \"Bus\", \"where_to_where\": \"dhk to ctg\"}, {\"ta_note\": \"ta note\", \"ta_amount\": \"250\", \"transport_type\": \"Bus\", \"where_to_where\": \"ctg to comilla\"}]}', 'Yes', '{\"task\": [{\"id\": 19, \"user_id\": 19, \"task_for\": \"2021-03-21\", \"is_active\": \"1\", \"site_head\": 20, \"task_code\": null, \"task_name\": \"PAT perform\", \"task_type\": \"general\", \"created_at\": \"2021-03-20T07:16:07.000000Z\", \"project_id\": 2, \"updated_at\": \"2021-03-20T07:45:09.000000Z\", \"task_details\": \"PAT perform\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"material reciept\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 19, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-21\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 20, \\\"task_code\\\": null, \\\"task_name\\\": \\\"PAT perform\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-20T07:16:07.000000Z\\\", \\\"project_id\\\": 2, \\\"updated_at\\\": \\\"2021-03-20T07:29:23.000000Z\\\", \\\"task_details\\\": \\\"PAT perform\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": \\\"material reciept\\\"}], \\\"task_site\\\": [{\\\"id\\\": 73, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 74, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 75, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 76, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 23, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"vehicle\\\", \\\"vehicle_rent\\\": \\\"2000\\\"}, {\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"3\\\", \\\"vehicle_note\\\": \\\"vehile note\\\", \\\"vehicle_rent\\\": \\\"2599\\\"}], \\\"task_material\\\": [{\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"matwerial\\\", \\\"material_amount\\\": 500}, {\\\"id\\\": 25, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"somehing\\\", \\\"material_amount\\\": 200}]}\"}], \"task_site\": [{\"id\": 73, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 74, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}, {\"id\": 75, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 76, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"id\": 25, \"task_id\": 19, \"created_at\": \"2021-03-20T07:41:56.000000Z\", \"updated_at\": \"2021-03-20T07:41:56.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"vehicle\", \"vehicle_rent\": \"2500\"}, {\"id\": 26, \"task_id\": 19, \"created_at\": \"2021-03-20T07:41:56.000000Z\", \"updated_at\": \"2021-03-20T07:41:56.000000Z\", \"vehicle_id\": \"3\", \"vehicle_note\": \"vehile note\", \"vehicle_rent\": \"2599\"}], \"task_material\": [{\"id\": 24, \"task_id\": 19, \"created_at\": \"2021-03-20T07:26:00.000000Z\", \"updated_at\": \"2021-03-20T07:26:00.000000Z\", \"material_id\": \"2\", \"material_qty\": \"2\", \"material_note\": \"matwerial\", \"material_amount\": 500}, {\"id\": 25, \"task_id\": 19, \"created_at\": \"2021-03-20T07:26:00.000000Z\", \"updated_at\": \"2021-03-20T07:26:00.000000Z\", \"material_id\": \"3\", \"material_qty\": \"1\", \"material_note\": \"somehing\", \"material_amount\": 200}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"nietere\", \"da_amount\": \"100\"}, \"other\": {\"other_notes\": \"hjshjhdd\", \"other_amount\": \"400\"}, \"labour\": {\"labour_notes\": \"jshjhds\", \"labour_amount\": \"400\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"pa note\", \"pa_amount\": \"250\"}, {\"pa_note\": \"pa note 2\", \"pa_amount\": \"100\"}], \"task_transport_breakdown\": [{\"ta_note\": \"ta note\", \"ta_amount\": \"500\", \"transport_type\": \"Bus\", \"where_to_where\": \"dhk to ctg\"}, {\"ta_note\": \"ta note\", \"ta_amount\": \"250\", \"transport_type\": \"Bus\", \"where_to_where\": \"ctg to comilla\"}]}', 'Yes', '{\"task\": [{\"id\": 19, \"user_id\": 19, \"task_for\": \"2021-03-21\", \"is_active\": \"1\", \"site_head\": 20, \"task_code\": null, \"task_name\": \"PAT perform\", \"task_type\": \"general\", \"created_at\": \"2021-03-20T07:16:07.000000Z\", \"project_id\": 2, \"updated_at\": \"2021-03-20T07:45:09.000000Z\", \"task_details\": \"PAT perform\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"material reciept\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 19, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-21\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 20, \\\"task_code\\\": null, \\\"task_name\\\": \\\"PAT perform\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-20T07:16:07.000000Z\\\", \\\"project_id\\\": 2, \\\"updated_at\\\": \\\"2021-03-20T07:29:23.000000Z\\\", \\\"task_details\\\": \\\"PAT perform\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": \\\"material reciept\\\"}], \\\"task_site\\\": [{\\\"id\\\": 73, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 74, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 75, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 76, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 23, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"vehicle\\\", \\\"vehicle_rent\\\": \\\"2000\\\"}, {\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"3\\\", \\\"vehicle_note\\\": \\\"vehile note\\\", \\\"vehicle_rent\\\": \\\"2599\\\"}], \\\"task_material\\\": [{\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"matwerial\\\", \\\"material_amount\\\": 500}, {\\\"id\\\": 25, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"somehing\\\", \\\"material_amount\\\": 200}]}\"}], \"task_site\": [{\"id\": 73, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 74, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}, {\"id\": 75, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 76, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"id\": 25, \"task_id\": 19, \"created_at\": \"2021-03-20T07:41:56.000000Z\", \"updated_at\": \"2021-03-20T07:41:56.000000Z\", \"vehicle_id\": \"2\", \"vehicle_note\": \"vehicle\", \"vehicle_rent\": \"2500\"}, {\"id\": 26, \"task_id\": 19, \"created_at\": \"2021-03-20T07:41:56.000000Z\", \"updated_at\": \"2021-03-20T07:41:56.000000Z\", \"vehicle_id\": \"3\", \"vehicle_note\": \"vehile note\", \"vehicle_rent\": \"2599\"}], \"task_material\": [{\"id\": 24, \"task_id\": 19, \"created_at\": \"2021-03-20T07:26:00.000000Z\", \"updated_at\": \"2021-03-20T07:26:00.000000Z\", \"material_id\": \"2\", \"material_qty\": \"2\", \"material_note\": \"matwerial\", \"material_amount\": 500}, {\"id\": 25, \"task_id\": 19, \"created_at\": \"2021-03-20T07:26:00.000000Z\", \"updated_at\": \"2021-03-20T07:26:00.000000Z\", \"material_id\": \"3\", \"material_qty\": \"1\", \"material_note\": \"somehing\", \"material_amount\": 200}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"nietere\", \"da_amount\": \"100\"}, \"other\": {\"other_notes\": \"hjshjhdd\", \"other_amount\": \"400\"}, \"labour\": {\"labour_notes\": \"jshjhds\", \"labour_amount\": \"400\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"pa note\", \"pa_amount\": \"250\"}, {\"pa_note\": \"pa note 2\", \"pa_amount\": \"100\"}], \"task_transport_breakdown\": [{\"ta_note\": \"ta note\", \"ta_amount\": \"500\", \"transport_type\": \"Bus\", \"where_to_where\": \"dhk to ctg\"}, {\"ta_note\": \"ta note\", \"ta_amount\": \"250\", \"transport_type\": \"Bus\", \"where_to_where\": \"ctg to comilla\"}]}', 'Yes', '{\"task\": [{\"id\": 19, \"user_id\": 19, \"task_for\": \"2021-03-21\", \"is_active\": \"1\", \"site_head\": 20, \"task_code\": null, \"task_name\": \"PAT perform\", \"task_type\": \"general\", \"created_at\": \"2021-03-20T07:16:07.000000Z\", \"project_id\": 2, \"updated_at\": \"2021-03-20T07:45:09.000000Z\", \"task_details\": \"PAT perform\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"material reciept\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 19, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-21\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 20, \\\"task_code\\\": null, \\\"task_name\\\": \\\"PAT perform\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-20T07:16:07.000000Z\\\", \\\"project_id\\\": 2, \\\"updated_at\\\": \\\"2021-03-20T07:29:23.000000Z\\\", \\\"task_details\\\": \\\"PAT perform\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": \\\"material reciept\\\"}], \\\"task_site\\\": [{\\\"id\\\": 73, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 74, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 75, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 76, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 23, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"vehicle\\\", \\\"vehicle_rent\\\": \\\"2000\\\"}, {\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"3\\\", \\\"vehicle_note\\\": \\\"vehile note\\\", \\\"vehicle_rent\\\": \\\"2599\\\"}], \\\"task_material\\\": [{\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"matwerial\\\", \\\"material_amount\\\": 500}, {\\\"id\\\": 25, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"somehing\\\", \\\"material_amount\\\": 200}]}\"}], \"task_site\": [{\"id\": 73, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 74, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}, {\"id\": 75, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 76, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"vehicle_id\": \"1\", \"vehicle_note\": \"something\", \"vehicle_rent\": \"2300\"}], \"task_material\": [{\"material_id\": \"1\", \"material_qty\": \"1\", \"material_note\": \"note\", \"material_amount\": \"600\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"hdkjdj\", \"da_amount\": \"200\"}, \"other\": {\"other_notes\": \"NOTE\", \"other_amount\": \"100\"}, \"labour\": {\"labour_notes\": \"NOITE\", \"labour_amount\": \"200\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"note\", \"pa_amount\": \"100\"}], \"task_transport_breakdown\": [{\"ta_note\": \"nite\", \"ta_amount\": \"560\", \"transport_type\": \"Bus\", \"where_to_where\": \"dhk to ctg\"}]}', 'Yes', '{\"task\": [{\"id\": 19, \"user_id\": 19, \"task_for\": \"2021-03-21\", \"is_active\": \"1\", \"site_head\": 20, \"task_code\": null, \"task_name\": \"PAT perform\", \"task_type\": \"general\", \"created_at\": \"2021-03-20T07:16:07.000000Z\", \"project_id\": 2, \"updated_at\": \"2021-03-20T07:45:09.000000Z\", \"task_details\": \"PAT perform\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"material reciept\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 19, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-21\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 20, \\\"task_code\\\": null, \\\"task_name\\\": \\\"PAT perform\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-20T07:16:07.000000Z\\\", \\\"project_id\\\": 2, \\\"updated_at\\\": \\\"2021-03-20T07:29:23.000000Z\\\", \\\"task_details\\\": \\\"PAT perform\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": \\\"material reciept\\\"}], \\\"task_site\\\": [{\\\"id\\\": 73, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 74, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 75, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 76, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 23, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"vehicle\\\", \\\"vehicle_rent\\\": \\\"2000\\\"}, {\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"3\\\", \\\"vehicle_note\\\": \\\"vehile note\\\", \\\"vehicle_rent\\\": \\\"2599\\\"}], \\\"task_material\\\": [{\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"matwerial\\\", \\\"material_amount\\\": 500}, {\\\"id\\\": 25, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"somehing\\\", \\\"material_amount\\\": 200}]}\"}], \"task_site\": [{\"id\": 73, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 74, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}, {\"id\": 75, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 76, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"vehicle_id\": \"1\", \"vehicle_note\": \"something\", \"vehicle_rent\": \"2300\"}], \"task_material\": [{\"material_id\": \"1\", \"material_qty\": \"1\", \"material_note\": \"note\", \"material_amount\": \"600\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"hdkjdj\", \"da_amount\": \"200\"}, \"other\": {\"other_notes\": \"NOTE\", \"other_amount\": \"100\"}, \"labour\": {\"labour_notes\": \"NOITE\", \"labour_amount\": \"300\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"note\", \"pa_amount\": \"100\"}], \"task_transport_breakdown\": [{\"ta_note\": \"nite\", \"ta_amount\": \"560\", \"transport_type\": \"Bus\", \"where_to_where\": \"dhk to ctg\"}]}', 'Yes', '{\"task\": [{\"id\": 19, \"user_id\": 19, \"task_for\": \"2021-03-21\", \"is_active\": \"1\", \"site_head\": 20, \"task_code\": null, \"task_name\": \"PAT perform\", \"task_type\": \"general\", \"created_at\": \"2021-03-20T07:16:07.000000Z\", \"project_id\": 2, \"updated_at\": \"2021-03-20T07:45:09.000000Z\", \"task_details\": \"PAT perform\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"material reciept\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 19, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-21\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 20, \\\"task_code\\\": null, \\\"task_name\\\": \\\"PAT perform\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-20T07:16:07.000000Z\\\", \\\"project_id\\\": 2, \\\"updated_at\\\": \\\"2021-03-20T07:29:23.000000Z\\\", \\\"task_details\\\": \\\"PAT perform\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": \\\"material reciept\\\"}], \\\"task_site\\\": [{\\\"id\\\": 73, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 74, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 75, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 76, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 23, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"vehicle\\\", \\\"vehicle_rent\\\": \\\"2000\\\"}, {\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"3\\\", \\\"vehicle_note\\\": \\\"vehile note\\\", \\\"vehicle_rent\\\": \\\"2599\\\"}], \\\"task_material\\\": [{\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"matwerial\\\", \\\"material_amount\\\": 500}, {\\\"id\\\": 25, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"somehing\\\", \\\"material_amount\\\": 200}]}\"}], \"task_site\": [{\"id\": 73, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 74, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}, {\"id\": 75, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 76, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"vehicle_id\": \"1\", \"vehicle_note\": \"something\", \"vehicle_rent\": \"2300\"}], \"task_material\": [{\"material_id\": \"1\", \"material_qty\": \"1\", \"material_note\": \"note\", \"material_amount\": \"600\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"hdkjdj\", \"da_amount\": \"200\"}, \"other\": {\"other_notes\": \"NOTE\", \"other_amount\": \"100\"}, \"labour\": {\"labour_notes\": \"NOITE\", \"labour_amount\": \"300\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"note\", \"pa_amount\": \"100\"}], \"task_transport_breakdown\": [{\"ta_note\": \"nite\", \"ta_amount\": \"560\", \"transport_type\": \"Bus\", \"where_to_where\": \"dhk to ctg\"}]}', 'Yes', '{\"task\": [{\"id\": 19, \"user_id\": 19, \"task_for\": \"2021-03-21\", \"is_active\": \"1\", \"site_head\": 20, \"task_code\": null, \"task_name\": \"PAT perform\", \"task_type\": \"general\", \"created_at\": \"2021-03-20T07:16:07.000000Z\", \"project_id\": 2, \"updated_at\": \"2021-03-20T07:45:09.000000Z\", \"task_details\": \"PAT perform\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": \"material reciept\", \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 19, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-21\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 20, \\\"task_code\\\": null, \\\"task_name\\\": \\\"PAT perform\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-20T07:16:07.000000Z\\\", \\\"project_id\\\": 2, \\\"updated_at\\\": \\\"2021-03-20T07:29:23.000000Z\\\", \\\"task_details\\\": \\\"PAT perform\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": \\\"material reciept\\\"}], \\\"task_site\\\": [{\\\"id\\\": 73, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 74, \\\"site_id\\\": \\\"12\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}, {\\\"id\\\": 75, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"23\\\"}, {\\\"id\\\": 76, \\\"site_id\\\": \\\"14\\\", \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:22:05.000000Z\\\", \\\"resource_id\\\": \\\"24\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 23, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"2\\\", \\\"vehicle_note\\\": \\\"vehicle\\\", \\\"vehicle_rent\\\": \\\"2000\\\"}, {\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:24:33.000000Z\\\", \\\"vehicle_id\\\": \\\"3\\\", \\\"vehicle_note\\\": \\\"vehile note\\\", \\\"vehicle_rent\\\": \\\"2599\\\"}], \\\"task_material\\\": [{\\\"id\\\": 24, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"2\\\", \\\"material_qty\\\": \\\"2\\\", \\\"material_note\\\": \\\"matwerial\\\", \\\"material_amount\\\": 500}, {\\\"id\\\": 25, \\\"task_id\\\": 19, \\\"created_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-20T07:26:00.000000Z\\\", \\\"material_id\\\": \\\"3\\\", \\\"material_qty\\\": \\\"1\\\", \\\"material_note\\\": \\\"somehing\\\", \\\"material_amount\\\": 200}]}\"}], \"task_site\": [{\"id\": 73, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 74, \"site_id\": \"12\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}, {\"id\": 75, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"23\"}, {\"id\": 76, \"site_id\": \"14\", \"task_id\": 19, \"created_at\": \"2021-03-20T07:22:05.000000Z\", \"updated_at\": \"2021-03-20T07:22:05.000000Z\", \"resource_id\": \"24\"}], \"task_vehicle\": [{\"vehicle_id\": \"1\", \"vehicle_note\": \"something\", \"vehicle_rent\": \"2300\"}], \"task_material\": [{\"material_id\": \"1\", \"material_qty\": \"1\", \"material_note\": \"note\", \"material_amount\": \"600\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"hdkjdj\", \"da_amount\": \"200\"}, \"other\": {\"other_notes\": \"NOTE\", \"other_amount\": \"100\"}, \"labour\": {\"labour_notes\": \"NOITE\", \"labour_amount\": \"300\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"note\", \"pa_amount\": \"100\"}], \"task_transport_breakdown\": [{\"ta_note\": \"nite\", \"ta_amount\": \"560\", \"transport_type\": \"Bus\", \"where_to_where\": \"dhk to ctg\"}]}', 'Yes', '2021-03-20 07:47:59', '2021-03-20 08:04:45');
INSERT INTO `tasks_requisition_bill` (`id`, `task_id`, `requisition_prepared_by_manager`, `requisition_submitted_by_manager`, `requisition_edited_by_cfo`, `requisition_approved_by_cfo`, `requisition_edited_by_accountant`, `requisition_approved_by_accountant`, `bill_prepared_by_resource`, `bill_submitted_by_resource`, `bill_edited_by_manager`, `bill_approved_by_manager`, `bill_edited_by_cfo`, `bill_approved_by_cfo`, `bill_edited_by_accountant`, `bill_approved_by_accountant`, `created_at`, `updated_at`) VALUES
(5, 21, '{\"task\": [{\"id\": 21, \"user_id\": 19, \"task_for\": \"2021-03-22\", \"is_active\": \"1\", \"site_head\": 24, \"task_code\": null, \"task_name\": \"Delivery\", \"task_type\": \"general\", \"created_at\": \"2021-03-21T13:02:59.000000Z\", \"project_id\": 16, \"updated_at\": \"2021-03-21T13:22:19.000000Z\", \"task_details\": \"Details Test (General)\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null, \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 21, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-22\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 24, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Delivery\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-21T13:02:59.000000Z\\\", \\\"project_id\\\": 16, \\\"updated_at\\\": \\\"2021-03-21T13:07:36.000000Z\\\", \\\"task_details\\\": \\\"Details Test (General)\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 78, \\\"site_id\\\": \\\"418\\\", \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"resource_id\\\": \\\"26\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 28, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"vehicle_id\\\": \\\"1\\\", \\\"vehicle_note\\\": \\\"Test\\\", \\\"vehicle_rent\\\": \\\"500\\\"}], \\\"task_material\\\": [{\\\"id\\\": 27, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"material_id\\\": \\\"1\\\", \\\"material_qty\\\": \\\"200\\\", \\\"material_note\\\": \\\"T\\\", \\\"material_amount\\\": 200}]}\"}], \"task_site\": [{\"id\": 78, \"site_id\": \"418\", \"task_id\": 21, \"created_at\": \"2021-03-21T13:06:03.000000Z\", \"updated_at\": \"2021-03-21T13:06:03.000000Z\", \"resource_id\": \"26\"}], \"task_vehicle\": [{\"id\": 29, \"task_id\": 21, \"created_at\": \"2021-03-21T13:18:58.000000Z\", \"updated_at\": \"2021-03-21T13:18:58.000000Z\", \"vehicle_id\": \"1\", \"vehicle_note\": \"Test\", \"vehicle_rent\": \"700\"}], \"task_material\": [{\"id\": 27, \"task_id\": 21, \"created_at\": \"2021-03-21T13:06:55.000000Z\", \"updated_at\": \"2021-03-21T13:06:55.000000Z\", \"material_id\": \"1\", \"material_qty\": \"200\", \"material_note\": \"T\", \"material_amount\": 200}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"Test\", \"da_amount\": \"200\"}, \"other\": {\"other_notes\": \"Test\", \"other_amount\": \"0\"}, \"labour\": {\"labour_notes\": \"Test\", \"labour_amount\": \"200\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"TAP\", \"pa_amount\": \"20\"}], \"task_transport_breakdown\": [{\"ta_note\": \"Test\", \"ta_amount\": \"30\", \"transport_type\": \"Rickshaw\", \"where_to_where\": \"GULSHAN to Badda\"}]}', 'Yes', '{\"task\": [{\"id\": 21, \"user_id\": 19, \"task_for\": \"2021-03-22\", \"is_active\": \"1\", \"site_head\": 24, \"task_code\": null, \"task_name\": \"Delivery\", \"task_type\": \"general\", \"created_at\": \"2021-03-21T13:02:59.000000Z\", \"project_id\": 16, \"updated_at\": \"2021-03-21T13:22:19.000000Z\", \"task_details\": \"Details Test (General)\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null, \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 21, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-22\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 24, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Delivery\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-21T13:02:59.000000Z\\\", \\\"project_id\\\": 16, \\\"updated_at\\\": \\\"2021-03-21T13:07:36.000000Z\\\", \\\"task_details\\\": \\\"Details Test (General)\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 78, \\\"site_id\\\": \\\"418\\\", \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"resource_id\\\": \\\"26\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 28, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"vehicle_id\\\": \\\"1\\\", \\\"vehicle_note\\\": \\\"Test\\\", \\\"vehicle_rent\\\": \\\"500\\\"}], \\\"task_material\\\": [{\\\"id\\\": 27, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"material_id\\\": \\\"1\\\", \\\"material_qty\\\": \\\"200\\\", \\\"material_note\\\": \\\"T\\\", \\\"material_amount\\\": 200}]}\"}], \"task_site\": [{\"id\": 78, \"site_id\": \"418\", \"task_id\": 21, \"created_at\": \"2021-03-21T13:06:03.000000Z\", \"updated_at\": \"2021-03-21T13:06:03.000000Z\", \"resource_id\": \"26\"}], \"task_vehicle\": [{\"id\": 29, \"task_id\": 21, \"created_at\": \"2021-03-21T13:18:58.000000Z\", \"updated_at\": \"2021-03-21T13:18:58.000000Z\", \"vehicle_id\": \"1\", \"vehicle_note\": \"Test\", \"vehicle_rent\": \"700\"}], \"task_material\": [{\"id\": 27, \"task_id\": 21, \"created_at\": \"2021-03-21T13:06:55.000000Z\", \"updated_at\": \"2021-03-21T13:06:55.000000Z\", \"material_id\": \"1\", \"material_qty\": \"200\", \"material_note\": \"T\", \"material_amount\": 200}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"Test\", \"da_amount\": \"200\"}, \"other\": {\"other_notes\": \"Test\", \"other_amount\": \"0\"}, \"labour\": {\"labour_notes\": \"Test\", \"labour_amount\": \"200\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"TAP\", \"pa_amount\": \"20\"}], \"task_transport_breakdown\": [{\"ta_note\": \"Test\", \"ta_amount\": \"20\", \"transport_type\": \"Rickshaw\", \"where_to_where\": \"GULSHAN to Badda\"}]}', 'Yes', '{\"task\": [{\"id\": 21, \"user_id\": 19, \"task_for\": \"2021-03-22\", \"is_active\": \"1\", \"site_head\": 24, \"task_code\": null, \"task_name\": \"Delivery\", \"task_type\": \"general\", \"created_at\": \"2021-03-21T13:02:59.000000Z\", \"project_id\": 16, \"updated_at\": \"2021-03-21T13:22:19.000000Z\", \"task_details\": \"Details Test (General)\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null, \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 21, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-22\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 24, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Delivery\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-21T13:02:59.000000Z\\\", \\\"project_id\\\": 16, \\\"updated_at\\\": \\\"2021-03-21T13:07:36.000000Z\\\", \\\"task_details\\\": \\\"Details Test (General)\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 78, \\\"site_id\\\": \\\"418\\\", \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"resource_id\\\": \\\"26\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 28, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"vehicle_id\\\": \\\"1\\\", \\\"vehicle_note\\\": \\\"Test\\\", \\\"vehicle_rent\\\": \\\"500\\\"}], \\\"task_material\\\": [{\\\"id\\\": 27, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"material_id\\\": \\\"1\\\", \\\"material_qty\\\": \\\"200\\\", \\\"material_note\\\": \\\"T\\\", \\\"material_amount\\\": 200}]}\"}], \"task_site\": [{\"id\": 78, \"site_id\": \"418\", \"task_id\": 21, \"created_at\": \"2021-03-21T13:06:03.000000Z\", \"updated_at\": \"2021-03-21T13:06:03.000000Z\", \"resource_id\": \"26\"}], \"task_vehicle\": [{\"id\": 29, \"task_id\": 21, \"created_at\": \"2021-03-21T13:18:58.000000Z\", \"updated_at\": \"2021-03-21T13:18:58.000000Z\", \"vehicle_id\": \"1\", \"vehicle_note\": \"Test\", \"vehicle_rent\": \"700\"}], \"task_material\": [{\"id\": 27, \"task_id\": 21, \"created_at\": \"2021-03-21T13:06:55.000000Z\", \"updated_at\": \"2021-03-21T13:06:55.000000Z\", \"material_id\": \"1\", \"material_qty\": \"200\", \"material_note\": \"T\", \"material_amount\": 200}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"Test\", \"da_amount\": \"200\"}, \"other\": {\"other_notes\": \"Test\", \"other_amount\": \"0\"}, \"labour\": {\"labour_notes\": \"Test\", \"labour_amount\": \"100\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"TAP\", \"pa_amount\": \"20\"}], \"task_transport_breakdown\": [{\"ta_note\": \"Test\", \"ta_amount\": \"15\", \"transport_type\": \"Rickshaw\", \"where_to_where\": \"GULSHAN to Badda\"}]}', 'Yes', '{\"task\": [{\"id\": 21, \"user_id\": 19, \"task_for\": \"2021-03-22\", \"is_active\": \"1\", \"site_head\": 24, \"task_code\": null, \"task_name\": \"Delivery\", \"task_type\": \"general\", \"created_at\": \"2021-03-21T13:02:59.000000Z\", \"project_id\": 16, \"updated_at\": \"2021-03-21T13:22:19.000000Z\", \"task_details\": \"Details Test (General)\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null, \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 21, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-22\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 24, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Delivery\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-21T13:02:59.000000Z\\\", \\\"project_id\\\": 16, \\\"updated_at\\\": \\\"2021-03-21T13:07:36.000000Z\\\", \\\"task_details\\\": \\\"Details Test (General)\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 78, \\\"site_id\\\": \\\"418\\\", \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"resource_id\\\": \\\"26\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 28, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"vehicle_id\\\": \\\"1\\\", \\\"vehicle_note\\\": \\\"Test\\\", \\\"vehicle_rent\\\": \\\"500\\\"}], \\\"task_material\\\": [{\\\"id\\\": 27, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"material_id\\\": \\\"1\\\", \\\"material_qty\\\": \\\"200\\\", \\\"material_note\\\": \\\"T\\\", \\\"material_amount\\\": 200}]}\"}], \"task_site\": [{\"id\": 78, \"site_id\": \"418\", \"task_id\": 21, \"created_at\": \"2021-03-21T13:06:03.000000Z\", \"updated_at\": \"2021-03-21T13:06:03.000000Z\", \"resource_id\": \"26\"}], \"task_vehicle\": [{\"vehicle_id\": \"1\", \"vehicle_note\": \"T\", \"vehicle_rent\": \"800\"}], \"task_material\": [{\"material_id\": \"1\", \"material_qty\": \"200\", \"material_note\": \"T\", \"material_amount\": \"400\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"T\", \"da_amount\": \"200\"}, \"other\": {\"other_notes\": \"T\", \"other_amount\": \"0\"}, \"labour\": {\"labour_notes\": \"T\", \"labour_amount\": \"200\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"TAP\", \"pa_amount\": \"30\"}], \"task_transport_breakdown\": [{\"ta_note\": \"T\", \"ta_amount\": \"50\", \"transport_type\": \"Rickshaw\", \"where_to_where\": \"G to B\"}]}', 'Yes', '{\"task\": [{\"id\": 21, \"user_id\": 19, \"task_for\": \"2021-03-22\", \"is_active\": \"1\", \"site_head\": 24, \"task_code\": null, \"task_name\": \"Delivery\", \"task_type\": \"general\", \"created_at\": \"2021-03-21T13:02:59.000000Z\", \"project_id\": 16, \"updated_at\": \"2021-03-21T13:22:19.000000Z\", \"task_details\": \"Details Test (General)\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null, \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 21, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-22\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 24, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Delivery\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-21T13:02:59.000000Z\\\", \\\"project_id\\\": 16, \\\"updated_at\\\": \\\"2021-03-21T13:07:36.000000Z\\\", \\\"task_details\\\": \\\"Details Test (General)\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 78, \\\"site_id\\\": \\\"418\\\", \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"resource_id\\\": \\\"26\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 28, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"vehicle_id\\\": \\\"1\\\", \\\"vehicle_note\\\": \\\"Test\\\", \\\"vehicle_rent\\\": \\\"500\\\"}], \\\"task_material\\\": [{\\\"id\\\": 27, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"material_id\\\": \\\"1\\\", \\\"material_qty\\\": \\\"200\\\", \\\"material_note\\\": \\\"T\\\", \\\"material_amount\\\": 200}]}\"}], \"task_site\": [{\"id\": 78, \"site_id\": \"418\", \"task_id\": 21, \"created_at\": \"2021-03-21T13:06:03.000000Z\", \"updated_at\": \"2021-03-21T13:06:03.000000Z\", \"resource_id\": \"26\"}], \"task_vehicle\": [{\"vehicle_id\": \"1\", \"vehicle_note\": \"T\", \"vehicle_rent\": \"600\"}], \"task_material\": [{\"material_id\": \"1\", \"material_qty\": \"200\", \"material_note\": \"T\", \"material_amount\": \"400\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"T\", \"da_amount\": \"200\"}, \"other\": {\"other_notes\": \"T\", \"other_amount\": \"0\"}, \"labour\": {\"labour_notes\": \"T\", \"labour_amount\": \"150\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"TAP\", \"pa_amount\": \"15\"}], \"task_transport_breakdown\": [{\"ta_note\": \"T\", \"ta_amount\": \"20\", \"transport_type\": \"Rickshaw\", \"where_to_where\": \"G to B\"}]}', 'Yes', '{\"task\": [{\"id\": 21, \"user_id\": 19, \"task_for\": \"2021-03-22\", \"is_active\": \"1\", \"site_head\": 24, \"task_code\": null, \"task_name\": \"Delivery\", \"task_type\": \"general\", \"created_at\": \"2021-03-21T13:02:59.000000Z\", \"project_id\": 16, \"updated_at\": \"2021-03-21T13:22:19.000000Z\", \"task_details\": \"Details Test (General)\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null, \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 21, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-22\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 24, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Delivery\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-21T13:02:59.000000Z\\\", \\\"project_id\\\": 16, \\\"updated_at\\\": \\\"2021-03-21T13:07:36.000000Z\\\", \\\"task_details\\\": \\\"Details Test (General)\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 78, \\\"site_id\\\": \\\"418\\\", \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"resource_id\\\": \\\"26\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 28, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"vehicle_id\\\": \\\"1\\\", \\\"vehicle_note\\\": \\\"Test\\\", \\\"vehicle_rent\\\": \\\"500\\\"}], \\\"task_material\\\": [{\\\"id\\\": 27, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"material_id\\\": \\\"1\\\", \\\"material_qty\\\": \\\"200\\\", \\\"material_note\\\": \\\"T\\\", \\\"material_amount\\\": 200}]}\"}], \"task_site\": [{\"id\": 78, \"site_id\": \"418\", \"task_id\": 21, \"created_at\": \"2021-03-21T13:06:03.000000Z\", \"updated_at\": \"2021-03-21T13:06:03.000000Z\", \"resource_id\": \"26\"}], \"task_vehicle\": [{\"vehicle_id\": \"1\", \"vehicle_note\": \"T\", \"vehicle_rent\": \"600\"}], \"task_material\": [{\"material_id\": \"1\", \"material_qty\": \"200\", \"material_note\": \"T\", \"material_amount\": \"400\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"T\", \"da_amount\": \"200\"}, \"other\": {\"other_notes\": \"T\", \"other_amount\": \"0\"}, \"labour\": {\"labour_notes\": \"T\", \"labour_amount\": \"150\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"TAP\", \"pa_amount\": \"15\"}], \"task_transport_breakdown\": [{\"ta_note\": \"T\", \"ta_amount\": \"20\", \"transport_type\": \"Rickshaw\", \"where_to_where\": \"G to B\"}]}', 'Yes', '{\"task\": [{\"id\": 21, \"user_id\": 19, \"task_for\": \"2021-03-22\", \"is_active\": \"1\", \"site_head\": 24, \"task_code\": null, \"task_name\": \"Delivery\", \"task_type\": \"general\", \"created_at\": \"2021-03-21T13:02:59.000000Z\", \"project_id\": 16, \"updated_at\": \"2021-03-21T13:22:19.000000Z\", \"task_details\": \"Details Test (General)\", \"override_status\": \"Overriden\", \"task_assigned_to_head\": \"Yes\", \"anonymous_proof_details\": null, \"manager_override_chunck\": \"{\\\"task\\\": [{\\\"id\\\": 21, \\\"user_id\\\": 19, \\\"task_for\\\": \\\"2021-03-22\\\", \\\"is_active\\\": \\\"1\\\", \\\"site_head\\\": 24, \\\"task_code\\\": null, \\\"task_name\\\": \\\"Delivery\\\", \\\"task_type\\\": \\\"general\\\", \\\"created_at\\\": \\\"2021-03-21T13:02:59.000000Z\\\", \\\"project_id\\\": 16, \\\"updated_at\\\": \\\"2021-03-21T13:07:36.000000Z\\\", \\\"task_details\\\": \\\"Details Test (General)\\\", \\\"override_status\\\": null, \\\"task_assigned_to_head\\\": \\\"Yes\\\", \\\"anonymous_proof_details\\\": null}], \\\"task_site\\\": [{\\\"id\\\": 78, \\\"site_id\\\": \\\"418\\\", \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:03.000000Z\\\", \\\"resource_id\\\": \\\"26\\\"}], \\\"task_vehicle\\\": [{\\\"id\\\": 28, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:20.000000Z\\\", \\\"vehicle_id\\\": \\\"1\\\", \\\"vehicle_note\\\": \\\"Test\\\", \\\"vehicle_rent\\\": \\\"500\\\"}], \\\"task_material\\\": [{\\\"id\\\": 27, \\\"task_id\\\": 21, \\\"created_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"updated_at\\\": \\\"2021-03-21T13:06:55.000000Z\\\", \\\"material_id\\\": \\\"1\\\", \\\"material_qty\\\": \\\"200\\\", \\\"material_note\\\": \\\"T\\\", \\\"material_amount\\\": 200}]}\"}], \"task_site\": [{\"id\": 78, \"site_id\": \"418\", \"task_id\": 21, \"created_at\": \"2021-03-21T13:06:03.000000Z\", \"updated_at\": \"2021-03-21T13:06:03.000000Z\", \"resource_id\": \"26\"}], \"task_vehicle\": [{\"vehicle_id\": \"1\", \"vehicle_note\": \"T\", \"vehicle_rent\": \"600\"}], \"task_material\": [{\"material_id\": \"1\", \"material_qty\": \"200\", \"material_note\": \"T\", \"material_amount\": \"400\"}], \"task_regular_amount\": {\"da\": {\"da_notes\": \"T\", \"da_amount\": \"200\"}, \"other\": {\"other_notes\": \"T\", \"other_amount\": \"0\"}, \"labour\": {\"labour_notes\": \"T\", \"labour_amount\": \"150\"}}, \"task_purchase_breakdown\": [{\"pa_note\": \"TAP\", \"pa_amount\": \"15\"}], \"task_transport_breakdown\": [{\"ta_note\": \"T\", \"ta_amount\": \"20\", \"transport_type\": \"Rickshaw\", \"where_to_where\": \"G to B\"}]}', 'Yes', '2021-03-21 13:25:27', '2021-03-21 13:40:59');

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

--
-- Dumping data for table `tasks_site`
--

INSERT INTO `tasks_site` (`id`, `task_id`, `site_id`, `resource_id`, `created_at`, `updated_at`) VALUES
(1, 1, '21', '24', '2021-03-18 10:10:57', '2021-03-18 10:10:57'),
(2, 2, '25', '24', '2021-03-19 07:47:04', '2021-03-19 07:47:04'),
(3, 2, '25', '29', '2021-03-19 07:47:04', '2021-03-19 07:47:04'),
(4, 3, '21', '24', '2021-03-19 08:01:35', '2021-03-19 08:01:35'),
(5, 4, '12', '20', '2021-03-19 10:51:15', '2021-03-19 10:51:15'),
(6, 4, '12', '26', '2021-03-19 10:51:15', '2021-03-19 10:51:15'),
(7, 4, '13', '20', '2021-03-19 10:51:15', '2021-03-19 10:51:15'),
(8, 4, '13', '26', '2021-03-19 10:51:15', '2021-03-19 10:51:15'),
(9, 5, '23', '31', '2021-03-19 10:53:07', '2021-03-19 10:53:07'),
(10, 5, '23', '36', '2021-03-19 10:53:07', '2021-03-19 10:53:07'),
(11, 6, '19', '20', '2021-03-19 10:55:18', '2021-03-19 10:55:18'),
(12, 6, '19', '29', '2021-03-19 10:55:18', '2021-03-19 10:55:18'),
(13, 6, '129', '20', '2021-03-19 10:55:18', '2021-03-19 10:55:18'),
(14, 6, '129', '29', '2021-03-19 10:55:18', '2021-03-19 10:55:18'),
(15, 7, '24', '23', '2021-03-19 10:58:39', '2021-03-19 10:58:39'),
(16, 7, '24', '26', '2021-03-19 10:58:39', '2021-03-19 10:58:39'),
(17, 7, '24', '27', '2021-03-19 10:58:39', '2021-03-19 10:58:39'),
(18, 7, '25', '23', '2021-03-19 10:58:39', '2021-03-19 10:58:39'),
(19, 7, '25', '26', '2021-03-19 10:58:39', '2021-03-19 10:58:39'),
(20, 7, '25', '27', '2021-03-19 10:58:39', '2021-03-19 10:58:39'),
(21, 8, '13', '23', '2021-03-19 11:01:55', '2021-03-19 11:01:55'),
(22, 8, '13', '24', '2021-03-19 11:01:55', '2021-03-19 11:01:55'),
(23, 8, '13', '26', '2021-03-19 11:01:55', '2021-03-19 11:01:55'),
(24, 8, '15', '23', '2021-03-19 11:01:55', '2021-03-19 11:01:55'),
(25, 8, '15', '24', '2021-03-19 11:01:55', '2021-03-19 11:01:55'),
(26, 8, '15', '26', '2021-03-19 11:01:55', '2021-03-19 11:01:55'),
(27, 9, '204', '23', '2021-03-19 11:09:07', '2021-03-19 11:09:07'),
(28, 9, '204', '24', '2021-03-19 11:09:07', '2021-03-19 11:09:07'),
(29, 9, '204', '25', '2021-03-19 11:09:07', '2021-03-19 11:09:07'),
(30, 9, '204', '26', '2021-03-19 11:09:07', '2021-03-19 11:09:07'),
(31, 9, '324', '23', '2021-03-19 11:09:08', '2021-03-19 11:09:08'),
(32, 9, '324', '24', '2021-03-19 11:09:08', '2021-03-19 11:09:08'),
(33, 9, '324', '25', '2021-03-19 11:09:08', '2021-03-19 11:09:08'),
(34, 9, '324', '26', '2021-03-19 11:09:08', '2021-03-19 11:09:08'),
(35, 9, '325', '23', '2021-03-19 11:09:08', '2021-03-19 11:09:08'),
(36, 9, '325', '24', '2021-03-19 11:09:08', '2021-03-19 11:09:08'),
(37, 9, '325', '25', '2021-03-19 11:09:08', '2021-03-19 11:09:08'),
(38, 9, '325', '26', '2021-03-19 11:09:08', '2021-03-19 11:09:08'),
(39, 10, '114', '29', '2021-03-19 11:11:51', '2021-03-19 11:11:51'),
(40, 11, '85', '24', '2021-03-19 11:14:05', '2021-03-19 11:14:05'),
(41, 11, '85', '26', '2021-03-19 11:14:05', '2021-03-19 11:14:05'),
(42, 11, '89', '24', '2021-03-19 11:14:05', '2021-03-19 11:14:05'),
(43, 11, '89', '26', '2021-03-19 11:14:05', '2021-03-19 11:14:05'),
(44, 12, '275', '23', '2021-03-19 11:30:47', '2021-03-19 11:30:47'),
(45, 12, '275', '24', '2021-03-19 11:30:47', '2021-03-19 11:30:47'),
(46, 12, '276', '23', '2021-03-19 11:30:47', '2021-03-19 11:30:47'),
(47, 12, '276', '24', '2021-03-19 11:30:47', '2021-03-19 11:30:47'),
(48, 13, '204', '20', '2021-03-19 11:35:22', '2021-03-19 11:35:22'),
(49, 13, '204', '25', '2021-03-19 11:35:22', '2021-03-19 11:35:22'),
(50, 13, '204', '27', '2021-03-19 11:35:22', '2021-03-19 11:35:22'),
(51, 13, '324', '20', '2021-03-19 11:35:22', '2021-03-19 11:35:22'),
(52, 13, '324', '25', '2021-03-19 11:35:22', '2021-03-19 11:35:22'),
(53, 13, '324', '27', '2021-03-19 11:35:22', '2021-03-19 11:35:22'),
(55, 14, '115', '24', '2021-03-19 11:48:43', '2021-03-19 11:48:43'),
(56, 14, '115', '25', '2021-03-19 11:48:43', '2021-03-19 11:48:43'),
(57, 15, '23', '25', '2021-03-19 11:53:47', '2021-03-19 11:53:47'),
(63, 18, '22', '20', '2021-03-19 16:03:27', '2021-03-19 16:03:27'),
(64, 18, '22', '24', '2021-03-19 16:03:27', '2021-03-19 16:03:27'),
(65, 18, '23', '20', '2021-03-19 16:03:27', '2021-03-19 16:03:27'),
(66, 18, '23', '24', '2021-03-19 16:03:27', '2021-03-19 16:03:27'),
(67, 16, '24', '23', '2021-03-20 06:27:55', '2021-03-20 06:27:55'),
(68, 16, '24', '24', '2021-03-20 06:27:55', '2021-03-20 06:27:55'),
(69, 16, '24', '25', '2021-03-20 06:27:55', '2021-03-20 06:27:55'),
(70, 16, '25', '23', '2021-03-20 06:27:55', '2021-03-20 06:27:55'),
(71, 16, '25', '24', '2021-03-20 06:27:55', '2021-03-20 06:27:55'),
(72, 16, '25', '25', '2021-03-20 06:27:55', '2021-03-20 06:27:55'),
(73, 19, '12', '23', '2021-03-20 07:22:05', '2021-03-20 07:22:05'),
(74, 19, '12', '24', '2021-03-20 07:22:05', '2021-03-20 07:22:05'),
(75, 19, '14', '23', '2021-03-20 07:22:05', '2021-03-20 07:22:05'),
(76, 19, '14', '24', '2021-03-20 07:22:05', '2021-03-20 07:22:05'),
(77, 20, '17', '24', '2021-03-21 11:36:05', '2021-03-21 11:36:05'),
(78, 21, '418', '26', '2021-03-21 13:06:03', '2021-03-21 13:06:03'),
(81, 22, '15', '29', '2021-03-21 17:30:20', '2021-03-21 17:30:20'),
(82, 22, '15', '32', '2021-03-21 17:30:20', '2021-03-21 17:30:20'),
(85, 23, '128', '30', '2021-03-21 17:34:16', '2021-03-21 17:34:16'),
(86, 23, '128', '36', '2021-03-21 17:34:16', '2021-03-21 17:34:16'),
(87, 23, '129', '30', '2021-03-21 17:34:16', '2021-03-21 17:34:16'),
(88, 23, '129', '36', '2021-03-21 17:34:16', '2021-03-21 17:34:16'),
(89, 24, '203', '33', '2021-03-21 17:47:20', '2021-03-21 17:47:20'),
(90, 24, '203', '34', '2021-03-21 17:47:20', '2021-03-21 17:47:20'),
(91, 24, '275', '33', '2021-03-21 17:47:20', '2021-03-21 17:47:20'),
(92, 24, '275', '34', '2021-03-21 17:47:20', '2021-03-21 17:47:20');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tasks_site_datas`
-- (See below for the actual view)
--
CREATE TABLE `tasks_site_datas` (
`all_tasks_sites_datas` varchar(416)
,`id` bigint unsigned
,`resource_id` varchar(191)
,`site_id` varchar(191)
,`task_id` int
);

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

--
-- Dumping data for table `tasks_status`
--

INSERT INTO `tasks_status` (`id`, `code`, `task_id`, `action_performed_by`, `performed_for`, `requisition_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 'task_created', '1', '19', NULL, NULL, 'Task created by manager', '2021-03-18 10:09:48', '2021-03-18 10:09:48'),
(2, 'task_assigned_to_head', '1', '19', NULL, NULL, 'Task assigned to head', '2021-03-18 10:11:27', '2021-03-18 10:11:27'),
(3, 'head_accepted', '1', '23', NULL, NULL, 'Task accepted by site head', '2021-03-18 10:12:07', '2021-03-18 10:12:07'),
(4, 'proof_given', '1', '23', NULL, NULL, 'Task proof given by site head', '2021-03-18 11:34:11', '2021-03-18 11:34:11'),
(5, 'approver_approved', '1', '122', NULL, NULL, 'Task approved by approver', '2021-03-18 12:18:30', '2021-03-18 12:18:30'),
(6, 'requisition_prepared_by_manager', '1', '19', NULL, '1', 'Requisition prepared by manager', '2021-03-18 12:19:44', '2021-03-18 12:19:44'),
(7, 'requisition_prepared_by_manager', '1', '19', NULL, '1', 'Requisition prepared by manager', '2021-03-18 12:21:41', '2021-03-18 12:21:41'),
(8, 'requisition_prepared_by_manager', '1', '19', NULL, '1', 'Requisition prepared by manager', '2021-03-18 12:22:05', '2021-03-18 12:22:05'),
(9, 'requisition_submitted_by_manager', '1', '19', NULL, '1', 'Requisition submitted by manager', '2021-03-18 12:23:24', '2021-03-18 12:23:24'),
(10, 'requisition_edited_by_cfo', '1', '21', NULL, '1', 'Requisition edited by CFO', '2021-03-18 12:28:23', '2021-03-18 12:28:23'),
(11, 'requisition_approved_by_cfo', '1', '21', NULL, '1', 'Requisition approved by CFO', '2021-03-18 12:28:51', '2021-03-18 12:28:51'),
(12, 'requisition_edited_by_accountant', '1', '18', NULL, '1', 'Requisition edited by accountant', '2021-03-18 13:30:12', '2021-03-18 13:30:12'),
(13, 'requisition_edited_by_accountant', '1', '18', NULL, '1', 'Requisition edited by accountant', '2021-03-18 13:30:31', '2021-03-18 13:30:31'),
(14, 'requisition_edited_by_accountant', '1', '18', NULL, '1', 'Requisition edited by accountant', '2021-03-18 13:30:44', '2021-03-18 13:30:44'),
(15, 'requisition_approved_by_accountant', '1', '18', NULL, '1', 'Requisition approved by accountant', '2021-03-18 13:31:00', '2021-03-18 13:31:00'),
(16, 'bill_prepared_by_resource', '1', '23', NULL, '1', 'Bill prepared by resource', '2021-03-18 13:56:14', '2021-03-18 13:56:14'),
(17, 'bill_submitted_by_resource', '1', '23', NULL, '1', 'Bill submitted by resource', '2021-03-18 13:56:18', '2021-03-18 13:56:18'),
(18, 'bill_edited_by_manager', '1', '19', NULL, '1', 'Bill edited by manager', '2021-03-18 14:01:30', '2021-03-18 14:01:30'),
(19, 'bill_approved_by_manager', '1', '19', NULL, '1', 'Bill approved by manager', '2021-03-18 14:03:02', '2021-03-18 14:03:02'),
(20, 'bill_edited_by_cfo', '1', '21', NULL, '1', 'Bill edited by CFO', '2021-03-18 14:15:51', '2021-03-18 14:15:51'),
(21, 'bill_approved_by_cfo', '1', '21', NULL, '1', 'Bill approved by CFO', '2021-03-18 14:16:00', '2021-03-18 14:16:00'),
(22, 'bill_edited_by_accountant', '1', '18', NULL, '1', 'Bill edited by accountant', '2021-03-18 18:31:51', '2021-03-18 18:31:51'),
(23, 'bill_approved_by_accountant', '1', '18', NULL, '1', 'Bill approved by accountant', '2021-03-18 18:31:53', '2021-03-18 18:31:53'),
(24, 'task_created', '2', '19', NULL, NULL, 'Task created by manager', '2021-03-19 07:46:14', '2021-03-19 07:46:14'),
(25, 'task_assigned_to_head', '2', '19', NULL, NULL, 'Task assigned to head', '2021-03-19 07:47:07', '2021-03-19 07:47:07'),
(26, 'head_accepted', '2', '25', NULL, NULL, 'Task accepted by site head', '2021-03-19 07:49:08', '2021-03-19 07:49:08'),
(27, 'proof_given', '2', '25', NULL, NULL, 'Task proof given by site head', '2021-03-19 07:56:50', '2021-03-19 07:56:50'),
(28, 'task_created', '3', '19', NULL, NULL, 'Task created by manager', '2021-03-19 08:01:24', '2021-03-19 08:01:24'),
(29, 'task_assigned_to_head', '3', '19', NULL, NULL, 'Task assigned to head', '2021-03-19 08:01:40', '2021-03-19 08:01:40'),
(30, 'head_accepted', '3', '20', NULL, NULL, 'Task accepted by site head', '2021-03-19 08:01:58', '2021-03-19 08:01:58'),
(31, 'proof_given', '3', '20', NULL, NULL, 'Task proof given by site head', '2021-03-19 08:02:08', '2021-03-19 08:02:08'),
(32, 'task_created', '4', '19', NULL, NULL, 'Task created by manager', '2021-03-19 10:50:38', '2021-03-19 10:50:38'),
(33, 'task_created', '5', '19', NULL, NULL, 'Task created by manager', '2021-03-19 10:52:43', '2021-03-19 10:52:43'),
(34, 'task_created', '6', '19', NULL, NULL, 'Task created by manager', '2021-03-19 10:54:58', '2021-03-19 10:54:58'),
(35, 'task_created', '7', '19', NULL, NULL, 'Task created by manager', '2021-03-19 10:57:46', '2021-03-19 10:57:46'),
(36, 'task_created', '8', '19', NULL, NULL, 'Task created by manager', '2021-03-19 11:01:27', '2021-03-19 11:01:27'),
(37, 'task_created', '9', '55', NULL, NULL, 'Task created by manager', '2021-03-19 11:08:18', '2021-03-19 11:08:18'),
(38, 'task_created', '10', '55', NULL, NULL, 'Task created by manager', '2021-03-19 11:11:38', '2021-03-19 11:11:38'),
(39, 'task_created', '11', '55', NULL, NULL, 'Task created by manager', '2021-03-19 11:13:39', '2021-03-19 11:13:39'),
(40, 'task_created', '12', '55', NULL, NULL, 'Task created by manager', '2021-03-19 11:30:35', '2021-03-19 11:30:35'),
(41, 'task_created', '13', '55', NULL, NULL, 'Task created by manager', '2021-03-19 11:34:50', '2021-03-19 11:34:50'),
(42, 'task_created', '14', '55', NULL, NULL, 'Task created by manager', '2021-03-19 11:48:31', '2021-03-19 11:48:31'),
(43, 'task_assigned_to_head', '14', '55', NULL, NULL, 'Task assigned to head', '2021-03-19 11:49:33', '2021-03-19 11:49:33'),
(44, 'task_created', '15', '19', NULL, NULL, 'Task created by manager', '2021-03-19 11:53:31', '2021-03-19 11:53:31'),
(45, 'task_created', '16', '19', NULL, NULL, 'Task created by manager', '2021-03-19 11:56:16', '2021-03-19 11:56:16'),
(46, 'task_assigned_to_head', '16', '19', NULL, NULL, 'Task assigned to head', '2021-03-19 11:57:13', '2021-03-19 11:57:13'),
(47, 'task_assigned_to_head', '15', '19', NULL, NULL, 'Task assigned to head', '2021-03-19 11:57:19', '2021-03-19 11:57:19'),
(48, 'task_assigned_to_head', '8', '19', NULL, NULL, 'Task assigned to head', '2021-03-19 11:57:23', '2021-03-19 11:57:23'),
(49, 'task_assigned_to_head', '7', '19', NULL, NULL, 'Task assigned to head', '2021-03-19 11:57:27', '2021-03-19 11:57:27'),
(50, 'task_assigned_to_head', '6', '19', NULL, NULL, 'Task assigned to head', '2021-03-19 11:57:32', '2021-03-19 11:57:32'),
(51, 'task_assigned_to_head', '4', '19', NULL, NULL, 'Task assigned to head', '2021-03-19 12:04:08', '2021-03-19 12:04:08'),
(52, 'task_assigned_to_head', '5', '19', NULL, NULL, 'Task assigned to head', '2021-03-19 12:05:19', '2021-03-19 12:05:19'),
(53, 'task_assigned_to_head', '13', '55', NULL, NULL, 'Task assigned to head', '2021-03-19 12:05:46', '2021-03-19 12:05:46'),
(54, 'task_assigned_to_head', '12', '55', NULL, NULL, 'Task assigned to head', '2021-03-19 12:05:51', '2021-03-19 12:05:51'),
(55, 'task_assigned_to_head', '11', '55', NULL, NULL, 'Task assigned to head', '2021-03-19 12:05:59', '2021-03-19 12:05:59'),
(56, 'task_assigned_to_head', '10', '55', NULL, NULL, 'Task assigned to head', '2021-03-19 12:06:04', '2021-03-19 12:06:04'),
(57, 'task_assigned_to_head', '9', '55', NULL, NULL, 'Task assigned to head', '2021-03-19 12:06:20', '2021-03-19 12:06:20'),
(58, 'head_accepted', '14', '33', NULL, NULL, 'Task accepted by site head', '2021-03-19 12:07:15', '2021-03-19 12:07:15'),
(59, 'proof_given', '14', '33', NULL, NULL, 'Task proof given by site head', '2021-03-19 12:07:41', '2021-03-19 12:07:41'),
(60, 'approver_approved', '14', '122', NULL, NULL, 'Task approved by approver', '2021-03-19 12:09:18', '2021-03-19 12:09:18'),
(61, 'approver_approved', '3', '122', NULL, NULL, 'Task approved by approver', '2021-03-19 12:09:24', '2021-03-19 12:09:24'),
(62, 'approver_approved', '2', '122', NULL, NULL, 'Task approved by approver', '2021-03-19 12:09:34', '2021-03-19 12:09:34'),
(63, 'head_accepted', '13', '29', NULL, NULL, 'Task accepted by site head', '2021-03-19 12:10:49', '2021-03-19 12:10:49'),
(64, 'proof_given', '13', '29', NULL, NULL, 'Task proof given by site head', '2021-03-19 12:11:16', '2021-03-19 12:11:16'),
(65, 'head_accepted', '12', '32', NULL, NULL, 'Task accepted by site head', '2021-03-19 12:12:11', '2021-03-19 12:12:11'),
(66, 'proof_given', '12', '32', NULL, NULL, 'Task proof given by site head', '2021-03-19 12:13:08', '2021-03-19 12:13:08'),
(67, 'head_accepted', '11', '31', NULL, NULL, 'Task accepted by site head', '2021-03-19 12:15:37', '2021-03-19 12:15:37'),
(68, 'proof_given', '11', '31', NULL, NULL, 'Task proof given by site head', '2021-03-19 12:15:58', '2021-03-19 12:15:58'),
(69, 'head_accepted', '10', '27', NULL, NULL, 'Task accepted by site head', '2021-03-19 12:16:53', '2021-03-19 12:16:53'),
(70, 'proof_given', '10', '27', NULL, NULL, 'Task proof given by site head', '2021-03-19 12:17:07', '2021-03-19 12:17:07'),
(71, 'head_accepted', '9', '103', NULL, NULL, 'Task accepted by site head', '2021-03-19 12:18:29', '2021-03-19 12:18:29'),
(72, 'proof_given', '9', '103', NULL, NULL, 'Task proof given by site head', '2021-03-19 12:18:47', '2021-03-19 12:18:47'),
(73, 'approver_approved', '13', '122', NULL, NULL, 'Task approved by approver', '2021-03-19 12:19:24', '2021-03-19 12:19:24'),
(74, 'approver_approved', '12', '122', NULL, NULL, 'Task approved by approver', '2021-03-19 12:19:28', '2021-03-19 12:19:28'),
(75, 'approver_approved', '11', '122', NULL, NULL, 'Task approved by approver', '2021-03-19 12:19:36', '2021-03-19 12:19:36'),
(76, 'approver_approved', '10', '122', NULL, NULL, 'Task approved by approver', '2021-03-19 12:19:44', '2021-03-19 12:19:44'),
(77, 'approver_approved', '9', '122', NULL, NULL, 'Task approved by approver', '2021-03-19 12:19:49', '2021-03-19 12:19:49'),
(78, 'head_accepted', '16', '35', NULL, NULL, 'Task accepted by site head', '2021-03-19 12:21:31', '2021-03-19 12:21:31'),
(79, 'head_accepted', '15', '44', NULL, NULL, 'Task accepted by site head', '2021-03-19 12:23:48', '2021-03-19 12:23:48'),
(80, 'proof_given', '15', '44', NULL, NULL, 'Task proof given by site head', '2021-03-19 12:24:46', '2021-03-19 12:24:46'),
(81, 'head_accepted', '8', '39', NULL, NULL, 'Task accepted by site head', '2021-03-19 12:26:49', '2021-03-19 12:26:49'),
(82, 'proof_given', '8', '39', NULL, NULL, 'Task proof given by site head', '2021-03-19 12:27:01', '2021-03-19 12:27:01'),
(83, 'task_created', '17', '19', NULL, NULL, 'Task created by manager', '2021-03-19 14:51:28', '2021-03-19 14:51:28'),
(84, 'task_assigned_to_head', '17', '19', NULL, NULL, 'Task assigned to head', '2021-03-19 14:51:34', '2021-03-19 14:51:34'),
(85, 'head_accepted', '17', '36', NULL, NULL, 'Task accepted by site head', '2021-03-19 14:51:58', '2021-03-19 14:51:58'),
(86, 'proof_given', '17', '36', NULL, NULL, 'Task proof given by site head', '2021-03-19 14:52:14', '2021-03-19 14:52:14'),
(87, 'approver_approved', '17', '122', NULL, NULL, 'Task approved by approver', '2021-03-19 14:52:59', '2021-03-19 14:52:59'),
(88, 'approver_approved', '15', '122', NULL, NULL, 'Task approved by approver', '2021-03-19 14:57:07', '2021-03-19 14:57:07'),
(89, 'task_created', '18', '19', NULL, NULL, 'Task created by manager', '2021-03-19 15:02:11', '2021-03-19 15:02:11'),
(90, 'task_assigned_to_head', '18', '19', NULL, NULL, 'Task assigned to head', '2021-03-19 15:15:38', '2021-03-19 15:15:38'),
(91, 'head_accepted', '18', '121', NULL, NULL, 'Task accepted by site head', '2021-03-19 15:18:26', '2021-03-19 15:18:26'),
(92, 'proof_given', '18', '121', NULL, NULL, 'Task proof given by site head', '2021-03-19 15:18:33', '2021-03-19 15:18:33'),
(94, 'task_override_data', '18', '19', NULL, NULL, 'Task data override by manager', '2021-03-19 16:03:27', '2021-03-19 16:03:27'),
(95, 'approver_approved', '18', '122', NULL, NULL, 'Task approved by approver', '2021-03-19 16:04:51', '2021-03-19 16:04:51'),
(96, 'requisition_prepared_by_manager', '18', '19', NULL, '3', 'Requisition prepared by manager', '2021-03-19 16:06:13', '2021-03-19 16:06:13'),
(97, 'requisition_submitted_by_manager', '18', '19', NULL, '3', 'Requisition submitted by manager', '2021-03-19 16:06:16', '2021-03-19 16:06:16'),
(98, 'requisition_edited_by_cfo', '18', '21', NULL, '3', 'Requisition edited by CFO', '2021-03-19 16:06:36', '2021-03-19 16:06:36'),
(99, 'requisition_approved_by_cfo', '18', '21', NULL, '3', 'Requisition approved by CFO', '2021-03-19 16:06:38', '2021-03-19 16:06:38'),
(100, 'requisition_edited_by_accountant', '18', '18', NULL, '3', 'Requisition edited by accountant', '2021-03-19 16:06:56', '2021-03-19 16:06:56'),
(101, 'requisition_approved_by_accountant', '18', '18', NULL, '3', 'Requisition approved by accountant', '2021-03-19 16:06:58', '2021-03-19 16:06:58'),
(102, 'bill_prepared_by_resource', '18', '121', NULL, '3', 'Bill prepared by resource', '2021-03-19 23:25:42', '2021-03-19 23:25:42'),
(103, 'bill_submitted_by_resource', '18', '121', NULL, '3', 'Bill submitted by resource', '2021-03-19 23:25:44', '2021-03-19 23:25:44'),
(104, 'bill_edited_by_manager', '18', '19', NULL, '3', 'Bill edited by manager', '2021-03-19 23:26:39', '2021-03-19 23:26:39'),
(105, 'bill_approved_by_manager', '18', '19', NULL, '3', 'Bill approved by manager', '2021-03-19 23:26:40', '2021-03-19 23:26:40'),
(106, 'bill_edited_by_cfo', '18', '21', NULL, '3', 'Bill edited by CFO', '2021-03-19 23:28:28', '2021-03-19 23:28:28'),
(107, 'bill_approved_by_cfo', '18', '21', NULL, '3', 'Bill approved by CFO', '2021-03-19 23:28:29', '2021-03-19 23:28:29'),
(108, 'bill_edited_by_accountant', '18', '18', NULL, '3', 'Bill edited by accountant', '2021-03-19 23:29:48', '2021-03-19 23:29:48'),
(109, 'bill_approved_by_accountant', '18', '18', NULL, '3', 'Bill approved by accountant', '2021-03-19 23:29:50', '2021-03-19 23:29:50'),
(110, 'proof_given', '16', '35', NULL, NULL, 'Task proof given by site head', '2021-03-20 04:18:19', '2021-03-20 04:18:19'),
(111, 'head_accepted', '7', '41', NULL, NULL, 'Task accepted by site head', '2021-03-20 04:19:39', '2021-03-20 04:19:39'),
(112, 'proof_given', '7', '41', NULL, NULL, 'Task proof given by site head', '2021-03-20 04:22:20', '2021-03-20 04:22:20'),
(113, 'head_accepted', '6', '23', NULL, NULL, 'Task accepted by site head', '2021-03-20 04:23:10', '2021-03-20 04:23:10'),
(114, 'proof_given', '6', '23', NULL, NULL, 'Task proof given by site head', '2021-03-20 04:23:33', '2021-03-20 04:23:33'),
(115, 'head_accepted', '5', '34', NULL, NULL, 'Task accepted by site head', '2021-03-20 04:24:27', '2021-03-20 04:24:27'),
(116, 'proof_given', '5', '34', NULL, NULL, 'Task proof given by site head', '2021-03-20 04:24:51', '2021-03-20 04:24:51'),
(117, 'head_accepted', '4', '24', NULL, NULL, 'Task accepted by site head', '2021-03-20 04:25:35', '2021-03-20 04:25:35'),
(118, 'proof_given', '4', '24', NULL, NULL, 'Task proof given by site head', '2021-03-20 04:25:52', '2021-03-20 04:25:52'),
(120, 'approver_approved', '6', '122', NULL, NULL, 'Task approved by approver', '2021-03-20 04:26:34', '2021-03-20 04:26:34'),
(121, 'approver_approved', '7', '122', NULL, NULL, 'Task approved by approver', '2021-03-20 04:26:56', '2021-03-20 04:26:56'),
(122, 'approver_declined', '8', '122', NULL, NULL, 'Declined by approver', '2021-03-20 04:27:05', '2021-03-20 04:27:05'),
(123, 'approver_approved', '5', '122', NULL, NULL, 'Task approved by approver', '2021-03-20 04:30:15', '2021-03-20 04:30:15'),
(124, 'approver_approved', '4', '122', NULL, NULL, 'Task approved by approver', '2021-03-20 04:30:23', '2021-03-20 04:30:23'),
(125, 'task_override_data', '16', '19', NULL, NULL, 'Task data override by manager', '2021-03-20 06:27:40', '2021-03-20 06:27:40'),
(126, 'task_created', '19', '19', NULL, NULL, 'Task created by manager', '2021-03-20 07:16:07', '2021-03-20 07:16:07'),
(127, 'task_assigned_to_head', '19', '19', NULL, NULL, 'Task assigned to head', '2021-03-20 07:29:23', '2021-03-20 07:29:23'),
(128, 'head_accepted', '19', '20', NULL, NULL, 'Task accepted by site head', '2021-03-20 07:32:21', '2021-03-20 07:32:21'),
(129, 'proof_given', '19', '20', NULL, NULL, 'Task proof given by site head', '2021-03-20 07:35:58', '2021-03-20 07:35:58'),
(131, 'task_override_data', '19', '19', NULL, NULL, 'Task data override by manager', '2021-03-20 07:41:56', '2021-03-20 07:41:56'),
(132, 'approver_approved', '19', '122', NULL, NULL, 'Task approved by approver', '2021-03-20 07:45:09', '2021-03-20 07:45:09'),
(133, 'requisition_prepared_by_manager', '19', '19', NULL, '4', 'Requisition prepared by manager', '2021-03-20 07:47:59', '2021-03-20 07:47:59'),
(134, 'requisition_submitted_by_manager', '19', '19', NULL, '4', 'Requisition submitted by manager', '2021-03-20 07:48:57', '2021-03-20 07:48:57'),
(135, 'requisition_submitted_by_manager', '19', '19', NULL, '4', 'Requisition submitted by manager', '2021-03-20 07:49:09', '2021-03-20 07:49:09'),
(136, 'requisition_edited_by_cfo', '19', '21', NULL, '4', 'Requisition edited by CFO', '2021-03-20 07:49:41', '2021-03-20 07:49:41'),
(137, 'requisition_approved_by_cfo', '19', '21', NULL, '4', 'Requisition approved by CFO', '2021-03-20 07:49:49', '2021-03-20 07:49:49'),
(138, 'requisition_edited_by_accountant', '19', '18', NULL, '4', 'Requisition edited by accountant', '2021-03-20 07:52:39', '2021-03-20 07:52:39'),
(139, 'requisition_approved_by_accountant', '19', '18', NULL, '4', 'Requisition approved by accountant', '2021-03-20 07:52:47', '2021-03-20 07:52:47'),
(140, 'bill_prepared_by_resource', '19', '20', NULL, '4', 'Bill prepared by resource', '2021-03-20 07:55:50', '2021-03-20 07:55:50'),
(141, 'bill_submitted_by_resource', '19', '20', NULL, '4', 'Bill submitted by resource', '2021-03-20 07:55:56', '2021-03-20 07:55:56'),
(142, 'bill_edited_by_manager', '19', '19', NULL, '4', 'Bill edited by manager', '2021-03-20 07:58:36', '2021-03-20 07:58:36'),
(143, 'bill_approved_by_manager', '19', '19', NULL, '4', 'Bill approved by manager', '2021-03-20 07:59:50', '2021-03-20 07:59:50'),
(144, 'bill_edited_by_cfo', '19', '21', NULL, '4', 'Bill edited by CFO', '2021-03-20 08:00:47', '2021-03-20 08:00:47'),
(145, 'bill_approved_by_cfo', '19', '21', NULL, '4', 'Bill approved by CFO', '2021-03-20 08:00:52', '2021-03-20 08:00:52'),
(146, 'bill_edited_by_accountant', '19', '18', NULL, '4', 'Bill edited by accountant', '2021-03-20 08:02:38', '2021-03-20 08:02:38'),
(147, 'bill_approved_by_accountant', '19', '18', NULL, '4', 'Bill approved by accountant', '2021-03-20 08:04:45', '2021-03-20 08:04:45'),
(148, 'task_created', '20', '19', NULL, NULL, 'Task created by manager', '2021-03-21 11:32:19', '2021-03-21 11:32:19'),
(149, 'head_accepted', '20', '26', NULL, NULL, 'Task accepted by site head', '2021-03-21 11:37:57', '2021-03-21 11:37:57'),
(150, 'task_created', '21', '19', NULL, NULL, 'Task created by manager', '2021-03-21 13:02:59', '2021-03-21 13:02:59'),
(151, 'task_assigned_to_head', '21', '19', NULL, NULL, 'Task assigned to head', '2021-03-21 13:07:36', '2021-03-21 13:07:36'),
(152, 'head_accepted', '21', '24', NULL, NULL, 'Task accepted by site head', '2021-03-21 13:09:33', '2021-03-21 13:09:33'),
(153, 'proof_given', '21', '24', NULL, NULL, 'Task proof given by site head', '2021-03-21 13:12:10', '2021-03-21 13:12:10'),
(155, 'task_override_data', '21', '19', NULL, NULL, 'Task data override by manager', '2021-03-21 13:18:58', '2021-03-21 13:18:58'),
(156, 'approver_approved', '21', '122', NULL, NULL, 'Task approved by approver', '2021-03-21 13:22:19', '2021-03-21 13:22:19'),
(157, 'requisition_prepared_by_manager', '21', '19', NULL, '5', 'Requisition prepared by manager', '2021-03-21 13:25:27', '2021-03-21 13:25:27'),
(158, 'requisition_submitted_by_manager', '21', '19', NULL, '5', 'Requisition submitted by manager', '2021-03-21 13:25:36', '2021-03-21 13:25:36'),
(159, 'requisition_edited_by_cfo', '21', '21', NULL, '5', 'Requisition edited by CFO', '2021-03-21 13:26:27', '2021-03-21 13:26:27'),
(160, 'requisition_edited_by_cfo', '21', '21', NULL, '5', 'Requisition edited by CFO', '2021-03-21 13:29:18', '2021-03-21 13:29:18'),
(161, 'requisition_approved_by_cfo', '21', '21', NULL, '5', 'Requisition approved by CFO', '2021-03-21 13:29:31', '2021-03-21 13:29:31'),
(162, 'requisition_edited_by_accountant', '21', '18', NULL, '5', 'Requisition edited by accountant', '2021-03-21 13:30:16', '2021-03-21 13:30:16'),
(163, 'requisition_approved_by_accountant', '21', '18', NULL, '5', 'Requisition approved by accountant', '2021-03-21 13:30:25', '2021-03-21 13:30:25'),
(164, 'bill_prepared_by_resource', '21', '24', NULL, '5', 'Bill prepared by resource', '2021-03-21 13:32:30', '2021-03-21 13:32:30'),
(165, 'bill_submitted_by_resource', '21', '24', NULL, '5', 'Bill submitted by resource', '2021-03-21 13:32:34', '2021-03-21 13:32:34'),
(166, 'bill_edited_by_manager', '21', '19', NULL, '5', 'Bill edited by manager', '2021-03-21 13:36:58', '2021-03-21 13:36:58'),
(167, 'bill_approved_by_manager', '21', '19', NULL, '5', 'Bill approved by manager', '2021-03-21 13:37:33', '2021-03-21 13:37:33'),
(168, 'bill_edited_by_cfo', '21', '21', NULL, '5', 'Bill edited by CFO', '2021-03-21 13:38:34', '2021-03-21 13:38:34'),
(169, 'bill_approved_by_cfo', '21', '21', NULL, '5', 'Bill approved by CFO', '2021-03-21 13:38:36', '2021-03-21 13:38:36'),
(170, 'bill_edited_by_accountant', '21', '18', NULL, '5', 'Bill edited by accountant', '2021-03-21 13:40:51', '2021-03-21 13:40:51'),
(171, 'bill_approved_by_accountant', '21', '18', NULL, '5', 'Bill approved by accountant', '2021-03-21 13:40:59', '2021-03-21 13:40:59'),
(172, 'task_created', '22', '19', NULL, NULL, 'Task created by manager', '2021-03-21 15:41:43', '2021-03-21 15:41:43'),
(173, 'task_created', '23', '19', NULL, NULL, 'Task created by manager', '2021-03-21 15:43:47', '2021-03-21 15:43:47'),
(174, 'task_created', '24', '55', NULL, NULL, 'Task created by manager', '2021-03-21 17:46:44', '2021-03-21 17:46:44');

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

--
-- Dumping data for table `tasks_vehicle`
--

INSERT INTO `tasks_vehicle` (`id`, `task_id`, `vehicle_id`, `vehicle_rent`, `vehicle_note`, `created_at`, `updated_at`) VALUES
(2, 1, '2', '1400', 'edit test', '2021-03-18 12:27:16', '2021-03-18 12:27:16'),
(4, 5, '3', '2000', 'vehicle note', '2021-03-19 10:53:40', '2021-03-19 10:53:40'),
(5, 5, '4', '3000', 'vehicle note', '2021-03-19 10:53:40', '2021-03-19 10:53:40'),
(6, 4, '2', '4500', 'vehicle', '2021-03-19 10:54:05', '2021-03-19 10:54:05'),
(7, 6, '2', '2000', 'vehicle note', '2021-03-19 10:55:31', '2021-03-19 10:55:31'),
(8, 7, '2', '5500', 've', '2021-03-19 10:59:22', '2021-03-19 10:59:22'),
(9, 7, '3', '8000', 'vehicle', '2021-03-19 10:59:22', '2021-03-19 10:59:22'),
(10, 8, '2', '3500', 'vehicle nioyte', '2021-03-19 11:02:23', '2021-03-19 11:02:23'),
(11, 9, '1', '2500', 'vehicle note', '2021-03-19 11:09:27', '2021-03-19 11:09:27'),
(12, 10, '2', '90', 'vehicle note', '2021-03-19 11:12:10', '2021-03-19 11:12:10'),
(13, 11, '2', '2400', 'vehicle note', '2021-03-19 11:14:39', '2021-03-19 11:14:39'),
(14, 12, '4', '2000', 'vehicle note', '2021-03-19 11:31:04', '2021-03-19 11:31:04'),
(15, 13, '2', '4500', 'Tata 1 ton truck rent', '2021-03-19 11:35:55', '2021-03-19 11:35:55'),
(16, 14, '2', '1500', 'Emergency Edocto Smartlock', '2021-03-19 11:49:03', '2021-03-19 11:49:03'),
(17, 14, '2', '2500', 'Emergency Edocto Smartlock', '2021-03-19 11:49:03', '2021-03-19 11:49:03'),
(18, 15, '2', '2000', '1 ton truck', '2021-03-19 11:54:06', '2021-03-19 11:54:06'),
(20, 18, '2', '2500', 'dfasdfa', '2021-03-19 16:03:48', '2021-03-19 16:03:48'),
(21, 18, '4', '2800', 'adfasdfasdf', '2021-03-19 16:03:48', '2021-03-19 16:03:48'),
(22, 16, '3', '2900', 'vehicle note', '2021-03-20 06:27:40', '2021-03-20 06:27:40'),
(25, 19, '2', '2500', 'vehicle', '2021-03-20 07:41:56', '2021-03-20 07:41:56'),
(26, 19, '3', '2599', 'vehile note', '2021-03-20 07:41:56', '2021-03-20 07:41:56'),
(27, 20, '1', '1000', 'Test', '2021-03-21 11:36:24', '2021-03-21 11:36:24'),
(29, 21, '1', '700', 'Test', '2021-03-21 13:18:58', '2021-03-21 13:18:58');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tasks_vehicle_datas`
-- (See below for the actual view)
--
CREATE TABLE `tasks_vehicle_datas` (
`id` bigint unsigned
,`task_id` int
,`tasks_vehicle_datas` text
,`vehicle_id` varchar(191)
,`vehicle_name` varchar(191)
,`vehicle_note` varchar(255)
,`vehicle_rent` varchar(191)
,`vehicle_size` varchar(191)
);

-- --------------------------------------------------------

--
-- Table structure for table `task_site_complete`
--

CREATE TABLE `task_site_complete` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `site_id` int DEFAULT NULL,
  `task_for` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_site_complete`
--

INSERT INTO `task_site_complete` (`id`, `user_id`, `task_id`, `site_id`, `task_for`, `status`, `created_at`, `updated_at`) VALUES
(8, 19, 2, 25, '2021-03-20', 'Completed', '2021-03-21 14:51:21', '2021-03-21 14:51:21'),
(9, 19, 4, 12, '2021-03-20', 'Completed', '2021-03-21 14:51:21', '2021-03-21 14:51:21'),
(10, 19, 4, 13, '2021-03-20', 'Completed', '2021-03-21 15:09:28', '2021-03-21 15:09:28'),
(11, 19, 6, 129, '2021-03-20', 'Completed', '2021-03-21 15:16:31', '2021-03-21 15:16:31');

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
  `employee_status` enum('Enroll','Terminated','Long Leave','Left Job','On Hold') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_status_reason` text COLLATE utf8mb4_unicode_ci,
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

INSERT INTO `users` (`id`, `name`, `email`, `employee_no`, `username`, `role`, `birthday`, `gender`, `marital_status`, `father`, `mother`, `address`, `district`, `postcode`, `phone`, `emergency_phone`, `company`, `designation`, `join_date`, `company_address`, `basic_salary`, `avatar`, `signature`, `bank_information`, `mbanking_information`, `alternative_email`, `employee_status`, `employee_status_reason`, `is_active`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Samrat Khan', 'info@tritiyo.com', '10001', 'u001', 1, '1987-12-10', 'Male', 'Married', 'Md Badruzzaman Khan', 'Shahinazzaman', 'Hajipur, Chonkhola, Ghatail, Tangail', 'Dhaka', '1980', '01680139540', '01821660066', 'Tritiyo Limited', '1', '2013-01-01', 'Banasree', '40000', NULL, NULL, NULL, 'bKash: 01821660066,\r\nNagad: 01680139540', 'takeitkhan@gmail.com', NULL, NULL, 0, NULL, '$2y$10$u4iDAoSbBmwJFFXKAzJ3tuzFMV9gS7ZScaTTGOHGc.w75yIuwOasO', NULL, NULL, NULL, '2020-12-15 16:18:26', '2021-03-19 11:09:27'),
(18, 'Zakia Akhter', 'zakia@mtsbd.net', '095', 'u095', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+8801844217303', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enroll', NULL, 0, NULL, '$2y$10$Q8fPKjNB5/eozLbgn8lauecwGduXbtpm37lvhU47xg7fCtrDnZc6G', NULL, NULL, NULL, '2021-01-29 23:35:43', '2021-01-29 23:35:43'),
(19, 'Nazmul Hoque', 'manager@tritiyo.com', '103', 'u103', 3, '1987-10-12', 'Male', 'Married', 'NA', 'NA', 'NA', 'Married', 'NA', '+8801844217301', NULL, 'NA', '19', '2020-01-01', 'NA', '16500', NULL, NULL, NULL, NULL, 'NA@mtsbd.net', 'Enroll', NULL, 0, NULL, '$2y$10$8/fUue7VkW1sLfsFh.KcpOQpLiReJEPdm33SRpaRCKOIH9j6oMq56', NULL, NULL, NULL, '2021-01-29 23:36:33', '2021-01-29 23:54:27'),
(20, 'Abdul Ohab', 'ohab@mtsbd.net', '231', 'u231', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+8801715179905', NULL, NULL, '15', NULL, NULL, NULL, NULL, NULL, 'Abc', 'bKash: 01820363036,\r\nBkash: 01715179905', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$fB67hDVPYTB/uC8L8TjmHejjslsQptPgQFlYh1aS0hwIzNtDUVSsm', NULL, NULL, NULL, '2021-01-29 23:37:50', '2021-02-10 12:15:45'),
(21, 'Anowarul Hoque', 'anowar@mtsbd.net', '002', 'u002', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+8801844217300', NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enroll', NULL, 0, NULL, '$2y$10$J7/Nc/0XlEf03MaHuih/JepHdLXBmsUlppN7nloFJSAhHKNjLOU0e', NULL, NULL, NULL, '2021-01-29 23:38:17', '2021-01-29 23:38:17'),
(22, 'Tahrima Tarin', 'tarin@mtsbd.net', '131', 'u131', 7, '1993-07-19', 'Female', 'Married', 'Monjurul Haque', 'Parvin Akter', 'Molladang, shekhpara, Darusha, Rajshahi.', 'Married', '1212', '+8801844217302', '+8801737002979', 'Mobile Tele Solutions', '6', '2020-08-01', 'Plot: A2, Cha: 2, Girza Road, Uttar Badda, Dhaka.', '15000', NULL, NULL, NULL, NULL, 'tarintaharima@gmail.com', 'Enroll', NULL, 0, NULL, '$2y$10$4BI7GR.ggbhtxm1iELh0Y.iHsE1C9O0Kbls0XWeqWYF2Oobnpem2e', NULL, NULL, NULL, '2021-01-29 23:40:13', '2021-03-13 04:54:10'),
(23, 'Rasedul Hasan', 'rashedul.hasan@mtsbd.net', '446', 'u446', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01773473064', '01785554950', NULL, '15', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash 01773473064\r\nRocket 017734730647\r\nNagad 01773473064', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$obaZaoT6pkP42KgZ6k9Bmeqt/84OC38x7IHbLRgpudoAXpYxjumvK', NULL, NULL, NULL, '2021-02-02 00:25:55', '2021-02-02 00:30:32'),
(24, 'Nazmul Sakib Dipu', 'nazmulsakib.dipu@shopnopari.com', '225', 'u225', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01848179210', '01850428201', NULL, '14', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash 01848179210', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$CUn.e8s7oL/5.onjDlcKfuMpm6kScHlxL3/jVdCXFGVg6XXzTGS2q', NULL, NULL, NULL, '2021-02-02 00:37:46', '2021-02-02 00:40:17'),
(25, 'Ali Hossain', 'ali@mtsbd.net', '94', 'u94', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01844217305', '01747320812', NULL, '18', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash 01733540648', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$9JOUcV1aRHv9IBChqWrpy.WGvoByXBBl9hnhgSqxVw2NhQ9lJTLsK', NULL, NULL, NULL, '2021-02-02 00:44:56', '2021-02-02 00:45:39'),
(26, 'Md. Nuruzzaman', 'nuruzzaman@mtsbd.net', '483', 'u483', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01612646666', '01711122403', NULL, '15', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash 01911131427\r\nRocket 01612646666\r\nNagad 01612646666', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$xO7GyzO4RlP8973QohX92.KIzuEYSMNrITPPMXF6/FiFJCQbrmEAa', NULL, NULL, NULL, '2021-02-02 00:51:11', '2021-03-11 08:07:48'),
(27, 'Abdullah Al-Sad (Hemu)', 'abdullah@mtsbd.net', '387', 'u387', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01777686019', '01521124374', NULL, '15', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash 01777686019\r\nNogod 01777686019\r\nRocket 015211243743', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$Cc5o/RMmeEcutYoIxRRWeOiXBmsamBICGNpvu8TLTYoPhUPtHZjJO', NULL, NULL, NULL, '2021-02-02 00:58:02', '2021-02-02 00:59:01'),
(29, 'Abu Bokor Siddique', 'abu@mtsbd.net', '219', 'u219', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01627493808', '01639578792', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash 01795424750\r\nNagad 01795424750', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$rehsvuYdN8Kme/PnAY/U4uPGbmma610prSVKlYg4cZxH9N19SQmLm', NULL, NULL, NULL, '2021-02-02 01:15:09', '2021-02-02 01:16:00'),
(30, 'Md. Rasedul Islam', 'md.rasedul@mtsbd.net', '323', 'u323', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01747801739', '01781075840', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01747801739', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$FhDhp94KKYPl0DrE33S5TeSIieQr./TWN32lAvkQ63iHcsXEje4xm', NULL, NULL, NULL, '2021-02-02 01:20:16', '2021-02-02 23:33:57'),
(31, 'Mohsin Hossain Khan', 'mohsin@mtsbd.net', '342', 'u342', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01982578242', '01982578842', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01643468957', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$PdDBvPUokoB5iRkGtD20KO44s7j7/QhOYGz1DoYNYnK/FDVKdz4bm', NULL, NULL, NULL, '2021-02-02 01:30:23', '2021-02-02 01:36:40'),
(32, 'Md. Habibur Rahman', 'habibur@mtsbd.net', '349', 'u349', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01746406142', '01705052831', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01746406142\r\nRocket 01305747815\r\nNagad 01305747815', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$LKYjMkch6mXdLUQrBRZBm.o/OydqYs/FiJZ7YmEilA45cdhX8j0rG', NULL, NULL, NULL, '2021-02-02 01:33:49', '2021-02-02 01:35:37'),
(33, 'Md. Kamrul Hossain', 'kamrul@mtsbd.net', '351', 'u351', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01835397044', NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01835397044\r\nBkash  01744191072\r\nNagad 01835397044', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$5daf/MvhlNuOHx5OZ9.OKOiC24AzLEQmw.6hOFf74PQVvOgTyB0m2', NULL, NULL, NULL, '2021-02-02 01:39:21', '2021-02-02 01:40:50'),
(34, 'Amran Hossain', 'amran@mtsbd.net', '160', 'u160', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01925424126', '01962012684', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01925424126\r\nRocket  01925424126', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$xDaLhhMlmc6hUcBSbvLuveeczcq.415el6vprnacGdAcaEnnHsduO', NULL, NULL, NULL, '2021-02-02 01:46:13', '2021-02-03 00:16:09'),
(35, 'Molla Abdullah Raju', 'molla@mtsbd.net', '329', 'u329', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01948118376', '01749308177', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash 01948118376\r\nBkash 01886118376', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$aTiHoO0r.lBs7Z1vOSP9Ce0LHV50c4nXbGZSM1BPuER/dMS9fs8za', NULL, NULL, NULL, '2021-02-02 01:49:13', '2021-02-02 01:50:22'),
(36, 'Mredul Sarker', 'mredul@mtsbd.net', '394', 'u394', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01721572047', '01727431941', NULL, '17', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash 01721572047\r\nBkash 01913970212', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$lBKITKXy7CUxItn55oSZIeh6BQg3hw14vCaoRcBOW43q4Bq0Owo.2', NULL, NULL, NULL, '2021-02-02 01:53:13', '2021-02-02 01:57:15'),
(37, 'Imran Uddin Mukul', 'imran@mtsbd.net', '163', 'u163', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01953618694', '01727892963', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash   01953618694\r\nBkash   01719442117\r\nRocket  01719442117\r\nNagad  01631845667', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$8ywL2mGb0PCecSW/YjlExe90BX2JDmuW76YwA4ef71037xsvzE.H2', NULL, NULL, NULL, '2021-02-02 02:03:48', '2021-02-02 02:04:53'),
(38, 'Md. Nasrul Islam', 'nasrul@mtsbd.net', '348', 'u348', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01308151428', '01762941893', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash 01308151428\r\nRocket  01308151428', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$2OHhsY.8xBJbaz.N2AYBMO.Bvf0N6so1BZ4nO4fJILxUlrnSmPAe6', NULL, NULL, NULL, '2021-02-02 02:08:26', '2021-02-02 02:09:36'),
(39, 'Md. Arman Hossain', 'arman@mtsbd.net', '350', 'u350', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01980040549', '01991319102', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkahs  01980040549', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$wOL3k60d.xZeg4j5mqI9O.BEF1rpoPvcGrhzMSd4Ijy2jbUUbv8du', NULL, NULL, NULL, '2021-02-02 02:23:44', '2021-02-02 23:38:10'),
(40, 'Yeasin Sheikh', 'yeasin@mtsbd.net', '393', 'u393', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01824783470', NULL, NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01315317370\r\nBkash  01824783470', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$CylHimO4pUCIs9wxsiPCKeXd17gjtTbraVgVwH5C.UrOVKbhhpvPO', NULL, NULL, NULL, '2021-02-02 02:29:51', '2021-02-02 23:41:01'),
(41, 'Md. Bahar Uddin', 'bahar.uddin@mtsbd.net', '433', 'u433', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01953692746', '01957141535', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01731293394', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$cGUDyEzmUInkmBDFpsDuXeyrew.BaLnpSYDXjVowNNIqBaKYFKp42', NULL, NULL, NULL, '2021-02-02 02:59:10', '2021-02-02 03:00:30'),
(43, 'Md. Jashim Uddin', 'jashim.uddin@mtsbd.net', '434', 'u434', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01988176068', '01725531354', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01988176068\r\nNagad  01988176068', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$1WyxQ4VjyvCUAnLjiTPd.uTJzjkkWrpcryzcHSo1dcoGphZOCIfoi', NULL, NULL, NULL, '2021-02-02 03:02:59', '2021-02-02 03:04:28'),
(44, 'Md. Ariful Hoq', 'ariful.hoq@mtsbd.net', '437', 'u437', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01625591238', '01777956768', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash   01625591238\r\nRocket  01728907754 8\r\nNagad  01728907754', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$4LFVPJSbz7f5PtizYekuwuc48OAZO2GcQwtVAvYpI6Rb73UKaffj2', NULL, NULL, NULL, '2021-02-02 03:07:06', '2021-02-02 03:08:27'),
(45, 'Md. Moshiur Rahman', 'moshiur.rahman@mtsbd.net', '444', 'u444', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01882193095', '01766006684', NULL, '15', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01882193095', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$PdNq7vA47rWBLVL5yV9Cce6WdV5jGO7g7kPVhdY8i884ZQ/HBk5Re', NULL, NULL, NULL, '2021-02-02 03:11:24', '2021-02-02 03:12:45'),
(46, 'Md. Al-Amin Hossain', 'al.amin@mtsbd.net', '445', 'u445', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01842376897', '01721324168', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01739116661\r\nBkash  01711436294\r\nNagad  01711436294', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$X1VUuekdYwaxxJNi.lIFOOebWRcFY7ex6brToH7m6jMDIaYMaMVBe', NULL, NULL, NULL, '2021-02-02 03:15:23', '2021-02-11 14:21:05'),
(47, 'Md. Tarikul Islam', 'tarikul.islam@mtsbd.net', '448', 'u448', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01772241030', '01725457915', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash   01772241030\r\nRocket  01772241030  9\r\nNagad  01601241030', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$UfFM2ndy3kB06tsKDi9qFu3NOMg1.DzodYTMluQ0daj0Lhq3K1zrS', NULL, NULL, NULL, '2021-02-02 03:19:45', '2021-02-02 03:25:49'),
(48, 'Md. Yousuf Ali Bhuiyan', 'yousuf.ali@mtsbd.net', '455', 'u455', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01729836670', '01729110988', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01729836670\r\nBkash  01915432907\r\nRocket  01729836670', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$sgKeTqziJnkJOL51YTIxIu03kSYEw40s2NL/1qDjSKw2cUuyKZs6i', NULL, NULL, NULL, '2021-02-02 03:31:06', '2021-02-02 03:32:25'),
(49, 'MD. Shohag Hossain', 'shohag.hossain@mtsbd.net', '458', 'u458', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01818709790', '01716030573', NULL, '15', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01721614929 \r\nRocket 01721614929  1', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$rFDDBnu5GItGPzGaB3cKLOvYLYIpQxNjJOBJwvKIUNwt/NK0514AC', NULL, NULL, NULL, '2021-02-02 03:35:09', '2021-02-02 03:36:47'),
(51, 'Md. Nazrul Islam', 'nazrul@mtsbd.net', '106', 'u106', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01727407383', '0150788334', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01772876433', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$qg/GPaPqjrSNsDC5qDa2wugdJyamYUqfSF7b6G.Kp5aL4uxkRuZgy', NULL, NULL, NULL, '2021-02-02 03:39:28', '2021-02-02 03:42:25'),
(53, 'Md. Sobuj Hasan', 'sobuj@mtsbd.net', '465', 'u465', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01406794881', '01921259808', NULL, '15', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash   01406794881\r\nNagad   01406794881', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$lvo.NKcsES35oNB187jwcec5gjrWOP2T3A4FOv0dCe3SjD8KCXX4W', NULL, NULL, NULL, '2021-02-02 03:47:05', '2021-03-10 06:17:48'),
(54, 'Md. Iqbal Hossain', 'iqbal@mtsbd.net', '479', 'u479', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01766335139', '01754272696', NULL, '15', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01766335139', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$68Y7gnOGlQ1olf3Pyvi5tOfNjz2aRZAwtB3eMofYsqdaOolRNy2qe', NULL, NULL, NULL, '2021-02-02 03:53:59', '2021-02-02 03:55:04'),
(55, 'Shahin Reza', 'shahin@mtsbd.net', '400', 'u400', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01844217309', '01913168497', NULL, '23', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01711243565', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$FsX1IYN1aSUGA3zl4j5W..uNeZp/keycphm7VXfp8chwqa3ZQOsDq', NULL, NULL, NULL, '2021-02-02 04:09:19', '2021-02-03 01:23:15'),
(56, 'Rokibullah Sayed', 'rokibullah@mtsbd.net', '404', 'u404', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01844217307', '01818311653', NULL, '19', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01684610175', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$gMjDFtE2hsZLCuhuROgALeS6hs2JCNQwVPim8/86uuGHBBkopXCSK', NULL, NULL, NULL, '2021-02-02 04:11:05', '2021-02-02 04:11:38'),
(57, 'Md. Ashaduzzaman Ali Sarker', 'ashaduzzaman@mtsbd.net', '417', 'u417', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01844217314', '01818311653', NULL, '19', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01934130713', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$wMLyPkGFAXD3.6Y6NunBZeflroEMOMgMZ4bDN4o10HUOQYt17Qw8u', NULL, NULL, NULL, '2021-02-02 04:13:10', '2021-02-02 04:25:32'),
(58, 'Gopi Nath Sarker', 'gopi@mtsbd.net', '344', 'u344', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01844217345', '01719480292', NULL, '24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enroll', NULL, 0, NULL, '$2y$10$j2i//ZZgFOvEmBVZeWZwUeMuScwBhjnzBJSumjtHycKHCntK9jqPO', NULL, NULL, NULL, '2021-02-02 04:14:47', '2021-02-02 04:14:47'),
(60, 'Apurba sarker', 'apurbo@mtsbd.net', '480', 'u480', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01725640179', '01903234808', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01725640179', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$H5lNR7T4yNDTl9GHPX15..9BHBfi22.ROQaScm/HFPTv47GOfo30u', NULL, NULL, NULL, '2021-02-02 04:18:15', '2021-02-02 23:27:50'),
(61, 'Md. Shahin', 'shahin.2@mtsbd.net', '487', 'u487', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01775058928', '01717603029', NULL, '21', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01938682528\r\nNagad  01938682528', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$Kgr0bfZ2zSeZKQ7rjpQtju4hQ0Q98FKuB2IJkuBgbaW3nSyUbEcFK', NULL, NULL, NULL, '2021-02-02 04:21:12', '2021-02-02 04:22:28'),
(63, 'Md. Rakib Kha', 'rakib.3@mtsbd.net', '489', 'u489', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01402276421', NULL, NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01402276421', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$l/6Zg5ATUEsNQBeFHHjx7.0Vj4sQ.oFmR.wvn2Z6sUqUGD/KWp7WW', NULL, NULL, NULL, '2021-02-02 04:32:46', '2021-02-02 04:36:00'),
(64, 'Md. Raju Ahmed', 'raju.2@mtsbd.net', '491', 'u491', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01402555396', '01795424750', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash   01402555396\r\nNagad  01402555396', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$pAtU5zDZtogZqpM/sxhxb.nAL6Tgv4f0y.bAuO7XNRWDmV/oxe9AW', NULL, NULL, NULL, '2021-02-02 04:38:51', '2021-02-02 04:39:31'),
(65, 'Md. Jahurul Islam', 'jahurul@mtsbd.net', '492', 'u492', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01756795611', '01724398176', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash    01753918523\r\nBkash    01756795611\r\nRocket   01753918523  1', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$5UrZbG2KhVxKJdRK4GwrmeHNkeESuwr4XBo0DH6Fi.Z3D4r/UMtNK', NULL, NULL, NULL, '2021-02-02 04:42:12', '2021-02-02 04:43:25'),
(66, 'Md. Kawsar Ahmed', 'kawsar.2@mtsbd.net', '493', 'u493', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01703693182', '01308614962', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash   01703693182\r\nRocket  01703693182  2', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$b6VKLarIGqttTpMXMCcT.OgnbRg/x/COS3iGwvDhuYZqjO9zExOIa', NULL, NULL, NULL, '2021-02-02 04:45:31', '2021-02-02 04:47:42'),
(67, 'Md. Rezaul Korim', 'rezaul@mtsbd.net', '503', 'u503', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01713700299', '01715933295', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01713700299\r\nBkash  01968005032\r\nNagad  01713700299\r\nRocket  01713700299  1', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$irAbU060k2lN6tEqDA5Vh.5jf3xBYHXg2.qF35zUTq6EadeyGTdme', NULL, NULL, NULL, '2021-02-02 04:49:29', '2021-02-16 08:29:50'),
(68, 'Md. Moniruzzaman Sohel', 'moniruzzaman@mtsbd.net', '504', 'u504', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01949687981', '01717878546', NULL, '21', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01647468661\r\nNagad  01647468661', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$OMWRuztjkGQRYFWsdFbHq.u75dXrg9aAJwZhVlc7Fn9sD4rlauQ8a', NULL, NULL, NULL, '2021-02-02 04:53:58', '2021-03-02 04:14:10'),
(69, 'Md. Zinnatul Islam', 'zinnatul@mtsbd.net', '505', 'u505', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01779242232', NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash    01889135235\r\nBkash    01779242232\r\nNagad   01779242232', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$fBHwO/Ib4bcWNIsP5h3N/OOOc6Xlh308SGAjHJ1yUWhYpM8skuGWC', NULL, NULL, NULL, '2021-02-02 04:56:41', '2021-02-02 04:57:33'),
(70, 'Sujon Mia', 'sujon@mtsbd.net', '506', 'u506', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01726826505', '01770058858', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash   01726826505.\r\nBkash   01924362999', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$9hC2MkQQUgPHP35HTg51A.qWMGRrVTTeL/OGKI.xmn37l9IhTHtP2', NULL, NULL, NULL, '2021-02-02 05:02:10', '2021-02-02 05:03:23'),
(71, 'Md. Abdul Hannan', 'hannan@mtsbd.net', '507', 'u507', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01728966122', '01739958318', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01728966122', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$KL5nKip8efeRnhLVoBvQNe9/QJ9FeK0CNjS.dVL.kwwZuFMpxLTdO', NULL, NULL, NULL, '2021-02-02 05:05:02', '2021-02-02 05:05:53'),
(72, 'Md. Saifur Rahman', 'saiful.3@mtsbd.net', '510', 'u510', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01756331979', '01775815770', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enroll', NULL, 0, NULL, '$2y$10$.p9BMqgHM8rBLkHP8h38s.2Ts7MMMu0NZiruP13xNwGvb.EmstRoa', NULL, NULL, NULL, '2021-02-02 05:07:34', '2021-02-02 05:07:34'),
(73, 'Md. Zihadul Islam', 'zihadul@mtsbd.net', '511', 'u511', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01749287114', NULL, NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01749287114', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$2XpkvSHo9AeK.5WUvgK2ceohQ2BFgDsktbKp1w8OhwQaPFpy19LUy', NULL, NULL, NULL, '2021-02-02 05:09:58', '2021-02-02 23:44:48'),
(74, 'Md. Iran Sheikh', 'iran@mtsbd.net', '513', 'u513', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01962719849', '0183174103', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01735040552', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$Lol6JJbVrF9d3B4Hdw0bh.DzuT22yBttmk92Fsgyz/ONGuynPfMry', NULL, NULL, NULL, '2021-02-02 05:13:13', '2021-02-03 00:31:20'),
(75, 'Abdullah Gazi', 'gazi@mtsbd.net', '514', 'u514', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01586155805', '01940027489', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash   01941265627\r\nNagad  01987022635', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$QoIjRXGoOxnXYq8Hjf5P7e3aKM.7VGZhODkDuOp3EY/nb1SjrL7Fq', NULL, NULL, NULL, '2021-02-02 05:16:10', '2021-02-16 12:37:16'),
(76, 'Liton Singha Roy', 'liton@mtsbd.net', '516', 'u516', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01727305462', '01735221934', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash   01721225925\r\nNagad  01721225925', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$fDXbmM.OjX9hPmai8Qvnw.pyqfeodITzmjsbyj5DaSbwvTS1jH5Qm', NULL, NULL, NULL, '2021-02-02 05:18:22', '2021-02-02 05:19:03'),
(77, 'Md. Rashed Sharif', 'rashed@mtsbd.net', '523', 'u523', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01304892284', '01878809589', NULL, '15', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01304892284\r\nBkash  01722920715\r\nNagad  01304892284', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$B7hbAl9aVSQ5HSAK1t3Ezu.JtZ6g7RxnvPodIyG49timl.ZuvGjUq', NULL, NULL, NULL, '2021-02-02 05:20:46', '2021-03-10 03:46:12'),
(78, 'Md. Amzad Hossen', 'amzad@mtsbd.net', '524', 'u524', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01744804220', NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01744804220', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$ltc2T/npOCW3uqPazV73v.Ek3kN0YmdHENtF7IrDb5Q2DFI6CGI9i', NULL, NULL, NULL, '2021-02-02 05:23:24', '2021-02-03 00:38:03'),
(79, 'Md. Ariful Islam', 'ariful.2@mtsbd.net', '525', 'u525', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01700999488', '01792257652', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01700999488', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$Vd1BOkuBUTbcYxZ7badCX.KPVXcE/BkQptxbDSVgXLY5i5Wj32KFu', NULL, NULL, NULL, '2021-02-02 05:25:09', '2021-02-03 00:43:50'),
(81, 'Md. Zahid Hasan', 'zahidul@mtsbd.net', '526', 'u526', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01751271530', '01772259244', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01751271530', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$RboSElohCv8DmcrlMAWWPu4uXPdWjmNptzRNJchYjCnpvSv1KHdcS', NULL, NULL, NULL, '2021-02-02 05:27:47', '2021-02-03 00:22:27'),
(82, 'Md. Khairul Islam', 'khairul@mtsbd.net', '527', 'u527', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01767868038', '01718746440', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01756331979', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$ufd0d7MHtmOtfOoE7x2tku56RSIpT6PYzVUM1x6uM/.4ur9hQTH6u', NULL, NULL, NULL, '2021-02-02 05:29:17', '2021-02-03 06:35:16'),
(83, 'Khokon Sorkar', 'khokon@mtsbd.net', '531', 'u531', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01760998804', '01758096716', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01760998804', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$rhLhMkFlDAe22I4veV4.g.fVwpzLfcVQfXTHKwEbgN468IIn6itF.', NULL, NULL, NULL, '2021-02-02 05:31:17', '2021-02-03 00:23:12'),
(84, 'Md. Ripon Shakh', 'ripon.3@mtsbd.net', '532', 'u532', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01624864131', '01726702527', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01571003545', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$XiZxvrqJcPVnZL6HC8yQhe4Cea80uV6chcJ6U0Zr3cPfHu8AGfQ5u', NULL, NULL, NULL, '2021-02-02 05:32:50', '2021-02-03 00:57:40'),
(85, 'Sreekanta Sharma', 'sreekanta@mtsbd.net', '533', 'u533', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01732353023', '01711713804', NULL, '15', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01732353023', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$89pyTyfZi0uEkQKMvoc3m.Idk3h75wu89FollNT6R4G1U3MOOTiVq', NULL, NULL, NULL, '2021-02-02 05:34:22', '2021-02-03 01:28:18'),
(86, 'Md. Khairul Islam_2', 'khairul.2@mtsbd.net', '534', 'u534', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01793342405', '01754720035', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01877886172', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$sg6PKhUK6SCigGspR4i10.pFIlX6yS6SkraDin8o3MDIeasmQAs.6', NULL, NULL, NULL, '2021-02-02 05:36:17', '2021-02-03 04:39:22'),
(87, 'Md. Alamgir', 'alamgir@mtsbd.net', '540', 'u540', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01920299017', '01930668452', NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enroll', NULL, 0, NULL, '$2y$10$09F1NwFCz3LNIEVNCkRZAO3EXKxlot4DMyynewCGe5FfRoSFvmP.m', NULL, NULL, NULL, '2021-02-02 05:37:57', '2021-02-02 05:37:57'),
(88, 'Md. Kajol Islam', 'kajol@mtsbd.net', '542', 'u542', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01783258221', NULL, NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01862805628', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$9hoTVaA81XSZOH./G4Sc4u304DBHGoWyJFms/yjr6JQlgODmL0Jr.', NULL, NULL, NULL, '2021-02-02 05:38:53', '2021-02-02 05:39:24'),
(89, 'Md. Rubel', 'rubel@mtsbd.net', '544', 'u544', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01948303026', '01927137620', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01948303026\r\nBkash  01721257465\r\nRocket  01948303026  3', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$hh0puOjNvvwiWMa25Nq34OZkFRX.vdzDP2j9UQkSUuw7ELWwoMLgG', NULL, NULL, NULL, '2021-02-02 05:40:31', '2021-02-02 05:42:49'),
(90, 'Md. Shakil Ahmed Shuvo', 'shakil@mtsbd.net', '545', 'u545', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01943286900', '01921643740', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enroll', NULL, 0, NULL, '$2y$10$lVFyW//8O64yquaUdtBPW.qEM0h.8hnXTlwZWvppKY9tdVgDODdC2', NULL, NULL, NULL, '2021-02-02 05:44:05', '2021-02-02 05:44:05'),
(91, 'Md. Uzzal Sheikh', 'uzzal@mtsbd.net', '546', 'u546', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01409142632', '01314694697', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01785519654\r\nNagad 01785519654', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$jZoCa.cmvwvPlLlV2Q3h5.WlL3bK/4oZeMu7sJt390i5kfiFfq.E2', NULL, NULL, NULL, '2021-02-02 05:45:26', '2021-02-10 12:46:43'),
(92, 'MD. Sakib Hasan', 'sakib@mtsbd.net', '547', 'u547', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01994047175', '01728303528', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash   01994047175\r\nRocket  01994047175  3', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$VGwhi6efULb/74AV926dcOrk//Ap7ERwFW0eJXpn6hE1cXGZpZDsu', NULL, NULL, NULL, '2021-02-02 05:47:09', '2021-02-02 05:48:11'),
(93, 'MD. Kawsar Uddin', 'kawsar.3@mtsbd.net', '548', 'u548', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01785628971', '01938455293', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enroll', NULL, 0, NULL, '$2y$10$0iWJ2CMAmzWILI/iK2QfheA.nUSIQh4vR8gbsDN/AsdysMep4rPiG', NULL, NULL, NULL, '2021-02-02 05:49:44', '2021-02-02 05:49:44'),
(94, 'Al Mamun Sarker', 'al.mamun@mtsbd.net', '550', 'u550', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01648250793', '01861639275', NULL, '17', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash   01648250793\r\nNagad  01648250793', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$h0FIYQpkFzc1DkTIkk157..sOT8BiJJeV88.hQymVknvd85FOq2OO', NULL, NULL, NULL, '2021-02-02 05:51:24', '2021-02-02 05:52:04'),
(95, 'MD. Ali Hasan', 'ali.hasan@mtsbd.net', '551', 'u551', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01723884480', '01743316333', NULL, '24', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash   01723884480\r\nNagad  01723884480\r\nRocket  01723884480 8', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$6ZZQGR7hFhhl9brOOCgkHezHcOhCtj4J1H2NIVL8d1sZvTi2AJPKO', NULL, NULL, NULL, '2021-02-02 05:54:42', '2021-02-02 05:56:06'),
(96, 'Sujit Dhali', 'sujit.dhali@mtsbd.net', '552', 'u552', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01721687242', '01717666791', NULL, '17', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01939657869', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$2R3ddUqrMoAh8gGAob83uOJzDgtyUkr3/VNp/tV8.DacpehxK3XMK', NULL, NULL, NULL, '2021-02-02 05:57:58', '2021-02-03 02:52:17'),
(97, 'MD. Obaidullah', 'obaidullah@mtsbd.net', '553', 'u553', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01793754040', '01716348949', NULL, '24', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01793754040', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$RxJuWifGMu4Y1JAHKLCw5.W3b4/g5jfUboeW4nmAkqP9eQtcyZNaq', NULL, NULL, NULL, '2021-02-02 05:59:24', '2021-02-03 03:10:19'),
(98, 'Md. Momin Hossain', 'momin@mtsbd.net', '554', 'u554', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01871275528', '01831010666', NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enroll', NULL, 0, NULL, '$2y$10$3yzMCx0HBUdC7BFn0PrDaO/1vBorlqzH1jXzkAmUH.P/XHEznkAMS', NULL, NULL, NULL, '2021-02-02 06:00:48', '2021-02-02 06:00:48'),
(99, 'Golam Sarwar', 'golam@mtsbd.net', '556', 'u556', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01749487818', '01915863475', NULL, '24', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01749487818', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$dZ24zcKKje/m/INudRm9eO/wFmQGGQStDLsBiDzfDSPGGhxOu0rj.', NULL, NULL, NULL, '2021-02-02 06:01:57', '2021-02-02 06:02:28'),
(100, 'Md. Habibullah Habib', 'habib.2@mtsbd.net', '557', 'u557', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01734038209', '01799304375', NULL, '24', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01734038209', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$Q6QWQt8uQJ3pSBGodypE1ecyRttpO7HhUeYgy2qcdww2tDxUVcybe', NULL, NULL, NULL, '2021-02-02 06:03:47', '2021-02-03 04:34:58'),
(101, 'Md. Sojol Talukder', 'sojol@mtsbd.net', '345', 'u345', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01314845065', '01913888511', NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01873926376', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$bWN9kDZWUvuGhQr0ueNQS.mF0MCuws4Ug5LsqNoLkY9wSURa/yW2q', NULL, NULL, NULL, '2021-02-03 04:53:58', '2021-02-03 05:48:22'),
(102, 'Indrojit Roy', 'indrojit@mtsbd.net', '365', 'u365', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01969239406', '01759224294', NULL, '22', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash   01969239406  \r\nRocket  01752628190 6', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$efEznVDjM5VxSISeUoa2geXf.GbP7JYGHq0.JEXxng0IMRWLqCrj6', NULL, NULL, NULL, '2021-02-04 05:43:49', '2021-02-04 05:44:35'),
(103, 'Zakir Hossain', 'zakir@mtsbd.net', '362', 'u362', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01753471912', '01404609412', NULL, '15', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash   01753471912\r\nRocket 01753471912  2', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$eKV/hj/XW.6XgyRe5hrz.e5XNb9c.SQNkL/eNKNI4w.Ql8lA4/FIy', NULL, NULL, NULL, '2021-02-04 05:46:08', '2021-02-04 05:46:41'),
(104, 'Md. Kabir Hossain', 'kabir@mtsbd.net', '374', 'u374', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01773427011', '01720172005', NULL, '22', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash   01773427011\r\nNagad  01773427011', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$sJF9cxiABIhF1.8XZZIWdOBj0qDk6dgqTAERnXHCzffcQffWmop/.', NULL, NULL, NULL, '2021-02-04 05:48:37', '2021-02-04 05:49:13'),
(106, 'Sharmin Saima', 'saima@mtsbd.net', '555', 'u555', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01928283963', '01712675997', NULL, '18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enroll', NULL, 0, NULL, '$2y$10$1FprflNU5L/QukqIf8WPmeOdjUhMgf8fedrDCeH97OYwpP9epsovm', NULL, NULL, NULL, '2021-02-09 23:07:57', '2021-02-09 23:07:57'),
(107, 'Imran Hossain', 'imran.2@mtsbd.net', '562', 'u562', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01611593059', '01777093611', NULL, '15', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01745593059\r\nNagad  01745593059\r\nRocket 01745593059 0', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$71WQhL0bzgiMlcbRRWyGWOJzng0d4.b6WUkm/eHoQdz0Zd28UtmXG', NULL, NULL, NULL, '2021-02-10 00:10:25', '2021-02-27 04:39:45'),
(108, 'Md. Suruz Mia', 'suruz@mtsbd.net', '357', 'u357', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01844217349', '01752655654', NULL, '10', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01742272083', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$URp86Cs5kV4juL9swSGgEeh2B5vPnGqsMt0GlXhhcbbPzvlsKTUC2', NULL, NULL, NULL, '2021-02-10 00:16:01', '2021-02-10 00:16:29'),
(109, 'Kawsar Hossain', 'Kawsar@mtsbd.net', '197', 'u197', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01863945738', '01782464399', NULL, '10', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01863945738', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$6RSNsJmFr/lKicqi.2dgEuJIVHXNtbd3n1EW3hVoZBkajP12Llkp2', NULL, NULL, NULL, '2021-02-10 00:17:30', '2021-02-10 00:18:07'),
(110, 'Rabbi Hossain', 'rabbi@mtsbd.net', '320', 'u320', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01844217312', NULL, NULL, '16', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01864637064', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$WXjD4QqSNDyNHU.A2SOvYOok9lmZihH8U/dCjFdoYeUtNWQl4rci2', NULL, NULL, NULL, '2021-02-10 12:24:25', '2021-03-03 06:05:32'),
(111, 'A T M Zabidur Rahman', 'zabidur@mtsbd.net', '0000000001', 'u0000000001', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01844217317', NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enroll', NULL, 0, NULL, '$2y$10$8OTDNXmOq/aPHQYBMPJGTu.2zAEoZUTKes6tqcJhxxQnmDyHzLhbm', NULL, NULL, NULL, '2021-02-10 12:48:13', '2021-02-10 12:48:13'),
(112, 'Md. Sajedur Rahman', 'sajedur@mtsbd.net', '423', 'u423', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01729588402', NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01729588402', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$JPDcLpkx7dZi61RuCvK5huDxXj/D0rwTYaZpysLGwNTJ5EoXlX76C', NULL, NULL, NULL, '2021-02-10 14:02:52', '2021-02-17 11:58:11'),
(113, 'Md. Moynul Hasan', 'moynul@mtsbd.net', '235', 'u235', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01892612979', NULL, NULL, '14', NULL, NULL, NULL, NULL, NULL, 'Abc', 'Bkash. 01905698074', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$8gKlQKOtUs2Ds84Z/Y0nBeiKsMxi7vh8jwu8CArSw3neIHcUJbIw.', NULL, NULL, NULL, '2021-02-11 10:43:33', '2021-02-11 10:48:52'),
(114, 'Md. Minhazur Rahman', 'minhazur@mtsbd.net', '366', 'u366', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01628149605', NULL, NULL, '15', NULL, NULL, NULL, NULL, NULL, 'Abc', 'Bkash. 01628149605', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$rHCM0uSgBK3fLYbNWHLyO.1l3l/yIOI6jtnWwuLNwWJTf/Upjnwd2', NULL, NULL, NULL, '2021-02-11 11:23:20', '2021-02-11 11:26:51'),
(115, 'Md. Rajib', 'rajib@mtsbd.net', '500', 'u500', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01729645543', NULL, NULL, '22', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01729645543', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$dAL.RwjCgjdma0uPSXH9MOBZjjFOiAPPXtY6puk9z/VQ1umz3C7WS', NULL, NULL, NULL, '2021-02-16 11:44:05', '2021-02-16 11:44:38'),
(116, 'Md. Faruk Mia', 'faruk.miah@mtsbd.net', '436', 'u436', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01617467580', '01705340443', NULL, '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enroll', NULL, 0, NULL, '$2y$10$Psq2OevlAveOIr//KfLdbO9V5SGPugxfGXle.bi8V2DJgyhslbrn.', NULL, NULL, NULL, '2021-02-17 04:22:26', '2021-02-17 04:22:26'),
(118, 'Md. Syful Islam', 'syful@mtsbd.net', '559', 'u559', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01789465606', '01772490018', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01789465606', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$QTi//LH4mxFME94.Sl1K/ehkMXuIzEybrbvEU.845yyFdtBFKV6tC', NULL, NULL, NULL, '2021-02-17 11:36:52', '2021-02-17 11:37:18'),
(119, 'Md. Raju Sarkar', 'raju.3@mtsbd.net', '563', 'u563', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01740427272', '01904838561', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash  01979385623', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$tKSrc6mjtJcg/Ab/K990tuboFShJf/RJfUp4kSh5pfp2QhDkK76JG', NULL, NULL, NULL, '2021-02-17 12:01:25', '2021-03-13 04:39:06'),
(120, 'Rifat Hossain Shawon', 'rifat@mtsbd.net', '558', 'u558', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01861417827', '01914431337', NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enroll', NULL, 0, NULL, '$2y$10$KT0SdMDDAhtCtJwpCrqJludWh.blZ65MrUITb3o092bxHnbbc/Ywq', NULL, NULL, NULL, '2021-02-17 12:10:51', '2021-02-17 12:10:51'),
(121, 'MD. Rajuan', 'rajuan@mtsbd.net', '566', 'u566', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01621873878', '01635628075', NULL, '27', NULL, NULL, NULL, NULL, NULL, 'ABC', 'Bkash 01621873878', NULL, 'Enroll', NULL, 0, NULL, '$2y$10$k/U.qqdRlKDyvzkyhAynZuQr2frswfAb/jRXvhAZqIcaWCu/dTtO.', NULL, NULL, NULL, '2021-03-11 07:54:09', '2021-03-11 07:54:43'),
(122, 'Mr Approver', 'approver@tritiyo.com', '00001233', 'u00001233', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01983252512', '01821660066', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Enroll', NULL, 0, NULL, '$2y$10$Png06xndBOXWn8WYxS.OGORMD1XHHK4LSxpOrAFQCT5X0JLD85FRa', NULL, NULL, NULL, '2021-03-17 14:05:27', '2021-03-17 22:57:11');

-- --------------------------------------------------------

--
-- Stand-in structure for view `users_datas`
-- (See below for the actual view)
--
CREATE TABLE `users_datas` (
`all_users_datas` longtext
,`email` varchar(255)
,`employee_no` varchar(255)
,`id` bigint unsigned
,`name` varchar(255)
,`phone` varchar(255)
,`username` varchar(255)
);

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
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `name`, `size`, `probably_cost`, `created_at`, `updated_at`) VALUES
(1, 'Rent_Yodha 1.5 Ton Pick Up', '1.5 Ton', 5000, '2021-03-17 10:03:07', '2021-03-18 05:12:15'),
(2, 'Rent_Tata 1 Ton Pickup', '1 Ton', 3000, '2021-03-17 10:06:18', '2021-03-18 05:12:06'),
(3, 'Rent_Tata 2 Ton Truck', '2 Ton', 6500, '2021-03-17 10:07:15', '2021-03-18 05:11:55'),
(4, 'Rent_Foton 1 Ton TM Pickup', '1 Ton', 4000, '2021-03-17 10:10:32', '2021-03-18 05:11:43'),
(5, 'Rent_Dump Truck 16 CBM', '16CBM', 10000, '2021-03-17 10:10:50', '2021-03-18 05:11:30'),
(6, 'DM NA 17-9339', '750 KG', NULL, '2021-03-18 05:20:49', '2021-03-18 05:20:49'),
(7, 'DM NA 20-2514', '750KG', NULL, '2021-03-18 05:25:17', '2021-03-18 05:25:17'),
(8, 'DM NA 20-4166', '750KG', NULL, '2021-03-18 05:25:34', '2021-03-18 05:25:34'),
(9, 'DM NA 20-1877', '750KG', NULL, '2021-03-18 05:25:55', '2021-03-18 05:25:55');

-- --------------------------------------------------------

--
-- Structure for view `projects_datas`
--
DROP TABLE IF EXISTS `projects_datas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `projects_datas`  AS SELECT `projects`.`id` AS `id`, `projects`.`code` AS `code`, `projects`.`type` AS `type`, `projects`.`manager` AS `manager`, concat_ws(',',`projects`.`id`,`projects`.`name`,`projects`.`code`,`projects`.`type`,`projects`.`manager`,`projects`.`customer`,`projects`.`address`,`projects`.`vendor`,`projects`.`supplier`,`projects`.`location`,`projects`.`office`,`projects`.`start`,`projects`.`end`,`projects`.`budget`,`projects`.`summary`,`projects`.`budget_history`) AS `all_projects_datas` FROM `projects` ;

-- --------------------------------------------------------

--
-- Structure for view `requisition_datas`
--
DROP TABLE IF EXISTS `requisition_datas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `requisition_datas`  AS SELECT `tasks_requisition_bill`.`id` AS `id`, `tasks_requisition_bill`.`task_id` AS `task_id`, concat_ws(',',`tasks_requisition_bill`.`id`,`tasks_requisition_bill`.`task_id`,`tasks_requisition_bill`.`requisition_prepared_by_manager`,`tasks_requisition_bill`.`requisition_submitted_by_manager`,`tasks_requisition_bill`.`requisition_edited_by_cfo`,`tasks_requisition_bill`.`requisition_approved_by_cfo`,`tasks_requisition_bill`.`requisition_edited_by_accountant`,`tasks_requisition_bill`.`requisition_approved_by_accountant`,`tasks_requisition_bill`.`bill_prepared_by_resource`,`tasks_requisition_bill`.`bill_submitted_by_resource`,`tasks_requisition_bill`.`bill_edited_by_manager`,`tasks_requisition_bill`.`bill_approved_by_manager`,`tasks_requisition_bill`.`bill_edited_by_cfo`,`tasks_requisition_bill`.`bill_approved_by_cfo`,`tasks_requisition_bill`.`bill_edited_by_accountant`,`tasks_requisition_bill`.`bill_approved_by_accountant`) AS `all_requisition_datas` FROM `tasks_requisition_bill` ;

-- --------------------------------------------------------

--
-- Structure for view `sites_datas`
--
DROP TABLE IF EXISTS `sites_datas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sites_datas`  AS SELECT `sites`.`id` AS `id`, `sites`.`project_id` AS `project_id`, `sites`.`site_code` AS `site_code`, `sites`.`site_head` AS `site_head`, `sites`.`completion_status` AS `completion_status`, concat_ws(',',`sites`.`id`,`sites`.`project_id`,`sites`.`user_id`,`sites`.`location`,`sites`.`site_code`,`sites`.`material`,`sites`.`site_head`,`sites`.`budget`,`sites`.`completion_status`) AS `all_sites_datas` FROM `sites` ;

-- --------------------------------------------------------

--
-- Structure for view `tasks_datas`
--
DROP TABLE IF EXISTS `tasks_datas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tasks_datas`  AS SELECT `tasks`.`id` AS `id`, `tasks`.`user_id` AS `user_id`, `tasks`.`task_name` AS `task_name`, `tasks`.`task_code` AS `task_code`, `tasks`.`task_type` AS `task_type`, `tasks`.`project_id` AS `project_id`, `tasks`.`site_head` AS `site_head`, `tasks`.`task_for` AS `task_for`, concat_ws(',',`tasks`.`id`,`tasks`.`user_id`,`tasks`.`task_name`,`tasks`.`task_code`,`tasks`.`task_type`,`tasks`.`project_id`,`tasks`.`site_head`,`tasks`.`task_details`,`tasks`.`anonymous_proof_details`,`tasks`.`task_assigned_to_head`,`tasks`.`task_for`,`tasks`.`manager_override_chunck`,`tasks`.`override_status`) AS `all_tasks_datas` FROM `tasks` ;

-- --------------------------------------------------------

--
-- Structure for view `tasks_material_datas`
--
DROP TABLE IF EXISTS `tasks_material_datas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tasks_material_datas`  AS SELECT `materialsss`.`id` AS `id`, `materialsss`.`task_id` AS `task_id`, `materialsss`.`material_id` AS `material_id`, `materialsss`.`material_qty` AS `material_qty`, `materialsss`.`material_amount` AS `material_amount`, `materialsss`.`material_note` AS `material_note`, `materialsss`.`material_name` AS `material_name`, `materialsss`.`material_unit` AS `material_unit`, concat_ws(',',`materialsss`.`id`,`materialsss`.`task_id`,`materialsss`.`material_id`,`materialsss`.`material_qty`,`materialsss`.`material_amount`,`materialsss`.`material_note`,`materialsss`.`material_name`,`materialsss`.`material_unit`) AS `tasks_material_datas` FROM (select `tasks_material`.`id` AS `id`,`tasks_material`.`task_id` AS `task_id`,`tasks_material`.`material_id` AS `material_id`,`tasks_material`.`material_qty` AS `material_qty`,`tasks_material`.`material_amount` AS `material_amount`,`tasks_material`.`material_note` AS `material_note`,(select `materials`.`name` from `materials` where (`materials`.`id` = `tasks_material`.`material_id`) limit 0,1) AS `material_name`,(select `materials`.`unit` from `materials` where (`materials`.`id` = `tasks_material`.`material_id`) limit 0,1) AS `material_unit` from `tasks_material`) AS `materialsss` ;

-- --------------------------------------------------------

--
-- Structure for view `tasks_site_datas`
--
DROP TABLE IF EXISTS `tasks_site_datas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tasks_site_datas`  AS SELECT `tasks_site`.`id` AS `id`, `tasks_site`.`task_id` AS `task_id`, `tasks_site`.`site_id` AS `site_id`, `tasks_site`.`resource_id` AS `resource_id`, concat_ws(',',`tasks_site`.`id`,`tasks_site`.`task_id`,`tasks_site`.`site_id`,`tasks_site`.`resource_id`) AS `all_tasks_sites_datas` FROM `tasks_site` ;

-- --------------------------------------------------------

--
-- Structure for view `tasks_vehicle_datas`
--
DROP TABLE IF EXISTS `tasks_vehicle_datas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tasks_vehicle_datas`  AS SELECT `ll`.`id` AS `id`, `ll`.`task_id` AS `task_id`, `ll`.`vehicle_id` AS `vehicle_id`, `ll`.`vehicle_rent` AS `vehicle_rent`, `ll`.`vehicle_note` AS `vehicle_note`, `ll`.`vehicle_name` AS `vehicle_name`, `ll`.`vehicle_size` AS `vehicle_size`, concat_ws(',',`ll`.`id`,`ll`.`task_id`,`ll`.`vehicle_id`,`ll`.`vehicle_rent`,`ll`.`vehicle_note`,`ll`.`vehicle_name`,`ll`.`vehicle_size`) AS `tasks_vehicle_datas` FROM (select `tasks_vehicle`.`id` AS `id`,`tasks_vehicle`.`task_id` AS `task_id`,`tasks_vehicle`.`vehicle_id` AS `vehicle_id`,`tasks_vehicle`.`vehicle_rent` AS `vehicle_rent`,`tasks_vehicle`.`vehicle_note` AS `vehicle_note`,(select `vehicles`.`name` from `vehicles` where (`vehicles`.`id` = `tasks_vehicle`.`vehicle_id`) limit 0,1) AS `vehicle_name`,(select `vehicles`.`size` from `vehicles` where (`vehicles`.`id` = `tasks_vehicle`.`vehicle_id`) limit 0,1) AS `vehicle_size` from `tasks_vehicle`) AS `ll` ;

-- --------------------------------------------------------

--
-- Structure for view `users_datas`
--
DROP TABLE IF EXISTS `users_datas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `users_datas`  AS SELECT `users`.`id` AS `id`, `users`.`name` AS `name`, `users`.`email` AS `email`, `users`.`username` AS `username`, `users`.`phone` AS `phone`, `users`.`employee_no` AS `employee_no`, concat_ws(',',`users`.`id`,`users`.`name`,`users`.`email`,`users`.`employee_no`,`users`.`username`,`users`.`role`,`users`.`birthday`,`users`.`gender`,`users`.`marital_status`,`users`.`father`,`users`.`mother`,`users`.`address`,`users`.`district`,`users`.`postcode`,`users`.`phone`,`users`.`emergency_phone`,`users`.`company`,`users`.`designation`,`users`.`join_date`,`users`.`company_address`,`users`.`basic_salary`,`users`.`avatar`,`users`.`signature`,`users`.`bank_information`,`users`.`mbanking_information`,`users`.`alternative_email`,`users`.`employee_status`,`users`.`is_active`) AS `all_users_datas` FROM `users` ;

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
-- Indexes for table `task_site_complete`
--
ALTER TABLE `task_site_complete`
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `routelists`
--
ALTER TABLE `routelists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tasks_chunck`
--
ALTER TABLE `tasks_chunck`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tasks_material`
--
ALTER TABLE `tasks_material`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tasks_proof`
--
ALTER TABLE `tasks_proof`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tasks_requisition_bill`
--
ALTER TABLE `tasks_requisition_bill`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tasks_site`
--
ALTER TABLE `tasks_site`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `tasks_status`
--
ALTER TABLE `tasks_status`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `tasks_vehicle`
--
ALTER TABLE `tasks_vehicle`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `task_site_complete`
--
ALTER TABLE `task_site_complete`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
