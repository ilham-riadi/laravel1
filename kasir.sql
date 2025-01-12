-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 02, 2025 at 03:39 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Makanan', 'makanan', NULL, 1, '2024-12-16 09:49:15', '2024-12-16 09:49:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_expense` date NOT NULL,
  `amount` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `name`, `note`, `date_expense`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Belanja Sayur', 'Sayuran 1, 2, 3', '2024-12-23', 35000, '2024-12-23 14:42:59', '2024-12-23 14:42:59', NULL),
(2, 'Ruang Coding Store', 'FD', '2024-12-23', 23000, '2024-12-23 14:54:18', '2024-12-23 14:54:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_19_004925_create_categories_table', 1),
(5, '2024_08_19_005246_create_products_table', 1),
(6, '2024_08_19_005908_create_expenses_table', 1),
(7, '2024_08_19_010803_create_payment_methods_table', 1),
(8, '2024_08_19_010944_create_orders_table', 1),
(9, '2024_08_19_011534_create_order_products_table', 1),
(10, '2024_10_26_221226_create_personal_access_tokens_table', 1),
(11, '2024_10_29_223110_create_setting_table', 1),
(12, '2024_06_25_092758_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `total_price` int NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `payment_method_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `birthday`, `total_price`, `note`, `payment_method_id`, `created_at`, `updated_at`) VALUES
(16, 'sds', 'kasir@gmail.com', '6285758492957', '2024-12-29', 15500, NULL, 1, '2024-12-28 20:23:04', '2024-12-28 20:33:31'),
(17, '', NULL, NULL, NULL, 86000, NULL, 1, '2025-01-01 18:13:39', '2025-01-01 18:13:39'),
(18, '', NULL, NULL, NULL, 29500, NULL, 1, '2025-01-01 18:15:15', '2025-01-01 18:15:15'),
(19, '', NULL, NULL, NULL, 12000, NULL, 1, '2025-01-01 18:16:20', '2025-01-01 18:16:20'),
(20, '', NULL, NULL, NULL, 19000, NULL, 1, '2025-01-01 18:19:05', '2025-01-01 18:19:05'),
(21, '', NULL, NULL, NULL, 26000, NULL, 1, '2025-01-01 18:20:25', '2025-01-01 18:20:25'),
(22, 'Rafi Ardani', NULL, NULL, NULL, 72000, NULL, 1, '2025-01-01 18:21:36', '2025-01-01 18:21:36'),
(23, '', NULL, NULL, NULL, 12000, NULL, 1, '2025-01-02 14:19:16', '2025-01-02 14:19:16'),
(24, '', NULL, NULL, NULL, 7000, NULL, 2, '2025-01-02 14:20:11', '2025-01-02 14:20:11'),
(25, '', NULL, NULL, NULL, 12000, NULL, 2, '2025-01-02 14:21:25', '2025-01-02 14:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL,
  `unit_price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(28, 16, 1, 1, 3500, '2024-12-28 20:23:04', '2024-12-28 20:23:04'),
(29, 16, 2, 1, 12000, '2024-12-28 20:23:04', '2024-12-28 20:23:04'),
(30, 17, 2, 1, 12000, '2025-01-01 18:13:39', '2025-01-01 18:13:39'),
(31, 17, 3, 2, 7000, '2025-01-01 18:13:39', '2025-01-01 18:13:39'),
(32, 17, 4, 3, 7000, '2025-01-01 18:13:39', '2025-01-01 18:13:39'),
(33, 17, 5, 1, 5000, '2025-01-01 18:13:39', '2025-01-01 18:13:39'),
(34, 17, 6, 1, 34000, '2025-01-01 18:13:39', '2025-01-01 18:13:39'),
(35, 18, 1, 1, 3500, '2025-01-01 18:15:15', '2025-01-01 18:15:15'),
(36, 18, 2, 1, 12000, '2025-01-01 18:15:15', '2025-01-01 18:15:15'),
(37, 18, 3, 1, 7000, '2025-01-01 18:15:15', '2025-01-01 18:15:15'),
(38, 18, 4, 1, 7000, '2025-01-01 18:15:15', '2025-01-01 18:15:15'),
(39, 19, 2, 1, 12000, '2025-01-01 18:16:20', '2025-01-01 18:16:20'),
(40, 20, 2, 1, 12000, '2025-01-01 18:19:05', '2025-01-01 18:19:05'),
(41, 20, 3, 1, 7000, '2025-01-01 18:19:05', '2025-01-01 18:19:05'),
(42, 21, 2, 1, 12000, '2025-01-01 18:20:25', '2025-01-01 18:20:25'),
(43, 21, 3, 1, 7000, '2025-01-01 18:20:25', '2025-01-01 18:20:25'),
(44, 21, 4, 1, 7000, '2025-01-01 18:20:25', '2025-01-01 18:20:25'),
(45, 22, 2, 1, 12000, '2025-01-01 18:21:36', '2025-01-01 18:21:36'),
(46, 22, 3, 2, 7000, '2025-01-01 18:21:36', '2025-01-01 18:21:36'),
(47, 22, 4, 1, 7000, '2025-01-01 18:21:36', '2025-01-01 18:21:36'),
(48, 22, 5, 1, 5000, '2025-01-01 18:21:36', '2025-01-01 18:21:36'),
(49, 22, 6, 1, 34000, '2025-01-01 18:21:36', '2025-01-01 18:21:36'),
(50, 23, 2, 1, 12000, '2025-01-02 14:19:16', '2025-01-02 14:19:16'),
(51, 24, 3, 1, 7000, '2025-01-02 14:20:11', '2025-01-02 14:20:11'),
(52, 25, 2, 1, 12000, '2025-01-02 14:21:25', '2025-01-02 14:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_cash` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `image`, `is_cash`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tunai', '01JFTEBMGXFSPXQKVKPNTZN718.png', 1, '2024-12-16 09:53:56', '2024-12-23 19:02:02', NULL),
(2, 'QRIS', '01JFTE9YF1Y1E13TC4VX7D93GG.png', 0, '2024-12-23 19:01:07', '2024-12-23 19:01:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_role', 'web', '2024-12-16 17:14:41', '2024-12-16 17:14:41'),
(2, 'view_any_role', 'web', '2024-12-16 17:14:41', '2024-12-16 17:14:41'),
(3, 'create_role', 'web', '2024-12-16 17:14:41', '2024-12-16 17:14:41'),
(4, 'update_role', 'web', '2024-12-16 17:14:41', '2024-12-16 17:14:41'),
(5, 'delete_role', 'web', '2024-12-16 17:14:41', '2024-12-16 17:14:41'),
(6, 'delete_any_role', 'web', '2024-12-16 17:14:41', '2024-12-16 17:14:41'),
(7, 'view_category', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(8, 'view_any_category', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(9, 'create_category', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(10, 'update_category', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(11, 'restore_category', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(12, 'restore_any_category', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(13, 'replicate_category', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(14, 'reorder_category', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(15, 'delete_category', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(16, 'delete_any_category', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(17, 'force_delete_category', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(18, 'force_delete_any_category', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(19, 'view_expense', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(20, 'view_any_expense', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(21, 'create_expense', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(22, 'update_expense', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(23, 'restore_expense', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(24, 'restore_any_expense', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(25, 'replicate_expense', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(26, 'reorder_expense', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(27, 'delete_expense', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(28, 'delete_any_expense', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(29, 'force_delete_expense', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(30, 'force_delete_any_expense', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(31, 'view_order', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(32, 'view_any_order', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(33, 'create_order', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(34, 'update_order', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(35, 'restore_order', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(36, 'restore_any_order', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(37, 'replicate_order', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(38, 'reorder_order', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(39, 'delete_order', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(40, 'delete_any_order', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(41, 'force_delete_order', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(42, 'force_delete_any_order', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(43, 'view_payment::method', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(44, 'view_any_payment::method', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(45, 'create_payment::method', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(46, 'update_payment::method', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(47, 'restore_payment::method', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(48, 'restore_any_payment::method', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(49, 'replicate_payment::method', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(50, 'reorder_payment::method', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(51, 'delete_payment::method', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(52, 'delete_any_payment::method', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(53, 'force_delete_payment::method', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(54, 'force_delete_any_payment::method', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(55, 'view_product', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(56, 'view_any_product', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(57, 'create_product', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(58, 'update_product', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(59, 'restore_product', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(60, 'restore_any_product', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(61, 'replicate_product', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(62, 'reorder_product', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(63, 'delete_product', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(64, 'delete_any_product', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(65, 'force_delete_product', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(66, 'force_delete_any_product', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(67, 'view_setting', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(68, 'view_any_setting', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(69, 'create_setting', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(70, 'update_setting', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(71, 'restore_setting', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(72, 'restore_any_setting', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(73, 'replicate_setting', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(74, 'reorder_setting', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(75, 'delete_setting', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(76, 'delete_any_setting', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(77, 'force_delete_setting', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(78, 'force_delete_any_setting', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(79, 'view_user', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(80, 'view_any_user', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(81, 'create_user', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(82, 'update_user', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(83, 'restore_user', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(84, 'restore_any_user', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(85, 'replicate_user', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(86, 'reorder_user', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(87, 'delete_user', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(88, 'delete_any_user', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(89, 'force_delete_user', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(90, 'force_delete_any_user', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(91, 'page_PosPage', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(92, 'widget_StatsOverview', 'web', '2024-12-16 17:16:42', '2024-12-16 17:16:42'),
(93, 'widget_OmsetChart', 'web', '2024-12-16 17:16:43', '2024-12-16 17:16:43'),
(94, 'widget_ExpenseChart', 'web', '2024-12-16 17:16:43', '2024-12-16 17:16:43'),
(95, 'pages_PosPage', 'web', '2024-12-16 18:08:21', '2024-12-16 18:08:21'),
(96, 'view_role', 'we', '2024-12-16 18:21:20', '2024-12-16 18:21:20'),
(97, 'view_any_role', 'we', '2024-12-16 18:21:20', '2024-12-16 18:21:20'),
(98, 'create_role', 'we', '2024-12-16 18:21:20', '2024-12-16 18:21:20'),
(99, 'update_role', 'we', '2024-12-16 18:21:20', '2024-12-16 18:21:20'),
(100, 'delete_role', 'we', '2024-12-16 18:21:20', '2024-12-16 18:21:20'),
(101, 'delete_any_role', 'we', '2024-12-16 18:21:20', '2024-12-16 18:21:20'),
(102, '_PosPage', 'web', '2024-12-16 18:24:36', '2024-12-16 18:24:36');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API Token', 'd1d27cf78838a53193cc10ac4984c62c929ff705ff75db3ec3f99ddffb0d4100', '[\"*\"]', '2024-12-27 16:52:42', NULL, '2024-12-27 16:45:03', '2024-12-27 16:52:42'),
(2, 'App\\Models\\User', 1, 'API Token', '13fec699cf7f5ce0c2328df2499ef8cb010d6c5e393ba185e2c46a6bff79c9e5', '[\"*\"]', '2024-12-28 20:01:12', NULL, '2024-12-28 19:57:41', '2024-12-28 20:01:12'),
(3, 'App\\Models\\User', 1, 'API Token', '59ecf55b211f8ef30fa2639f9a7dc0e13f3dde2ecbb4d3d909516335d1c6e8d5', '[\"*\"]', '2024-12-28 20:46:27', NULL, '2024-12-28 20:03:38', '2024-12-28 20:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int NOT NULL DEFAULT '1',
  `price` int NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `slug`, `stock`, `price`, `is_active`, `image`, `barcode`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Mie Goreng Sedap', 1, 'mie-goreng-sedap', 103, 3500, 1, '01JG4G9CXDRBBEFZP6RBW4SQQ4.png', '1', NULL, '2024-12-16 09:49:55', '2025-01-01 18:15:15'),
(2, 'Susu Indomilk', 1, 'susu-indomilk', 189, 12000, 1, '01JFVHNDS9PJZ7Q842BW1NMSEK.jpeg', '2', NULL, '2024-12-23 18:39:46', '2025-01-02 14:21:25'),
(3, 'Kecap Bango', 1, 'kecap-bango', 123, 7000, 1, '01JFVHPVHH97MVSXHC7F32E9SS.jpeg', '3', NULL, '2024-12-24 05:19:50', '2025-01-02 14:20:11'),
(4, 'Saos ABC', 1, 'saos-abc', 126, 7000, 1, '01JFVHTZ4EBQH158XZF94ZZ145.jpeg', '4', NULL, '2024-12-24 05:22:05', '2025-01-01 18:21:36'),
(5, 'Roma Malkist Coklat', 1, 'roma-malkist-coklat', 141, 5000, 1, '01JFVHW0PYV5EF47YR7DYHYF8M.jpeg', '5', NULL, '2024-12-24 05:22:39', '2025-01-01 18:21:36'),
(6, 'Sampoerna 16 filter', 1, 'sampoerna-16-filter', 151, 34000, 1, '01JFVHXB1W1REE9SXN9DDR49SJ.jpg', '6', NULL, '2024-12-24 05:23:22', '2025-01-01 18:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2024-12-16 17:14:41', '2024-12-16 18:22:37'),
(2, 'Kasir', 'web', '2024-12-16 17:28:23', '2024-12-16 17:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
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
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(8, 2),
(20, 2),
(32, 2),
(44, 2),
(56, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('IpJ5YSUamNhzftDa7OxF2jvFGndsVKqdJR3TEWlA', NULL, '127.0.0.1', 'WhatsApp/2.2450.6 W', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUEUxcWZYczJkZllRQnhiRHI4VGlTVTVTS1ZxY21VMGFBVTJacmRwWiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cDovLzAxYzItMTE0LTEwLTEwMi0xNjkubmdyb2stZnJlZS5hcHAiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MToiaHR0cDovLzAxYzItMTE0LTEwLTEwMi0xNjkubmdyb2stZnJlZS5hcHAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735826032),
('TpM3r80UsteStjw6WDzo9r11m8QhVZVzGBbNapbW', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTXE4ZTZ6bDBlZnY1Z09VZGYxRERwak1sckNNRlBXSGVkbDNtaVBSWiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cDovLzAxYzItMTE0LTEwLTEwMi0xNjkubmdyb2stZnJlZS5hcHAiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NzoiaHR0cDovLzAxYzItMTE0LTEwLTEwMi0xNjkubmdyb2stZnJlZS5hcHAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1735826086),
('uUOY5WqWdYKpK22sjxQGJo0W7tFVBw0zQnUqe21I', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YToxMDp7czo2OiJfdG9rZW4iO3M6NDA6InhNcEdkcGd2QkJuT0RFTHdzdEt5OFVZZE1LeGwxUEpZTXJaM2d5VXIiO3M6MzoidXJsIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJHpxSm96SFZEdUtDZnBBb1cydjBvQWVHODYvTXdQYmNValpydnNpNVlnR2YyL3A5dy9tN1NXIjtzOjE3OiJEYXNoYm9hcmRfZmlsdGVycyI7YToyOntzOjk6InN0YXJ0RGF0ZSI7TjtzOjc6ImVuZERhdGUiO047fXM6ODoiZmlsYW1lbnQiO2E6MDp7fXM6NjoidGFibGVzIjthOjE6e3M6MTk6Ikxpc3RPcmRlcnNfcGVyX3BhZ2UiO3M6MzoiYWxsIjt9czoxMDoib3JkZXJJdGVtcyI7YToyOntpOjA7YTo1OntzOjEwOiJwcm9kdWN0X2lkIjtpOjE7czo0OiJuYW1lIjtzOjE2OiJNaWUgR29yZW5nIFNlZGFwIjtzOjU6InByaWNlIjtpOjM1MDA7czo5OiJpbWFnZV91cmwiO3M6NjA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdG9yYWdlLzAxSkc0RzlDWERSQkJFRlpQNlJCVzRTUVE0LnBuZyI7czo4OiJxdWFudGl0eSI7aToxO31pOjE7YTo1OntzOjEwOiJwcm9kdWN0X2lkIjtpOjI7czo0OiJuYW1lIjtzOjEzOiJTdXN1IEluZG9taWxrIjtzOjU6InByaWNlIjtpOjEyMDAwO3M6OToiaW1hZ2VfdXJsIjtzOjYxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc3RvcmFnZS8wMUpGVkhORFM5UEpaN1E4NDJCVzFOTVNFSy5qcGVnIjtzOjg6InF1YW50aXR5IjtpOjE7fX19', 1735831968);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `shop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_printer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `shop`, `address`, `phone`, `name_printer`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Ruang Coding POS', 'Negeri Agung, Gunung Pelindung, Lampung Timur, Lampung', '085758492957', 'POS-58', 'images/01JFTPQDPXZT9817RVM41GDRX1.png', '2024-12-16 09:54:36', '2024-12-23 21:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin kasir', 'admin@gmail.com', '2024-12-16 09:46:26', '$2y$12$zqJozHVDuKCfpAoW2v0oAeG86/MwPbcUjZrvsi5YgGf2/p9w/m7SW', 'SXjOwCiOj4uMaV2LDe8Owgt1CJrKPhv5y0LQVrmvurtGsBC8wbcPplzrPPap', '2024-12-16 09:46:26', '2024-12-16 09:46:26'),
(2, 'Dwi Tristina', 'kasir@gmail.com', NULL, '$2y$12$TlJflwcMHGLr8W4zu6Kqme6KF4dwJQNiy6ewuiTvnmWvij4DaS4Aa', NULL, '2024-12-16 17:29:01', '2024-12-16 17:29:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

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
