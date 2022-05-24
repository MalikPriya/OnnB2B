-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 27, 2022 at 05:38 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo9dtx_onn`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `date`, `time`, `type`, `comment`, `location`, `lat`, `lng`, `created_at`, `updated_at`) VALUES
(5, 5, '2022-03-20', '10:04:00', 'visit store', 'Visit Dipti Trader at East Mumbai', 'East Mumbai', 19.1582, 72.9597, '2022-04-25 00:48:50', '2022-04-25 00:48:50'),
(6, 5, '2022-03-20', '12:00:00', 'Order Upload', 'Take Order from Dipti Trader', 'East Mumbai', 19.1582, 72.9597, '2022-04-25 00:51:41', '2022-04-25 00:51:41'),
(7, 5, '2022-03-20', '01:00:00', 'Distributor Visit', 'Visit JP Enterprise', 'East Mumbai', 19.1582, 72.9597, '2022-04-25 00:52:56', '2022-04-25 00:52:56'),
(8, 5, '2022-03-20', '02:30:00', 'Visit Store', 'Visit JK Enterprise at Mumbai', 'Mumbai', 19.1582, 72.9597, '2022-04-25 00:54:14', '2022-04-25 00:54:14'),
(9, 5, '2022-03-20', '05:30:00', 'Order Upload', 'Take Order from JK Enterprise', 'Mumbai', 19.1582, 72.9597, '2022-04-25 00:55:30', '2022-04-25 00:55:30'),
(10, 5, '2022-03-20', '06:00:00', 'Order Upload', 'Take another Order from JK', 'Mumbai', 19.1582, 72.9597, '2022-04-25 00:56:13', '2022-04-25 00:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `landmark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint NOT NULL DEFAULT '1' COMMENT '1: home, 2: work, 3: other',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `landmark`, `lat`, `lng`, `state`, `city`, `pin`, `country`, `type`, `status`, `created_at`) VALUES
(1, 4, 'B/19 HN road', 'deshbandhu park', '22.22', '44.44', 'west benagl', 'kolkata', '700067', NULL, 3, 1, '2022-03-02 07:27:39'),
(3, 4, '48 Durgeshwari Walks', 'Cumque occaecati aspernatur ut voluptatibus voluptatem nihil natus.', 'null', 'Corporis voluptates culpa repellendus corrupti molestiae sit itaque recusandae voluptatem.', 'Jammu and Kashmir', 'North Devmouth', '111111', NULL, 1, 1, '2022-03-02 07:36:08'),
(4, 1, '38737 Shukla Trace', 'Autem corrupti voluptatem dolore autem nihil iusto optio voluptas.', 'null', 'Libero adipisci repellendus et aspernatur qui voluptatem officiis consequuntur.', 'Uttarakhand', 'East Suryaside', '111111', NULL, 1, 1, '2022-03-02 07:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Onn Admin', 'priya.malik@onenesstechs.in', NULL, '$2y$10$onFJqIhJGoxWYKf3WZn.2.7X.vTHObutvSCmd2OGo/VQzyy/AlrhO', NULL, NULL, '2022-04-27 02:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `device_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_style_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_variation_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `offer_price` double(10,2) NOT NULL DEFAULT '0.00',
  `qty` int NOT NULL DEFAULT '1',
  `coupon_code_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `device_id`, `ip`, `product_id`, `product_name`, `product_style_no`, `product_image`, `product_slug`, `product_variation_id`, `price`, `offer_price`, `qty`, `coupon_code_id`, `status`, `created_at`) VALUES
(35, 5, NULL, '127.0.0.1', 13, 'ROUND NECK T-SHIRT', '422', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, NULL, 1, '2022-03-24 13:57:21'),
(36, 5, NULL, '127.0.0.1', 13, 'ROUND NECK T-SHIRT', '422', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, NULL, 1, '2022-03-24 13:57:33'),
(37, 0, NULL, '127.0.0.1', 13, 'ROUND NECK T-SHIRT', '422', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '74', 399.00, 399.00, 3, NULL, 1, '2022-03-24 13:58:03'),
(38, 0, NULL, '103.121.157.14', 32, 'PRINTED SWEATSHIRT', '1021', 'https://demo91.co.in/onn-v2/onn/public/uploads/product/product_images/1021/1021-1.jpg', 'printed-sweatshirt', NULL, 799.00, 799.00, 3, NULL, 1, '2022-03-30 11:43:24'),
(39, 0, NULL, '103.121.157.14', 67, 'RIBBED 2X1 VEST', '323 White', 'https://demo91.co.in/onn-v2/onn/public/uploads/product/polo_tshirt_front.png', 'ribbed-2x1-vest', NULL, 205.00, 205.00, 3, NULL, 1, '2022-03-30 12:37:05'),
(40, 0, NULL, '103.75.162.206', 37, 'HI-NECK JACKET', '1032', 'https://demo91.co.in/onn-v2/onn/public/uploads/product/product_images/1032/1032-1.jpg', 'hi-neck-jacket', '1760', 950.00, 950.00, 3, NULL, 1, '2022-03-30 16:05:09'),
(42, 6, NULL, '127.0.0.1', 14, 'ROUND NECK T-SHIRT', '422', 'uploads\\product\\product_images\\422\\422-2.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 4, NULL, 1, '2022-04-26 03:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `position` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sketch_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `position`, `name`, `parent`, `icon_path`, `sketch_icon`, `image_path`, `banner_image`, `slug`, `description`, `status`, `created_at`) VALUES
(4, 0, 'Boxer', 'Innerwear', 'uploads/category/catago_2.png', 'uploads/category/boxer.png', 'uploads/category/onn_relaxz.png', 'uploads/category/2906652429.banner1.jpg', 'boxer', NULL, 1, '2022-03-07 08:57:08'),
(5, 0, 'Vest', 'Innerwear', 'uploads/category/catago_3.png', 'uploads/category/005-tank-top.png', 'uploads/category/onn_platina.png', 'uploads/category/2906652429.banner1.jpg', 'vest', NULL, 1, '2022-03-07 08:57:24'),
(6, 0, 'Brief', 'Innerwear', 'uploads/category/catago_4.png', 'uploads/category/brief.png', 'uploads/category/onn_innerwear.png', 'uploads/category/2906652429.banner1.jpg', 'brief', NULL, 1, '2022-03-07 08:57:47'),
(9, 0, 'T-Shirt', 'Outerwear', 'uploads/category/catago_5.png', 'uploads/category/polo-shirt.png', 'uploads/category/onn_outerwear.png', 'uploads/category/2906652429.banner1.jpg', 't-shirt', NULL, 1, '2022-03-09 13:24:36'),
(10, 0, 'Track Pants', 'Outerwear', 'uploads/category/catago_7.png', 'uploads/category/track-pant.png', 'uploads/category/onn_winter-product.png', 'uploads/category/2906652429.banner1.jpg', 'track-pants', NULL, 1, '2022-03-09 13:24:57'),
(11, 0, 'Trunk', 'Innerwear', 'uploads/category/catago_9.png', 'uploads/category/trunk.png', 'uploads/category/onn_platina.png', 'uploads/category/2906652429.banner1.jpg', 'trunk', NULL, 1, '2022-03-09 13:25:30'),
(12, 0, 'Joggers', 'Outerwear', 'uploads/category/catago_12.png', 'uploads/category/jogger-pants.png', 'uploads/category/onn_thermal.png', 'uploads/category/2906652429.banner1.jpg', 'joggers', 'adsfasd fsaf s d as', 1, '2022-03-10 07:41:50'),
(13, 0, 'Half Pants', 'Outerwear', 'uploads/category/catago_13.png', 'uploads/category/half-pant.png', 'uploads/category/onn_innerwear.png', 'uploads/category/2906652429.banner1.jpg', 'half-pants', NULL, 1, '2022-03-10 08:20:37'),
(14, 0, 'Socks', 'Footkins', 'uploads/category/catago_8.png', 'uploads/category/001-socks.png', 'uploads/category/onn_footkins.png', 'uploads/category/2906652429.banner1.jpg', 'socks', NULL, 1, '2022-03-10 08:21:20'),
(15, 0, 'Thermal', 'WINTER WEAR', 'uploads/category/catago_6.png', 'uploads/category/clothes.png', 'uploads/category/onn_thermal.png', 'uploads/category/2906652429.banner1.jpg', 'thermal', NULL, 1, '2022-03-10 08:21:20'),
(16, 0, 'Jackets', 'WINTER WEAR', 'uploads/category/catago_10.png', 'uploads/category/jacket.png', 'uploads/category/onn_winter-product.png', 'uploads/category/2906652429.banner1.jpg', 'jackets', NULL, 1, '2022-03-10 08:21:21'),
(17, 0, 'Sweatshirt', 'WINTER WEAR', 'uploads/category/catago_11.png', 'uploads/category/sweatshirt.png', 'uploads/category/onn_winter-product.png', 'uploads/category/2906652429.banner1.jpg', 'sweatshirt', NULL, 1, '2022-03-10 08:21:21');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` bigint UNSIGNED NOT NULL,
  `position` int NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sketch_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `position`, `name`, `icon_path`, `sketch_icon`, `image_path`, `banner_image`, `slug`, `description`, `status`, `created_at`) VALUES
(2, 0, 'Footkins', 'uploads/collection/range4.png', 'uploads/collection/1648110294.665818788.footkins.png', 'uploads/collection/onn_footkins.png', 'uploads/collection/1646652429.banner1.jpg', 'footkins', NULL, 1, '2022-03-07 09:30:10'),
(3, 0, 'Grandde', 'uploads/collection/range3.png', 'uploads/collection/1648110322.1721975126.grandde.png', 'uploads/collection/onn_innerwear.png', 'uploads/collection/1646652429.banner1.jpg', 'grandde', NULL, 1, '2022-03-07 09:30:24'),
(4, 0, 'Acttive', 'uploads/collection/range5.png', 'uploads/collection/1648110335.673340868.acttive.png', 'uploads/collection/onn_outerwear.png', 'uploads/collection/1646652429.banner1.jpg', 'acttive', NULL, 1, '2022-03-07 09:30:36'),
(6, 0, 'Thermal', 'uploads/collection/range.png', 'uploads/collection/1648110344.1885323119.thermal.png', 'uploads/collection/onn_thermal.png', 'uploads/collection/1646652429.banner1.jpg', 'thermal', NULL, 1, '2022-03-10 07:42:23'),
(7, 0, 'Winter Wear', 'uploads/collection/range1.png', 'uploads/collection/1648110354.1286489689.winter-wear.png', 'uploads/collection/onn_winter-product.png', 'uploads/collection/1646652429.banner1.jpg', 'winter-wear', NULL, 1, '2022-03-10 07:52:10'),
(8, 0, 'Relaxz', 'uploads/collection/range6.png', 'uploads/collection/1648110364.1549682793.relaxz.png', 'uploads/collection/onn_relaxz.png', 'uploads/collection/1646652429.banner1.jpg', 'relaxz', NULL, 1, '2022-03-10 07:52:26'),
(9, 0, 'Platina', 'uploads/collection/range2.png', 'uploads/collection/1648110379.991784936.platina.png', 'uploads/collection/onn_platina.png', 'uploads/collection/1646652429.banner1.jpg', 'platina', NULL, 1, '2022-03-10 07:52:26'),
(11, 0, 'Stretchz', 'uploads/collection/1648068223.509795879.range3.png', 'uploads/collection/1648110389.467029930.stretchz.png', 'uploads/collection/1648068223.379099523.stretchz.png', 'uploads/collection/1648068223.2053266682.banner2.jpg', 'stretchz', NULL, 1, '2022-03-24 02:13:43'),
(12, 0, 'Sport', 'uploads/collection/1648068876.960883191.onn-men-s-sports-and-gym-vest-500x500.png', 'uploads/collection/1648110397.2106029333.sport.png', 'uploads/collection/1648068723.482089929.onn_sports.png', 'uploads/collection/1648068723.855994381.banner2.png', 'sport', NULL, 1, '2022-03-24 02:22:03'),
(13, 0, 'Comfortz', 'uploads/collection/1648068987.1494204055.relaxz.png', 'uploads/collection/1648110406.283624293.comfortz.png', 'uploads/collection/1648068987.810786002.comfortz.png', 'uploads/collection/1648068987.23204190.banner2.jpg', 'comfortz', NULL, 1, '2022-03-24 02:26:27');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `status`, `created_at`) VALUES
(1, 'Red', '#DB2828', 1, '2022-03-03 18:50:47'),
(2, 'Orange', '#F2711C', 1, '2022-03-03 18:50:47'),
(3, 'Yellow', '#FBBD08', 1, '2022-03-03 18:50:47'),
(4, 'Olive', '#B5CC18', 1, '2022-03-03 18:50:47'),
(5, 'Green', '#21BA45', 1, '2022-03-03 18:50:47'),
(6, 'Teal', '#00B5AD', 1, '2022-03-03 18:50:47'),
(7, 'Blue', '#2185D0', 1, '2022-03-03 18:50:47'),
(8, 'Violet', '#6435C9', 1, '2022-03-03 18:50:47'),
(9, 'Purple', '#A333C8', 1, '2022-03-03 18:50:47'),
(10, 'Pink', '#E03997', 1, '2022-03-03 18:50:47'),
(11, 'Black Melange', '#000000', 1, '2022-03-20 21:05:41'),
(12, 'White', '#FFFFFF', 1, '2022-03-20 21:07:22'),
(13, 'Navy', '#000080', 1, '2022-03-21 22:51:11'),
(14, 'Charcoal', '#36454F', 1, '2022-03-21 22:51:11'),
(15, 'Sea Green', '#2e8b57', 1, '2022-03-21 22:51:11'),
(16, 'LT Blue', '#ADD8E6\r\n', 1, '2022-03-21 22:51:11'),
(17, 'Maroon', '#800000', 1, '2022-03-21 22:51:11'),
(18, 'Royal Blue', '#4169e1', 1, '2022-03-21 22:51:11'),
(19, 'Coffee', '#6f4e37', 1, '2022-03-21 22:51:11'),
(20, 'Cool Yellow', '#ECEA98', 1, '2022-03-21 22:51:11'),
(21, 'Goldfish', '#f98332', 1, '2022-03-21 22:51:11'),
(22, 'Baby Pink', '#f4c2c2', 1, '2022-03-21 22:51:11'),
(23, 'Tel', '#008080', 1, '2022-03-21 22:51:11'),
(24, 'Air Force Blue', '#00308F', 1, '2022-03-21 22:51:11'),
(25, 'Mustard', '#FFDB58', 1, '2022-03-21 22:51:11'),
(26, 'Peacock Blue', '#326872', 1, '2022-03-21 22:51:11'),
(27, 'Forest Green', '#228B22', 1, '2022-03-21 22:51:11'),
(28, 'Bottle Green', '#006A4E', 1, '2022-03-21 22:51:11'),
(29, 'Camel', '#c19a6b', 1, '2022-03-21 22:51:11'),
(30, 'Lemon', '#E7C91B', 1, '2022-03-21 22:51:11'),
(31, 'Bright Blue', '#0096FF', 1, '2022-03-21 22:51:11'),
(32, 'Wine', '#FF5733', 1, '2022-03-21 22:51:11'),
(33, 'Aqua', '#00FFFF', 1, '2022-03-21 22:51:11'),
(34, 'Powder Blue', '#B6D0E2', 1, '2022-03-21 22:51:11'),
(35, 'Tangerine', '#F28500', 1, '2022-03-21 22:51:11'),
(36, 'Smoke Green', '#a8bba2', 1, '2022-03-21 22:51:11'),
(37, 'Fluorescent Green', '#39FF14', 1, '2022-03-21 22:51:11'),
(38, 'Peach', '#FFE5B4', 1, '2022-03-21 22:51:11'),
(39, 'Navy Melange', '#282B57', 1, '2022-03-21 22:51:11'),
(40, 'Pea Green', '#52D017', 1, '2022-03-21 22:51:11'),
(41, 'Canary Yellow', '#FFEF00', 1, '2022-03-21 22:51:11'),
(42, 'Sky Blue', '#87CEEB', 1, '2022-03-21 22:51:11'),
(43, 'grass Green', '#7CFC00', 1, '2022-03-21 22:51:11'),
(44, 'Mouse', '#6B6E6B', 1, '2022-03-21 22:51:11'),
(45, 'Sapphire Blue', '#0F52BA', 1, '2022-03-21 22:51:11'),
(46, 'Dusty Pink', '#E1AD9D', 1, '2022-03-21 22:51:11'),
(47, 'Blue Mist', '#dbe5ef', 1, '2022-03-21 22:51:11'),
(48, 'Azure', '#007fff', 1, '2022-03-21 22:51:11'),
(49, 'Ocean Blue', '#2B65EC', 1, '2022-03-21 22:51:11'),
(50, 'Rose Wood', '#65000b', 1, '2022-03-21 22:51:11'),
(51, 'Dark Sapphire', '#082567', 1, '2022-03-21 22:51:11'),
(52, 'Imperial Blue', '#002395', 1, '2022-03-21 22:51:11'),
(53, 'Slate Grey', '#708090', 1, '2022-03-21 22:51:11'),
(54, 'Java Brown', '#50382E', 1, '2022-03-21 22:51:11'),
(55, 'Turquoise Blue', '#30D5C8', 1, '2022-03-21 22:51:11'),
(56, 'Mocha', '#967969', 1, '2022-03-21 22:51:11'),
(57, 'Steel Grey', '#71797E', 1, '2022-03-21 22:51:11'),
(58, 'Melange Grey', '#afafaf', 1, '2022-03-21 22:51:11'),
(59, 'Lavender', '#E6E6FA', 1, '2022-03-21 22:51:11'),
(60, 'Dark Grey', '#a9a9a9', 1, '2022-03-22 04:21:11'),
(61, 'Assorted', '#99CCFF', 1, '2022-03-22 04:21:11'),
(62, 'Crimson', '#DC143C', 1, '2022-03-22 04:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL DEFAULT '1' COMMENT '1: flat, 2: offer',
  `amount` double(8,2) NOT NULL,
  `max_time_of_use` bigint NOT NULL,
  `max_time_one_can_use` bigint NOT NULL,
  `no_of_usage` bigint NOT NULL DEFAULT '0',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `coupon_code`, `type`, `amount`, `max_time_of_use`, `max_time_one_can_use`, `no_of_usage`, `end_date`, `status`, `created_at`) VALUES
(1, 'Buy now & get 30% instant discount', 'ONNIT30', 1, 800.00, 50, 1, 0, '2022-03-09 18:30:00', 1, '2022-03-04 05:19:33'),
(2, '50% OFF On minimum purchase of Rs. 500', 'FLIPFLOP', 1, 500.00, 30, 1, 4, '2022-04-29 18:30:00', 1, '2022-03-22 05:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_usages`
--

CREATE TABLE `coupon_usages` (
  `id` bigint UNSIGNED NOT NULL,
  `coupon_code_id` bigint NOT NULL,
  `coupon_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(10,2) NOT NULL,
  `total_checkout_amount` double(10,2) NOT NULL,
  `final_amount` double(10,2) NOT NULL,
  `user_id` bigint NOT NULL DEFAULT '0',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint NOT NULL,
  `usage_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_usages`
--

INSERT INTO `coupon_usages` (`id`, `coupon_code_id`, `coupon_code`, `discount`, `total_checkout_amount`, `final_amount`, `user_id`, `email`, `ip`, `order_id`, `usage_time`, `created_at`) VALUES
(1, 2, 'FLIPFLOP', 500.00, 3669.00, 3169.00, 0, 'your.email+fakedata44065@gmail.com', '127.0.0.1', 40, '2022-03-25 11:53:15', '2022-03-25 06:23:15'),
(2, 2, 'FLIPFLOP', 500.00, 3669.00, 3169.00, 0, 'your.email+fakedata34742@gmail.com', '127.0.0.1', 41, '2022-03-25 11:54:32', '2022-03-25 06:24:32'),
(3, 2, 'FLIPFLOP', 500.00, 2871.00, 2371.00, 0, 'your.email+fakedata23545@gmail.com', '127.0.0.1', 42, '2022-03-25 12:45:50', '2022-03-25 07:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, '2022-03-02 08:06:18'),
(3, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, '2022-03-10 06:14:28'),
(4, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 1, '2022-03-10 06:15:05'),
(5, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 1, '2022-03-10 06:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `status`, `created_at`) VALUES
(1, 'uploads/gallery/gallery.jpg', 1, '2022-03-16 14:09:31'),
(2, 'uploads/gallery/gallery2.jpg', 1, '2022-03-16 14:09:31'),
(3, 'uploads/gallery/gallery3.webp', 1, '2022-03-16 14:10:06'),
(4, 'uploads/gallery/gallery4.jpg', 1, '2022-03-16 14:10:06'),
(5, 'uploads/gallery/gallery5.png', 1, '2022-03-16 14:10:19'),
(6, 'uploads/gallery/gallery6.jpg', 1, '2022-03-16 14:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `mail_logs`
--

CREATE TABLE `mail_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `from` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blade_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_logs`
--

INSERT INTO `mail_logs` (`id`, `from`, `to`, `subject`, `blade_file`, `payload`, `deleted_at`, `created_at`) VALUES
(1, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"password\":\"1212\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 10:31:35'),
(2, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"password\":\"123456\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 10:38:49'),
(6, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"password\":\"1111\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 11:41:41'),
(7, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"password\":\"1111\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 11:45:02'),
(8, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"password\":\"1111\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 11:55:07'),
(9, 'onenesstechsolution@gmail.com', 'arpanc314@gmail.com', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"arpanc314@gmail.com\",\"password\":\"4444\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 11:56:33'),
(10, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"password\":\"1111\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 12:04:35'),
(11, 'onenesstechsolution@gmail.com', 'suvajit.oneness@gmail.com', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.oneness@gmail.com\",\"password\":\"123456\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 12:11:34'),
(12, 'onenesstechsolution@gmail.com', 'suvajit.oneness@gmail.com', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.oneness@gmail.com\",\"password\":\"1111\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 12:14:04'),
(13, 'onenesstechsolution@gmail.com', 'suvajit.oneness@gmail.com', 'Onn - New registration', 'front/mail/register', '{\"name\":\"\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.oneness@gmail.com\",\"password\":\"sdfsdfsdfd\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 12:33:10'),
(14, 'onenesstechsolution@gmail.com', 'mail@Mail.com', 'Onn - New registration', 'front/mail/register', '{\"name\":\"suvajit bardhan\",\"subject\":\"Onn - New registration\",\"email\":\"mail@Mail.com\",\"password\":\"123456\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-11 13:44:53'),
(15, 'onenesstechsolution@gmail.com', 'test@test2.com', 'Onn - New registration', 'front/mail/register', '{\"name\":\"suvajit bardhan\",\"subject\":\"Onn - New registration\",\"email\":\"test@test2.com\",\"password\":\"test@test2.com\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-16 13:30:04'),
(16, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Suvajit Guha\",\"subject\":\"Onn - New order\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"orderNo\":\"ONN2086027772\",\"orderAmount\":6000,\"orderProducts\":[{\"order_id\":25,\"product_id\":7,\"product_name\":\"LOW SHOW SOCKS\",\"product_image\":\"http:\\/\\/localhost:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"low-show-socks\",\"product_variation_id\":null,\"price\":90,\"offer_price\":90,\"qty\":4},{\"order_id\":25,\"product_id\":125,\"product_name\":\"FULL SLEEVES V\\/NECK\",\"product_image\":\"http:\\/\\/localhost:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"full-sleeves-v-neck\",\"product_variation_id\":null,\"price\":610,\"offer_price\":610,\"qty\":7},{\"order_id\":25,\"product_id\":17,\"product_name\":\"FINE VEST\",\"product_image\":\"http:\\/\\/localhost:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"fine-vest-2\",\"product_variation_id\":null,\"price\":280,\"offer_price\":280,\"qty\":3},{\"order_id\":25,\"product_id\":38,\"product_name\":\"HALF SLEEVE R\\/ NECK\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"half-sleeve-r-neck\",\"product_variation_id\":\"1\",\"price\":530,\"offer_price\":530,\"qty\":1}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-22 08:53:20'),
(17, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Suvajit Guha\",\"subject\":\"Onn - New order\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"orderNo\":\"ONN557402884\",\"orderAmount\":1060,\"orderProducts\":[{\"order_id\":26,\"product_id\":38,\"product_name\":\"HALF SLEEVE R\\/ NECK\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"half-sleeve-r-neck\",\"product_variation_id\":\"7\",\"price\":530,\"offer_price\":530,\"qty\":2}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-22 09:04:28'),
(25, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Suvajit bardhan\",\"subject\":\"Onn - New order\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"orderNo\":\"ONN1687431651\",\"orderAmount\":1060,\"orderProducts\":[{\"order_id\":34,\"product_id\":38,\"product_name\":\"HALF SLEEVE R\\/ NECK\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"half-sleeve-r-neck\",\"product_variation_id\":\"7\",\"price\":530,\"offer_price\":530,\"qty\":2}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-22 11:35:08'),
(26, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"Suvajit Bardhan\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"password\":\"suvajit.bardhan@onenesstechs.in\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-22 11:38:58'),
(27, 'onenesstechsolution@gmail.com', 'suvajit.bardhan2@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"test user\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan2@onenesstechs.in\",\"password\":\"secret\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-23 07:50:31'),
(28, 'onenesstechsolution@gmail.com', 'suvajit.bardhan2@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"test user\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan2@onenesstechs.in\",\"password\":\"secret\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-23 07:52:25'),
(29, 'onenesstechsolution@gmail.com', 'suvajit.bardhan2@onenesstechs.in', 'Onn - New registration', 'front/mail/register', '{\"name\":\"test user\",\"subject\":\"Onn - New registration\",\"email\":\"suvajit.bardhan2@onenesstechs.in\",\"password\":\"secret\",\"blade_file\":\"front\\/mail\\/register\"}', NULL, '2022-03-23 07:55:11'),
(30, 'onenesstechsolution@gmail.com', 'suvajit.bardhan2@onenesstechs.in', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"test user\",\"subject\":\"Onn - New order\",\"email\":\"suvajit.bardhan2@onenesstechs.in\",\"orderNo\":\"ONN1568407002\",\"orderAmount\":5529,\"orderProducts\":[{\"order_id\":35,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":null,\"price\":399,\"offer_price\":399,\"qty\":3},{\"order_id\":35,\"product_id\":79,\"product_name\":\"FASHION BRIEF O\\/E\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\262\\\\ONN-Grande-262-1.jpg\",\"product_slug\":\"fashion-brief-o-e\",\"product_variation_id\":null,\"price\":175,\"offer_price\":175,\"qty\":5},{\"order_id\":35,\"product_id\":32,\"product_name\":\"PRINTED SWEATSHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/product_images\\/1021\\/1021-1.jpg\",\"product_slug\":\"printed-sweatshirt\",\"product_variation_id\":null,\"price\":799,\"offer_price\":799,\"qty\":3},{\"order_id\":35,\"product_id\":38,\"product_name\":\"HALF SLEEVE R\\/ NECK\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"half-sleeve-r-neck\",\"product_variation_id\":\"3\",\"price\":530,\"offer_price\":530,\"qty\":2}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-23 08:39:59'),
(31, 'onenesstechsolution@gmail.com', 'suvajit.bardhan2@onenesstechs.in', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"test user\",\"subject\":\"Onn - New order\",\"email\":\"suvajit.bardhan2@onenesstechs.in\",\"orderNo\":\"ONN1986548744\",\"orderAmount\":4400,\"orderProducts\":[{\"order_id\":36,\"product_id\":125,\"product_name\":\"FULL SLEEVES V\\/NECK\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"full-sleeves-v-neck\",\"product_variation_id\":null,\"price\":610,\"offer_price\":610,\"qty\":2},{\"order_id\":36,\"product_id\":38,\"product_name\":\"HALF SLEEVE R\\/ NECK\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"half-sleeve-r-neck\",\"product_variation_id\":\"5\",\"price\":530,\"offer_price\":530,\"qty\":4},{\"order_id\":36,\"product_id\":38,\"product_name\":\"HALF SLEEVE R\\/ NECK\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\/product\\/polo_tshirt_front.png\",\"product_slug\":\"half-sleeve-r-neck\",\"product_variation_id\":\"6\",\"price\":530,\"offer_price\":530,\"qty\":2}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-23 14:43:27'),
(32, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Suvajit Bardhan\",\"subject\":\"Onn - New order\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"orderNo\":\"ONN1731083780\",\"orderAmount\":1622,\"orderProducts\":[{\"order_id\":37,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"17\",\"price\":399,\"offer_price\":399,\"qty\":3},{\"order_id\":37,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"24\",\"price\":425,\"offer_price\":425,\"qty\":1}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-24 13:53:14'),
(33, 'onenesstechsolution@gmail.com', 'bardhan@user.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Suvajit Bardhan\",\"subject\":\"Onn - New order\",\"email\":\"bardhan@user.com\",\"orderNo\":\"ONN2126371347\",\"orderAmount\":3669,\"orderProducts\":[{\"order_id\":38,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":38,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":38,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":5}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-24 14:05:40'),
(34, 'onenesstechsolution@gmail.com', 'suvajit.bardhan@onenesstechs.in', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Suvajit Bardhan\",\"subject\":\"Onn - New order\",\"email\":\"suvajit.bardhan@onenesstechs.in\",\"orderNo\":\"ONN272894762\",\"orderAmount\":3669,\"orderProducts\":[{\"order_id\":39,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":39,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":39,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":5}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 05:52:51'),
(35, 'onenesstechsolution@gmail.com', 'your.email+fakedata44065@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Sarla Varrier\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata44065@gmail.com\",\"orderNo\":\"ONN1097170116\",\"orderAmount\":3669,\"orderProducts\":[{\"order_id\":40,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":40,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":40,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":5}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 06:23:15'),
(36, 'onenesstechsolution@gmail.com', 'your.email+fakedata34742@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Atreyi Nehru\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata34742@gmail.com\",\"orderNo\":\"ONN1495017718\",\"orderAmount\":3669,\"orderProducts\":[{\"order_id\":41,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":41,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":41,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":5}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 06:24:32'),
(37, 'onenesstechsolution@gmail.com', 'your.email+fakedata23545@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Rukmin Varman\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata23545@gmail.com\",\"orderNo\":\"ONN1929079053\",\"orderAmount\":2871,\"orderProducts\":[{\"order_id\":42,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":42,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":42,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":3}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 07:15:50'),
(38, 'onenesstechsolution@gmail.com', 'your.email+fakedata16501@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Kalyani Mahajan\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata16501@gmail.com\",\"orderNo\":\"ONN904550126\",\"orderAmount\":2871,\"orderProducts\":[{\"order_id\":43,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":43,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":43,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":3}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 07:20:08'),
(39, 'onenesstechsolution@gmail.com', 'your.email+fakedata31683@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Aatreya Bharadwaj\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata31683@gmail.com\",\"orderNo\":\"ONN549247929\",\"orderAmount\":2871,\"orderProducts\":[{\"order_id\":44,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":44,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":44,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":3}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 07:20:33'),
(40, 'onenesstechsolution@gmail.com', 'your.email+fakedata45947@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Jai Pilla\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata45947@gmail.com\",\"orderNo\":\"ONN1716375495\",\"orderAmount\":2871,\"orderProducts\":[{\"order_id\":45,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":45,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":45,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":3}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 07:49:35'),
(41, 'onenesstechsolution@gmail.com', 'your.email+fakedata94337@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Deenabandhu Bhattathiri\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata94337@gmail.com\",\"orderNo\":\"ONN111264837\",\"orderAmount\":2871,\"orderProducts\":[{\"order_id\":46,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":46,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":46,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":3}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 07:50:17'),
(42, 'onenesstechsolution@gmail.com', 'your.email+fakedata75409@gmail.com', 'Onn - New order', 'front/mail/order-confirm', '{\"name\":\"Dhatri Dwivedi\",\"subject\":\"Onn - New order\",\"email\":\"your.email+fakedata75409@gmail.com\",\"orderNo\":\"ONN280091922\",\"orderAmount\":2871,\"orderProducts\":[{\"order_id\":47,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"95\",\"price\":425,\"offer_price\":425,\"qty\":3},{\"order_id\":47,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"83\",\"price\":399,\"offer_price\":399,\"qty\":1},{\"order_id\":47,\"product_id\":13,\"product_name\":\"ROUND NECK T-SHIRT\",\"product_image\":\"http:\\/\\/127.0.0.1:8000\\/uploads\\\\product\\\\product_images\\\\422\\\\422-1.jpg\",\"product_slug\":\"round-neck-t-shirt\",\"product_variation_id\":\"74\",\"price\":399,\"offer_price\":399,\"qty\":3}],\"blade_file\":\"front\\/mail\\/order-confirm\"}', NULL, '2022-03-25 07:51:03');

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
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2022_02_28_100529_create_categories_table', 1),
(18, '2022_03_01_060945_create_admins_table', 1),
(19, '2022_03_01_113157_create_sub_categories_table', 1),
(20, '2022_03_01_113259_create_collections_table', 1),
(21, '2022_03_01_131758_create_coupons_table', 1),
(24, '2022_03_02_075005_create_products_table', 2),
(25, '2022_03_02_120938_create_addresses_table', 3),
(26, '2022_03_02_132406_create_faqs_table', 4),
(27, '2022_03_02_134321_create_settings_table', 5),
(28, '2022_03_02_140807_create_product_images_table', 6),
(49, '2022_03_03_084615_create_product_colors_table', 7),
(50, '2022_03_03_084729_create_product_color_sizes_table', 7),
(51, '2022_03_03_085246_create_colors_table', 7),
(52, '2022_03_03_112136_create_sizes_table', 7),
(53, '2022_03_04_080922_create_orders_table', 8),
(54, '2022_03_04_080937_create_transactions_table', 8),
(55, '2022_03_04_081901_create_order_products_table', 8),
(56, '2022_03_04_082329_create_carts_table', 8),
(58, '2022_03_07_151020_add_banner_image_to_categories_table', 9),
(59, '2022_03_07_163254_add_banner_image_to_collections_table', 10),
(60, '2022_03_08_114708_add_column_to_carts_table', 11),
(66, '2022_03_08_154736_add_columns_to_orders_table', 12),
(67, '2022_03_09_121714_add_columns_to_addresses_table', 13),
(69, '2022_03_09_173649_create_subscription_mails_table', 14),
(70, '2022_03_10_124914_add_columns_to_categories_and_collections_table', 15),
(72, '2022_03_11_152029_create_mail_logs_table', 16),
(74, '2022_03_16_115151_add_new_columns_to_categories_and_collections_table', 17),
(75, '2022_03_16_193141_create_galleries_table', 18),
(76, '2022_03_16_193356_create_wishlists_table', 18),
(77, '2022_03_17_114435_add_new_column_to_galleries_table', 19),
(79, '2022_03_21_171424_add_columns_to_products_table', 20),
(82, '2022_03_22_165852_add_new_column_to_transactions_table', 21),
(83, '2022_03_23_181303_add_new_column_to_carts_table', 22),
(84, '2022_03_24_121204_add_more_columns_to_categories_and_collections_table', 23),
(85, '2022_03_24_195535_create_coupon_usages_table', 24),
(86, '2022_03_31_145730_add_column_to_products_table', 25);

-- --------------------------------------------------------

--
-- Table structure for table `no_order_reasons`
--

CREATE TABLE `no_order_reasons` (
  `id` int NOT NULL,
  `noorderreason` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `no_order_reasons`
--

INSERT INTO `no_order_reasons` (`id`, `noorderreason`, `created_at`, `updated_at`) VALUES
(1, 'Product related issue', '2022-04-26 23:38:43', '2022-04-26 23:38:43'),
(2, 'Product related issue', '2022-04-26 23:38:43', '2022-04-26 23:38:43'),
(3, 'Distributor related issue', '2022-04-26 23:38:43', '2022-04-26 23:38:43'),
(4, 'Competitor related issue', '2022-04-26 23:38:43', '2022-04-26 23:38:43'),
(5, 'Company related issue', '2022-04-26 23:38:43', '2022-04-26 23:38:43'),
(6, 'Shop related issue', '2022-04-26 23:38:43', '2022-04-26 23:38:43'),
(7, 'More Factor', '2022-04-26 23:38:43', '2022-04-26 23:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_current` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `start_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `title`, `image`, `pdf`, `is_current`, `start_date`, `end_date`, `created_at`) VALUES
(2, 'prime', 'uploads/offer/1647327842.488671914.Screenshot from 2021-11-15 17-08-40.png', 'uploads/offer/1647327842.411656270.Screenshot from 2021-11-15 17-08-40.png', 1, '2022-03-08', '2022-03-26', '2022-03-07 02:07:04'),
(4, 'Buy now & get 30% instant discount', 'uploads/offer/1647328541.330482508.813O9jHpiFL._AC_UL320_.jpg', 'uploads/offer/1647328184.LLST003567.pdf', 1, '2022-03-17', '2022-03-24', '2022-03-15 01:39:44');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL DEFAULT '0',
  `store_id` bigint NOT NULL,
  `fname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address_id` bigint NOT NULL DEFAULT '0',
  `billing_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_landmark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_pin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shippingSameAsBilling` tinyint NOT NULL DEFAULT '0',
  `shipping_address_id` bigint NOT NULL DEFAULT '0',
  `shipping_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_landmark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_pin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(10,2) NOT NULL DEFAULT '0.00',
  `shipping_charges` double(10,2) NOT NULL DEFAULT '0.00',
  `shipping_method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'standard',
  `tax_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `coupon_code_id` bigint NOT NULL DEFAULT '0',
  `final_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `gst_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash_on_delivery',
  `is_paid` tinyint NOT NULL DEFAULT '0' COMMENT '1: paid, 0: not paid',
  `txn_id` bigint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: new, 2: confirmed, 3: shipped, 4: delivered, 5: cancelled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_no`, `ip`, `user_id`, `store_id`, `fname`, `lname`, `email`, `mobile`, `alt_mobile`, `billing_address_id`, `billing_address`, `billing_landmark`, `billing_country`, `billing_state`, `billing_city`, `billing_pin`, `shippingSameAsBilling`, `shipping_address_id`, `shipping_address`, `shipping_landmark`, `shipping_country`, `shipping_state`, `shipping_city`, `shipping_pin`, `amount`, `shipping_charges`, `shipping_method`, `tax_amount`, `discount_amount`, `coupon_code_id`, `final_amount`, `gst_no`, `payment_method`, `is_paid`, `txn_id`, `status`, `created_at`) VALUES
(1, '', '', 1, 2, 'John', 'Doe', 'user@user.com', '9876543210', NULL, 0, 'B/19 HN road', 'Deshbandhu school', 'India', 'West Bengal', 'Kolkata', '700067', 0, 0, 'B/19 HN road', 'Deshbandhu SChool', 'India', 'West Bengal', 'Kolkata', '700067', 2250.00, 0.00, 'standard', 150.00, 100.00, 0, 2300.00, NULL, 'cash_on_delivery', 0, 0, 2, '2022-03-04 09:45:16'),
(2, '', '', 2, 0, 'Suvajit', 'Bardhan', 'email@email.com', '9876543210', NULL, 0, '22 AJC bose Road', 'opposite SK Park', 'India', 'West bengal', 'Kolkata', '700000', 0, 0, '22 AJC bose Road', 'opposite SK Park', 'India', 'West bengal', 'Kolkata', '700000', 2200.00, 0.00, 'standard', 100.00, 0.00, 0, 2300.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-04 14:27:20'),
(3, '', '', 1, 0, 'Lisa', 'Kudrow', 'lisa@email.com', '9876543210', NULL, 0, '22 AJC bose Road', 'opposite SK Park', 'India', 'West bengal', 'Kolkata', '700000', 0, 0, '22 AJC bose Road', 'opposite SK Park', 'India', 'West bengal', 'Kolkata', '700000', 2200.00, 0.00, 'standard', 100.00, 0.00, 0, 2300.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-04 14:32:14'),
(16, 'ONN3199075', '127.0.0.1', 0, 0, 'Archan', 'Rana', 'your.email+fakedata96849@gmail.com', '528-815-4415', NULL, 0, '44320 Sethi Expressway', 'Odio non distinctio ullam perspiciatis sint et et doloremque.', 'Swaziland', 'Maharashtra', 'North Ujjawal', '501 614', 0, 0, '672 Pilla Viaduct', 'Natus et voluptate officia optio et inventore nulla autem illum.', 'Saint Martin', 'Dadar and Nagar Haveli', 'East Aayushmanmouth', '509 552', 5750.00, 0.00, 'standard_cod', 0.00, 0.00, 0, 5750.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-08 11:44:58'),
(17, 'ONN1223462674', '127.0.0.1', 0, 0, 'Archan', 'Rana', 'your.email+fakedata96849@gmail.com', '528-815-4415', NULL, 0, '44320 Sethi Expressway', 'Odio non distinctio ullam perspiciatis sint et et doloremque.', 'Swaziland', 'Maharashtra', 'North Ujjawal', '501 614', 0, 0, '672 Pilla Viaduct', 'Natus et voluptate officia optio et inventore nulla autem illum.', 'Saint Martin', 'Dadar and Nagar Haveli', 'East Aayushmanmouth', '509 552', 5750.00, 0.00, 'standard_cod', 0.00, 0.00, 0, 5750.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-08 11:45:50'),
(18, 'ONN646527371', '127.0.0.1', 0, 0, 'Archan', 'Rana', 'your.email+fakedata96849@gmail.com', '528-815-4415', NULL, 0, '44320 Sethi Expressway', 'Odio non distinctio ullam perspiciatis sint et et doloremque.', 'Swaziland', 'Maharashtra', 'North Ujjawal', '501 614', 0, 0, '672 Pilla Viaduct', 'Natus et voluptate officia optio et inventore nulla autem illum.', 'Saint Martin', 'Dadar and Nagar Haveli', 'East Aayushmanmouth', '509 552', 5750.00, 0.00, 'standard_cod', 0.00, 0.00, 0, 5750.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-08 11:46:01'),
(19, 'ONN839345327', '127.0.0.1', 0, 0, 'Nanda', 'Gandhi', 'your.email+fakedata68305@gmail.com', '838-634-4897', NULL, 0, '5471 Rakesh Stream', 'Expedita cumque omnis id.', 'Sao Tome and Principe', 'Arunachal Pradesh', 'Rameshstad', '977 707', 0, 0, '1522 Varrier Summit', 'Aliquid itaque ea debitis.', 'Burkina Faso', 'Chhattisgarh', 'Ekalavyaton', '805 437', 5750.00, 0.00, 'standard', 0.00, 0.00, 0, 5750.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-08 11:48:25'),
(20, 'ONN1071601917', '127.0.0.1', 4, 0, 'Devasree', 'Dutta', 'test@test.com', '9876543222', NULL, 0, '663 Aadi Ports', 'Libero quidem voluptatem eos perspiciatis aut.', 'Maldives', 'Bihar', 'Port Suryakanta', '500846', 1, 0, '84142 Ahluwalia Highway', 'Dolor totam praesentium molestiae beatae.', 'Bouvet Island (Bouvetoya)', 'Mizoram', 'Sheelatown', '983816', 9200.00, 0.00, 'standard', 0.00, 0.00, 0, 9200.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-09 10:03:20'),
(21, 'ONN1835520099', '127.0.0.1', 0, 0, 'Gajaadhar', 'Khatri', 'your.email+fakedata41324@gmail.com', '9163481013', NULL, 0, '730 Butt Green', 'Et pariatur itaque recusandae quibusdam.', 'Niger', 'Uttarakhand', 'Pillaberg', '992305', 1, 0, '706 Purushottam Plains', 'Ex nam est fugiat assumenda quia aliquam totam.', 'Kiribati', 'Andaman and Nicobar Islands', 'North Kartik', '837856', 9200.00, 0.00, 'standard', 0.00, 0.00, 0, 9200.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-09 10:03:56'),
(22, 'ONN867946924', '127.0.0.1', 4, 0, 'Devasree', 'Dutta', 'test@test.com', '9876543222', NULL, 0, '324 Lalita Junctions', 'Est nulla tempore in quis nam maiores et repellendus non.', 'Bouvet Island (Bouvetoya)', 'Bihar', 'Anuraagmouth', '295371', 1, 0, '345 Bhattathiri Mountain', 'Molestias enim quia.', 'Gambia', 'Sikkim', 'West Aruntown', '357770', 9200.00, 0.00, 'standard', 0.00, 0.00, 0, 9200.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-09 10:05:43'),
(23, 'ONN609971813', '127.0.0.1', 4, 0, 'Devasree', 'Dutta', 'test@test.com', '9876543222', NULL, 0, '69792 Mukesh Stravenue', 'Asperiores dolorem voluptatem.', 'Bouvet Island (Bouvetoya)', 'Andra Pradesh', 'Namboothiriland', '737617', 0, 0, '129 Shwet Pines', 'Maxime voluptatum at quos quo quam voluptates corrupti quam et.', 'Azerbaijan', 'Assam', 'Lake Chandranathberg', '356265', 1725.00, 0.00, 'standard', 0.00, 0.00, 0, 1725.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-09 11:28:43'),
(24, 'ONN697270508', '127.0.0.1', 4, 0, 'Devasree', 'Dutta', 'test@test2.com', '9876543222', NULL, 0, '48 Durgeshwari Walks', 'Cumque occaecati aspernatur ut voluptatibus voluptatem nihil natus.,', 'india', 'Jammu and Kashmir', 'North Devmouth', '111111', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 4600.00, 0.00, 'standard', 0.00, 0.00, 0, 4600.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-10 05:47:38'),
(26, 'ONN557402884', '127.0.0.1', 0, 0, 'Suvajit', 'Guha', 'suvajit.bardhan@onenesstechs.in', '9038775709', NULL, 0, 'B/19 HN road', 'Deshbanhdu school', 'India', 'West Bengal', 'Kolkata', '700067', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1060.00, 0.00, 'standard', 0.00, 0.00, 0, 1060.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-22 09:04:28'),
(34, 'ONN1687431651', '127.0.0.1', 0, 0, 'Suvajit', 'bardhan', 'suvajit.bardhan@onenesstechs.in', '9038775709', NULL, 0, 'B/19 HN road', 'Deshbanhdu school', 'India', 'West Bengal', 'Kolkata', '700067', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1060.00, 0.00, 'standard', 0.00, 0.00, 0, 1060.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-22 11:35:08'),
(35, 'ONN1568407002', '127.0.0.1', 26, 0, 'test', 'user', 'suvajit.bardhan2@onenesstechs.in', '9038775707', NULL, 0, 'B/19 HN road', 'Deshbanhdu school', 'India', 'West Bengal', 'Kolkata', '700067', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 5529.00, 0.00, 'standard', 0.00, 0.00, 0, 5529.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-23 08:39:59'),
(36, 'ONN1986548744', '127.0.0.1', 26, 0, 'test', 'user', 'suvajit.bardhan2@onenesstechs.in', '9038775707', NULL, 0, 'B/19 HN road', NULL, 'India', 'West Bengal', 'Kolkata', '700067', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 4400.00, 0.00, 'standard', 0.00, 0.00, 0, 4400.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-23 14:43:27'),
(37, 'ONN1731083780', '127.0.0.1', 0, 0, 'Suvajit', 'Bardhan', 'suvajit.bardhan@onenesstechs.in', '9038775709', NULL, 0, 'B/19 HN road', 'Deshbanhdu school', 'India', 'West Bengal', 'Kolkata', '700067', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1622.00, 0.00, 'standard', 0.00, 0.00, 2, 1622.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-24 13:53:14'),
(38, 'ONN2126371347', '127.0.0.1', 0, 0, 'Suvajit', 'Bardhan', 'bardhan@user.com', '9876543210', NULL, 0, '177 Anjali Mall', 'Deshbanhdu school', 'Central African Republic', 'West Bengal', 'Kolkata', '700067', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3669.00, 0.00, 'standard', 0.00, 500.00, 2, 3169.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-24 14:05:40'),
(39, 'ONN272894762', '127.0.0.1', 0, 0, 'Suvajit', 'Bardhan', 'suvajit.bardhan@onenesstechs.in', '9876543210', NULL, 0, 'B/19 HN road', 'Deshbanhdu school', 'India', 'West Bengal', 'Kolkata', '700067', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3669.00, 0.00, 'standard', 0.00, 500.00, 2, 3169.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-25 05:52:51'),
(40, 'ONN1097170116', '127.0.0.1', 0, 0, 'Sarla', 'Varrier', 'your.email+fakedata44065@gmail.com', '9876543210', NULL, 0, '6 Tarun Well', 'Ut voluptatem eaque aperiam non cupiditate totam.', 'Cuba', 'Bihar', 'East Chapal', '133194', 0, 0, '6 Tarun Well', 'Ut voluptatem eaque aperiam non cupiditate totam.', 'Cuba', 'Bihar', 'East Chapal', '133194', 3669.00, 0.00, 'express', 0.00, 0.00, 2, 3669.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-25 06:23:15'),
(41, 'ONN1495017718', '127.0.0.1', 0, 0, 'Atreyi', 'Nehru', 'your.email+fakedata34742@gmail.com', '9038775709', NULL, 0, '5284 Gangesh Tunnel', 'Aut eligendi temporibus et qui amet animi inventore illo laboriosam.', 'South Africa', 'Bihar', 'Indirastad', '561077', 0, 0, '5284 Gangesh Tunnel', 'Aut eligendi temporibus et qui amet animi inventore illo laboriosam.', 'South Africa', 'Bihar', 'Indirastad', '561077', 3669.00, 0.00, 'express', 0.00, 0.00, 2, 3669.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-25 06:24:32'),
(42, 'ONN1929079053', '127.0.0.1', 0, 0, 'Rukmin', 'Varman', 'your.email+fakedata23545@gmail.com', '9876543210', NULL, 0, '466 Abbott Lodge', 'Pariatur ut rerum pariatur deserunt est quia repellat et illum.', 'Canada', 'Manipur', 'Indraborough', '148108', 0, 0, '466 Abbott Lodge', 'Pariatur ut rerum pariatur deserunt est quia repellat et illum.', 'Canada', 'Manipur', 'Indraborough', '148108', 2871.00, 0.00, 'standard', 0.00, 0.00, 2, 2871.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-25 07:15:50'),
(43, 'ONN904550126', '127.0.0.1', 0, 0, 'Kalyani', 'Mahajan', 'your.email+fakedata16501@gmail.com', '9876543210', NULL, 0, '3874 Chopra Tunnel', 'Ad atque magni non debitis.', 'Honduras', 'Odisha', 'West Chetanaanandfort', '783620', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2871.00, 0.00, 'standard', 0.00, 0.00, 0, 2871.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-25 07:20:08'),
(44, 'ONN549247929', '127.0.0.1', 0, 0, 'Aatreya', 'Bharadwaj', 'your.email+fakedata31683@gmail.com', '9876543210', NULL, 0, '75768 Anila Roads', 'Est necessitatibus consequuntur optio error minima.', 'Swaziland', 'Daman and Diu', 'East Nirbhay', '327361', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2871.00, 0.00, 'express', 0.00, 0.00, 0, 2871.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-25 07:20:33'),
(45, 'ONN1716375495', '127.0.0.1', 0, 0, 'Jai', 'Pilla', 'your.email+fakedata45947@gmail.com', '9876543210', NULL, 0, '44 Bhilangana Harbor', 'Impedit porro nesciunt accusantium voluptatibus minima eos et vel.', 'Tajikistan', 'Madya Pradesh', 'Port Manifort', '601340', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2871.00, 0.00, 'express', 0.00, 0.00, 0, 2871.00, NULL, 'cash_on_delivery', 0, 0, 2, '2022-03-25 07:49:35'),
(46, 'ONN111264837', '127.0.0.1', 0, 0, 'Deenabandhu', 'Bhattathiri', 'your.email+fakedata94337@gmail.com', '9876543210', NULL, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'Burundi', 'Goa', 'New Apsara', '430466', 1, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'Burundi', 'Goa', 'New Apsara', '430466', 2871.00, 0.00, 'standard', 0.00, 0.00, 0, 2871.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-25 07:50:17'),
(47, 'ONN280091922', '127.0.0.1', 0, 0, 'Dhatri', 'Dwivedi', 'your.email+fakedata75409@gmail.com', '9876543210', NULL, 0, '971 Giri Corner', 'Doloremque itaque sed unde.', 'Solomon Islands', 'Tamil Nadu', 'Nehrufort', '700067', 0, 0, '1715 Susheel Pike', 'Qui corporis qui beatae iste rerum et omnis.', 'Comoros', 'Bihar', 'Arunaside', '600067', 2871.00, 0.00, 'express', 0.00, 0.00, 0, 2871.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-03-25 07:51:03'),
(52, 'ONN1299717408', '127.0.0.1', 5, 1, 'Alex', 'John', 'test@email.com', '9876543211', NULL, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 1, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 499.00, 0.00, 'express', 0.00, 0.00, 0, 500.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-04-26 01:37:34'),
(54, 'ONN1575709332', '127.0.0.1', 5, 1, 'Alex', 'John', 'test@email.com', '9876543211', NULL, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 1, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 499.00, 0.00, 'express', 0.00, 0.00, 0, 500.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-04-26 02:09:00'),
(55, 'ONN399058540', '127.0.0.1', 5, 1, 'Alex', 'John', 'test@email.com', '9876543211', NULL, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 1, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 499.00, 0.00, 'express', 0.00, 0.00, 0, 500.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-04-26 02:09:00'),
(56, 'ONN174087555', '127.0.0.1', 5, 1, 'Alex', 'John', 'test@email.com', '9876543211', NULL, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 1, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 499.00, 0.00, 'express', 0.00, 0.00, 0, 500.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-04-26 02:11:06'),
(57, 'ONN106093594', '127.0.0.1', 5, 1, 'Alex', 'John', 'test@email.com', '9876543211', NULL, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 1, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 499.00, 0.00, 'express', 0.00, 0.00, 0, 500.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-04-26 02:11:06'),
(58, 'ONN1133687535', '127.0.0.1', 5, 1, 'Alex', 'John', 'test@email.com', '9876543211', NULL, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 1, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 499.00, 0.00, 'express', 0.00, 0.00, 0, 500.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-04-26 02:13:33'),
(59, 'ONN129381014', '127.0.0.1', 5, 1, 'Alex', 'John', 'test@email.com', '9876543211', NULL, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 1, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 499.00, 0.00, 'express', 0.00, 0.00, 0, 500.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-04-26 02:13:33'),
(68, 'ONN512812339', '127.0.0.1', 5, 1, 'Alex', 'John', 'test@email.com', '9876543211', NULL, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 1, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 1674.00, 30.00, 'express', 10.00, 0.00, 0, 1714.00, NULL, 'cash_on_delivery', 0, 0, 1, '2022-04-26 02:48:57'),
(69, 'ONN765090923', '127.0.0.1', 5, 1, 'Alex', 'John', 'test@email.com', '9876543211', NULL, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 1, 0, '8006 Chandraprabha Lodge', 'Perferendis sunt et et hic.', 'India', 'Goa', 'New Apsara', '430466', 1674.00, 30.00, 'express', 10.00, 0.00, 0, 1714.00, NULL, 'cash_on_delivery', 0, 0, 2, '2022-04-26 02:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_variation_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `offer_price` double(10,2) NOT NULL DEFAULT '0.00',
  `qty` int NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: new, 2: confirmed, 3: shipped, 4: delivered, 5: cancelled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_slug`, `product_variation_id`, `price`, `offer_price`, `qty`, `status`, `created_at`) VALUES
(1, 1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'uploads/product/1646374037.catago_2.png', 'lorem-ipsum-is-simply-dummy-text-of-the-printing-and-typesetting-industry', '4', 999.00, 499.00, 2, 1, '2022-03-04 11:27:29'),
(16, 16, 3, 'Men Navy Blue Solid Polo Collar T-shirt', 'http://127.0.0.1:8000/uploads/product/1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'men-navy-blue-solid-polo-collar-t-shirt', NULL, 575.00, 575.00, 2, 1, '2022-03-08 11:44:58'),
(17, 16, 2, 'Men Pack of 2 Solid Polo Collar T-shirts', 'http://127.0.0.1:8000/uploads/product/1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 'men-pack-of-2-solid-polo-collar-t-shirts', NULL, 1300.00, 1150.00, 4, 1, '2022-03-08 11:44:58'),
(18, 17, 3, 'Men Navy Blue Solid Polo Collar T-shirt', 'http://127.0.0.1:8000/uploads/product/1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'men-navy-blue-solid-polo-collar-t-shirt', NULL, 575.00, 575.00, 2, 1, '2022-03-08 11:45:50'),
(19, 17, 2, 'Men Pack of 2 Solid Polo Collar T-shirts', 'http://127.0.0.1:8000/uploads/product/1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 'men-pack-of-2-solid-polo-collar-t-shirts', NULL, 1300.00, 1150.00, 4, 1, '2022-03-08 11:45:50'),
(20, 18, 3, 'Men Navy Blue Solid Polo Collar T-shirt', 'http://127.0.0.1:8000/uploads/product/1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'men-navy-blue-solid-polo-collar-t-shirt', NULL, 575.00, 575.00, 2, 1, '2022-03-08 11:46:01'),
(21, 18, 2, 'Men Pack of 2 Solid Polo Collar T-shirts', 'http://127.0.0.1:8000/uploads/product/1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 'men-pack-of-2-solid-polo-collar-t-shirts', NULL, 1300.00, 1150.00, 4, 1, '2022-03-08 11:46:01'),
(22, 19, 3, 'Men Navy Blue Solid Polo Collar T-shirt', 'http://127.0.0.1:8000/uploads/product/1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'men-navy-blue-solid-polo-collar-t-shirt', NULL, 575.00, 575.00, 2, 1, '2022-03-08 11:48:25'),
(23, 19, 2, 'Men Pack of 2 Solid Polo Collar T-shirts', 'http://127.0.0.1:8000/uploads/product/1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 'men-pack-of-2-solid-polo-collar-t-shirts', NULL, 1300.00, 1150.00, 4, 1, '2022-03-08 11:48:25'),
(24, 20, 3, 'Men Navy Blue Solid Polo Collar T-shirt', 'http://127.0.0.1:8000/uploads/product/1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'men-navy-blue-solid-polo-collar-t-shirt', NULL, 575.00, 575.00, 8, 1, '2022-03-09 10:03:20'),
(25, 20, 2, 'Men Pack of 2 Solid Polo Collar T-shirts', 'http://127.0.0.1:8000/uploads/product/1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 'men-pack-of-2-solid-polo-collar-t-shirts', NULL, 1300.00, 1150.00, 4, 1, '2022-03-09 10:03:20'),
(26, 21, 3, 'Men Navy Blue Solid Polo Collar T-shirt', 'http://127.0.0.1:8000/uploads/product/1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'men-navy-blue-solid-polo-collar-t-shirt', NULL, 575.00, 575.00, 8, 1, '2022-03-09 10:03:56'),
(27, 21, 2, 'Men Pack of 2 Solid Polo Collar T-shirts', 'http://127.0.0.1:8000/uploads/product/1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 'men-pack-of-2-solid-polo-collar-t-shirts', NULL, 1300.00, 1150.00, 4, 1, '2022-03-09 10:03:56'),
(28, 22, 3, 'Men Navy Blue Solid Polo Collar T-shirt', 'http://127.0.0.1:8000/uploads/product/1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'men-navy-blue-solid-polo-collar-t-shirt', '8', 575.00, 575.00, 8, 1, '2022-03-09 10:05:43'),
(29, 22, 2, 'Men Pack of 2 Solid Polo Collar T-shirts', 'http://127.0.0.1:8000/uploads/product/1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 'men-pack-of-2-solid-polo-collar-t-shirts', NULL, 1300.00, 1150.00, 4, 1, '2022-03-09 10:05:43'),
(30, 23, 3, 'Men Navy Blue Solid Polo Collar T-shirt', 'http://127.0.0.1:8000/uploads/product/1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'men-navy-blue-solid-polo-collar-t-shirt', '8', 575.00, 575.00, 1, 1, '2022-03-09 11:28:43'),
(31, 23, 2, 'Men Pack of 2 Solid Polo Collar T-shirts', 'http://127.0.0.1:8000/uploads/product/1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 'men-pack-of-2-solid-polo-collar-t-shirts', NULL, 1300.00, 1150.00, 1, 1, '2022-03-09 11:28:43'),
(32, 24, 2, 'Men Pack of 2 Solid Polo Collar T-shirts', 'http://127.0.0.1:8000/uploads/product/1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 'men-pack-of-2-solid-polo-collar-t-shirts', NULL, 1300.00, 1150.00, 3, 1, '2022-03-10 05:47:38'),
(33, 24, 3, 'Men Navy Blue Solid Polo Collar T-shirt', 'http://127.0.0.1:8000/uploads/product/1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'men-navy-blue-solid-polo-collar-t-shirt', NULL, 575.00, 575.00, 2, 1, '2022-03-10 05:47:38'),
(34, 25, 7, 'LOW SHOW SOCKS', 'http://localhost:8000/uploads/product/polo_tshirt_front.png', 'low-show-socks', NULL, 90.00, 90.00, 4, 1, '2022-03-22 08:53:20'),
(35, 25, 125, 'FULL SLEEVES V/NECK', 'http://localhost:8000/uploads/product/polo_tshirt_front.png', 'full-sleeves-v-neck', NULL, 610.00, 610.00, 7, 1, '2022-03-22 08:53:20'),
(36, 25, 17, 'FINE VEST', 'http://localhost:8000/uploads/product/polo_tshirt_front.png', 'fine-vest-2', NULL, 280.00, 280.00, 3, 1, '2022-03-22 08:53:20'),
(37, 25, 38, 'HALF SLEEVE R/ NECK', 'http://127.0.0.1:8000/uploads/product/polo_tshirt_front.png', 'half-sleeve-r-neck', '1', 530.00, 530.00, 1, 1, '2022-03-22 08:53:20'),
(38, 26, 38, 'HALF SLEEVE R/ NECK', 'http://127.0.0.1:8000/uploads/product/polo_tshirt_front.png', 'half-sleeve-r-neck', '7', 530.00, 530.00, 2, 1, '2022-03-22 09:04:28'),
(46, 34, 38, 'HALF SLEEVE R/ NECK', 'http://127.0.0.1:8000/uploads/product/polo_tshirt_front.png', 'half-sleeve-r-neck', '7', 530.00, 530.00, 2, 1, '2022-03-22 11:35:08'),
(47, 35, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads/product/polo_tshirt_front.png', 'round-neck-t-shirt', NULL, 399.00, 399.00, 3, 1, '2022-03-23 08:39:59'),
(48, 35, 79, 'FASHION BRIEF O/E', 'http://127.0.0.1:8000/uploads\\product\\product_images\\262\\ONN-Grande-262-1.jpg', 'fashion-brief-o-e', NULL, 175.00, 175.00, 5, 1, '2022-03-23 08:39:59'),
(49, 35, 32, 'PRINTED SWEATSHIRT', 'http://127.0.0.1:8000/uploads/product/product_images/1021/1021-1.jpg', 'printed-sweatshirt', NULL, 799.00, 799.00, 3, 1, '2022-03-23 08:39:59'),
(50, 35, 38, 'HALF SLEEVE R/ NECK', 'http://127.0.0.1:8000/uploads/product/polo_tshirt_front.png', 'half-sleeve-r-neck', '3', 530.00, 530.00, 2, 1, '2022-03-23 08:39:59'),
(51, 36, 125, 'FULL SLEEVES V/NECK', 'http://127.0.0.1:8000/uploads/product/polo_tshirt_front.png', 'full-sleeves-v-neck', NULL, 610.00, 610.00, 2, 1, '2022-03-23 14:43:27'),
(52, 36, 38, 'HALF SLEEVE R/ NECK', 'http://127.0.0.1:8000/uploads/product/polo_tshirt_front.png', 'half-sleeve-r-neck', '5', 530.00, 530.00, 4, 1, '2022-03-23 14:43:27'),
(53, 36, 38, 'HALF SLEEVE R/ NECK', 'http://127.0.0.1:8000/uploads/product/polo_tshirt_front.png', 'half-sleeve-r-neck', '6', 530.00, 530.00, 2, 1, '2022-03-23 14:43:27'),
(54, 37, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '17', 399.00, 399.00, 3, 1, '2022-03-24 13:53:14'),
(55, 37, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '24', 425.00, 425.00, 1, 1, '2022-03-24 13:53:14'),
(56, 38, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-03-24 14:05:40'),
(57, 38, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-03-24 14:05:40'),
(58, 38, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '74', 399.00, 399.00, 5, 1, '2022-03-24 14:05:40'),
(59, 39, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-03-25 05:52:51'),
(60, 39, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-03-25 05:52:51'),
(61, 39, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '74', 399.00, 399.00, 5, 1, '2022-03-25 05:52:51'),
(62, 40, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-03-25 06:23:15'),
(63, 40, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-03-25 06:23:15'),
(64, 40, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '74', 399.00, 399.00, 5, 1, '2022-03-25 06:23:15'),
(65, 41, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-03-25 06:24:32'),
(66, 41, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-03-25 06:24:32'),
(67, 41, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '74', 399.00, 399.00, 5, 1, '2022-03-25 06:24:32'),
(68, 42, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-03-25 07:15:50'),
(69, 42, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-03-25 07:15:50'),
(70, 42, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '74', 399.00, 399.00, 3, 1, '2022-03-25 07:15:50'),
(71, 43, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-03-25 07:20:08'),
(72, 43, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-03-25 07:20:08'),
(73, 43, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '74', 399.00, 399.00, 3, 1, '2022-03-25 07:20:08'),
(74, 44, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-03-25 07:20:33'),
(75, 44, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-03-25 07:20:33'),
(76, 44, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '74', 399.00, 399.00, 3, 1, '2022-03-25 07:20:33'),
(77, 45, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-03-25 07:49:35'),
(78, 45, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-03-25 07:49:35'),
(79, 45, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '74', 399.00, 399.00, 3, 1, '2022-03-25 07:49:35'),
(80, 46, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-03-25 07:50:17'),
(81, 46, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-03-25 07:50:17'),
(82, 46, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '74', 399.00, 399.00, 3, 1, '2022-03-25 07:50:17'),
(83, 47, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-03-25 07:51:03'),
(84, 47, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-03-25 07:51:03'),
(85, 47, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '74', 399.00, 399.00, 3, 1, '2022-03-25 07:51:03'),
(86, 58, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-04-26 07:43:33'),
(87, 58, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-04-26 07:43:33'),
(88, 59, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-04-26 07:43:33'),
(89, 59, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-04-26 07:43:33'),
(90, 60, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-04-26 07:54:38'),
(91, 60, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-04-26 07:54:38'),
(92, 61, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-04-26 07:54:38'),
(94, 62, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-04-26 08:10:34'),
(95, 62, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-04-26 08:10:34'),
(98, 64, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-04-26 08:13:27'),
(99, 64, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-04-26 08:13:27'),
(100, 65, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-04-26 08:13:27'),
(101, 65, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-04-26 08:13:27'),
(106, 68, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-04-26 08:18:57'),
(107, 68, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-04-26 08:18:57'),
(108, 69, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '95', 425.00, 425.00, 3, 1, '2022-04-26 08:18:57'),
(109, 69, 13, 'ROUND NECK T-SHIRT', 'http://127.0.0.1:8000/uploads\\product\\product_images\\422\\422-1.jpg', 'round-neck-t-shirt', '83', 399.00, 399.00, 1, 1, '2022-04-26 08:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('diptitrader@gmail.com', 'baIln4TDv8yNSceJK6ASng2Pd2qij7e78YJU0rVczvyzAjHc8sqgLV9pD4f5gy45', '2022-04-26 06:32:05'),
('diptitrader@gmail.com', 'z3nRp39pUcaaEwYEBvzQMM1RbXn8zbQ6lKE1GHTvGhYeAPncrHaTj1xXkmAR5VYg', '2022-04-26 06:32:56'),
('ravishankar20@gmail.com', 'aWE08aZwjCye6onVnPZsvpCOIrugCRJCXfFO1CDVsXRD2m0qYOtXrcrJB3Z09nYa', '2022-04-26 06:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `cat_id` bigint NOT NULL,
  `sub_cat_id` bigint NOT NULL,
  `collection_id` bigint NOT NULL,
  `store_id` int DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `offer_price` double(10,2) NOT NULL,
  `size_chart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pack` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `master_pack` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `only_for` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all' COMMENT 'men, women, kids, all',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `style_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int NOT NULL DEFAULT '0',
  `last_view_count_updated_at` timestamp NULL DEFAULT NULL,
  `is_trending` tinyint NOT NULL DEFAULT '0' COMMENT '1: yes, 0:no',
  `is_best_seller` tinyint NOT NULL DEFAULT '0' COMMENT '1: yes, 0:no',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `sub_cat_id`, `collection_id`, `store_id`, `name`, `image`, `short_desc`, `desc`, `price`, `offer_price`, `size_chart`, `pack`, `master_pack`, `only_for`, `slug`, `meta_title`, `meta_desc`, `meta_keyword`, `style_no`, `view_count`, `last_view_count_updated_at`, `is_trending`, `is_best_seller`, `status`, `created_at`, `updated_at`) VALUES
(4, 14, 4, 2, 0, 'NO SHOW SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 85.00, 85.00, 'Free size', '1 PC PACK', '1 BOX = 10 PAIR\n', 'all', 'no-show-socks', '', '', '', 'OF 3001 A', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(6, 14, 4, 2, 0, 'LOW SHOW SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 90.00, 90.00, 'Free size\n', '1 PC PACK', '1 BOX = 10 PAIR\n', 'all', 'low-show-socks-2', '', '', '', 'OF 3002 B', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(7, 14, 4, 2, 0, 'LOW SHOW SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 90.00, 90.00, 'Free size\n', '1 PC PACK', '1 BOX = 10 PAIR\n', 'all', 'low-show-socks', '', '', '', 'OF 3002 A', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(8, 14, 4, 2, 0, 'ANKLET SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 95.00, 95.00, 'Free size\n', '1 PC PACK', '1 BOX = 10 PAIR\n', 'all', 'anklet-socks-2', '', '', '', 'OF 3003 A', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(9, 14, 4, 2, 0, 'ANKLET SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 95.00, 95.00, 'Free size\n', '1 PC PACK', '1 BOX = 10 PAIR\n', 'all', 'anklet-socks', '', '', '', 'OF 3004 A', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(11, 14, 4, 2, 0, 'ANKLET PLEATED SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 90.00, 90.00, 'Free size\n', '1 PC PACK', '1 BOX = 10 PAIR\n', 'all', 'anklet-pleated-socks', '', '', '', 'OF 3005 A', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(12, 9, 3, 4, 0, '\"V\" NECK T-SHIRT', 'uploads/product/polo_tshirt_front.png', 'Made from 100% premium combed cotton , Modern fit for extra comfort , Ribbed \"V\" neck prevents sagging , To be worn as loungewear or casual tee , Available in attractive color ', 'Made from 100% premium combed cotton , Modern fit for extra comfort , Ribbed \"V\" neck prevents sagging , To be worn as loungewear or casual tee , Available in attractive color ', 410.00, 410.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115 | XXL: 120-125 | 3XL: 130-135 | 4XL: 140-145\n', '1 PC\n', '5 PC PACK\n', 'all', 'v-neck-t-shirt', '', '', '', '423', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(13, 9, 3, 4, 0, 'ROUND NECK T-SHIRT', 'uploads\\product\\product_images\\422\\422-1.jpg', 'Made from 100% premium combed cotton , Modern fit for extra comfort , Ribbed crew-neck prevents sagging , To be worn as loungewear or casual tee , Available in attractive color', 'Made from 100% premium combed cotton , Modern fit for extra comfort , Ribbed crew-neck prevents sagging , To be worn as loungewear or casual tee , Available in attractive color', 399.00, 399.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115 | XXL: 120-125 | 3XL: 130-135 | 4XL: 140-145', '1 PC', '5 PC PACK\n', 'all', 'round-neck-t-shirt', '', '', '', '422', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(14, 9, 14, 4, 0, 'FULL SLEEVES R/N T-SHIRT', 'uploads/product/polo_tshirt_front.png', 'Made from 100% premium combed cotton , Modern fit for extra comfort , Ribbed crew-neck prevents sagging , To be worn as loungewear or casual tee , Available in attractive colou', 'Made from 100% premium combed cotton , Modern fit for extra comfort , Ribbed crew-neck prevents sagging , To be worn as loungewear or casual tee , Available in attractive colou', 499.00, 499.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115 | XXL: 120-125 | 3XL: 130-135 | 4XL: 140-145\n', '1 PC', '5 PC PACK\n', 'all', 'full-sleeves-rn-t-shirt', '', '', '', '425', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(15, 9, 3, 4, 0, 'POLO T-SHIRT', 'uploads/product/product_images/431/431-1.jpg', 'Premium combed cotton rich fabric , Modern fit for extra comfort , Twill tape reinforcement on neck for enhanced style and durability , To be worn as loungewear or casual tee , Available in attractive colors', 'Premium combed cotton rich fabric , Modern fit for extra comfort , Twill tape reinforcement on neck for enhanced style and durability , To be worn as loungewear or casual tee , Available in attractive colors', 575.00, 575.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115 | XXL: 120-125 | 3XL: 130-135 | 4XL: 140-145\n', '1 PC', '5 PC PACK', 'all', 'polo-t-shirt', '', '', '', '431', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(16, 9, 3, 4, 0, 'POLO T-SHIRT (WITH POCKET)', 'uploads/product/product_images/432/432-1.jpg', 'Modern fit for extra comfort , Twill tape reinforcement on neck for enhanced style and durability , To be worn as loungewear or casual tee with pocket , Available in attractive color ', 'Modern fit for extra comfort , Twill tape reinforcement on neck for enhanced style and durability , To be worn as loungewear or casual tee with pocket , Available in attractive color ', 599.00, 599.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115 | XXL: 120-125 | 3XL: 130-135 | 4XL: 140-145\n', '1 PC\n', '5 PC PACK\n', 'all', 'polo-t-shirt-with-pocket', '', '', '', '432', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(17, 5, 5, 3, 0, 'FINE VEST', 'uploads/product/polo_tshirt_front.png', 'Made from premium 100% pure cotton , Fits body perfectly , Contoured armhole , Round neck scoop for easy wearing , Extended length to ease \'tucking in’ , Double reinforced shoulder strap seams', 'Made from premium 100% pure cotton , Fits body perfectly , Contoured armhole , Round neck scoop for easy wearing , Extended length to ease \'tucking in’ , Double reinforced shoulder strap seams', 280.00, 280.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115\n', '2 PC', NULL, 'all', 'fine-vest-2', '', '', '', '121', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(18, 5, 5, 3, 0, 'RIBBED 1X1 VEST', 'uploads/product/polo_tshirt_front.png', '100% premium combed cotton , 1x1 Stretch \"Rib\" fabric , Contoured armhole for flexibility , Double reinforced shoulder strap seams for durability , Soft stitch international machines', '100% premium combed cotton , 1x1 Stretch \"Rib\" fabric , Contoured armhole for flexibility , Double reinforced shoulder strap seams for durability , Soft stitch international machines', 199.00, 199.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115\n', '1 PC', NULL, 'all', 'ribbed-1x1-vest', '', '', '', '131 White', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(19, 5, 5, 3, 0, 'RIBBED 1X1 VEST', 'uploads\\product\\product_images\\131.jpg', '100% premium combed cotton , 1x1 Stretch \"Rib\" fabric , Contoured armhole for flexibility , Double reinforced shoulder strap seams for durability , Soft stitch international machines', '100% premium combed cotton , 1x1 Stretch \"Rib\" fabric , Contoured armhole for flexibility , Double reinforced shoulder strap seams for durability , Soft stitch international machines', 225.00, 225.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115\n', '1 PC \n', NULL, 'all', 'ribbed-1x1-vest-2', '', '', '', '131 Ass', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(22, 5, 5, 8, 0, 'FINE VEST', 'uploads/product/polo_tshirt_front.png', 'Assuring great comfort, ONN brings you this neatly tailored vest that is a great addition to the inner wear collection , This vest is the best choice for regular use , ONN presents this vest that assures great comfort along with a decent fit , Crafted from pure cotton', 'Assuring great comfort, ONN brings you this neatly tailored vest that is a great addition to the inner wear collection , This vest is the best choice for regular use , ONN presents this vest that assures great comfort along with a decent fit , Crafted from pure cotton', 140.00, 140.00, 'S: 80 | M: 85 | L: 90 | XL: 95 | 2XL: 100\n', '2 Pc\n', '5 PC PACK\n', 'all', 'fine-vest-3', '', '', '', '111', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(23, 6, 4, 8, 0, 'BASIC BRIEF', 'uploads/product/polo_tshirt_front.png', 'Made from 100% pure premium combed cotton , Specially designed to fit just above the hip , Super absorbent fabric , Regular brief with snug fit', 'Made from 100% pure premium combed cotton , Specially designed to fit just above the hip , Super absorbent fabric , Regular brief with snug fit', 320.00, 320.00, 'S: 80 | M: 85 | L: 90 | XL: 95 | 2XL: 100\n', '3 PC\n', '15 PC PACK\n', 'all', 'basic-brief', '', '', '', '152(3Pcs)', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(24, 6, 4, 8, 0, 'BRIEF', 'uploads/product/polo_tshirt_front.png', 'Made with 100% pure premium combed cotton , Specially designed to fit just above the hip , Super absorbent fabric , New ultra soft waistband provised smooth and comfortable grip', 'Made with 100% pure premium combed cotton , Specially designed to fit just above the hip , Super absorbent fabric , New ultra soft waistband provised smooth and comfortable grip', 140.00, 140.00, 'S: 80 | M: 85 | L: 90 | XL: 95 | 2XL: 100\n', '1 PC\n', '10 PC PACK\n', 'all', 'brief', '', '', '', '153', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(25, 11, 8, 8, 0, 'MINI TRUNK', 'uploads/product/polo_tshirt_front.png', 'Made from 100% pure premium combed cotton , Specially designed to fit when worn just above the hip , Super absorbent fabric , New ultra soft waistband provides smooth and comfortable grip', 'Made from 100% pure premium combed cotton , Specially designed to fit when worn just above the hip , Super absorbent fabric , New ultra soft waistband provides smooth and comfortable grip', 165.00, 165.00, 'S: 80 | M: 85 | L: 90 | XL: 95 | 2XL: 100\n', '1 PC\n', '10 PC PACK\n', 'all', 'mini-trunk-2', '', '', '', '154', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(26, 11, 8, 8, 0, 'LONG TRUNK', 'uploads/product/polo_tshirt_front.png', 'Made from 100% pure premium combed cotton , Specially designed to fit when worn just above the hip , Super absorbent fabric , New ultra soft waistband provides smooth and comfortable grip', 'Made from 100% pure premium combed cotton , Specially designed to fit when worn just above the hip , Super absorbent fabric , New ultra soft waistband provides smooth and comfortable grip', 185.00, 185.00, 'S: 80 | M: 85 | L: 90 | XL: 95 | 2XL: 100\n', '1 PC\n', '10 PC PACK\n', 'all', 'long-trunk', '', '', '', '155', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(27, 5, 5, 9, 0, 'FINE VEST', 'uploads/product/polo_tshirt_front.png', 'Made with 100% SuPima cotton imported from United States Of America , Extra soft silk finish , Unique single stitch to give a modern look', 'Made with 100% SuPima cotton imported from United States Of America , Extra soft silk finish , Unique single stitch to give a modern look', 325.00, 325.00, 'S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115\n', '1 PC solid color', '5 PC PACK\n', 'all', 'fine-vest', '', '', '', '941', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(28, 6, 4, 9, 0, 'FASHION BRIEF', 'uploads/product/polo_tshirt_front.png', '48% Super Soft Combed Cotton , 48% Micro-Modal, 4 % Elastane , Ultra-Soft Waistband , Filament stitching thread used for extra durability', '48% Super Soft Combed Cotton , 48% Micro-Modal, 4 % Elastane , Ultra-Soft Waistband , Filament stitching thread used for extra durability', 275.00, 275.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC', '5 PC PACK\n', 'all', 'fashion-brief', '', '', '', '971', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(29, 6, 4, 9, 0, 'BRIEF', 'uploads/product/polo_tshirt_front.png', '48% Super-Soft combed cotton , 48% Micro-Modal, 4% Elastane , Ultra-Soft Waistband , Filament stitching thread used for extra durability', '48% Super-Soft combed cotton , 48% Micro-Modal, 4% Elastane , Ultra-Soft Waistband , Filament stitching thread used for extra durability', 275.00, 275.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC', '5 PC PACK\n', 'all', 'brief-2', '', '', '', '972', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(30, 11, 8, 9, 0, 'MINI TRUNK', 'uploads/product/polo_tshirt_front.png', '48% Super-Soft combed cotton , 48% Micro-Modal, 4% Elastane , Ultra-Soft Waistband , Filament stitching thread used for extra durability', '48% Super-Soft combed cotton , 48% Micro-Modal, 4% Elastane , Ultra-Soft Waistband , Filament stitching thread used for extra durability', 325.00, 325.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC', '5 PC PACK\n', 'all', 'mini-trunk', '', '', '', '973', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(31, 10, 2, 9, 0, 'TRACK PANT', 'uploads/product/polo_tshirt_front.png', 'Made from American cotton , Added lycra for stretch and comfort , Both side pocket with one side Zipper , Back side pocket for extra safety , Broad waistband for better fit', 'Made from American cotton , Added lycra for stretch and comfort , Both side pocket with one side Zipper , Back side pocket for extra safety , Broad waistband for better fit', 999.00, 999.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC', '3 PC PACK\n', 'all', 'track-pant', '', '', '', '966', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(32, 17, 12, 7, 0, 'PRINTED SWEATSHIRT', 'uploads/product/product_images/1021/1021-1.jpg', 'Super soft cotton , Modern fit for perfect comfort , Pocket on each side , Special raising for extra warmth', 'Super soft cotton , Modern fit for perfect comfort , Pocket on each side , Special raising for extra warmth', 799.00, 799.00, 'S | M | L | XL | 2XL\n', '1 pcs solid color\n', '3 pc pack\n', 'men', 'printed-sweatshirt', '', '', '', '1021', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(33, 17, 12, 7, 0, 'SWEATSHIRT', 'uploads/product/polo_tshirt_front.png', 'Super soft cotton , Modern fit for perfect comfort , Pocket on each side , Special raising for extra warmth', 'Super soft cotton , Modern fit for perfect comfort , Pocket on each side , Special raising for extra warmth', 750.00, 750.00, 'S | M | L | XL | 2XL\n', '1 pcs solid color\n', '3 pc pack\n', 'men', 'sweatshirt ', '', '', '', '1022', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(34, 17, 12, 7, 0, 'PRINTED SWEATSHIRT WITH HOOD', 'uploads\\product\\product_images\\1023.jpg', 'Super soft cotton , Modern fit for perfect comfort , Kangroo pockets for ease access and comfort , Ribbed cuff and waist hem', 'Super soft cotton , Modern fit for perfect comfort , Kangroo pockets for ease access and comfort , Ribbed cuff and waist hem', 999.00, 999.00, 'S | M | L | XL | 2XL\n', '1 pcs solid color\n', '3 pc pack\n', 'men', 'printed-sweatshirt-with-hood', '', '', '', '1023', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(35, 17, 12, 7, 0, 'FASHION SWEATSHIRT', 'uploads/product/polo_tshirt_front.png', 'Super soft cotton , Modern fit for perfect comfort , Pocket on each side , Special raising for extra warmth , Printed fashion sleeves', 'Super soft cotton , Modern fit for perfect comfort , Pocket on each side , Special raising for extra warmth , Printed fashion sleeves', 850.00, 850.00, 'S | M | L | XL | 2XL\n', '1 pcs solid color\n', '3 pc pack\n', 'men', 'fashion-sweatshirt', '', '', '', '1026', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(36, 16, 11, 7, 0, 'HOODIE JACKET', 'uploads/product/product_images/1031/1031-1.jpg', 'Super soft cotton , Modern fit for perfect comfort , Cross pockets for ease access and comfort , Ribbed cuff and waist hem', 'Super soft cotton , Modern fit for perfect comfort , Cross pockets for ease access and comfort , Ribbed cuff and waist hem', 1099.00, 1099.00, 'S | M | L | XL | 2XL\n', '1 pcs solid color\n', '3 pc pack\n', 'men', 'hoodie-jacket', '', '', '', '1031', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(37, 16, 11, 7, 0, 'HI-NECK JACKET', 'uploads/product/product_images/1032/1032-1.jpg', 'Super soft cotton , Modern fit for perfect comfort , Kangroo pockets for ease access and comfort , Ribbed cuff and waist hem', 'Super soft cotton , Modern fit for perfect comfort , Kangroo pockets for ease access and comfort , Ribbed cuff and waist hem', 950.00, 950.00, 'S | M | L | XL | 2XL\n', '1 pcs solid color\n', '3 pc pack\n', 'men', 'hi-neck-jacket', '', '', '', '1032', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(38, 9, 14, 6, 0, 'HALF SLEEVE R/ NECK', 'uploads/product/polo_tshirt_front.png', 'Made from premium cotton rich supreme fabric , Low self folded round neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Label free for all day comfort , Brushed interlock fabric for extra heat', 'Made from premium cotton rich supreme fabric , Low self folded round neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Label free for all day comfort , Brushed interlock fabric for extra heat', 530.00, 530.00, 'XS: 75cm | S: 80cm | M: 85cm | L: 90cm | XL: 95cm | XXL: 1.0mtr | 3XL: 1.05mtr\n', '1 PC', '5 PC PACK', 'men', 'half-sleeve-r-neck', '', '', '', 'OT 021', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(39, 9, 14, 6, 0, 'HALF SLEEVE R/ NECK', 'uploads/product/polo_tshirt_front.png', 'Made from premium cotton rich supreme fabric , Low self folded round neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Label free for all day comfort , Brushed interlock fabric for extra heat', 'Made from premium cotton rich supreme fabric , Low self folded round neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Label free for all day comfort , Brushed interlock fabric for extra heat', 520.00, 520.00, 'XS: 75cm | S: 80cm | M: 85cm | L: 90cm | XL: 95cm | XXL: 1.0mtr | 3XL: 1.05mtr\n', '1 PC', '5 PC PACK', 'men', 'half-sleeve-r-neck-2', '', '', '', 'OT 031', 0, NULL, 0, 0, 1, '2022-03-07 17:09:35', '2022-03-07 17:09:35'),
(40, 9, 14, 6, 0, 'FULL SLEEVES R/NECK', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Low self folded round neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort , Brushed interlock fabric for extra heat', 'Made from premium Cotton rich supreme fabric , Low self folded round neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort , Brushed interlock fabric for extra heat', 590.00, 590.00, 'XS: 75cm | S: 80cm | M: 85cm | L: 90cm | XL: 95cm | XXL: 1.0mtr | 3XL: 1.05mtr\n', '1 PC', '5 PC PACK', 'men', 'full-sleeves-r-neck', '', '', '', 'OT 032', 0, NULL, 0, 0, 1, '2022-03-07 17:09:35', '2022-03-07 17:09:35'),
(41, 9, 14, 6, 0, 'FULL SLEEVES CREW NECK', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Crew neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort  , Brushed interlock fabric for extra heat', 'Made from premium Cotton rich supreme fabric , Crew neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort  , Brushed interlock fabric for extra heat', 610.00, 610.00, 'XS: 75cm | S: 80cm | M: 85cm | L: 90cm | XL: 95cm | XXL: 1.0mtr | 3XL: 1.05mtr\n', '1 PC', '5 PC PACK', 'men', 'full-sleeves-crew-neck', '', '', '', 'OT 034', 0, NULL, 0, 0, 1, '2022-03-07 17:09:35', '2022-03-07 17:09:35'),
(42, 15, 13, 6, 0, 'TROUSER', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Double layered contoured pouch with fly for added comfort , Durable and soft fabric covered elasticated waistband , Ultrasoft texture renders superior comfort & warmth , Ribbed cuffs prevent riding up , Label free for all day comfort', 'Made from premium Cotton rich supreme fabric , Double layered contoured pouch with fly for added comfort , Durable and soft fabric covered elasticated waistband , Ultrasoft texture renders superior comfort & warmth , Ribbed cuffs prevent riding up , Label free for all day comfort', 599.00, 599.00, 'XS: 75cm | S: 80cm | M: 85cm | L: 90cm | XL: 95cm | XXL: 1.0mtr | 3XL: 1.05mtr\n', '1 PC', '5 PC PACK', 'men', 'trouser', '', '', '', 'OT 026', 0, NULL, 0, 0, 1, '2022-03-07 17:09:35', '2022-03-07 17:09:35'),
(43, 15, 13, 6, 0, 'TROUSER', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Double layered contoured pouch with fly for added comfort , Durable and soft fabric covered elasticated waistband , Ultrasoft texture renders superior comfort & warmth , Ribbed cuffs prevent riding up , Label free for all day comfort', 'Made from premium Cotton rich supreme fabric , Double layered contoured pouch with fly for added comfort , Durable and soft fabric covered elasticated waistband , Ultrasoft texture renders superior comfort & warmth , Ribbed cuffs prevent riding up , Label free for all day comfort', 590.00, 590.00, 'XS: 75cm | S: 80cm | M: 85cm | L: 90cm | XL: 95cm | XXL: 1.0mtr | 3XL: 1.05mtr\n', '1 PC', '5 PC PACK\n', 'men', 'trouser-2', '', '', '', 'OT 036', 0, NULL, 0, 0, 1, '2022-03-07 17:09:35', '2022-03-07 17:09:35'),
(44, 14, 4, 2, 0, 'HIGH ANKLET HALF TERRY SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 129.00, 129.00, 'Free size\n', '1 PC PACK', '1 BOX = 10 PAIR\n', 'all', 'high-anklet-half-terry-socks', '', '', '', 'OF 3006 A', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(45, 14, 4, 2, 0, 'HIGH ANKLET HALF TERRY SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 129.00, 129.00, 'Free size\n', '1 PC PACK', '1 BOX = 10 PAIR\n', 'all', 'high-anklet-half-terry-socks-2', '', '', '', 'OF 3006 B', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(46, 14, 4, 2, 0, 'HIGH ANKLET HALF TERRY FASHION SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 129.00, 129.00, 'Free size\n', '1 PC PACK', '1 BOX = 10 PAIR\n', 'all', 'high-anklet-half-terry-fashion-socks', '', '', '', 'OF 3007 A', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(47, 14, 4, 2, 0, 'HIGH ANKLET HALF TERRY SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 139.00, 139.00, 'Free size\n', '1 PC PACK', '1 BOX = 10 PAIR\n', 'all', 'high-anklet-half-terry-socks-3', '', '', '', 'OF 3008 A', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(48, 14, 4, 2, 0, 'CREW FORMAL SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 109.00, 109.00, 'Free size\n', '1 PC PACK', '1 BOX = 10 PAIR\n', 'all', 'crew-formal-socks', '', '', '', 'OF 3009 A', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(49, 14, 4, 2, 0, 'CREW FORMAL SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 109.00, 109.00, 'Free size\n', '1 PC PACK', '1 BOX = 10 PAIR\n', 'all', 'crew-formal-socks-2', '', '', '', 'OF 3009 B', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(50, 14, 4, 2, 0, 'CREW PLEATED SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 109.00, 109.00, 'Free size\n', '1 PC PACK\n', '1 BOX = 10 PAIR\n', 'all', 'crew-pleated-socks', '', '', '', 'OF 3010 A', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(51, 14, 4, 2, 0, 'CREW FULL TERRY SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 159.00, 159.00, 'Free size\n', '1 PC PACK\n', '1 BOX = 10 PAIR\n', 'all', 'crew-full-terry-socks', '', '', '', 'OF 3011 A', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(52, 14, 4, 2, 0, 'CREW FULL TERRY SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 159.00, 159.00, 'Free size\n', '1 PC PACK\n', '1 BOX = 10 PAIR\n', 'all', 'crew-full-terry-socks-2', '', '', '', 'OF 3011 B', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(53, 14, 4, 2, 0, 'CREW FULL TERRY FASHION SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 159.00, 159.00, 'Free size\n', '1 PC PACK\n', '1 BOX = 10 PAIR\n', 'all', 'crew-full-terry-fashion-socks', '', '', '', 'OF 3012 A', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(54, 9, 3, 4, 0, 'DUAL TONE T-SHIRT', 'uploads/product/polo_tshirt_front.png', 'Premium combed cotton rich fabric , Dual tone colour for the modern man , To be worn as lounge wear or casual tee , Available in attractive colours ', 'Premium combed cotton rich fabric , Dual tone colour for the modern man , To be worn as lounge wear or casual tee , Available in attractive colours ', 599.00, 599.00, 'S: 80-85| M: 90-95 L: 100-105 XL: 110-115 XXL: 120-125\n', '1 PC', '5 PC PACK', 'men', 'dual-tone-t-shirt', '', '', '', '433', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(55, 9, 5, 4, 0, 'PRINTED T-SHIRT', 'uploads/product/polo_tshirt_front.png', 'Made from 100% premium combed cotton , Modem fit for extra comfort , Ribbed crew neck prevents sagging , Fabric tape reinforcement on neck for enhanced style and durability , To be worn as loungewear or casual tee , Available in attractive prints ', 'Made from 100% premium combed cotton , Modem fit for extra comfort , Ribbed crew neck prevents sagging , Fabric tape reinforcement on neck for enhanced style and durability , To be worn as loungewear or casual tee , Available in attractive prints ', 450.00, 450.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115 | XXL: 120-125 | 3XL: 130-135 | 4XL: 140-145\n', '1 PC', '5 PC PACK\n', 'men', 'printed-t-shirt', '', '', '', '721', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(56, 9, 5, 4, 0, 'SMART FIT T-SHIRT ', 'uploads/product/polo_tshirt_front.png', 'Made from a perfect blend of cotton rich fabric , Modern yet relaxed fit for all day comfort , Fashion and casual wear , Available in attractive colours , Soft collar rib for neck comfort , Elegant look and easy care', 'Made from 100% premium combed cotton , Modem fit for extra comfort , Ribbed crew neck prevents sagging , Fabric tape reinforcement on neck for enhanced style and durability , To be worn as loungewear or casual tee , Available in attractive prints ', 599.00, 599.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115 | XXL: 120-125 | 3XL: 130-135 | 4XL: 140-145\n', '1 PC\n', '5 PC PACK\n', 'men', 'smart-fit-t-shirt', '', '', '', '731', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(57, 9, 5, 4, 0, 'POLO T-SHIRT ', 'uploads/product/product_images/741/741-1.jpg', 'Premium combed cotton rich fabric , Modern fit for extra comfort , Twill tape reinforcement on neck for enhanced style and durability , To be worn as loungewear or casual tee , Available in attractive colors', 'Premium combed cotton rich fabric , Modern fit for extra comfort , Twill tape reinforcement on neck for enhanced style and durability , To be worn as loungewear or casual tee , Available in attractive colors', 499.00, 499.00, 'S: 75-80 | M: 85-90 | L: 95 100 |  XL: 105-110 |  XXL: 115-120\n', '1 PC', '5 PC PACK', 'Women', 'polo-t-shirt-2', '', '', '', '741', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(58, 9, 5, 4, 0, 'ROUND NECK T-SHIRT', 'uploads/product/product_images/742/742-1.jpg', 'Premium combed cotton spandex , Modern fit for extra comfort , To be worn as loungewear or casual tee , Available in attractive colors', 'Premium combed cotton spandex , Modern fit for extra comfort , To be worn as loungewear or casual tee , Available in attractive colors', 430.00, 430.00, 'S: 75-80 | M: 85-90 | L: 95 100 |  XL: 105-110 |  XXL: 115-120\n', '1 PC', '5 PC PACK\n', 'Women', 'round-neck-t-shirt-2', '', '', '', '742', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(59, 9, 5, 4, 0, 'POLO T-SHIRT ', 'uploads/product/polo_tshirt_front.png', 'Made from premium combed cotton , Stylish silhouette for better fit , Bi-color tipping applied on sleeve & collar , Embroidery on chest enhances look , Available in attractive colors', 'Made from premium combed cotton , Stylish silhouette for better fit , Bi-color tipping applied on sleeve & collar , Embroidery on chest enhances look , Available in attractive colors', 450.00, 450.00, '3-4 (50cms) | 5-6 (55cms) 7-8 (60cms) 9-10 (65cms) 11-12 (70cms) 13-14 (75cms)\n', '5 PC PACK\n', '5 PC PACK\n', 'all', 'polo-t-shirt-3', '', '', '', '746', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(60, 9, 5, 4, 0, 'PRINTED T-SHIRT', 'uploads/product/polo_tshirt_front.png', 'Made from 100% premium combed cotton , Modern fit for extra comfort , Ribbed crew-neck prevents sagging , Fabric tape reinforcement on neck for enhanced style and durability , Available in attractive prints', 'Made from 100% premium combed cotton , Modern fit for extra comfort , Ribbed crew-neck prevents sagging , Fabric tape reinforcement on neck for enhanced style and durability , Available in attractive prints', 320.00, 320.00, '3-4 (50cms) | 5-6 (55cms) 7-8 (60cms) 9-10 (65cms) 11-12 (70cms) 13-14 (75cms)\n', '1 PC', '5 PC PACK\n', 'all', 'printed-t-shirt-2', '', '', '', '747', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(61, 9, 5, 4, 0, 'FASHION T-SHIRT', 'uploads\\product\\product_images\\1121.jpg', 'Made from a perfect blend of cotton rich fabric , Modern yet relaxed fit for all day comfort , Fashion and casual wear , Available in attractive colours , Soft collar rib for neck comfort , Elegant look and easy care', 'Made from a perfect blend of cotton rich fabric , Modern yet relaxed fit for all day comfort , Fashion and casual wear , Available in attractive colours , Soft collar rib for neck comfort , Elegant look and easy care', 649.00, 649.00, 'S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115 | XXL: 120-125 | 3XL: 130-135 | 4XL: 140-145\n', '1 PC\n', '5 PC PACK\n', 'all', 'fashion-t-shirt', '', '', '', '1121', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(62, 9, 5, 4, 0, 'FASHION T-SHIRT', 'uploads\\product\\product_images\\1122.jpg', 'Made from a perfect blend of cotton rich fabric , Modern yet relaxed fit for all day comfort , Fashion and casual wear , Available in attractive colours , Soft collar rib for neck comfort , Elegant look and easy care', 'Made from a perfect blend of cotton rich fabric , Modern yet relaxed fit for all day comfort , Fashion and casual wear , Available in attractive colours , Soft collar rib for neck comfort , Elegant look and easy care', 649.00, 649.00, 'S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115 | XXL: 120-125 | 3XL: 130-135 | 4XL: 140-145\n', '1 PC\n', '5 PC PACK\n', 'all', 'fashion-t-shirt-2', '', '', '', '1122', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(63, 9, 5, 4, 0, 'FASHION T-SHIRT', 'uploads\\product\\product_images\\1123.jpg', 'Made from a perfect blend of cotton rich fabric , Modern yet relaxed fit for all day comfort , Fashion and casual wear , Available in attractive colours , Soft collar rib for neck comfort , Elegant look and easy care', 'Made from a perfect blend of cotton rich fabric , Modern yet relaxed fit for all day comfort , Fashion and casual wear , Available in attractive colours , Soft collar rib for neck comfort , Elegant look and easy care', 649.00, 649.00, 'S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115 | XXL: 120-125 | 3XL: 130-135 | 4XL: 140-145\n', '1 PC\n', '5 PC PACK\n', 'all', 'fashion-t-shirt-3', '', '', '', '1123', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(64, 9, 5, 4, 0, 'FASHION T-SHIRT', 'uploads\\product\\product_images\\1124.jpg', 'Made from a perfect blend of cotton rich fabric , Modern yet relaxed fit for all day comfort , Fashion and casual wear , Available in attractive colours , Soft collar rib for neck comfort , Elegant look and easy care', 'Made from a perfect blend of cotton rich fabric , Modern yet relaxed fit for all day comfort , Fashion and casual wear , Available in attractive colours , Soft collar rib for neck comfort , Elegant look and easy care', 649.00, 649.00, 'S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115 | XXL: 120-125 | 3XL: 130-135 | 4XL: 140-146\n', '1 PC\n', '5 PC PACK\n', 'all', 'fashion-t-shirt-4', '', '', '', '1124', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(65, 9, 5, 4, 0, 'FASHION T-SHIRT', 'uploads\\product\\product_images\\1126.jpg', 'Made from a perfect blend of cotton rich fabric , Modern yet relaxed fit for all day comfort , Fashion and casual wear , Available in attractive colours , Soft collar rib for neck comfort , Elegant look and easy care', 'Made from a perfect blend of cotton rich fabric , Modern yet relaxed fit for all day comfort , Fashion and casual wear , Available in attractive colours , Soft collar rib for neck comfort , Elegant look and easy care', 649.00, 649.00, 'S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115 | XXL: 120-125 | 3XL: 130-135 | 4XL: 140-147\n', '1 PC\n', '5 PC PACK\n', 'all', 'fashion-t-shirt-5', '', '', '', '1126', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(66, 5, 5, 12, 0, 'DENIM VEST', 'uploads\\product\\product_images\\821.jpg', 'Made from 100% Combed Cotton , High density rib for a better fit , Now wear your Jeans Inside', 'Made from 100% Combed Cotton , High density rib for a better fit , Now wear your Jeans Inside', 325.00, 325.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115\n', '1 PC', NULL, 'all', 'denim-vest', '', '', '', '821', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(67, 5, 5, 13, 0, 'RIBBED 2X1 VEST', 'uploads/product/polo_tshirt_front.png', 'Contured armhole for flexibility , Double reinforced shoulder strap seams for durability , Styled for optimum support , 100% Combed Cotton 2x1 Rib fabric', 'Contured armhole for flexibility , Double reinforced shoulder strap seams for durability , Styled for optimum support , 100% Combed Cotton 2x1 Rib fabric', 205.00, 205.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115\n', '1 PC', NULL, 'all', 'ribbed-2x1-vest', '', '', '', '323 White', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(68, 5, 5, 13, 0, 'RIBBED 2X1 VEST', 'uploads\\product\\product_images\\323.jpg', 'Contured armhole for flexibility , Double reinforced shoulder strap seams for durability , Styled for optimum support , 100% Combed Cotton 2x1 Rib fabric', 'Contured armhole for flexibility , Double reinforced shoulder strap seams for durability , Styled for optimum support , 100% Combed Cotton 2x1 Rib fabric', 230.00, 230.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115\n', '1 PC', NULL, 'all', 'ribbed-2x1-vest-2', '', '', '', '323 Ass', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(69, 5, 5, 3, 0, 'FINE VEST RN', 'uploads/product/product_images/221.jpg', 'Made from 100% premium combed cotton , Extended length for easy tucking , Label free for day long comfort , Double reinforced wider straps , Precise armholes for perfect body fit', 'Made from 100% premium combed cotton , Extended length for easy tucking , Label free for day long comfort , Double reinforced wider straps , Precise armholes for perfect body fit', 175.00, 175.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115\n', '1 PC', NULL, 'all', 'fine-vest-rn', '', '', '', '221', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(70, 5, 5, 3, 0, 'FINE VEST RNS', 'uploads/product/polo_tshirt_front.png', 'Made from 100% premium combed cotton , Extended length for easy tucking , Label free for day long comfort , Double reinforced wider straps , Precise armholes for perfect body fit', 'Made from 100% premium combed cotton , Extended length for easy tucking , Label free for day long comfort , Double reinforced wider straps , Precise armholes for perfect body fit', 195.00, 195.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115\n', '1 PC \n', NULL, 'all', 'fine-vest-rns', '', '', '', '222', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(71, 5, 5, 3, 0, 'MODERN VEST', 'uploads\\product\\product_images\\141\\141-new.jpg', '100% premium combed cotton , 1x1 Stretch \"Rib\" fabric , Contoured armhole for flexibility , Double reinforced shoulder strap seams for durability , Soft stitch international machines', '100% premium combed cotton , 1x1 Stretch \"Rib\" fabric , Contoured armhole for flexibility , Double reinforced shoulder strap seams for durability , Soft stitch international machines', 225.00, 225.00, 'XS: 70-75 | S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115\n', '1 PC \n', NULL, 'all', 'modern-vest', '', '', '', '141', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(72, 6, 4, 3, 0, 'SINKER BRIEF', 'uploads/product/polo_tshirt_front.png', 'Made from 100% premium combed cotton , Feather Touch Ultra Super Soft waistband , Specially designed to fit just above the hip , Super absorbent fabric', 'Made from 100% premium combed cotton , Feather Touch Ultra Super Soft waistband , Specially designed to fit just above the hip , Super absorbent fabric', 170.00, 170.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 Pc\n', NULL, 'all', 'sinker-brief', '', '', '', '252(1Pc)', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(73, 6, 4, 3, 0, 'SINKER BRIEF', 'uploads/product/polo_tshirt_front.png', 'Made from 100% premium combed cotton , Feather Touch Ultra Super Soft waistband , Specially designed to fit just above the hip , Super absorbent fabric', 'Made from 100% premium combed cotton , Feather Touch Ultra Super Soft waistband , Specially designed to fit just above the hip , Super absorbent fabric', 170.00, 170.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '2 Pc\n', NULL, 'all', 'sinker-brief-2', '', '', '', '252(2Pc)', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(74, 4, 6, 3, 0, 'SINKER BOXER', 'uploads/product/polo_tshirt_front.png', 'Made from 100% premium combed cotton , Double layered contoured pouch for added comfort , Feather Touch Ultra Super Soft waistband , Front piping on the boxer', 'Made from 100% premium combed cotton , Double layered contoured pouch for added comfort , Feather Touch Ultra Super Soft waistband , Front piping on the boxer', 195.00, 195.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 Pc\n', NULL, 'all', 'sinker-boxer', '', '', '', '253(1Pc)', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(75, 4, 6, 3, 0, 'SINKER BOXER', 'uploads/product/polo_tshirt_front.png', 'Made from 100% premium combed cotton , Double layered contoured pouch for added comfort , Feather Touch Ultra Super Soft waistband , Front piping on the boxer', 'Made from 100% premium combed cotton , Double layered contoured pouch for added comfort , Feather Touch Ultra Super Soft waistband , Front piping on the boxer', 365.00, 365.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '2 Pc\n', NULL, 'all', 'sinker-boxer-2', '', '', '', '253(2Pc)', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(76, 4, 6, 3, 0, 'SINKER F/OPEN BOXER', 'uploads/product/polo_tshirt_front.png', 'The front open brief is made from soft 100% cotton yam , The elastic waistband provides a relaxing fit , Double layered contoured pouch design enhances absorbency', 'The front open brief is made from soft 100% cotton yam , The elastic waistband provides a relaxing fit , Double layered contoured pouch design enhances absorbency', 205.00, 205.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC \n', NULL, 'all', 'sinker-f-open-boxer', '', '', '', '254', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(77, 4, 6, 3, 0, 'SINKER F/OPEN POCKET BOXER', 'uploads/product/polo_tshirt_front.png', 'Made from 100% premium combed cotton , Feather Touch Ultra Super Soft waistband , Boxer comes with front pocket , Double layered contoured pouch for added comfort', 'Made from 100% premium combed cotton , Feather Touch Ultra Super Soft waistband , Boxer comes with front pocket , Double layered contoured pouch for added comfort', 230.00, 230.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC \n', NULL, 'all', 'sinker-f-open-pocket-boxer', '', '', '', '260', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(78, 4, 6, 3, 0, 'SINKER F/OPEN LONG BOXER', 'uploads/product/polo_tshirt_front.png', 'The front open brief is made from soft 100% cotton yam , The elastic waistband provides a relaxing fit , Double layered contoured pouch design enhances absorbency', 'The front open brief is made from soft 100% cotton yam , The elastic waistband provides a relaxing fit , Double layered contoured pouch design enhances absorbency', 230.00, 230.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC \n', NULL, 'all', 'sinker-f-open-long-boxer', '', '', '', '255', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(79, 6, 4, 3, 0, 'FASHION BRIEF O/E', 'uploads\\product\\product_images\\262\\ONN-Grande-262-1.jpg', 'Made from 100% premium combed cotton , Stylish bicoloured with a soft waist band , Contrast piping at front enhances the style , Super soft elastic waist band for relaxing fit ', 'Made from 100% premium combed cotton , Stylish bicoloured with a soft waist band , Contrast piping at front enhances the style , Super soft elastic waist band for relaxing fit ', 175.00, 175.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC \n', NULL, 'all', 'fashion-brief-o-e', '', '', '', '262', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(80, 6, 4, 3, 0, 'FASHION BRIEF ', 'uploads\\product\\product_images\\264\\ONN-Grande-264-1.jpg', 'Made from 100% premium combed cotton , Feather Touch Ultra Super Soft waistband , Contrast front piping enhances the style, Double layered contoured pouch for added comfort', 'Made from 100% premium combed cotton , Feather Touch Ultra Super Soft waistband , Contrast front piping enhances the style, Double layered contoured pouch for added comfort', 210.00, 210.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC \n', NULL, 'all', 'fashion-brief-2', '', '', '', '264', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(81, 6, 4, 11, 0, 'BIKINI BRIEF', 'uploads\\product\\product_images\\271\\271-1.jpg', '95% Cotton 5% Spandex blend, moves with you , Low rise fit enhances style , Double layered contoured pouch for maximum comfort , Styled comfort seams , Ultra-soft waistband leaves no-mark on the body , Label free for all day comfort', '95% Cotton 5% Spandex blend, moves with you , Low rise fit enhances style , Double layered contoured pouch for maximum comfort , Styled comfort seams , Ultra-soft waistband leaves no-mark on the body , Label free for all day comfort', 190.00, 190.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC', NULL, 'all', 'bikini-brief', '', '', '', '271', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(82, 6, 4, 11, 0, 'BRIEF', 'uploads\\product\\product_images\\272\\272-1.jpg', '95% Cotton 5% Spandex blend, moves with you , Low rise fit enhances style , Double layered contoured pouch for maximum comfort , Styled comfort seams , Ultra-soft waistband leaves no-mark on the body , Label free for all day comfort', '95% Cotton 5% Spandex blend, moves with you , Low rise fit enhances style , Double layered contoured pouch for maximum comfort , Styled comfort seams , Ultra-soft waistband leaves no-mark on the body , Label free for all day comfort', 199.00, 199.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC', NULL, 'all', 'brief-3', '', '', '', '272', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(83, 11, 8, 11, 0, 'MINI TRUNK', 'uploads\\product\\product_images\\273\\273-1.jpg', '95% Cotton 5% Spandex blend, moves with you , Mid rise fit add fashion element , Double layered contoured pouch for maximum comfort , Super soft waistband leaves no mark on the body , Specially designed leg opening ensures no ride up , Label free for all day comfort', '95% Cotton 5% Spandex blend, moves with you , Mid rise fit add fashion element , Double layered contoured pouch for maximum comfort , Super soft waistband leaves no mark on the body , Specially designed leg opening ensures no ride up , Label free for all day comfort', 250.00, 250.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC', NULL, 'all', 'mini-trunk-3', '', '', '', '273', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28');
INSERT INTO `products` (`id`, `cat_id`, `sub_cat_id`, `collection_id`, `store_id`, `name`, `image`, `short_desc`, `desc`, `price`, `offer_price`, `size_chart`, `pack`, `master_pack`, `only_for`, `slug`, `meta_title`, `meta_desc`, `meta_keyword`, `style_no`, `view_count`, `last_view_count_updated_at`, `is_trending`, `is_best_seller`, `status`, `created_at`, `updated_at`) VALUES
(84, 4, 6, 11, 0, 'LONG BOXER', 'uploads\\product\\product_images\\274\\274-1.jpg', '95% Cotton 5% Spandex blend, moves with you , Long boxer styling ensures all day comfort , Mid rise fit complements modern clothing , Ultra-soft waistband leaves no mark on the body , Specially designed leg opening ensures no ride up , Tag free for itch-free comfort ', '95% Cotton 5% Spandex blend, moves with you , Long boxer styling ensures all day comfort , Mid rise fit complements modern clothing , Ultra-soft waistband leaves no mark on the body , Specially designed leg opening ensures no ride up , Tag free for itch-free comfort ', 260.00, 260.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC', NULL, 'all', 'long-boxer', '', '', '', '274', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(85, 6, 4, 11, 0, 'PRINTED BRIEF', 'uploads/product/polo_tshirt_front.png', '95% Cotton 5% Spandex blend. moves with you , Mid rise fit complements modern clothing , Double layered contoured pouch for added comfort , Styled comfort seams , Ultra-soft waistband leaves no mark on the body , Tag free for itch-free comfort', '95% Cotton 5% Spandex blend. moves with you , Mid rise fit complements modern clothing , Double layered contoured pouch for added comfort , Styled comfort seams , Ultra-soft waistband leaves no mark on the body , Tag free for itch-free comfort', 240.00, 240.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC', NULL, 'all', 'printed-brief', '', '', '', '282', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(86, 11, 8, 11, 0, 'PRINTED MINI TRUNK', 'uploads/product/polo_tshirt_front.png', '95% Cotton 5% Spandex blend, moves with you , Mid rise fit add fashion element , Double layered contoured pouch for maximum comfort , Super soft waistband leaves no mark on the body , Specially designed leg opening ensures no ride up , Label free for all day comfort', '95% Cotton 5% Spandex blend, moves with you , Mid rise fit add fashion element , Double layered contoured pouch for maximum comfort , Super soft waistband leaves no mark on the body , Specially designed leg opening ensures no ride up , Label free for all day comfort', 280.00, 280.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC', NULL, 'all', 'printed-mini-trunk', '', '', '', '283', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(87, 4, 6, 13, 0, 'RIBBED F/OPEN BOXER', 'uploads\\product\\product_images\\354.jpg', 'Designer attractive waistband , Sleek and comfortable , The ribbed texture ensures proper fit , 100% ribbed cotton ensuring durability  ', 'Designer attractive waistband , Sleek and comfortable , The ribbed texture ensures proper fit , 100% ribbed cotton ensuring durability  ', 220.00, 220.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC', NULL, 'all', 'ribbed-f-open-boxer', '', '', '', '354', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(88, 4, 6, 13, 0, 'RIBBED F/OPEN BOXER', 'uploads\\product\\product_images\\355.jpg', 'Designer attractive waistband , Sleek and comfortable , The ribbed texture ensures proper fit , 100% ribbed cotton ensuring durability  ', 'Designer attractive waistband , Sleek and comfortable , The ribbed texture ensures proper fit , 100% ribbed cotton ensuring durability  ', 210.00, 210.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC', NULL, 'all', 'ribbed-f-open-boxer-2', '', '', '', '355', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(89, 4, 6, 13, 0, 'RIBBED F/OPEN BOXER LONG', 'uploads\\product\\product_images\\357.jpg', 'ONN logo finely crafted in waistband , Designed with comfortable contoured pouch , It comnes with soft designer strap for easy fit, comfort and style , 100% pure premium ribbed cotton ensuring durability', 'ONN logo finely crafted in waistband , Designed with comfortable contoured pouch , It comnes with soft designer strap for easy fit, comfort and style , 100% pure premium ribbed cotton ensuring durability', 230.00, 230.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC', NULL, 'all', 'ribbed-f-open-boxer-long', '', '', '', '357', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(90, 11, 8, 13, 0, 'RIBBED MINI TRUNK', 'uploads/product/polo_tshirt_front.png', 'Designer attractive waistband , Sleek and comfortable , Mid rise fit add fashion element , 100% ribbed cotton ensuring durability', 'Designer attractive waistband , Sleek and comfortable , Mid rise fit add fashion element , 100% ribbed cotton ensuring durability', 230.00, 230.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC\n', NULL, 'all', 'ribbed-mini-trunk', '', '', '', '359', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(91, 10, 2, 4, 0, 'TRACK PANT', 'uploads/product/product_images/751/751-1.jpg', 'Supreme Cotton rich fabric , Relaxed jogger , Ribbed tri color broad waistband with drawstring , Zippered side pockets for added functionality , Contrast shaped side panels with piping bring a sporty vibe , Tag free for itch free comfort , Versatile styling, can be worn as sportswear and loungewear', 'Supreme Cotton rich fabric , Relaxed jogger , Ribbed tri color broad waistband with drawstring , Zippered side pockets for added functionality , Contrast shaped side panels with piping bring a sporty vibe , Tag free for itch free comfort , Versatile styling, can be worn as sportswear and loungewear', 899.00, 899.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC', '5 PC PACK\n', 'Men', 'track-pant-2', '', '', '', '751', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(92, 10, 2, 4, 0, 'TRACK PANT', 'uploads/product/product_images/752/752-1.jpg', 'Supreme Cotton rich fabric , Modern Fit , Ribbed bi color broad waistband with drawstring , Zippered vertical ribbed pockets with contrast piping add functionality , Contrast horizontal thin patches near bottom hem add sportiness , Tag free for itch free comfort , Versatile styling, can be worn as sportswear and loungewear', 'Supreme Cotton rich fabric , Modern Fit , Ribbed bi color broad waistband with drawstring , Zippered vertical ribbed pockets with contrast piping add functionality , Contrast horizontal thin patches near bottom hem add sportiness , Tag free for itch free comfort , Versatile styling, can be worn as sportswear and loungewear', 899.00, 899.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC', '5 PC PACK', 'Men', 'track-pant-3', '', '', '', '752', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(93, 10, 2, 4, 0, 'TRACK PANT', 'uploads/product/product_images/753/753-1.jpg', 'Supreme Cotton rich fabric , Modern Fit , Ribbed bi color broad waistband with drawstring , Zippered vertical ribbed  , Modern Fit , Ribbed bi color broad waistband with drawstring , Utility zipper pocket with modern and sporty design , Tag free for itch free comfort , Versatile styling, can be worn as sportswear and loungewear , ', ' , Modern Fit , Ribbed bi color broad waistband with drawstring , Utility zipper pocket with modern and sporty design , Tag free for itch free comfort , Versatile styling, can be worn as sportswear and loungewear , ', 899.00, 899.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC ', '5 PC PACK', 'Men', 'track-pant-4', '', '', '', '753', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(94, 10, 2, 4, 0, 'TRACK PANT', 'uploads/product/product_images/754/754-1.jpg', 'Relaxed jogger , Durable broad waistband with drawstring , Zippered side pockets for added functionality , Tag free for itch free comfort ,  Versatile styling, can be worn as sportswear and loungewear', 'Relaxed jogger , Durable broad waistband with drawstring , Zippered side pockets for added functionality , Tag free for itch free comfort ,  Versatile styling, can be worn as sportswear and loungewear', 899.00, 899.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC', '5 PC PACK', 'Men', 'track-pant-5', '', '', '', '754', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(95, 10, 2, 4, 0, 'TRACK PANT', 'uploads/product/product_images/755/755-1.jpg', 'Relaxed jogger , Durable broad waistband with drawstring , Zippered side pockets for added functionality , Tag free for itch free comfort ,  Versatile styling, can be worn as sportswear and loungewear', 'Relaxed jogger , Durable ribbed broad waistband with drawstring , Dual ribbed cross pockets for added functionality , Contrast shaped front & back panels with decorative stitches add sportiness , Tag free for itch free comfort , Versatile styling, can be worn as sportswear and loungewear', 899.00, 899.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1PC', '5 PC PACK', 'Men', 'track-pant-6', '', '', '', '755', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(96, 10, 2, 4, 0, 'TRACK PANT', 'uploads/product/polo_tshirt_front.png', 'Relaxed jogger , Durable broad waistband with drawstring , Zippered side pockets for added functionality , Tag free for itch free comfort ,  Versatile styling, can be worn as sportswear and loungewear', 'Relaxed jogger , Durable ribbed broad waistband with drawstring , Dual ribbed cross pockets for added functionality , Contrast shaped front & back panels with decorative stitches add sportiness , Tag free for itch free comfort , Versatile styling, can be worn as sportswear and loungewear', 849.00, 849.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC ', '5 PC PACK', 'Men', 'track-pant-7', '', '', '', '756', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(97, 10, 2, 4, 0, 'TRACK PANT', 'uploads/product/product_images/757/757-1.jpg', 'Relaxed jogger , Durable broad waistband with drawstring , Zippered side pockets for added functionality , Tag free for itch free comfort ,  Versatile styling, can be worn as sportswear and loungewear', 'Relaxed jogger , Durable ribbed broad waistband with drawstring , Dual ribbed cross pockets for added functionality , Contrast shaped front & back panels with decorative stitches add sportiness , Tag free for itch free comfort , Versatile styling, can be worn as sportswear and loungewear', 849.00, 849.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC', '5 PC PACK', 'Men', 'track-pant-8', '', '', '', '757', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(98, 10, 2, 4, 0, 'TRACK PANT', 'uploads/product/product_images/758/758-1.jpg', 'Relaxed jogger , Durable broad waistband with drawstring , Zippered side pockets for added functionality , Tag free for itch free comfort ,  Versatile styling, can be worn as sportswear and loungewear', 'Relaxed jogger , Durable ribbed broad waistband with drawstring , Dual ribbed cross pockets for added functionality , Contrast shaped front & back panels with decorative stitches add sportiness , Tag free for itch free comfort , Versatile styling, can be worn as sportswear and loungewear', 849.00, 849.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC', '5 PC PACK', 'Men', 'track-pant-9', '', '', '', '758', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(99, 10, 2, 4, 0, 'TRACK PANT', 'uploads/product/product_images/759/759-1.jpg', 'Relaxed jogger , Durable broad waistband with drawstring , Zippered side pockets for added functionality , Tag free for itch free comfort ,  Versatile styling, can be worn as sportswear and loungewear', 'Relaxed jogger , Durable ribbed broad waistband with drawstring , Dual ribbed cross pockets for added functionality , Contrast shaped front & back panels with decorative stitches add sportiness , Tag free for itch free comfort , Versatile styling, can be worn as sportswear and loungewear', 899.00, 899.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC ', '5 PC PACK', 'Men', 'track-pant-10', '', '', '', '759', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(100, 10, 2, 4, 0, 'TRACK PANT', 'uploads/product/product_images/760/760-1.jpg', 'Relaxed jogger , Durable broad waistband with drawstring , Zippered side pockets for added functionality , Tag free for itch free comfort ,  Versatile styling, can be worn as sportswear and loungewear', 'Relaxed jogger , Durable ribbed broad waistband with drawstring , Dual ribbed cross pockets for added functionality , Contrast shaped front & back panels with decorative stitches add sportiness , Tag free for itch free comfort , Versatile styling, can be worn as sportswear and loungewear', 849.00, 849.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC ', '5 PC PACK', 'Men', 'track-pant-11', '', '', '', '760', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(101, 10, 2, 4, 0, 'TRACK PANT', 'uploads/product/polo_tshirt_front.png', 'Relaxed jogger , Durable broad waistband with drawstring , Zippered side pockets for added functionality , Tag free for itch free comfort ,  Versatile styling, can be worn as sportswear and loungewear', 'Relaxed jogger , Durable ribbed broad waistband with drawstring , Dual ribbed cross pockets for added functionality , Contrast shaped front & back panels with decorative stitches add sportiness , Tag free for itch free comfort , Versatile styling, can be worn as sportswear and loungewear', 899.00, 899.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC ', '5 PC PACK', 'Men', 'track-pant-12', '', '', '', '761', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(102, 10, 2, 4, 0, 'TRACK PANT', 'uploads/product/polo_tshirt_front.png', 'Relaxed jogger , Durable broad waistband with drawstring , Zippered side pockets for added functionality , Tag free for itch free comfort ,  Versatile styling, can be worn as sportswear and loungewear', 'Relaxed jogger , Durable ribbed broad waistband with drawstring , Dual ribbed cross pockets for added functionality , Contrast shaped front & back panels with decorative stitches add sportiness , Tag free for itch free comfort , Versatile styling, can be worn as sportswear and loungewear', 849.00, 849.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC', '5 PC PACK', 'Men', 'track-pant-13', '', '', '', '762', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(103, 10, 2, 4, 0, 'TRACK PANT', 'uploads/product/polo_tshirt_front.png', 'Relaxed jogger , Durable broad waistband with drawstring , Zippered side pockets for added functionality , Tag free for itch free comfort ,  Versatile styling, can be worn as sportswear and loungewear', 'Relaxed jogger , Durable ribbed broad waistband with drawstring , Dual ribbed cross pockets for added functionality , Contrast shaped front & back panels with decorative stitches add sportiness , Tag free for itch free comfort , Versatile styling, can be worn as sportswear and loungewear', 699.00, 699.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC', '5 PC PACK', 'Men', 'track-pant-14', '', '', '', '763', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(104, 10, 2, 4, 0, 'HOSIERY SHORTS', 'uploads/product/product_images/771/771-1.jpg', 'Premium combed cotton rich fabric , Dual side pocket , Zipped back pocket , Rib on side pocket , Broad waist band for better fit , Available in attractive color', 'Premium combed cotton rich fabric , Dual side pocket , Zipped back pocket , Rib on side pocket , Broad waist band for better fit , Available in attractive color', 650.00, 650.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC', '5 PC PACK', 'Men', 'hosiery-shorts', '', '', '', '771', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(105, 4, 6, 4, 0, 'PRINTED BOXER', 'uploads/product/product_images/776/776-1.jpg', 'Made from 100% Combed Cotton for extra durability , Fashionable signature black label , Button placket with front fly opening , Both side pocket, with one side zipper makes for ideal loungewear, casual wear and innerwear', 'Made from 100% Combed Cotton for extra durability , Fashionable signature black label , Button placket with front fly opening , Both side pocket, with one side zipper makes for ideal loungewear, casual wear and innerwear', 499.00, 499.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC', '5 PC PACK\n', 'men', 'printed-boxer', '', '', '', '776', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(106, 4, 6, 4, 0, 'TEXTILE BOXER', 'uploads/product/product_images/777/777-1.jpg', 'Made from 100% Combed Cotton for extra durability. , Fashionable signature black label , Button placket with front fly opening , Velvet finish for extra soft feel. , Both side pocket, with one side zipper makes for ideal loungewear, casual wear and innerwear', 'Made from 100% Combed Cotton for extra durability. , Fashionable signature black label , Button placket with front fly opening , Velvet finish for extra soft feel. , Both side pocket, with one side zipper makes for ideal loungewear, casual wear and innerwear', 499.00, 499.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC', '5 PC PACK\n', 'men', 'textile-boxer', '', '', '', '777', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(107, 4, 6, 8, 0, 'TEXTILE BOXER', 'uploads/product/polo_tshirt_front.png', 'Made from 100% premium Combed Cotton for extra durability , Button placket with front ply , Can be used for casual wear, Lounge wear and Innerwear , Available in different prints', 'Made from 100% premium Combed Cotton for extra durability , Button placket with front ply , Can be used for casual wear, Lounge wear and Innerwear , Available in different prints', 310.00, 310.00, 'S: 80 | M: 85 | L: 90 | XL: 95 | 2XL: 100\n', '1 PC\n', '5 PC PACK\n', 'all', 'textile-boxer-2', '', '', '', '161', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(108, 17, 12, 9, 0, 'SEMI LONG', 'uploads/product/polo_tshirt_front.png', '48% Super-Soft combed cotton , 48% Micro-Modal, 4% Elastane , Ultra-Soft Waistband , Filament stitching thread used for extra durability', '48% Super-Soft combed cotton , 48% Micro-Modal, 4% Elastane , Ultra-Soft Waistband , Filament stitching thread used for extra durability', 325.00, 325.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC', '5 PC PACK\n', 'all', 'semi-long', '', '', '', '974', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(109, 17, 12, 9, 0, 'R/NECK T-SHIRT', 'uploads/product/polo_tshirt_front.png', 'Made with 100% SuPima cotton imported from United States Of America , Modern fit for extra comfort , To be worn as loungewear , Available in attractive colours ', 'Made with 100% SuPima cotton imported from United States Of America , Modern fit for extra comfort , To be worn as loungewear , Available in attractive colours ', 799.00, 799.00, 'S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115 | XXL: 120-125\n', '1 PC', '5 PC PACK\n', 'all', 'r-neck-t-shirt', '', '', '', '922', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(110, 9, 5, 9, 0, 'POLO T-SHIRT', 'uploads/product/polo_tshirt_front.png', 'Made from American Cotton , 95% Cotton, 5% Elastane , Twill tape reinforcement on nect for enhanced style and durability , Available in attractive colours', 'Made from American Cotton , 95% Cotton, 5% Elastane , Twill tape reinforcement on nect for enhanced style and durability , Available in attractive colours', 899.00, 899.00, 'S: 80-85 | M: 90-95 | L: 100-105 | XL: 110-115 | XXL: 120-125\n', '1 PC', '5 PC PACK\n', 'all', 'polo-t-shirt-4', '', '', '', '931', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(111, 13, 10, 9, 0, 'HALF PANT', 'uploads/product/polo_tshirt_front.png', 'Made from American cotton , Added lycra for stretch and comfort , Back side pocket for extra safety , Broad waistband for better fit , Special stitch in crotch area for extra comfort', 'Made from American cotton , Added lycra for stretch and comfort , Back side pocket for extra safety , Broad waistband for better fit , Special stitch in crotch area for extra comfort', 799.00, 799.00, 'S: 70-75 | M: 80-85 | L: 90-95 | XL: 100-105 | 2XL: 110-115\n', '1 PC', '3 PC PACK', 'all', 'half-pant', '', '', '', '961', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(113, 17, 12, 7, 0, 'HI-NECK HALF ZIP SWEATSHIRT', 'uploads/product/polo_tshirt_front.png', 'Super soft cotton , Modern fit for perfect comfort , Half Zip with Kangroo pockets for ease access and comfort , Ribbed cuff and waist hem', 'Super soft cotton , Modern fit for perfect comfort , Half Zip with Kangroo pockets for ease access and comfort , Ribbed cuff and waist hem', 899.00, 899.00, 'S | M | L | XL | 2XL\n', '1 pcs solid color\n', '3 pc pack\n', 'men', 'hi-neck-half-zip-sweatshirt', '', '', '', '1033', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(114, 10, 2, 7, 0, 'WINTER TRACK PANT', 'uploads/product/polo_tshirt_front.png', 'Super soft cotton , Modern fit for perfect comfort , Both side pocket with one side zipper , Back pocket for added utility', 'Super soft cotton , Modern fit for perfect comfort , Both side pocket with one side zipper , Back pocket for added utility', 850.00, 850.00, 'S | M | L | XL | 2XL\n', '1 pcs solid color\n', '3 pc pack\n', 'men', 'winter-track-pant', '', '', '', '1036', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(115, 12, 9, 7, 0, 'WINTER JOGGERS', 'uploads/product/polo_tshirt_front.png', 'Super soft cotton , Modern fit for perfect comfort , Both side pocket with visible zipper , Back pocket for added utility , Ribbed broad waistband with drawcord', 'Super soft cotton , Modern fit for perfect comfort , Both side pocket with visible zipper , Back pocket for added utility , Ribbed broad waistband with drawcord', 950.00, 950.00, 'S | M | L | XL | 2XL\n', '1 pcs solid color\n', '3 pc pack\n', 'men', 'winter-joggers', '', '', '', '1037', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(116, 16, 14, 7, 0, 'PADDED JACKET SLEEVLESS', 'uploads\\product\\product_images\\2121.jpg', 'Winter poly wadding , Nylon Outer Shell , Embroidery brand logo , Bothside pocket , Feather weight , Heavy duty rubber zip', 'Winter poly wadding , Nylon Outer Shell , Embroidery brand logo , Bothside pocket , Feather weight , Heavy duty rubber zip', 1290.00, 1290.00, 'S | M | L | XL | 2XL\n', '1 pc solid color\n', '1 pc pack\n', 'men', 'padded-jacket-sleevess', '', '', '', '2121', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(117, 16, 14, 7, 0, 'PADDED JACKET SLEEVLESS', 'uploads\\product\\product_images\\2122.jpg', 'Winter poly wadding , Nylon Outer Shell , Embroidery brand logo , Bothside pocket , Feather weight , Heavy duty rubber zip', 'Winter poly wadding , Nylon Outer Shell , Embroidery brand logo , Bothside pocket , Feather weight , Heavy duty rubber zip', 1590.00, 1590.00, 'S | M | L | XL | 2XL\n', '1 pc solid color\n', '1 pc pack\n', 'men', 'padded-jacket-sleevess-2', '', '', '', '2122', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(118, 17, 12, 7, 0, 'PRINTED SWEATSHIRT', 'uploads/product/polo_tshirt_front.png', 'Super soft cotton , Modern fit for perfect comfort , Pocket on each side , Special raising for extra warmth', 'Super soft cotton , Modern fit for perfect comfort , Pocket on each side , Special raising for extra warmth', 799.00, 799.00, 'S | M | L | XL \n', '1 pcs solid color\n', '3 pc pack\n', 'women', 'printed-sweatshirt-2', '', '', '', '1041', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(119, 17, 12, 7, 0, 'SWEATSHIRT WITH HOOD', 'uploads/product/polo_tshirt_front.png', 'Super soft cotton , Modern fit for perfect comfort , Kangroo pockets for ease of access and comfort , Ribbed cuff and waist hem', 'Super soft cotton , Modern fit for perfect comfort , Kangroo pockets for ease of access and comfort , Ribbed cuff and waist hem', 899.00, 899.00, 'S | M | L | XL \n', '1 pcs solid color\n', '3 pc pack\n', 'women', 'sweatshirt-with-hood', '', '', '', '1043', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(120, 16, 11, 7, 0, 'HOODIE JACKET', 'uploads/product/polo_tshirt_front.png', 'Super soft cotton , Modern fit for perfect comfort , Kangroo pockets for ease of access and comfort , Ribbed cuff and waist hem', 'Super soft cotton , Modern fit for perfect comfort , Kangroo pockets for ease of access and comfort , Ribbed cuff and waist hem', 999.00, 999.00, 'S | M | L | XL \n', '1 pcs solid color\n', '3 pc pack\n', 'women', 'hoodie-jacket-2', '', '', '', '1051', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(121, 17, 12, 7, 0, 'PRINTED SWEATSHIRT', 'uploads/product/polo_tshirt_front.png', 'Super soft cotton , Modern fit for perfect comfort , Pocket on each side , Special raising for extra warmth', 'Super soft cotton , Modern fit for perfect comfort , Pocket on each side , Special raising for extra warmth', 550.00, 550.00, '3-4 | 5-6 | 7-8 | 9-10 | 11-12\n', '1 pcs solid color\n', '3 pc pack\n', 'kids', 'printed-sweatshirt-3', '', '', '', '1061', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(122, 17, 12, 7, 0, 'PRINTED SWEATSHIRT WITH HOOD', 'uploads/product/polo_tshirt_front.png', 'Super soft cotton , Modern fit for perfect comfort , Kangroo pockets for ease access and comfort , Ribbed cuff and waist hem', 'Super soft cotton , Modern fit for perfect comfort , Kangroo pockets for ease access and comfort , Ribbed cuff and waist hem', 599.00, 599.00, '3-4 | 5-6 | 7-8 | 9-10 | 11-12\n', '1 pcs solid color\n', '3 pc pack\n', 'kids', 'printed-sweatshirt-with-hood-2', '', '', '', '1063', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(123, 17, 11, 7, 0, 'PRINTED HOODIE JACKET', 'uploads/product/polo_tshirt_front.png', 'Super soft cotton , Modern fit for perfect comfort , Cross pockets for ease access and comfort , Ribbed cuff with waist hem', 'Super soft cotton , Modern fit for perfect comfort , Cross pockets for ease access and comfort , Ribbed cuff with waist hem', 750.00, 750.00, '3-4 | 5-6 | 7-8 | 9-10 | 11-12\n', '1 pcs solid color\n', '3 pc pack\n', 'kids', 'printed-hoodie-jacket', '', '', '', '1071', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(124, 16, 11, 7, 0, 'HI-NECK JACKET', 'uploads/product/polo_tshirt_front.png', 'Super soft cotton , Modern fit for perfect comfort , Kangroo pockets for ease access and comfort , Ribbed cuff and waist hem', 'Super soft cotton , Modern fit for perfect comfort , Kangroo pockets for ease access and comfort , Ribbed cuff and waist hem', 599.00, 599.00, '3-4 | 5-6 | 7-8 | 9-10 | 11-12\n', '1 pcs solid color\n', '3 pc pack\n', 'kids', 'hi-neck-jacket-2', '', '', '', '1072', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(125, 15, 14, 6, 0, 'FULL SLEEVES V/NECK', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Low ribbed V neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort , Brushed interlock fabric for extra heat', 'Made from premium Cotton rich supreme fabric , Low ribbed V neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort , Brushed interlock fabric for extra heat', 610.00, 610.00, 'XS: 75cm | S: 80cm | M: 85cm | L: 90cm | XL: 95cm | XXL: 1.0mtr | 3XL: 1.05mtr\n', '1 PC', '5 PC PACK', 'men', 'full-sleeves-v-neck', '', '', '', 'OT 023', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(126, 15, 14, 6, 0, 'FULL SLEEVES V/NECK', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Low ribbed V neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort , Brushed interlock fabric for extra heat', 'Made from premium Cotton rich supreme fabric , Low ribbed V neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort , Brushed interlock fabric for extra heat', 599.00, 599.00, 'XS: 75cm | S: 80cm | M: 85cm | L: 90cm | XL: 95cm | XXL: 1.0mtr | 3XL: 1.05mtr\n', '1 PC', '5 PC PACK', 'men', 'full-sleeves-v-neck-2', '', '', '', 'OT 033', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(127, 15, 14, 6, 0, 'FULL SLEEVES CREW NECK', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Crew neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort  , Brushed interlock fabric for extra heat', 'Made from premium Cotton rich supreme fabric , Crew neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort  , Brushed interlock fabric for extra heat', 620.00, 620.00, 'XS: 75cm | S: 80cm | M: 85cm | L: 90cm | XL: 95cm | XXL: 1.0mtr | 3XL: 1.05mtr\n', '1 PC', '5 PC PACK', 'men', 'full-sleeves-crew-neck-2', '', '', '', 'OT 024', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(128, 15, 14, 6, 0, '3/4TH SLEEVE U/NECK', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Low self folded U neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Label free for all day comfort , Brushed interlock fabric for extra heat', 'Made from premium Cotton rich supreme fabric , Low self folded U neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Label free for all day comfort , Brushed interlock fabric for extra heat', 510.00, 510.00, 'XS: 75cm | S: 80cm | M: 85cm | L: 90cm | XL: 95cm | XXL: 1.0mtr | 3XL: 1.05mtr\n', '1 PC', '5 PC PACK', 'women', '3-4th-sleeve-u-neck', '', '', '', 'OT 041', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(129, 15, 14, 6, 0, '3/4TH SLEEVE U/NECK', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Low self folded U neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Label free for all day comfort , Brushed interlock fabric for extra heat', 'Made from premium Cotton rich supreme fabric , Low self folded U neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Label free for all day comfort , Brushed interlock fabric for extra heat', 499.00, 499.00, 'XS: 75cm | S: 80cm | M: 85cm | L: 90cm | XL: 95cm | XXL: 1.0mtr | 3XL: 1.05mtr\n', '1 PC', '5 PC PACK', 'women', '3-4th-sleeve-u-neck-2', '', '', '', 'OT 051', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(130, 15, 14, 6, 0, 'SLEEVELESS SLIP', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Low self folded U neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Label free for all day comfort , Brushed interlock fabric for extra heat', 'Made from premium Cotton rich supreme fabric , Low self folded U neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Label free for all day comfort , Brushed interlock fabric for extra heat', 430.00, 430.00, 'XS: 75cm | S: 80cm | M: 85cm | L: 90cm | XL: 95cm | XXL: 1.0mtr | 3XL: 1.05mtr\n', '1 PC', '5 PC PACK', 'women', 'sleeveless-slip', '', '', '', 'OT 042', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(131, 15, 14, 6, 0, 'SLEEVELESS SLIP', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Low self folded U neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Label free for all day comfort , Brushed interlock fabric for extra heat', 'Made from premium Cotton rich supreme fabric , Low self folded U neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Label free for all day comfort , Brushed interlock fabric for extra heat', 420.00, 420.00, 'XS: 75cm | S: 80cm | M: 85cm | L: 90cm | XL: 95cm | XXL: 1.0mtr | 3XL: 1.05mtr\n', '1 PC', '5 PC PACK', 'women', 'sleeveless-slip-2', '', '', '', 'OT 052', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(132, 15, 13, 6, 0, 'TROUSER', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Double layered contoured pouch with fly for added comfort , Durable and soft fabric covered elasticated waistband , Ultrasoft texture renders superior comfort & warmth , Ribbed cuffs prevent riding up , Label free for all day comfort', 'Made from premium Cotton rich supreme fabric , Double layered contoured pouch with fly for added comfort , Durable and soft fabric covered elasticated waistband , Ultrasoft texture renders superior comfort & warmth , Ribbed cuffs prevent riding up , Label free for all day comfort', 510.00, 510.00, 'XS: 75cm | S: 80cm | M: 85cm | L: 90cm | XL: 95cm | XXL: 1.0mtr | 3XL: 1.05mtr\n', '1 PC', '5 PC PACK', 'women', 'trouser-3', '', '', '', 'OT 046', 0, NULL, 0, 0, 1, '2022-03-07 17:09:35', '2022-03-07 17:09:35'),
(133, 15, 13, 6, 0, 'TROUSER', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Double layered contoured pouch with fly for added comfort , Durable and soft fabric covered elasticated waistband , Ultrasoft texture renders superior comfort & warmth , Ribbed cuffs prevent riding up , Label free for all day comfort', 'Made from premium Cotton rich supreme fabric , Double layered contoured pouch with fly for added comfort , Durable and soft fabric covered elasticated waistband , Ultrasoft texture renders superior comfort & warmth , Ribbed cuffs prevent riding up , Label free for all day comfort', 499.00, 499.00, 'XS: 75cm | S: 80cm | M: 85cm | L: 90cm | XL: 95cm | XXL: 1.0mtr | 3XL: 1.05mtr\n', '1 PC', '5 PC PACK', 'women', 'trouser-4', '', '', '', 'OT 056', 0, NULL, 0, 0, 1, '2022-03-07 17:09:35', '2022-03-07 17:09:35'),
(134, 9, 14, 6, 0, 'FULL SLEEVES R/NECK', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Low self folded round neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort , Brushed interlock fabric for extra heat', 'Made from premium Cotton rich supreme fabric , Low self folded round neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort , Brushed interlock fabric for extra heat', 350.00, 350.00, '1-2Y: 45 | 2-3Y : 50 | 3-4Y : 55 | 5-6Y: 60 | 7-8Y : 65 | 9-10Y: 70 | 11-12Y: 75\n', '1 PC', '5 PC PACK', 'kids', 'full-sleeves-r-neck-2', '', '', '', 'OT 061', 0, NULL, 0, 0, 1, '2022-03-07 17:09:35', '2022-03-07 17:09:35'),
(135, 9, 14, 6, 0, 'FULL SLEEVES R/NECK', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Low self folded round neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort , Brushed interlock fabric for extra heat', 'Made from premium Cotton rich supreme fabric , Low self folded round neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort , Brushed interlock fabric for extra heat', 340.00, 340.00, '1-2Y: 45 | 2-3Y : 50 | 3-4Y : 55 | 5-6Y: 60 | 7-8Y : 65 | 9-10Y: 70 | 11-12Y: 75\n', '1 PC', '5 PC PACK', 'kids', 'full-sleeves-r-neck-3', '', '', '', 'OT 071', 0, NULL, 0, 0, 1, '2022-03-07 17:09:35', '2022-03-07 17:09:35'),
(136, 15, 13, 6, 0, 'TROUSER', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Double layered contoured pouch with fly for added comfort , Durable and soft fabric covered elasticated waistband , Ultrasoft texture renders superior comfort & warmth , Ribbed cuffs prevent riding up , Label free for all day comfort', 'Made from premium Cotton rich supreme fabric , Double layered contoured pouch with fly for added comfort , Durable and soft fabric covered elasticated waistband , Ultrasoft texture renders superior comfort & warmth , Ribbed cuffs prevent riding up , Label free for all day comfort', 350.00, 350.00, '1-2Y: 45 | 2-3Y : 50 | 3-4Y : 55 | 5-6Y: 60 | 7-8Y : 65 | 9-10Y: 70 | 11-12Y: 75\n', '1 PC', '5 PC PACK', 'kids', 'trouser-5', '', '', '', 'OT 066', 0, NULL, 0, 0, 1, '2022-03-07 17:09:35', '2022-03-07 17:09:35'),
(137, 15, 13, 6, 0, 'TROUSER', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Double layered contoured pouch with fly for added comfort , Durable and soft fabric covered elasticated waistband , Ultrasoft texture renders superior comfort & warmth , Ribbed cuffs prevent riding up , Label free for all day comfort', 'Made from premium Cotton rich supreme fabric , Double layered contoured pouch with fly for added comfort , Durable and soft fabric covered elasticated waistband , Ultrasoft texture renders superior comfort & warmth , Ribbed cuffs prevent riding up , Label free for all day comfort', 340.00, 340.00, '1-2Y: 45 | 2-3Y : 50 | 3-4Y : 55 | 5-6Y: 60 | 7-8Y : 65 | 9-10Y: 70 | 11-12Y: 75\n', '1 PC', '5 PC PACK', 'kids', 'trouser-6', '', '', '', 'OT 076', 0, NULL, 0, 0, 1, '2022-03-07 17:09:35', '2022-03-07 17:09:35'),
(138, 14, 4, 2, 0, 'NO SHOW SOCKS', 'uploads/product/polo_tshirt_front.png', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 'Elastane body for maximum comfort and stretch , Elastane welt for a no-sag grip , Ultra soft cotton for smooth feel , Endure freshness', 85.00, 85.00, 'Free size', '1 PC PACK', '1 BOX = 10 PAIR\r\n', 'all', 'no-show-socks-2', '', '', '', 'OF 3001 B', 0, NULL, 0, 0, 1, '2022-03-07 17:09:28', '2022-03-07 17:09:28'),
(139, 10, 2, 4, 0, 'HOSIERY HALF PANT\r\n', 'uploads/product/product_images/771/771-1.jpg', 'Supreme combed cotton rich fabric , Both side pocket with one side zipper , Back pocket for extra comfort , Contast side panel , Available in attractive color\r\n', 'Supreme combed cotton rich fabric , Both side pocket with one side zipper , Back pocket for extra comfort , Contast side panel , Available in attractive color\r\n', 549.00, 549.00, 'S: 70-75 M: 80-85 L: 90-95 XL: 100-105 | XXL: 110-115\n', '1 PC', '5 PC PACK', 'Men', 'hosiery-half-pant', '', '', '', '772', 0, NULL, 0, 0, 1, '2022-03-07 17:09:21', '2022-03-07 17:09:21'),
(140, 9, 14, 6, 0, 'FULL SLEEVES R/NECK', 'uploads/product/polo_tshirt_front.png', 'Made from premium Cotton rich supreme fabric , Low self folded round neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort , Brushed interlock fabric for extra heat\r\n', 'Made from premium Cotton rich supreme fabric , Low self folded round neck design perfect for layering , Ultrasoft texture renders superior comfort & warmth , Full sleeves offer full coverage , Label free for all day comfort , Brushed interlock fabric for extra heat\r\n', 599.00, 599.00, NULL, '1 PC', '5 PC PACK', 'Men', 'full-sleeves-r-neck-4', '', '', '', 'OT 022', 0, NULL, 0, 0, 1, '2022-03-07 17:09:35', '2022-03-07 17:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint NOT NULL,
  `color_id` bigint NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_color_sizes`
--

CREATE TABLE `product_color_sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint NOT NULL,
  `color` bigint NOT NULL,
  `size` bigint NOT NULL,
  `assorted_flag` tinyint NOT NULL DEFAULT '0',
  `price` double(10,2) NOT NULL DEFAULT '0.00',
  `offer_price` double(10,2) NOT NULL DEFAULT '0.00',
  `stock` int NOT NULL DEFAULT '1',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_color_sizes`
--

INSERT INTO `product_color_sizes` (`id`, `product_id`, `color`, `size`, `assorted_flag`, `price`, `offer_price`, `stock`, `code`, `status`, `created_at`) VALUES
(1, 38, 11, 1, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(2, 38, 11, 2, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(3, 38, 11, 3, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(4, 38, 11, 4, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(5, 38, 11, 5, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(6, 38, 11, 6, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-07 02:09:28'),
(7, 38, 11, 7, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-07 02:09:28'),
(9, 39, 12, 1, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-07 02:09:28'),
(10, 39, 12, 2, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-07 02:09:28'),
(11, 39, 12, 3, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-07 02:09:28'),
(12, 39, 12, 4, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-20 23:30:33'),
(13, 39, 12, 5, 0, 540.00, 540.00, 1, NULL, 1, '2022-03-20 23:31:16'),
(14, 39, 12, 6, 0, 540.00, 540.00, 1, NULL, 1, '2022-03-20 23:31:16'),
(15, 39, 12, 7, 0, 540.00, 540.00, 1, NULL, 1, '2022-03-20 23:31:16'),
(17, 13, 12, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(18, 13, 12, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(19, 13, 12, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(20, 13, 12, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(21, 13, 12, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(22, 13, 12, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(23, 13, 12, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(24, 13, 12, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(25, 13, 1, 0, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(26, 13, 1, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(27, 13, 1, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(28, 13, 1, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(29, 13, 1, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(30, 13, 1, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(31, 13, 1, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(32, 13, 1, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(33, 13, 13, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(34, 13, 13, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(35, 13, 13, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(36, 13, 13, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(37, 13, 13, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(38, 13, 13, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(39, 13, 13, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(40, 13, 13, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(41, 13, 14, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(42, 13, 14, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(43, 13, 14, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(44, 13, 14, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(45, 13, 14, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(46, 13, 14, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(47, 13, 14, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(48, 13, 14, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(49, 13, 15, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(50, 13, 15, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(51, 13, 15, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(52, 13, 15, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(53, 13, 15, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(54, 13, 15, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(55, 13, 15, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(56, 13, 15, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(57, 13, 16, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(58, 13, 16, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(59, 13, 16, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(60, 13, 16, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(61, 13, 16, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(62, 13, 16, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(63, 13, 16, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(64, 13, 16, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(65, 13, 17, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(66, 13, 17, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(67, 13, 17, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(68, 13, 17, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(69, 13, 17, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(70, 13, 17, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(71, 13, 17, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(72, 13, 17, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(73, 13, 11, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(74, 13, 11, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(75, 13, 11, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(76, 13, 11, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(77, 13, 11, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(78, 13, 11, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(79, 13, 11, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(80, 13, 11, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(81, 13, 9, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(82, 13, 9, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(83, 13, 9, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(84, 13, 9, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(85, 13, 9, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(86, 13, 9, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(87, 13, 9, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(88, 13, 9, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(89, 13, 5, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(90, 13, 5, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(91, 13, 5, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(92, 13, 5, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(93, 13, 5, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(94, 13, 5, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(95, 13, 5, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(96, 13, 5, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(97, 13, 18, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(98, 13, 18, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(99, 13, 18, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(100, 13, 18, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(101, 13, 18, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(102, 13, 18, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(103, 13, 18, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(104, 13, 18, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(105, 13, 19, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(106, 13, 19, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(107, 13, 19, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(108, 13, 19, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(109, 13, 19, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(110, 13, 19, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(111, 13, 19, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(112, 13, 19, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(113, 13, 20, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(114, 13, 20, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(115, 13, 20, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(116, 13, 20, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(117, 13, 20, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(118, 13, 20, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(119, 13, 20, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(120, 13, 20, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(121, 13, 21, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(122, 13, 21, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(123, 13, 21, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(124, 13, 21, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(125, 13, 21, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(126, 13, 21, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(127, 13, 21, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(128, 13, 21, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(129, 13, 22, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(130, 13, 22, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(131, 13, 22, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(132, 13, 22, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(133, 13, 22, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(134, 13, 22, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(135, 13, 22, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(136, 13, 22, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(137, 13, 23, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(138, 13, 23, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(139, 13, 23, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(140, 13, 23, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(141, 13, 23, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(142, 13, 23, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(143, 13, 23, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(144, 13, 23, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(145, 13, 24, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(146, 13, 24, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(147, 13, 24, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(148, 13, 24, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(149, 13, 24, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(150, 13, 24, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(151, 13, 24, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(152, 13, 24, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(153, 13, 25, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(154, 13, 25, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(155, 13, 25, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(156, 13, 25, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(157, 13, 25, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(158, 13, 25, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(159, 13, 25, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(160, 13, 25, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(161, 13, 26, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(162, 13, 26, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(163, 13, 26, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(164, 13, 26, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(165, 13, 26, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(166, 13, 26, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(167, 13, 26, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(168, 13, 26, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(169, 13, 27, 1, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(170, 13, 27, 2, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(171, 13, 27, 3, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(172, 13, 27, 4, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(173, 13, 27, 5, 0, 399.00, 399.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(174, 13, 27, 6, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(175, 13, 27, 7, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(176, 13, 27, 8, 0, 425.00, 425.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(177, 12, 12, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(178, 12, 12, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(179, 12, 12, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(180, 12, 12, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(181, 12, 12, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(182, 12, 12, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(183, 12, 12, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(184, 12, 12, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(185, 12, 1, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(186, 12, 1, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(187, 12, 1, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(188, 12, 1, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(189, 12, 1, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(190, 12, 1, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(191, 12, 1, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(192, 12, 1, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(193, 12, 13, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(194, 12, 13, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(195, 12, 13, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(196, 12, 13, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(197, 12, 13, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(198, 12, 13, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(199, 12, 13, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(200, 12, 13, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(201, 12, 16, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(202, 12, 16, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(203, 12, 16, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(204, 12, 16, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(205, 12, 16, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(206, 12, 16, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(207, 12, 16, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(208, 12, 16, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(209, 12, 17, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(210, 12, 17, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(211, 12, 17, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(212, 12, 17, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(213, 12, 17, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(214, 12, 17, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(215, 12, 17, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(216, 12, 17, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(217, 12, 11, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(218, 12, 11, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(219, 12, 11, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(220, 12, 11, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(221, 12, 11, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(222, 12, 11, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(223, 12, 11, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(224, 12, 11, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(225, 12, 18, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(226, 12, 18, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(227, 12, 18, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(228, 12, 18, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(229, 12, 18, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(230, 12, 18, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(231, 12, 18, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(232, 12, 18, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(233, 12, 19, 1, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(234, 12, 19, 2, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(235, 12, 19, 3, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(236, 12, 19, 4, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(237, 12, 19, 5, 0, 410.00, 410.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(238, 12, 19, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(239, 12, 19, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(240, 12, 19, 8, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(241, 14, 11, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(242, 14, 11, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(243, 14, 11, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(244, 14, 11, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(245, 14, 11, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(246, 14, 11, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(247, 14, 11, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(248, 14, 11, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(249, 14, 13, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(250, 14, 13, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(251, 14, 13, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(252, 14, 13, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(253, 14, 13, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(254, 14, 13, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(255, 14, 13, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(256, 14, 13, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(257, 14, 12, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(258, 14, 12, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(259, 14, 12, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(260, 14, 12, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(261, 14, 12, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(262, 14, 12, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(263, 14, 12, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(264, 14, 12, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(265, 14, 1, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(266, 14, 1, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(267, 14, 1, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(268, 14, 1, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(269, 14, 1, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(270, 14, 1, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(271, 14, 1, 7, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(272, 14, 1, 8, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(273, 15, 24, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(274, 15, 24, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(275, 15, 24, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(276, 15, 24, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(277, 15, 24, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(278, 15, 24, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(279, 15, 24, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(280, 15, 24, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(281, 15, 11, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(282, 15, 11, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(283, 15, 11, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(284, 15, 11, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(285, 15, 11, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(286, 15, 11, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(287, 15, 11, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(288, 15, 11, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(289, 15, 28, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(290, 15, 28, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(291, 15, 28, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(292, 15, 28, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(293, 15, 28, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(294, 15, 28, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(295, 15, 28, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(296, 15, 28, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(297, 15, 29, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(298, 15, 29, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(299, 15, 29, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(300, 15, 29, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(301, 15, 29, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(302, 15, 29, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(303, 15, 29, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(304, 15, 29, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(305, 15, 19, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(306, 15, 19, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(307, 15, 19, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(308, 15, 19, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(309, 15, 19, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(310, 15, 19, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(311, 15, 19, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(312, 15, 19, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(313, 15, 30, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(314, 15, 30, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(315, 15, 30, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(316, 15, 30, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(317, 15, 30, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(318, 15, 30, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(319, 15, 30, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(320, 15, 30, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(321, 15, 17, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(322, 15, 17, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(323, 15, 17, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(324, 15, 17, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(325, 15, 17, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(326, 15, 17, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(327, 15, 17, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(328, 15, 17, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(329, 15, 25, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(330, 15, 25, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(331, 15, 25, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(332, 15, 25, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(333, 15, 25, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(334, 15, 25, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(335, 15, 25, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(336, 15, 25, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(337, 15, 13, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(338, 15, 13, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(339, 15, 13, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(340, 15, 13, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(341, 15, 13, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(342, 15, 13, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(343, 15, 13, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(344, 15, 13, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(345, 15, 4, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(346, 15, 4, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(347, 15, 4, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(348, 15, 4, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(349, 15, 4, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(350, 15, 4, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(351, 15, 4, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(352, 15, 4, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(353, 15, 31, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(354, 15, 31, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(355, 15, 31, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(356, 15, 31, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(357, 15, 31, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(358, 15, 31, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(359, 15, 31, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(360, 15, 31, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(361, 15, 26, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(362, 15, 26, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(363, 15, 26, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(364, 15, 26, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(365, 15, 26, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(366, 15, 26, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(367, 15, 26, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(368, 15, 26, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(369, 15, 9, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(370, 15, 9, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(371, 15, 9, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(372, 15, 9, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(373, 15, 9, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(374, 15, 9, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(375, 15, 9, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(376, 15, 9, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(377, 15, 1, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(378, 15, 1, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(379, 15, 1, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(380, 15, 1, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(381, 15, 1, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(382, 15, 1, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(383, 15, 1, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(384, 15, 1, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(385, 15, 12, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(386, 15, 12, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(387, 15, 12, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(388, 15, 12, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(389, 15, 12, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(390, 15, 12, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(391, 15, 12, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(392, 15, 12, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(393, 15, 32, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(394, 15, 32, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(395, 15, 32, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(396, 15, 32, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(397, 15, 32, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(398, 15, 32, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(399, 15, 32, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(400, 15, 32, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(401, 15, 33, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(402, 15, 33, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(403, 15, 33, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(404, 15, 33, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(405, 15, 33, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(406, 15, 33, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(407, 15, 33, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(408, 15, 33, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(409, 15, 34, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(410, 15, 34, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(411, 15, 34, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(412, 15, 34, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(413, 15, 34, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(414, 15, 34, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(415, 15, 34, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(416, 15, 34, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(417, 15, 35, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(418, 15, 35, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(419, 15, 35, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(420, 15, 35, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(421, 15, 35, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(422, 15, 35, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(423, 15, 35, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(424, 15, 35, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(425, 15, 36, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(426, 15, 36, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(427, 15, 36, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(428, 15, 36, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(429, 15, 36, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(430, 15, 36, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(431, 15, 36, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(432, 15, 36, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(433, 15, 37, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(434, 15, 37, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(435, 15, 37, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(436, 15, 37, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(437, 15, 37, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(438, 15, 37, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(439, 15, 37, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(440, 15, 37, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(441, 15, 38, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(442, 15, 38, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(443, 15, 38, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(444, 15, 38, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(445, 15, 38, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(446, 15, 38, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(447, 15, 38, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(448, 15, 38, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(449, 15, 15, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(450, 15, 15, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(451, 15, 15, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(452, 15, 15, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(453, 15, 15, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(454, 15, 15, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(455, 15, 15, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(456, 15, 15, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(457, 15, 39, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(458, 15, 39, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(459, 15, 39, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(460, 15, 39, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(461, 15, 39, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(462, 15, 39, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(463, 15, 39, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(464, 15, 39, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(465, 15, 40, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(466, 15, 40, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(467, 15, 40, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(468, 15, 40, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(469, 15, 40, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(470, 15, 40, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(471, 15, 40, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(472, 15, 40, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(473, 15, 41, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(474, 15, 41, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(475, 15, 41, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(476, 15, 41, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(477, 15, 41, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(478, 15, 41, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(479, 15, 41, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(480, 15, 41, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(481, 15, 42, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(482, 15, 42, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(483, 15, 42, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(484, 15, 42, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(485, 15, 42, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(486, 15, 42, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(487, 15, 42, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(488, 15, 42, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(489, 15, 22, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(490, 15, 22, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(491, 15, 22, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(492, 15, 22, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(493, 15, 22, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(494, 15, 22, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(495, 15, 22, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(496, 15, 22, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(497, 15, 43, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(498, 15, 43, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(499, 15, 43, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(500, 15, 43, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(501, 15, 43, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(502, 15, 43, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(503, 15, 43, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(504, 15, 43, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(505, 15, 44, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(506, 15, 44, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(507, 15, 44, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(508, 15, 44, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(509, 15, 44, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(510, 15, 44, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(511, 15, 44, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(512, 15, 44, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(513, 15, 45, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(514, 15, 45, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(515, 15, 45, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(516, 15, 45, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(517, 15, 45, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(518, 15, 45, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(519, 15, 45, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(520, 15, 45, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(521, 15, 46, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(522, 15, 46, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(523, 15, 46, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(524, 15, 46, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(525, 15, 46, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(526, 15, 46, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(527, 15, 46, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(528, 15, 46, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(529, 15, 47, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(530, 15, 47, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(531, 15, 47, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(532, 15, 47, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(533, 15, 47, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(534, 15, 47, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(535, 15, 47, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(536, 15, 47, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(537, 15, 48, 1, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(538, 15, 48, 2, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(539, 15, 48, 3, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(540, 15, 48, 4, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(541, 15, 48, 5, 0, 575.00, 575.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(542, 15, 48, 6, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(543, 15, 48, 7, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(544, 15, 48, 8, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(545, 54, 49, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(546, 54, 49, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(547, 54, 49, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(548, 54, 49, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(549, 54, 49, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(550, 54, 49, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(551, 54, 49, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(552, 54, 49, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(553, 54, 50, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(554, 54, 50, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(555, 54, 50, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(556, 54, 50, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(557, 54, 50, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(558, 54, 50, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(559, 54, 50, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(560, 54, 50, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(561, 54, 51, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(562, 54, 51, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(563, 54, 51, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(564, 54, 51, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(565, 54, 51, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(566, 54, 51, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(567, 54, 51, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(568, 54, 51, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(569, 54, 52, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(570, 54, 52, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(571, 54, 52, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(572, 54, 52, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(573, 54, 52, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(574, 54, 52, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(575, 54, 52, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(576, 54, 52, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(577, 54, 53, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(578, 54, 53, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(579, 54, 53, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(580, 54, 53, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(581, 54, 53, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(582, 54, 53, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(583, 54, 53, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(584, 54, 53, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(585, 54, 54, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(586, 54, 54, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(587, 54, 54, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(588, 54, 54, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(589, 54, 54, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(590, 54, 54, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(591, 54, 54, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(592, 54, 54, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(593, 54, 55, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(594, 54, 55, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(595, 54, 55, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(596, 54, 55, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(597, 54, 55, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(598, 54, 55, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(599, 54, 55, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(600, 54, 55, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(601, 54, 56, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(602, 54, 56, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(603, 54, 56, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(604, 54, 56, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(605, 54, 56, 5, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(606, 54, 56, 6, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(607, 54, 56, 7, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(608, 54, 56, 8, 0, 615.00, 615.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(609, 55, 11, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(610, 55, 11, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(611, 55, 11, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(612, 55, 11, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(613, 55, 11, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(614, 55, 11, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(615, 55, 11, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(616, 55, 11, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(617, 55, 13, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(618, 55, 13, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(619, 55, 13, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(620, 55, 13, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(621, 55, 13, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(622, 55, 13, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(623, 55, 13, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(624, 55, 13, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(625, 55, 17, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(626, 55, 17, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(627, 55, 17, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(628, 55, 17, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(629, 55, 17, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(630, 55, 17, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(631, 55, 17, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(632, 55, 17, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(633, 55, 27, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(634, 55, 27, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(635, 55, 27, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(636, 55, 27, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(637, 55, 27, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(638, 55, 27, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(639, 55, 27, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(640, 55, 27, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(641, 55, 9, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(642, 55, 9, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(643, 55, 9, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(644, 55, 9, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(645, 55, 9, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(646, 55, 9, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(647, 55, 9, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(648, 55, 9, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(649, 55, 12, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(650, 55, 12, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(651, 55, 12, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(652, 55, 12, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(653, 55, 12, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(654, 55, 12, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(655, 55, 12, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(656, 55, 12, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(657, 55, 18, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(658, 55, 18, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(659, 55, 18, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(660, 55, 18, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(661, 55, 18, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(662, 55, 18, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(663, 55, 18, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(664, 55, 18, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(665, 55, 1, 1, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(666, 55, 1, 2, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(667, 55, 1, 3, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(668, 55, 1, 4, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(669, 55, 1, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(670, 55, 1, 6, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(671, 55, 1, 7, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(672, 55, 1, 8, 0, 475.00, 475.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(673, 57, 1, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(674, 57, 1, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(675, 57, 1, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(676, 57, 1, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(677, 57, 1, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(678, 57, 30, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(679, 57, 30, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(680, 57, 30, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(681, 57, 30, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(682, 57, 30, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(683, 57, 13, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(684, 57, 13, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(685, 57, 13, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(686, 57, 13, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(687, 57, 13, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(688, 57, 10, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(689, 57, 10, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(690, 57, 10, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(691, 57, 10, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(692, 57, 10, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(693, 57, 26, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(694, 57, 26, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(695, 57, 26, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(696, 57, 26, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(697, 57, 26, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(698, 57, 11, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(699, 57, 11, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(700, 57, 11, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(701, 57, 11, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(702, 57, 11, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(703, 57, 43, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(704, 57, 43, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(705, 57, 43, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(706, 57, 43, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(707, 57, 43, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(708, 57, 12, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(709, 57, 12, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(710, 57, 12, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(711, 57, 12, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(712, 57, 12, 6, 0, 525.00, 525.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(713, 59, 30, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(714, 59, 30, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(715, 59, 30, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(716, 59, 30, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17');
INSERT INTO `product_color_sizes` (`id`, `product_id`, `color`, `size`, `assorted_flag`, `price`, `offer_price`, `stock`, `code`, `status`, `created_at`) VALUES
(717, 59, 30, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(718, 59, 30, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(719, 59, 30, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(720, 59, 30, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(721, 59, 30, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(722, 59, 30, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(723, 59, 30, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(724, 59, 30, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(725, 59, 1, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(726, 59, 1, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(727, 59, 1, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(728, 59, 1, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(729, 59, 1, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(730, 59, 1, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(731, 59, 1, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(732, 59, 1, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(733, 59, 1, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(734, 59, 1, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(735, 59, 1, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(736, 59, 1, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(737, 59, 24, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(738, 59, 24, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(739, 59, 24, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(740, 59, 24, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(741, 59, 24, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(742, 59, 24, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(743, 59, 24, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(744, 59, 24, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(745, 59, 24, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(746, 59, 24, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(747, 59, 24, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(748, 59, 24, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(749, 59, 16, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(750, 59, 16, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(751, 59, 16, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(752, 59, 16, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(753, 59, 16, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(754, 59, 16, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(755, 59, 16, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(756, 59, 16, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(757, 59, 16, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(758, 59, 16, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(759, 59, 16, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(760, 59, 16, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(761, 59, 17, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(762, 59, 17, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(763, 59, 17, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(764, 59, 17, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(765, 59, 17, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(766, 59, 17, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(767, 59, 17, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(768, 59, 17, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(769, 59, 17, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(770, 59, 17, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(771, 59, 17, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(772, 59, 17, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(773, 59, 5, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(774, 59, 5, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(775, 59, 5, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(776, 59, 5, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(777, 59, 5, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(778, 59, 5, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(779, 59, 5, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(780, 59, 5, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(781, 59, 5, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(782, 59, 5, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(783, 59, 5, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(784, 59, 5, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(785, 59, 11, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(786, 59, 11, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(787, 59, 11, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(788, 59, 11, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(789, 59, 11, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(790, 59, 11, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(791, 59, 11, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(792, 59, 11, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(793, 59, 11, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(794, 59, 11, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(795, 59, 11, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(796, 59, 11, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(797, 59, 12, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(798, 59, 12, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(799, 59, 12, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(800, 59, 12, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(801, 59, 12, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(802, 59, 12, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(803, 59, 12, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(804, 59, 12, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(805, 59, 12, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(806, 59, 12, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(807, 59, 12, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(808, 59, 12, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(809, 59, 13, 11, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(810, 59, 13, 12, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(811, 59, 13, 13, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(812, 59, 13, 14, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(813, 59, 13, 15, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(814, 59, 13, 16, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(815, 59, 13, 17, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(816, 59, 13, 18, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(817, 59, 13, 19, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(818, 59, 13, 20, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(819, 59, 13, 21, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(820, 59, 13, 22, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(821, 60, 11, 11, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(822, 60, 11, 12, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(823, 60, 11, 13, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(824, 60, 11, 14, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(825, 60, 11, 15, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(826, 60, 11, 16, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(827, 60, 11, 17, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(828, 60, 11, 18, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(829, 60, 11, 19, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(830, 60, 11, 20, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(831, 60, 11, 21, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(832, 60, 11, 22, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(833, 60, 13, 11, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(834, 60, 13, 12, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(835, 60, 13, 13, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(836, 60, 13, 14, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(837, 60, 13, 15, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(838, 60, 13, 16, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(839, 60, 13, 17, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(840, 60, 13, 18, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(841, 60, 13, 19, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(842, 60, 13, 20, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(843, 60, 13, 21, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(844, 60, 13, 22, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(845, 60, 27, 11, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(846, 60, 27, 12, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(847, 60, 27, 13, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(848, 60, 27, 14, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(849, 60, 27, 15, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(850, 60, 27, 16, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(851, 60, 27, 17, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(852, 60, 27, 18, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(853, 60, 27, 19, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(854, 60, 27, 20, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(855, 60, 27, 21, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(856, 60, 27, 22, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(857, 60, 18, 11, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(858, 60, 18, 12, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(859, 60, 18, 13, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(860, 60, 18, 14, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(861, 60, 18, 15, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(862, 60, 18, 16, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(863, 60, 18, 17, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(864, 60, 18, 18, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(865, 60, 18, 19, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(866, 60, 18, 20, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(867, 60, 18, 21, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(868, 60, 18, 22, 0, 380.00, 380.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(869, 91, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(870, 91, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(871, 91, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(872, 91, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(873, 91, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(874, 91, 14, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(875, 91, 14, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(876, 91, 14, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(877, 91, 14, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(878, 91, 14, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(879, 91, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(880, 91, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(881, 91, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(882, 91, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(883, 91, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(884, 92, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(885, 92, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(886, 92, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(887, 92, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(888, 92, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(889, 92, 14, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(890, 92, 14, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(891, 92, 14, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(892, 92, 14, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(893, 92, 14, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(894, 92, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(895, 92, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(896, 92, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(897, 92, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(898, 92, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(899, 93, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(900, 93, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(901, 93, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(902, 93, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(903, 93, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(904, 93, 14, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(905, 93, 14, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(906, 93, 14, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(907, 93, 14, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(908, 93, 14, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(909, 93, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(910, 93, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(911, 93, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(912, 93, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(913, 93, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(914, 94, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(915, 94, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(916, 94, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(917, 94, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(918, 94, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(919, 94, 14, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(920, 94, 14, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(921, 94, 14, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(922, 94, 14, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(923, 94, 14, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(924, 94, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(925, 94, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(926, 94, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(927, 94, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(928, 94, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(929, 95, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(930, 95, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(931, 95, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(932, 95, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(933, 95, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(934, 95, 14, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(935, 95, 14, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(936, 95, 14, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(937, 95, 14, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(938, 95, 14, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(939, 95, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(940, 95, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(941, 95, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(942, 95, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(943, 95, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(944, 96, 11, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(945, 96, 11, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(946, 96, 11, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(947, 96, 11, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(948, 96, 11, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(949, 96, 14, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(950, 96, 14, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(951, 96, 14, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(952, 96, 14, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(953, 96, 14, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(954, 96, 13, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(955, 96, 13, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(956, 96, 13, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(957, 96, 13, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(958, 96, 13, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(959, 96, 1, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(960, 96, 1, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(961, 96, 1, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(962, 96, 1, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(963, 96, 1, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(964, 97, 14, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(965, 97, 14, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(966, 97, 14, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(967, 97, 14, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(968, 97, 14, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(969, 97, 13, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(970, 97, 13, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(971, 97, 13, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(972, 97, 13, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(973, 97, 13, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(974, 97, 1, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(975, 97, 1, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(976, 97, 1, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(977, 97, 1, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(978, 97, 1, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(979, 98, 11, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(980, 98, 11, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(981, 98, 11, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(982, 98, 11, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(983, 98, 11, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(984, 98, 14, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(985, 98, 14, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(986, 98, 14, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(987, 98, 14, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(988, 98, 14, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(989, 98, 13, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(990, 98, 13, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(991, 98, 13, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(992, 98, 13, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(993, 98, 13, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(994, 99, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(995, 99, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(996, 99, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(997, 99, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(998, 99, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(999, 99, 14, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1000, 99, 14, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1001, 99, 14, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1002, 99, 14, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1003, 99, 14, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1004, 99, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1005, 99, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1006, 99, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1007, 99, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1008, 99, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1009, 100, 11, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1010, 100, 11, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1011, 100, 11, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1012, 100, 11, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1013, 100, 11, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1014, 100, 14, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1015, 100, 14, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1016, 100, 14, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1017, 100, 14, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1018, 100, 14, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1019, 100, 13, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1020, 100, 13, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1021, 100, 13, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1022, 100, 13, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1023, 100, 13, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1024, 101, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1025, 101, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1026, 101, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1027, 101, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1028, 101, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1029, 101, 14, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1030, 101, 14, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1031, 101, 14, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1032, 101, 14, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1033, 101, 14, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1034, 101, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1035, 101, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1036, 101, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1037, 101, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1038, 101, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1039, 101, 42, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1040, 101, 42, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1041, 101, 42, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1042, 101, 42, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1043, 101, 42, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1044, 101, 57, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1045, 101, 57, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1046, 101, 57, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1047, 101, 57, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1048, 101, 57, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1049, 102, 11, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1050, 102, 11, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1051, 102, 11, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1052, 102, 11, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1053, 102, 11, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1054, 102, 58, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1055, 102, 58, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1056, 102, 58, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1057, 102, 58, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1058, 102, 58, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1059, 102, 13, 2, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1060, 102, 13, 3, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1061, 102, 13, 4, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1062, 102, 13, 5, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1063, 102, 13, 6, 0, 849.00, 849.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1064, 103, 11, 2, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1065, 103, 11, 3, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1066, 103, 11, 4, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1067, 103, 11, 5, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1068, 103, 11, 6, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1069, 103, 13, 2, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1070, 103, 13, 3, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1071, 103, 13, 4, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1072, 103, 13, 5, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1073, 103, 13, 6, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1074, 104, 11, 2, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1075, 104, 11, 3, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1076, 104, 11, 4, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1077, 104, 11, 5, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1078, 104, 11, 6, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1079, 104, 58, 2, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1080, 104, 58, 3, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1081, 104, 58, 4, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1082, 104, 58, 5, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1083, 104, 58, 6, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1084, 104, 13, 2, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1085, 104, 13, 3, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1086, 104, 13, 4, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1087, 104, 13, 5, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1088, 104, 13, 6, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1089, 104, 39, 2, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1090, 104, 39, 3, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1091, 104, 39, 4, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1092, 104, 39, 5, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1093, 104, 39, 6, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1094, 139, 11, 2, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1095, 139, 11, 3, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1096, 139, 11, 4, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1097, 139, 11, 5, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1098, 139, 11, 6, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1099, 139, 58, 2, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1100, 139, 58, 3, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1101, 139, 58, 4, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1102, 139, 58, 5, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1103, 139, 58, 6, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1104, 139, 13, 2, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1105, 139, 13, 3, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1106, 139, 13, 4, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1107, 139, 13, 5, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1108, 139, 13, 6, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1109, 139, 24, 2, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1110, 139, 24, 3, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1111, 139, 24, 4, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1112, 139, 24, 5, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1113, 139, 24, 6, 0, 549.00, 549.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1114, 58, 11, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1115, 58, 11, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1116, 58, 11, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1117, 58, 11, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1118, 58, 11, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1119, 58, 12, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1120, 58, 12, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1121, 58, 12, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1122, 58, 12, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1123, 58, 12, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1124, 58, 13, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1125, 58, 13, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1126, 58, 13, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1127, 58, 13, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1128, 58, 13, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1129, 58, 1, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1130, 58, 1, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1131, 58, 1, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1132, 58, 1, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1133, 58, 1, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1134, 58, 5, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1135, 58, 5, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1136, 58, 5, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1137, 58, 5, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1138, 58, 5, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1139, 58, 30, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1140, 58, 30, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1141, 58, 30, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1142, 58, 30, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1143, 58, 30, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1144, 58, 10, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1145, 58, 10, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1146, 58, 10, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1147, 58, 10, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1148, 58, 10, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1149, 58, 26, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1150, 58, 26, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1151, 58, 26, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1152, 58, 26, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1153, 58, 26, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1154, 58, 59, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1155, 58, 59, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1156, 58, 59, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1157, 58, 59, 5, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1158, 58, 59, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1159, 16, 24, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1160, 16, 24, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1161, 16, 24, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1162, 16, 24, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1163, 16, 24, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1164, 16, 24, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1165, 16, 24, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1166, 16, 24, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1167, 16, 11, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1168, 16, 11, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1169, 16, 11, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1170, 16, 11, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1171, 16, 11, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1172, 16, 11, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1173, 16, 11, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1174, 16, 11, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1175, 16, 28, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1176, 16, 28, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1177, 16, 28, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1178, 16, 28, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1179, 16, 28, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1180, 16, 28, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1181, 16, 28, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1182, 16, 28, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1183, 16, 29, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1184, 16, 29, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1185, 16, 29, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1186, 16, 29, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1187, 16, 29, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1188, 16, 29, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1189, 16, 29, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1190, 16, 29, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1191, 16, 19, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1192, 16, 19, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1193, 16, 19, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1194, 16, 19, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1195, 16, 19, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1196, 16, 19, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1197, 16, 19, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1198, 16, 19, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1199, 16, 30, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1200, 16, 30, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1201, 16, 30, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1202, 16, 30, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1203, 16, 30, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1204, 16, 30, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1205, 16, 30, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1206, 16, 30, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1207, 16, 17, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1208, 16, 17, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1209, 16, 17, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1210, 16, 17, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1211, 16, 17, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1212, 16, 17, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1213, 16, 17, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1214, 16, 17, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1215, 16, 25, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1216, 16, 25, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1217, 16, 25, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1218, 16, 25, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1219, 16, 25, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1220, 16, 25, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1221, 16, 25, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1222, 16, 25, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1223, 16, 13, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1224, 16, 13, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1225, 16, 13, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1226, 16, 13, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1227, 16, 13, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1228, 16, 13, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1229, 16, 13, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1230, 16, 13, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1231, 16, 4, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1232, 16, 4, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1233, 16, 4, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1234, 16, 4, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1235, 16, 4, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1236, 16, 4, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1237, 16, 4, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1238, 16, 4, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1239, 16, 31, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1240, 16, 31, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1241, 16, 31, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1242, 16, 31, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1243, 16, 31, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1244, 16, 31, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1245, 16, 31, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1246, 16, 31, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1247, 16, 26, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1248, 16, 26, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1249, 16, 26, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1250, 16, 26, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1251, 16, 26, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1252, 16, 26, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1253, 16, 26, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1254, 16, 26, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1255, 16, 9, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1256, 16, 9, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1257, 16, 9, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1258, 16, 9, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1259, 16, 9, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1260, 16, 9, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1261, 16, 9, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1262, 16, 9, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1263, 16, 1, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1264, 16, 1, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1265, 16, 1, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1266, 16, 1, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1267, 16, 1, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1268, 16, 1, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1269, 16, 1, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1270, 16, 1, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1271, 16, 12, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1272, 16, 12, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1273, 16, 12, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1274, 16, 12, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1275, 16, 12, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1276, 16, 12, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1277, 16, 12, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1278, 16, 12, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1279, 16, 32, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1280, 16, 32, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1281, 16, 32, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1282, 16, 32, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1283, 16, 32, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1284, 16, 32, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1285, 16, 32, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1286, 16, 32, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1287, 16, 33, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1288, 16, 33, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1289, 16, 33, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1290, 16, 33, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1291, 16, 33, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1292, 16, 33, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1293, 16, 33, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1294, 16, 33, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1295, 16, 34, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1296, 16, 34, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1297, 16, 34, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1298, 16, 34, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1299, 16, 34, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1300, 16, 34, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1301, 16, 34, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1302, 16, 34, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1303, 16, 35, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1304, 16, 35, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1305, 16, 35, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1306, 16, 35, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1307, 16, 35, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1308, 16, 35, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1309, 16, 35, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1310, 16, 35, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1311, 16, 36, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1312, 16, 36, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1313, 16, 36, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1314, 16, 36, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1315, 16, 36, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1316, 16, 36, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1317, 16, 36, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1318, 16, 36, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1319, 16, 37, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1320, 16, 37, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1321, 16, 37, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1322, 16, 37, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1323, 16, 37, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1324, 16, 37, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1325, 16, 37, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1326, 16, 37, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1327, 16, 38, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1328, 16, 38, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1329, 16, 38, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1330, 16, 38, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1331, 16, 38, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1332, 16, 38, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1333, 16, 38, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1334, 16, 38, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1335, 16, 15, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1336, 16, 15, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1337, 16, 15, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1338, 16, 15, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1339, 16, 15, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1340, 16, 15, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1341, 16, 15, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1342, 16, 15, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1343, 16, 39, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1344, 16, 39, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1345, 16, 39, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1346, 16, 39, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1347, 16, 39, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1348, 16, 39, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1349, 16, 39, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1350, 16, 39, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1351, 16, 40, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1352, 16, 40, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1353, 16, 40, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1354, 16, 40, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1355, 16, 40, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1356, 16, 40, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1357, 16, 40, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1358, 16, 40, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1359, 16, 41, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1360, 16, 41, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1361, 16, 41, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1362, 16, 41, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1363, 16, 41, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1364, 16, 41, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1365, 16, 41, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1366, 16, 41, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1367, 16, 42, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1368, 16, 42, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1369, 16, 42, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1370, 16, 42, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1371, 16, 42, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1372, 16, 42, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1373, 16, 42, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1374, 16, 42, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1375, 16, 22, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1376, 16, 22, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1377, 16, 22, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1378, 16, 22, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1379, 16, 22, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1380, 16, 22, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1381, 16, 22, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1382, 16, 22, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1383, 16, 43, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1384, 16, 43, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1385, 16, 43, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1386, 16, 43, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1387, 16, 43, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1388, 16, 43, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1389, 16, 43, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1390, 16, 43, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1391, 16, 44, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1392, 16, 44, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1393, 16, 44, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1394, 16, 44, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1395, 16, 44, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1396, 16, 44, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1397, 16, 44, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1398, 16, 44, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1399, 16, 45, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1400, 16, 45, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1401, 16, 45, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1402, 16, 45, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1403, 16, 45, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1404, 16, 45, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1405, 16, 45, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1406, 16, 45, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1407, 16, 46, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1408, 16, 46, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1409, 16, 46, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1410, 16, 46, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1411, 16, 46, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1412, 16, 46, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1413, 16, 46, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1414, 16, 46, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1415, 16, 47, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1416, 16, 47, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1417, 16, 47, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1418, 16, 47, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1419, 16, 47, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17');
INSERT INTO `product_color_sizes` (`id`, `product_id`, `color`, `size`, `assorted_flag`, `price`, `offer_price`, `stock`, `code`, `status`, `created_at`) VALUES
(1420, 16, 47, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1421, 16, 47, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1422, 16, 47, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1423, 16, 48, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1424, 16, 48, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1425, 16, 48, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1426, 16, 48, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1427, 16, 48, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1428, 16, 48, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1429, 16, 48, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1430, 16, 48, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1431, 22, 12, 2, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1432, 22, 12, 3, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1433, 22, 12, 4, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1434, 22, 12, 5, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1435, 22, 12, 6, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1436, 23, 11, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1437, 23, 11, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1438, 23, 11, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1439, 23, 11, 5, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1440, 23, 11, 6, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1441, 23, 13, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1442, 23, 13, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1443, 23, 13, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1444, 23, 13, 5, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1445, 23, 13, 6, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1446, 23, 17, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1447, 23, 17, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1448, 23, 17, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1449, 23, 17, 5, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1450, 23, 17, 6, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1451, 23, 42, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1452, 23, 42, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1453, 23, 42, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1454, 23, 42, 5, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1455, 23, 42, 6, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1456, 23, 60, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1457, 23, 60, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1458, 23, 60, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1459, 23, 60, 5, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1460, 23, 60, 6, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1461, 23, 19, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1462, 23, 19, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1463, 23, 19, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1464, 23, 19, 5, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1465, 23, 19, 6, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1466, 23, 57, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1467, 23, 57, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1468, 23, 57, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1469, 23, 57, 5, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1470, 23, 57, 6, 0, 335.00, 335.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1471, 24, 11, 2, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1472, 24, 11, 3, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1473, 24, 11, 4, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1474, 24, 11, 5, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1475, 24, 11, 6, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1476, 24, 13, 2, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1477, 24, 13, 3, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1478, 24, 13, 4, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1479, 24, 13, 5, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1480, 24, 13, 6, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1481, 24, 17, 2, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1482, 24, 17, 3, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1483, 24, 17, 4, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1484, 24, 17, 5, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1485, 24, 17, 6, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1486, 24, 42, 2, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1487, 24, 42, 3, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1488, 24, 42, 4, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1489, 24, 42, 5, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1490, 24, 42, 6, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1491, 24, 60, 2, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1492, 24, 60, 3, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1493, 24, 60, 4, 0, 140.00, 140.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1494, 24, 60, 5, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1495, 24, 60, 6, 0, 150.00, 150.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1496, 25, 61, 2, 0, 165.00, 165.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1497, 25, 61, 3, 0, 165.00, 165.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1498, 25, 61, 4, 0, 165.00, 165.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1499, 25, 61, 5, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1500, 25, 61, 6, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1501, 26, 61, 2, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1502, 26, 61, 3, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1503, 26, 61, 4, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1504, 26, 61, 5, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1505, 26, 61, 6, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1506, 107, 61, 2, 0, 310.00, 310.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1507, 107, 61, 3, 0, 310.00, 310.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1508, 107, 61, 4, 0, 310.00, 310.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1509, 107, 61, 5, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1510, 107, 61, 6, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1511, 61, 61, 2, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1512, 61, 61, 3, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1513, 61, 61, 4, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1514, 61, 61, 5, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1515, 61, 61, 6, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1516, 61, 61, 7, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1517, 61, 61, 8, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1518, 62, 61, 2, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1519, 62, 61, 3, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1520, 62, 61, 4, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1521, 62, 61, 5, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1522, 62, 61, 6, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1523, 62, 61, 7, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1524, 62, 61, 8, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1525, 63, 61, 2, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1526, 63, 61, 3, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1527, 63, 61, 4, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1528, 63, 61, 5, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1529, 63, 61, 6, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1530, 63, 61, 7, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1531, 63, 61, 8, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1532, 64, 61, 2, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1533, 64, 61, 3, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1534, 64, 61, 4, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1535, 64, 61, 5, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1536, 64, 61, 6, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1537, 64, 61, 7, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1538, 64, 61, 8, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1539, 65, 61, 2, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1540, 65, 61, 3, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1541, 65, 61, 4, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1542, 65, 61, 5, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1543, 65, 61, 6, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1544, 65, 61, 7, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1545, 65, 61, 8, 0, 649.00, 649.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1546, 56, 61, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1547, 56, 61, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1548, 56, 61, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1549, 56, 61, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1550, 56, 61, 5, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1551, 56, 61, 6, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1552, 56, 61, 7, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1553, 56, 61, 8, 0, 625.00, 625.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1554, 105, 61, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1555, 105, 61, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1556, 105, 61, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1557, 105, 61, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1558, 105, 61, 6, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1559, 106, 61, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1560, 106, 61, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1561, 106, 61, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1562, 106, 61, 5, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1563, 106, 61, 6, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1564, 27, 12, 1, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1565, 27, 12, 2, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1566, 27, 12, 3, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1567, 27, 12, 4, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1568, 27, 12, 5, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1569, 28, 61, 1, 0, 275.00, 275.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1570, 28, 61, 2, 0, 275.00, 275.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1571, 28, 61, 3, 0, 275.00, 275.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1572, 28, 61, 4, 0, 275.00, 275.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1573, 28, 61, 5, 0, 275.00, 275.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1574, 29, 61, 1, 0, 275.00, 275.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1575, 29, 61, 2, 0, 275.00, 275.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1576, 29, 61, 3, 0, 275.00, 275.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1577, 29, 61, 4, 0, 275.00, 275.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1578, 29, 61, 5, 0, 275.00, 275.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1579, 30, 61, 1, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1580, 30, 61, 2, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1581, 30, 61, 3, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1582, 30, 61, 4, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1583, 30, 61, 5, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1584, 108, 61, 1, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1585, 108, 61, 2, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1586, 108, 61, 3, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1587, 108, 61, 4, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1588, 108, 61, 5, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1589, 109, 61, 1, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1590, 109, 61, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1591, 109, 61, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1592, 109, 61, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1593, 109, 61, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1594, 110, 61, 1, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1595, 110, 61, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1596, 110, 61, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1597, 110, 61, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1598, 110, 61, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1599, 111, 13, 1, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1600, 111, 13, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1601, 111, 13, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1602, 111, 13, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1603, 111, 13, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1604, 111, 11, 1, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1605, 111, 11, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1606, 111, 11, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1607, 111, 11, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1608, 111, 11, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1609, 111, 60, 1, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1610, 111, 60, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1611, 111, 60, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1612, 111, 60, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1613, 111, 60, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1614, 31, 13, 1, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1615, 31, 13, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1616, 31, 13, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1617, 31, 13, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1618, 31, 13, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1619, 31, 11, 1, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1620, 31, 11, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1621, 31, 11, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1622, 31, 11, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1623, 31, 11, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1624, 31, 60, 1, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1625, 31, 60, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1626, 31, 60, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1627, 31, 60, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1628, 31, 60, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1629, 32, 13, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1630, 32, 13, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1631, 32, 13, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1632, 32, 13, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1633, 32, 13, 6, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1634, 32, 58, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1635, 32, 58, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1636, 32, 58, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1637, 32, 58, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1638, 32, 58, 6, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1639, 32, 39, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1640, 32, 39, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1641, 32, 39, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1642, 32, 39, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1643, 32, 39, 6, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1644, 32, 11, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1645, 32, 11, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1646, 32, 11, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1647, 32, 11, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1648, 32, 11, 6, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1649, 33, 13, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1650, 33, 13, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1651, 33, 13, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1652, 33, 13, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1653, 33, 13, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1654, 33, 58, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1655, 33, 58, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1656, 33, 58, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1657, 33, 58, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1658, 33, 58, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1659, 33, 47, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1660, 33, 47, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1661, 33, 47, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1662, 33, 47, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1663, 33, 47, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1664, 33, 11, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1665, 33, 11, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1666, 33, 11, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1667, 33, 11, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1668, 33, 11, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1669, 33, 46, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1670, 33, 46, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1671, 33, 46, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1672, 33, 46, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1673, 33, 46, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1674, 33, 25, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1675, 33, 25, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1676, 33, 25, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1677, 33, 25, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1678, 33, 25, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1679, 33, 4, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1680, 33, 4, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1681, 33, 4, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1682, 33, 4, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1683, 33, 4, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1684, 33, 62, 2, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1685, 33, 62, 3, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1686, 33, 62, 4, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1687, 33, 62, 5, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1688, 33, 62, 6, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1689, 34, 13, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1690, 34, 13, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1691, 34, 13, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1692, 34, 13, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1693, 34, 13, 6, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1694, 34, 58, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1695, 34, 58, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1696, 34, 58, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1697, 34, 58, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1698, 34, 58, 6, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1699, 34, 11, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1700, 34, 11, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1701, 34, 11, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1702, 34, 11, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1703, 34, 11, 6, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1704, 35, 13, 2, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1705, 35, 13, 3, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1706, 35, 13, 4, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1707, 35, 13, 5, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1708, 35, 13, 6, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1709, 35, 58, 2, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1710, 35, 58, 3, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1711, 35, 58, 4, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1712, 35, 58, 5, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1713, 35, 58, 6, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1714, 35, 11, 2, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1715, 35, 11, 3, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1716, 35, 11, 4, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1717, 35, 11, 5, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1718, 35, 11, 6, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1719, 36, 13, 2, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1720, 36, 13, 3, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1721, 36, 13, 4, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1722, 36, 13, 5, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1723, 36, 13, 6, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1724, 36, 58, 2, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1725, 36, 58, 3, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1726, 36, 58, 4, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1727, 36, 58, 5, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1728, 36, 58, 6, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1729, 36, 11, 2, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1730, 36, 11, 3, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1731, 36, 11, 4, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1732, 36, 11, 5, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1733, 36, 11, 6, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1734, 36, 39, 2, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1735, 36, 39, 3, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1736, 36, 39, 4, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1737, 36, 39, 5, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1738, 36, 39, 6, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1739, 36, 4, 2, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1740, 36, 4, 3, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1741, 36, 4, 4, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1742, 36, 4, 5, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1743, 36, 4, 6, 0, 1099.00, 1099.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1744, 37, 13, 2, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1745, 37, 13, 3, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1746, 37, 13, 4, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1747, 37, 13, 5, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1748, 37, 13, 6, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1749, 37, 58, 2, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1750, 37, 58, 3, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1751, 37, 58, 4, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1752, 37, 58, 5, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1753, 37, 58, 6, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1754, 37, 11, 2, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1755, 37, 11, 3, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1756, 37, 11, 4, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1757, 37, 11, 5, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1758, 37, 11, 6, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1759, 37, 39, 2, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1760, 37, 39, 3, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1761, 37, 39, 4, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1762, 37, 39, 5, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1763, 37, 39, 6, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1764, 113, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1765, 113, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1766, 113, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1767, 113, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1768, 113, 13, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1769, 113, 58, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1770, 113, 58, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1771, 113, 58, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1772, 113, 58, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1773, 113, 58, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1774, 113, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1775, 113, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1776, 113, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1777, 113, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1778, 113, 11, 6, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1779, 114, 13, 2, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1780, 114, 13, 3, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1781, 114, 13, 4, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1782, 114, 13, 5, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1783, 114, 13, 6, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1784, 114, 58, 2, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1785, 114, 58, 3, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1786, 114, 58, 4, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1787, 114, 58, 5, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1788, 114, 58, 6, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1789, 114, 11, 2, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1790, 114, 11, 3, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1791, 114, 11, 4, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1792, 114, 11, 5, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1793, 114, 11, 6, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1794, 115, 13, 2, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1795, 115, 13, 3, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1796, 115, 13, 4, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1797, 115, 13, 5, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1798, 115, 13, 6, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1799, 115, 58, 2, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1800, 115, 58, 3, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1801, 115, 58, 4, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1802, 115, 58, 5, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1803, 115, 58, 6, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1804, 115, 11, 2, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1805, 115, 11, 3, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1806, 115, 11, 4, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1807, 115, 11, 5, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1808, 115, 11, 6, 0, 950.00, 950.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1824, 118, 13, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1825, 118, 13, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1826, 118, 13, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1827, 118, 13, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1828, 118, 58, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1829, 118, 58, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1830, 118, 58, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1831, 118, 58, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1832, 118, 11, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1833, 118, 11, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1834, 118, 11, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1835, 118, 11, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1836, 118, 22, 2, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1837, 118, 22, 3, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1838, 118, 22, 4, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1839, 118, 22, 5, 0, 799.00, 799.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1840, 119, 13, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1841, 119, 13, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1842, 119, 13, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1843, 119, 13, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1844, 119, 58, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1845, 119, 58, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1846, 119, 58, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1847, 119, 58, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1848, 119, 11, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1849, 119, 11, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1850, 119, 11, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1851, 119, 11, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1852, 119, 22, 2, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1853, 119, 22, 3, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1854, 119, 22, 4, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1855, 119, 22, 5, 0, 899.00, 899.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1856, 120, 13, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1857, 120, 13, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1858, 120, 13, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1859, 120, 13, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1860, 120, 58, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1861, 120, 58, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1862, 120, 58, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1863, 120, 58, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1864, 120, 11, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1865, 120, 11, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1866, 120, 11, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1867, 120, 11, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1868, 120, 22, 2, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1869, 120, 22, 3, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1870, 120, 22, 4, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1871, 120, 22, 5, 0, 999.00, 999.00, 1, NULL, 1, '2022-03-03 19:07:17'),
(1872, 121, 58, 11, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1873, 121, 58, 12, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1874, 121, 58, 13, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1875, 121, 58, 14, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1876, 121, 58, 15, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1877, 121, 58, 16, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1878, 121, 58, 17, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1879, 121, 58, 18, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1880, 121, 58, 19, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1881, 121, 58, 20, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1882, 121, 13, 11, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1883, 121, 13, 12, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1884, 121, 13, 13, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1885, 121, 13, 14, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1886, 121, 13, 15, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1887, 121, 13, 16, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1888, 121, 13, 17, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1889, 121, 13, 18, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1890, 121, 13, 19, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1891, 121, 13, 20, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1892, 121, 11, 11, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1893, 121, 11, 12, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1894, 121, 11, 13, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1895, 121, 11, 14, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1896, 121, 11, 15, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1897, 121, 11, 16, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1898, 121, 11, 17, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1899, 121, 11, 18, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1900, 121, 11, 19, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1901, 121, 11, 20, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1902, 121, 62, 11, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1903, 121, 62, 12, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1904, 121, 62, 13, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1905, 121, 62, 14, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1906, 121, 62, 15, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1907, 121, 62, 16, 0, 550.00, 550.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1908, 121, 62, 17, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1909, 121, 62, 18, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1910, 121, 62, 19, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1911, 121, 62, 20, 0, 650.00, 650.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1912, 122, 58, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1913, 122, 58, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1914, 122, 58, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1915, 122, 58, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1916, 122, 58, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1917, 122, 58, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1918, 122, 58, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1919, 122, 58, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1920, 122, 58, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1921, 122, 58, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1922, 122, 13, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1923, 122, 13, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1924, 122, 13, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1925, 122, 13, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1926, 122, 13, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1927, 122, 13, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1928, 122, 13, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1929, 122, 13, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1930, 122, 13, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1931, 122, 13, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1932, 122, 11, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1933, 122, 11, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1934, 122, 11, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1935, 122, 11, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1936, 122, 11, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1937, 122, 11, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1938, 122, 11, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1939, 122, 11, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1940, 122, 11, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1941, 122, 11, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1942, 122, 62, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1943, 122, 62, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1944, 122, 62, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1945, 122, 62, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1946, 122, 62, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1947, 122, 62, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1948, 122, 62, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1949, 122, 62, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1950, 122, 62, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1951, 122, 62, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1952, 123, 58, 11, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1953, 123, 58, 12, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1954, 123, 58, 13, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1955, 123, 58, 14, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1956, 123, 58, 15, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1957, 123, 58, 16, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1958, 123, 58, 17, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1959, 123, 58, 18, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1960, 123, 58, 19, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1961, 123, 58, 20, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1962, 123, 13, 11, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1963, 123, 13, 12, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1964, 123, 13, 13, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1965, 123, 13, 14, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1966, 123, 13, 15, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1967, 123, 13, 16, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1968, 123, 13, 17, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1969, 123, 13, 18, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1970, 123, 13, 19, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1971, 123, 13, 20, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1972, 123, 11, 11, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1973, 123, 11, 12, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1974, 123, 11, 13, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1975, 123, 11, 14, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1976, 123, 11, 15, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1977, 123, 11, 16, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1978, 123, 11, 17, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1979, 123, 11, 18, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1980, 123, 11, 19, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1981, 123, 11, 20, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1982, 123, 62, 11, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1983, 123, 62, 12, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1984, 123, 62, 13, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1985, 123, 62, 14, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1986, 123, 62, 15, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1987, 123, 62, 16, 0, 750.00, 750.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1988, 123, 62, 17, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1989, 123, 62, 18, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1990, 123, 62, 19, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1991, 123, 62, 20, 0, 850.00, 850.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1992, 124, 58, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1993, 124, 58, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1994, 124, 58, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1995, 124, 58, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1996, 124, 58, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1997, 124, 58, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1998, 124, 58, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(1999, 124, 58, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2000, 124, 58, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2001, 124, 58, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2002, 124, 13, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2003, 124, 13, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2004, 124, 13, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2005, 124, 13, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2006, 124, 13, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2007, 124, 13, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2008, 124, 13, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2009, 124, 13, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2010, 124, 13, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2011, 124, 13, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2012, 124, 11, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2013, 124, 11, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2014, 124, 11, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2015, 124, 11, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2016, 124, 11, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2017, 124, 11, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2018, 124, 11, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2019, 124, 11, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2020, 124, 11, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2021, 124, 11, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2022, 124, 62, 11, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2023, 124, 62, 12, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2024, 124, 62, 13, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2025, 124, 62, 14, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2026, 124, 62, 15, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2027, 124, 62, 16, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2028, 124, 62, 17, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2029, 124, 62, 18, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2030, 124, 62, 19, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2031, 124, 62, 20, 0, 699.00, 699.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2032, 116, 61, 2, 0, 1290.00, 1290.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2033, 116, 61, 3, 0, 1290.00, 1290.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2034, 116, 61, 4, 0, 1290.00, 1290.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2035, 116, 61, 5, 0, 1290.00, 1290.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2036, 116, 61, 6, 0, 1290.00, 1290.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2042, 117, 61, 2, 0, 1590.00, 1590.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2043, 117, 61, 3, 0, 1590.00, 1590.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2044, 117, 61, 4, 0, 1590.00, 1590.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2045, 117, 61, 5, 0, 1590.00, 1590.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2046, 117, 61, 6, 0, 1590.00, 1590.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2047, 140, 11, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2048, 140, 11, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2049, 140, 11, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2050, 140, 11, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2051, 140, 11, 5, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2052, 140, 11, 6, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2053, 140, 11, 7, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2054, 40, 12, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2055, 40, 12, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2056, 40, 12, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2057, 40, 12, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2058, 40, 12, 5, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2059, 40, 12, 6, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2060, 40, 12, 7, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2061, 125, 11, 1, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2062, 125, 11, 2, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2063, 125, 11, 3, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2064, 125, 11, 4, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2065, 125, 11, 5, 0, 630.00, 630.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2066, 125, 11, 6, 0, 630.00, 630.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2067, 125, 11, 7, 0, 630.00, 630.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2068, 126, 12, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2069, 126, 12, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2070, 126, 12, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2071, 126, 12, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2072, 126, 12, 5, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2073, 126, 12, 6, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2074, 126, 12, 7, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2075, 127, 11, 1, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2076, 127, 11, 2, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2077, 127, 11, 3, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2078, 127, 11, 4, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2079, 127, 11, 5, 0, 640.00, 640.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2080, 127, 11, 6, 0, 640.00, 640.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2081, 127, 11, 7, 0, 640.00, 640.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2082, 42, 11, 1, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2083, 42, 11, 2, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2084, 42, 11, 3, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2085, 42, 11, 4, 0, 599.00, 599.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2086, 42, 11, 5, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2087, 42, 11, 6, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2088, 42, 11, 7, 0, 620.00, 620.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2089, 41, 12, 1, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2090, 41, 12, 2, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2091, 41, 12, 3, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2092, 41, 12, 4, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2093, 41, 12, 5, 0, 630.00, 630.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2094, 41, 12, 6, 0, 630.00, 630.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2095, 41, 12, 7, 0, 630.00, 630.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2096, 43, 12, 1, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2097, 43, 12, 2, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2098, 43, 12, 3, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2099, 43, 12, 4, 0, 590.00, 590.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2100, 43, 12, 5, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2101, 43, 12, 6, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2102, 43, 12, 7, 0, 610.00, 610.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2103, 129, 12, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2104, 129, 12, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2105, 129, 12, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2106, 129, 12, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2107, 129, 12, 5, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2108, 129, 12, 6, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2109, 129, 12, 7, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2110, 131, 12, 1, 0, 420.00, 420.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2111, 131, 12, 2, 0, 420.00, 420.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2112, 131, 12, 3, 0, 420.00, 420.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2113, 131, 12, 4, 0, 420.00, 420.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2114, 131, 12, 5, 0, 440.00, 440.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2115, 131, 12, 6, 0, 440.00, 440.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2116, 131, 12, 7, 0, 440.00, 440.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2117, 133, 12, 1, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2118, 133, 12, 2, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2119, 133, 12, 3, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2120, 133, 12, 4, 0, 499.00, 499.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2121, 133, 12, 5, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2122, 133, 12, 6, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2123, 133, 12, 7, 0, 520.00, 520.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2124, 128, 11, 1, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2125, 128, 11, 2, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2126, 128, 11, 3, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2127, 128, 11, 4, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2128, 128, 11, 5, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2129, 128, 11, 6, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2130, 128, 11, 7, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2131, 130, 11, 1, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2132, 130, 11, 2, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 13:37:17');
INSERT INTO `product_color_sizes` (`id`, `product_id`, `color`, `size`, `assorted_flag`, `price`, `offer_price`, `stock`, `code`, `status`, `created_at`) VALUES
(2133, 130, 11, 3, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2134, 130, 11, 4, 0, 430.00, 430.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2135, 130, 11, 5, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2136, 130, 11, 6, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2137, 130, 11, 7, 0, 450.00, 450.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2138, 132, 11, 1, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2139, 132, 11, 2, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2140, 132, 11, 3, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2141, 132, 11, 4, 0, 510.00, 510.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2142, 132, 11, 5, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2143, 132, 11, 6, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2144, 132, 11, 7, 0, 530.00, 530.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2145, 134, 11, 9, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2146, 134, 11, 10, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2147, 134, 11, 11, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2148, 134, 11, 12, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2149, 134, 11, 13, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2150, 134, 11, 14, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2151, 134, 11, 15, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2152, 134, 11, 16, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2153, 134, 11, 17, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2154, 134, 11, 18, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2155, 134, 11, 19, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2156, 134, 11, 20, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2157, 136, 11, 9, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2158, 136, 11, 10, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2159, 136, 11, 11, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2160, 136, 11, 12, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2161, 136, 11, 13, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2162, 136, 11, 14, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2163, 136, 11, 15, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2164, 136, 11, 16, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2165, 136, 11, 17, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2166, 136, 11, 18, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2167, 136, 11, 19, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2168, 136, 11, 20, 0, 360.00, 360.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2169, 135, 12, 9, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2170, 135, 12, 10, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2171, 135, 12, 11, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2172, 135, 12, 12, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2173, 135, 12, 13, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2174, 135, 12, 14, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2175, 135, 12, 15, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2176, 135, 12, 16, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2177, 135, 12, 17, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2178, 135, 12, 18, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2179, 135, 12, 19, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2180, 135, 12, 20, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2181, 137, 12, 9, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2182, 137, 12, 10, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2183, 137, 12, 11, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2184, 137, 12, 12, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2185, 137, 12, 13, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2186, 137, 12, 14, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2187, 137, 12, 15, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2188, 137, 12, 16, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2189, 137, 12, 17, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2190, 137, 12, 18, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2191, 137, 12, 19, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2192, 137, 12, 20, 0, 350.00, 350.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2194, 17, 12, 1, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2195, 17, 12, 2, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2196, 17, 12, 3, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2197, 17, 12, 4, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2198, 17, 12, 5, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2199, 18, 12, 1, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2200, 18, 12, 2, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2201, 18, 12, 3, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2202, 18, 12, 4, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2203, 18, 12, 5, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2204, 69, 12, 1, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2205, 69, 12, 2, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2206, 69, 12, 3, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2207, 69, 12, 4, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2208, 69, 12, 5, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2209, 4, 61, 23, 0, 85.00, 85.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2210, 138, 61, 23, 0, 85.00, 85.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2211, 7, 61, 23, 0, 90.00, 90.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2212, 6, 12, 23, 0, 90.00, 90.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2213, 8, 61, 23, 0, 95.00, 95.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2214, 9, 61, 23, 0, 95.00, 95.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2215, 11, 61, 23, 0, 90.00, 90.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2216, 44, 61, 23, 0, 129.00, 129.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2217, 45, 61, 23, 0, 129.00, 129.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2218, 46, 61, 23, 0, 129.00, 129.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2219, 47, 61, 23, 0, 139.00, 139.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2220, 48, 61, 23, 0, 109.00, 109.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2221, 49, 12, 23, 0, 109.00, 109.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2222, 50, 61, 23, 0, 109.00, 109.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2223, 51, 61, 23, 0, 159.00, 159.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2224, 52, 61, 23, 0, 159.00, 159.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2225, 53, 61, 23, 0, 159.00, 159.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2226, 19, 61, 1, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2227, 19, 61, 2, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2228, 19, 61, 3, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2229, 19, 61, 4, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2230, 19, 61, 5, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2231, 71, 61, 1, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2232, 71, 61, 2, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2233, 71, 61, 3, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2234, 71, 61, 4, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2235, 71, 61, 5, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2236, 70, 12, 1, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2237, 70, 12, 2, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2238, 70, 12, 3, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2239, 70, 12, 4, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2240, 70, 12, 5, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2241, 67, 12, 1, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2242, 67, 12, 2, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2243, 67, 12, 3, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2244, 67, 12, 4, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2245, 67, 12, 5, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2246, 68, 61, 1, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2247, 68, 61, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2248, 68, 61, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2249, 68, 61, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2250, 68, 61, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2251, 66, 61, 1, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2252, 66, 61, 2, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2253, 66, 61, 3, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2254, 66, 61, 4, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2255, 66, 61, 5, 0, 325.00, 325.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2256, 72, 61, 2, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2257, 72, 61, 3, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2258, 72, 61, 4, 0, 170.00, 170.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2259, 72, 61, 5, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2260, 72, 61, 6, 0, 180.00, 180.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2261, 73, 61, 2, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2262, 73, 61, 3, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2263, 73, 61, 4, 0, 320.00, 320.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2264, 73, 61, 5, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2265, 73, 61, 6, 0, 340.00, 340.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2266, 74, 61, 2, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2267, 74, 61, 3, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2268, 74, 61, 4, 0, 195.00, 195.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2269, 74, 61, 5, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2270, 74, 61, 6, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2271, 75, 61, 2, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2272, 75, 61, 3, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2273, 75, 61, 4, 0, 365.00, 365.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2274, 75, 61, 5, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2275, 75, 61, 6, 0, 385.00, 385.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2276, 76, 61, 2, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2277, 76, 61, 3, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2278, 76, 61, 4, 0, 205.00, 205.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2279, 76, 61, 5, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2280, 76, 61, 6, 0, 215.00, 215.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2281, 78, 61, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2282, 78, 61, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2283, 78, 61, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2284, 78, 61, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2285, 78, 61, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2286, 77, 61, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2287, 77, 61, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2288, 77, 61, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2289, 77, 61, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2290, 77, 61, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2291, 79, 61, 2, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2292, 79, 61, 3, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2293, 79, 61, 4, 0, 175.00, 175.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2294, 79, 61, 5, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2295, 79, 61, 6, 0, 185.00, 185.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2296, 80, 61, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2297, 80, 61, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2298, 80, 61, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2299, 80, 61, 5, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2300, 80, 61, 6, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2301, 81, 61, 2, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2302, 81, 61, 3, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2303, 81, 61, 4, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2304, 81, 61, 5, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2305, 81, 61, 6, 0, 190.00, 190.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2306, 82, 61, 2, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2307, 82, 61, 3, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2308, 82, 61, 4, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2309, 82, 61, 5, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2310, 82, 61, 6, 0, 199.00, 199.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2311, 83, 61, 2, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2312, 83, 61, 3, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2313, 83, 61, 4, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2314, 83, 61, 5, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2315, 83, 61, 6, 0, 250.00, 250.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2316, 84, 61, 2, 0, 260.00, 260.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2317, 84, 61, 3, 0, 260.00, 260.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2318, 84, 61, 4, 0, 260.00, 260.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2319, 84, 61, 5, 0, 260.00, 260.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2320, 84, 61, 6, 0, 260.00, 260.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2321, 85, 61, 2, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2322, 85, 61, 3, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2323, 85, 61, 4, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2324, 85, 61, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2325, 85, 61, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2326, 86, 61, 2, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2327, 86, 61, 3, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2328, 86, 61, 4, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2329, 86, 61, 5, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2330, 86, 61, 6, 0, 280.00, 280.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2331, 87, 61, 2, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2332, 87, 61, 3, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2333, 87, 61, 4, 0, 220.00, 220.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2334, 87, 61, 5, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2335, 87, 61, 6, 0, 235.00, 235.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2336, 88, 61, 2, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2337, 88, 61, 3, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2338, 88, 61, 4, 0, 210.00, 210.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2339, 88, 61, 5, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2340, 88, 61, 6, 0, 225.00, 225.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2341, 89, 61, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2342, 89, 61, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2343, 89, 61, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2344, 89, 61, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2345, 89, 61, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2346, 90, 61, 2, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2347, 90, 61, 3, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2348, 90, 61, 4, 0, 230.00, 230.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2349, 90, 61, 5, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2350, 90, 61, 6, 0, 240.00, 240.00, 1, NULL, 1, '2022-03-03 13:37:17'),
(2351, 142, 4, 5, 0, 0.00, 0.00, 1, NULL, 1, '2022-04-27 11:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `status`, `created_at`) VALUES
(1, 1, 'uploads/product/2018121750-1646374037.catago_2.png', 1, '2022-03-04 00:37:17'),
(2, 1, 'uploads/product/1835149020-1646374037.catago_2.png', 1, '2022-03-04 00:37:17'),
(3, 2, 'uploads/product/1297765330-1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 1, '2022-03-07 07:34:52'),
(4, 2, 'uploads/product/382303736-1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 1, '2022-03-07 07:34:52'),
(5, 2, 'uploads/product/96013214-1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 1, '2022-03-07 07:34:52'),
(6, 2, 'uploads/product/1468366963-1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 1, '2022-03-07 07:34:52'),
(7, 2, 'uploads/product/592835868-1646658292.11504776804314-ONN-Men-Tshirts-4151504776804028-1.jpg', 1, '2022-03-07 07:34:52'),
(8, 3, 'uploads/product/133599693-1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 1, '2022-03-07 07:39:28'),
(9, 3, 'uploads/product/1865585589-1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 1, '2022-03-07 07:39:28'),
(10, 3, 'uploads/product/286206409-1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 1, '2022-03-07 07:39:28'),
(11, 3, 'uploads/product/1256424426-1646658568.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 1, '2022-03-07 07:39:28'),
(12, 71, 'uploads\\product\\product_images\\141\\blue.jpg', 1, '2022-03-22 09:02:32'),
(13, 71, 'uploads\\product\\product_images\\141\\red.jpg', 1, '2022-03-22 09:02:32'),
(14, 71, 'uploads\\product\\product_images\\141\\green.jpg', 1, '2022-03-22 09:02:32'),
(15, 71, 'uploads\\product\\product_images\\141\\orange.jpg', 1, '2022-03-22 09:02:32'),
(16, 71, 'uploads\\product\\product_images\\141\\yellow.jpg', 1, '2022-03-22 09:02:32'),
(17, 71, 'uploads\\product\\product_images\\141\\purple.jpg', 1, '2022-03-22 09:02:32'),
(18, 79, 'uploads\\product\\product_images\\262\\ONN-Grande-262-2.jpg', 1, '2022-03-22 09:02:32'),
(19, 79, 'uploads\\product\\product_images\\262\\ONN-Grande-262-3.jpg', 1, '2022-03-22 09:02:32'),
(20, 79, 'uploads\\product\\product_images\\262\\ONN-Grande-262-4.jpg', 1, '2022-03-22 09:02:32'),
(21, 79, 'uploads\\product\\product_images\\262\\ONN-Grande-262-5.jpg', 1, '2022-03-22 09:02:32'),
(22, 80, 'uploads\\product\\product_images\\264\\ONN-Grande-264-2.jpg', 1, '2022-03-22 09:02:32'),
(23, 80, 'uploads\\product\\product_images\\264\\ONN-Grande-264-3.jpg', 1, '2022-03-22 09:02:32'),
(24, 80, 'uploads\\product\\product_images\\264\\ONN-Grande-264-4.jpg', 1, '2022-03-22 09:02:32'),
(25, 80, 'uploads\\product\\product_images\\264\\ONN-Grande-264-5.jpg', 1, '2022-03-22 09:02:32'),
(26, 81, 'uploads\\product\\product_images\\271\\271-2.jpg', 1, '2022-03-22 09:02:32'),
(27, 81, 'uploads\\product\\product_images\\271\\271-3.jpg', 1, '2022-03-22 09:02:32'),
(28, 81, 'uploads\\product\\product_images\\271\\271-4.jpg', 1, '2022-03-22 09:02:32'),
(29, 81, 'uploads\\product\\product_images\\271\\271-5.jpg', 1, '2022-03-22 09:02:32'),
(30, 82, 'uploads\\product\\product_images\\272\\272-2.jpg', 1, '2022-03-22 09:02:32'),
(31, 82, 'uploads\\product\\product_images\\272\\272-3.jpg', 1, '2022-03-22 09:02:32'),
(32, 82, 'uploads\\product\\product_images\\272\\272-4.jpg', 1, '2022-03-22 09:02:32'),
(33, 82, 'uploads\\product\\product_images\\272\\272-5.jpg', 1, '2022-03-22 09:02:32'),
(34, 83, 'uploads\\product\\product_images\\273\\273-2.jpg', 1, '2022-03-22 09:02:32'),
(35, 83, 'uploads\\product\\product_images\\273\\273-3.jpg', 1, '2022-03-22 09:02:32'),
(36, 83, 'uploads\\product\\product_images\\273\\273-4.jpg', 1, '2022-03-22 09:02:32'),
(37, 83, 'uploads\\product\\product_images\\273\\273-5.jpg', 1, '2022-03-22 09:02:32'),
(38, 84, 'uploads\\product\\product_images\\274\\274-2.jpg', 1, '2022-03-22 09:02:32'),
(39, 84, 'uploads\\product\\product_images\\274\\274-3.jpg', 1, '2022-03-22 09:02:32'),
(40, 84, 'uploads\\product\\product_images\\274\\274-4.jpg', 1, '2022-03-22 09:02:32'),
(41, 84, 'uploads\\product\\product_images\\274\\274-5.jpg', 1, '2022-03-22 09:02:32'),
(42, 13, 'uploads\\product\\product_images\\422\\422-2.jpg', 1, '2022-03-22 09:02:32'),
(43, 13, 'uploads\\product\\product_images\\422\\422-3.jpg', 1, '2022-03-22 09:02:32'),
(44, 13, 'uploads\\product\\product_images\\422\\422-4.jpg', 1, '2022-03-22 09:02:32'),
(45, 13, 'uploads\\product\\product_images\\422\\422-5.jpg', 1, '2022-03-22 09:02:32'),
(46, 13, 'uploads\\product\\product_images\\422\\422-6.jpg', 1, '2022-03-22 09:02:32'),
(47, 13, 'uploads\\product\\product_images\\422\\422-7.jpg', 1, '2022-03-22 09:02:32'),
(48, 13, 'uploads\\product\\product_images\\422\\422-8.jpg', 1, '2022-03-22 09:02:32'),
(49, 13, 'uploads\\product\\product_images\\422\\422-9.jpg', 1, '2022-03-22 09:02:32'),
(50, 13, 'uploads\\product\\product_images\\422\\422-10.jpg', 1, '2022-03-22 09:02:32'),
(51, 13, 'uploads\\product\\product_images\\422\\422-11.jpg', 1, '2022-03-22 09:02:32'),
(52, 13, 'uploads\\product\\product_images\\422\\422-12.jpg', 1, '2022-03-22 09:02:32'),
(53, 13, 'uploads\\product\\product_images\\422\\422-13.jpg', 1, '2022-03-22 09:02:32'),
(54, 15, 'uploads/product/product_images/431/431-2.jpg', 1, '2022-03-22 09:02:32'),
(55, 15, 'uploads/product/product_images/431/431-3.jpg', 1, '2022-03-22 09:02:32'),
(56, 15, 'uploads/product/product_images/431/431-4.jpg', 1, '2022-03-22 09:02:32'),
(57, 15, 'uploads/product/product_images/431/431-5.jpg', 1, '2022-03-22 09:02:32'),
(58, 15, 'uploads/product/product_images/431/431-6.jpg', 1, '2022-03-22 09:02:32'),
(59, 15, 'uploads/product/product_images/431/431-7.jpg', 1, '2022-03-22 09:02:32'),
(60, 15, 'uploads/product/product_images/431/431-8.jpg', 1, '2022-03-22 09:02:32'),
(61, 15, 'uploads/product/product_images/431/431-9.jpg', 1, '2022-03-22 09:02:32'),
(62, 15, 'uploads/product/product_images/431/431-10.jpg', 1, '2022-03-22 09:02:32'),
(63, 15, 'uploads/product/product_images/431/431-11.jpg', 1, '2022-03-22 09:02:32'),
(64, 15, 'uploads/product/product_images/431/431-12.jpg', 1, '2022-03-22 09:02:32'),
(65, 15, 'uploads/product/product_images/431/431-13.jpg', 1, '2022-03-22 09:02:32'),
(66, 15, 'uploads/product/product_images/431/431-14.jpg', 1, '2022-03-22 09:02:32'),
(67, 15, 'uploads/product/product_images/431/431-15.jpg', 1, '2022-03-22 09:02:32'),
(68, 15, 'uploads/product/product_images/431/431-16.jpg', 1, '2022-03-22 09:02:32'),
(69, 15, 'uploads/product/product_images/431/431-17.jpg', 1, '2022-03-22 09:02:32'),
(70, 15, 'uploads/product/product_images/431/431-18.jpg', 1, '2022-03-22 09:02:32'),
(71, 15, 'uploads/product/product_images/431/431-19.jpg', 1, '2022-03-22 09:02:32'),
(72, 15, 'uploads/product/product_images/431/431-20.jpg', 1, '2022-03-22 09:02:32'),
(73, 15, 'uploads/product/product_images/431/431-21.jpg', 1, '2022-03-22 09:02:32'),
(74, 15, 'uploads/product/product_images/431/431-22.jpg', 1, '2022-03-22 09:02:32'),
(75, 15, 'uploads/product/product_images/431/431-23.jpg', 1, '2022-03-22 09:02:32'),
(76, 15, 'uploads/product/product_images/431/431-24.jpg', 1, '2022-03-22 09:02:32'),
(77, 15, 'uploads/product/product_images/431/431-25.jpg', 1, '2022-03-22 09:02:32'),
(78, 15, 'uploads/product/product_images/431/431-26.jpg', 1, '2022-03-22 09:02:32'),
(79, 15, 'uploads/product/product_images/431/431-27.jpg', 1, '2022-03-22 09:02:32'),
(80, 15, 'uploads/product/product_images/431/431-28.jpg', 1, '2022-03-22 09:02:32'),
(81, 16, 'uploads/product/product_images/432/432-28.jpg', 1, '2022-03-22 09:02:32'),
(82, 16, 'uploads/product/product_images/432/432-27.jpg', 1, '2022-03-22 09:02:32'),
(83, 16, 'uploads/product/product_images/432/432-26.jpg', 1, '2022-03-22 09:02:32'),
(84, 16, 'uploads/product/product_images/432/432-25.jpg', 1, '2022-03-22 09:02:32'),
(85, 16, 'uploads/product/product_images/432/432-24.jpg', 1, '2022-03-22 09:02:32'),
(86, 16, 'uploads/product/product_images/432/432-23.jpg', 1, '2022-03-22 09:02:32'),
(87, 16, 'uploads/product/product_images/432/432-22.jpg', 1, '2022-03-22 09:02:32'),
(88, 16, 'uploads/product/product_images/432/432-21.jpg', 1, '2022-03-22 09:02:32'),
(89, 16, 'uploads/product/product_images/432/432-20.jpg', 1, '2022-03-22 09:02:32'),
(90, 16, 'uploads/product/product_images/432/432-19.jpg', 1, '2022-03-22 09:02:32'),
(91, 16, 'uploads/product/product_images/432/432-18.jpg', 1, '2022-03-22 09:02:32'),
(92, 16, 'uploads/product/product_images/432/432-17.jpg', 1, '2022-03-22 09:02:32'),
(93, 16, 'uploads/product/product_images/432/432-16.jpg', 1, '2022-03-22 09:02:32'),
(94, 16, 'uploads/product/product_images/432/432-15.jpg', 1, '2022-03-22 09:02:32'),
(95, 16, 'uploads/product/product_images/432/432-14.jpg', 1, '2022-03-22 09:02:32'),
(96, 16, 'uploads/product/product_images/432/432-13.jpg', 1, '2022-03-22 09:02:32'),
(97, 16, 'uploads/product/product_images/432/432-12.jpg', 1, '2022-03-22 09:02:32'),
(98, 16, 'uploads/product/product_images/432/432-11.jpg', 1, '2022-03-22 09:02:32'),
(99, 16, 'uploads/product/product_images/432/432-10.jpg', 1, '2022-03-22 09:02:32'),
(100, 16, 'uploads/product/product_images/432/432-9.jpg', 1, '2022-03-22 09:02:32'),
(101, 16, 'uploads/product/product_images/432/432-8.jpg', 1, '2022-03-22 09:02:32'),
(102, 16, 'uploads/product/product_images/432/432-7.jpg', 1, '2022-03-22 09:02:32'),
(103, 16, 'uploads/product/product_images/432/432-6.jpg', 1, '2022-03-22 09:02:32'),
(104, 16, 'uploads/product/product_images/432/432-5.jpg', 1, '2022-03-22 09:02:32'),
(105, 16, 'uploads/product/product_images/432/432-4.jpg', 1, '2022-03-22 09:02:32'),
(106, 16, 'uploads/product/product_images/432/432-3.jpg', 1, '2022-03-22 09:02:32'),
(107, 16, 'uploads/product/product_images/432/432-2.jpg', 1, '2022-03-22 09:02:32'),
(108, 57, 'uploads/product/product_images/741/741-2.jpg', 1, '2022-03-22 09:02:32'),
(109, 57, 'uploads/product/product_images/741/741-3.jpg', 1, '2022-03-22 09:02:32'),
(110, 57, 'uploads/product/product_images/741/741-4.jpg', 1, '2022-03-22 09:02:32'),
(111, 57, 'uploads/product/product_images/741/741-5.jpg', 1, '2022-03-22 09:02:32'),
(112, 57, 'uploads/product/product_images/741/741-6.jpg', 1, '2022-03-22 09:02:32'),
(113, 57, 'uploads/product/product_images/741/741-7.jpg', 1, '2022-03-22 09:02:32'),
(114, 57, 'uploads/product/product_images/741/741-8.jpg', 1, '2022-03-22 09:02:32'),
(115, 57, 'uploads/product/product_images/741/741-9.jpg', 1, '2022-03-22 09:02:32'),
(116, 58, 'uploads/product/product_images/742/742-9.jpg', 1, '2022-03-22 09:02:32'),
(117, 58, 'uploads/product/product_images/742/742-8.jpg', 1, '2022-03-22 09:02:32'),
(118, 58, 'uploads/product/product_images/742/742-7.jpg', 1, '2022-03-22 09:02:32'),
(119, 58, 'uploads/product/product_images/742/742-6.jpg', 1, '2022-03-22 09:02:32'),
(120, 58, 'uploads/product/product_images/742/742-5.jpg', 1, '2022-03-22 09:02:32'),
(121, 58, 'uploads/product/product_images/742/742-4.jpg', 1, '2022-03-22 09:02:32'),
(122, 58, 'uploads/product/product_images/742/742-3.jpg', 1, '2022-03-22 09:02:32'),
(123, 58, 'uploads/product/product_images/742/742-2.jpg', 1, '2022-03-22 09:02:32'),
(124, 91, 'uploads/product/product_images/751/751-2.jpg', 1, '2022-03-22 09:02:32'),
(125, 92, 'uploads/product/product_images/752/752-2.jpg', 1, '2022-03-22 09:02:32'),
(126, 93, 'uploads/product/product_images/753/753-2.jpg', 1, '2022-03-22 09:02:32'),
(127, 94, 'uploads/product/product_images/754/754-2.jpg', 1, '2022-03-22 09:02:32'),
(128, 95, 'uploads/product/product_images/755/755-2.jpg', 1, '2022-03-22 09:02:32'),
(129, 97, 'uploads/product/product_images/757/757-2.jpg', 1, '2022-03-22 09:02:32'),
(130, 98, 'uploads/product/product_images/758/758-2.jpg', 1, '2022-03-22 09:02:32'),
(131, 99, 'uploads/product/product_images/759/759-2.jpg', 1, '2022-03-22 09:02:32'),
(132, 100, 'uploads/product/product_images/760/760-2.jpg', 1, '2022-03-22 09:02:32'),
(133, 105, 'uploads/product/product_images/776/776-2.jpg', 1, '2022-03-22 09:02:32'),
(134, 105, 'uploads/product/product_images/776/776-3.jpg', 1, '2022-03-22 09:02:32'),
(135, 105, 'uploads/product/product_images/776/776-4.jpg', 1, '2022-03-22 09:02:32'),
(136, 105, 'uploads/product/product_images/776/776-5.jpg', 1, '2022-03-22 09:02:32'),
(137, 32, 'uploads/product/product_images/1021/1021-2.jpg', 1, '2022-03-22 09:02:32'),
(138, 32, 'uploads/product/product_images/1021/1021-3.jpg', 1, '2022-03-22 09:02:32'),
(139, 32, 'uploads/product/product_images/1021/1021-4.jpg', 1, '2022-03-22 09:02:32'),
(140, 36, 'uploads/product/product_images/1031/1031-2.jpg', 1, '2022-03-22 09:02:32'),
(141, 36, 'uploads/product/product_images/1031/1031-3.jpg', 1, '2022-03-22 09:02:32'),
(142, 36, 'uploads/product/product_images/1031/1031-4.jpg', 1, '2022-03-22 09:02:32'),
(143, 37, 'uploads/product/product_images/1032/1032-2.jpg', 1, '2022-03-22 09:02:32'),
(144, 142, 'uploads/product/773309581-1651060067.002-polo-shirt.png', 1, '2022-04-27 11:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `page_heading` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `page_heading`, `content`, `status`, `created_at`) VALUES
(1, 'about', 'About us page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-02 13:47:50'),
(2, 'terms', 'Terms page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-02 13:47:50'),
(3, 'privacy', 'Privacy page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-02 13:47:50'),
(4, 'cancellation_and_refund', 'Cancellation & Refund page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-02 13:47:50'),
(5, 'return', 'Return page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-02 13:47:50'),
(6, 'address', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, '2022-03-02 13:47:50'),
(7, 'contact_no', '9876543210', 1, '2022-03-02 13:47:50'),
(8, 'email_id', 'help@onn.com', 1, '2022-03-02 13:47:50'),
(9, 'google_map_iframe', NULL, 1, '2022-03-02 13:47:50'),
(10, 'fb_link', 'https://www.facebook.com/LuxInnerwear/', 1, '2022-03-02 13:47:50'),
(11, 'twitter_link', 'https://twitter.com/Lux_Innerwear', 1, '2022-03-02 13:47:50'),
(12, 'youtube_link', 'https://www.youtube.com/channel/UCsHxH5IoJxIipaNcv1Eg1wA', 1, '2022-03-02 13:47:50'),
(13, 'insta_link', 'https://instagram.com/lux_cozi_innerwear?igshid=9ensolghw1cq', 1, '2022-03-02 13:47:50'),
(14, 'disclaimer', 'Disclaimer page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-17 07:24:21'),
(15, 'security', 'Security page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-17 07:24:21'),
(16, 'shipping_delivery', 'Shipping& delivery page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-17 08:07:07'),
(17, 'payment_voucher_promotion', 'payment, voucher & promotions page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-17 08:07:44'),
(18, 'service_contact', 'services & contacts page Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 1, '2022-03-17 08:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'XS', 1, '2022-03-04 00:20:48'),
(2, 'S', 1, '2022-03-04 00:20:48'),
(3, 'M', 1, '2022-03-04 00:20:48'),
(4, 'L', 1, '2022-03-04 00:20:48'),
(5, 'XL', 1, '2022-03-04 00:20:48'),
(6, '2XL', 1, '2022-03-04 00:20:48'),
(7, '3XL', 1, '2022-03-10 04:30:59'),
(8, '4XL', 1, '2022-03-10 04:30:59'),
(9, '1 yr', 1, '2022-03-21 08:16:06'),
(10, '2 yr', 1, '2022-03-21 08:16:33'),
(11, '3 yr', 1, '2022-03-21 08:16:33'),
(12, '4 yr', 1, '2022-03-21 08:16:33'),
(13, '5 yr', 1, '2022-03-21 08:16:33'),
(14, '6 yr', 1, '2022-03-21 08:16:33'),
(15, '7 yr', 1, '2022-03-21 08:16:33'),
(16, '8 yr', 1, '2022-03-21 08:16:34'),
(17, '9 yr', 1, '2022-03-21 08:16:34'),
(18, '10 yr', 1, '2022-03-21 08:16:34'),
(19, '11 yr', 1, '2022-03-21 08:16:34'),
(20, '12 yr', 1, '2022-03-21 08:16:34'),
(21, '13 yr', 1, '2022-03-21 08:16:34'),
(22, '14 yr', 1, '2022-03-21 08:16:34'),
(23, 'FREE SIZE', 1, '2022-03-30 09:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `start_end_days`
--

CREATE TABLE `start_end_days` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `start_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_lat` double NOT NULL,
  `end_lat` double NOT NULL,
  `start_lng` double NOT NULL,
  `end_lng` double NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `start_end_days`
--

INSERT INTO `start_end_days` (`id`, `user_id`, `start_location`, `end_location`, `start_lat`, `end_lat`, `start_lng`, `end_lng`, `start_date`, `end_date`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(3, 5, 'Mumbai', 'Mumbai', 19.1582, 19.9597, 72.9597, 72.9599, '2022-03-22', '2022-03-23', '10:04:34', '01:04:34', '2022-04-25 01:28:37', '2022-04-25 01:28:37'),
(4, 5, 'East Mumbai', 'Mumbai', 19.1582, 19.9597, 72.9597, 72.9599, '2022-03-23', '2022-03-23', '02:04:34', '05:04:34', '2022-04-25 01:30:21', '2022-04-25 01:30:21'),
(5, 5, 'Delhi', 'Delhi', 28.1582, 28.9597, 77.9597, 77.9599, '2022-03-24', '2022-03-24', '02:04:34', '05:04:34', '2022-04-25 01:32:24', '2022-04-25 01:32:24'),
(6, 6, 'Delhi', 'Delhi', 28.1582, 28.9597, 77.9597, 77.9599, '2022-03-24', '2022-03-24', '02:04:34', '05:04:34', '2022-04-26 04:14:30', '2022-04-26 04:14:30'),
(7, 6, 'Delhi', 'mumbai', 28.1582, 28.9597, 77.9597, 77.9599, '2022-03-24', '2022-03-24', '02:04:34', '05:04:34', '2022-04-26 04:14:30', '2022-04-26 04:29:34');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `store_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bussiness_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_OCC_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_order_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `user_id`, `store_name`, `bussiness_name`, `store_OCC_number`, `contact`, `email`, `whatsapp`, `address`, `area`, `state`, `city`, `pin`, `no_order_reason`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'test 2', 'test business name', 'ST2022115', '8945213067', 'dipti@gmail.com', '8877451203', 'prasanta nagar', 'lt nagar', 'mumbai', 'pune', '788563', 'company related issue', 'uploads/store/1647953264.1966591096.Screenshot from 2021-11-15 17-08-36.png', 1, '2022-03-08 05:09:47', '2022-03-29 07:03:35'),
(2, 5, 'Lovies Mega Mart', 'Jp enterprise', 'ST02114589', '4512306698', 'lovies@gmail.com', '4455632107', 'prasanta nagar', 'lt nagar', 'mumbai', 'pune', '788563', NULL, 'uploads/store/1648030547.606822540.Detect Accounting Fraud With AI.png', 1, '2022-03-23 04:43:34', '2022-03-29 07:03:33'),
(3, 5, 'Cartmax', 'Jagadish Prasad Enterprise Pvt Ltd', 'ST02114588', '7910889632', 'cartmax55@gmail.com', '8920458963', 'Prasanta nagar', 'Lt nagar', 'Delhi', 'East Delhi', '400001', 'Product related issue', 'uploads/store/1650873011.download.jpeg', 1, '2022-04-25 02:20:11', '2022-04-25 02:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_mails`
--

CREATE TABLE `subscription_mails` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `count` int NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `cat_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `cat_id`, `name`, `image_path`, `slug`, `description`, `status`, `created_at`) VALUES
(2, 10, 'Men\'s Track Pants', 'uploads/sub-category/1646658462.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'mens-track-pants-2', NULL, 1, '2022-03-07 06:06:06'),
(3, 9, 'Men\'s T-Shirt ', 'uploads/sub-category/1646658462.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'mens-t-shirt', NULL, 1, '2022-03-07 07:37:42'),
(4, 14, 'Men\'s Socks', 'uploads/sub-category/1646658462.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'mens-socks', NULL, 1, '2022-03-07 07:37:42'),
(5, 5, 'Men\'s Vests', 'uploads/sub-category/1646658462.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'mens-vests', NULL, 1, '2022-03-07 07:37:42'),
(6, 4, 'Kid\'s Boxers', 'uploads/sub-category/1646658462.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'mens-boxers', 'kids-boxers', 1, '2022-03-07 07:37:42'),
(7, 6, 'Men\'s Briefs', 'uploads/sub-category/1646658462.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'mens-briefs', 'mens-briefs', 1, '2022-03-07 07:37:42'),
(8, 11, 'Men\'s Trunks', 'uploads/sub-category/1646658462.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'mens-trunks', '', 1, '2022-03-07 07:37:42'),
(9, 12, 'Cargos', 'uploads/sub-category/1646658462.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'cargos', '', 1, '2022-03-07 07:37:42'),
(10, 13, 'Men\'s Shorts', 'uploads/sub-category/1646658462.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'mens-shorts', '', 1, '2022-03-07 07:37:42'),
(11, 16, 'Men\'s Jackets', 'uploads/sub-category/1646658462.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'mens-jackets', '', 1, '2022-03-07 07:37:42'),
(12, 17, 'Men\'s Sweatshirts', 'uploads/sub-category/1646658462.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'mens-sweatshirts', '', 1, '2022-03-07 07:37:42'),
(13, 15, 'Trouser', 'uploads/sub-category/1646658462.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'trouser', '', 1, '2022-03-07 07:37:42'),
(14, 15, 'Arm Sleeves', 'uploads/sub-category/1646658462.11497423783864-ONN-Men-Navy-Blue-Solid-Polo-Collar-T-shirt-491497423783695-5.jpg', 'arm-sleeves', '', 1, '2022-03-07 07:37:42');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  `transaction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `online_payment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(10,2) NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `upi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `transaction`, `online_payment_id`, `amount`, `currency`, `method`, `description`, `bank`, `upi`, `status`, `created_at`) VALUES
(1, 1, 1, 'TXN_98473IG5YDYRUY8IDY8', NULL, 2400.00, 'INR', 'upi', '', '', '', 1, '2022-03-04 11:14:07'),
(2, 0, 34, 'TXN_NHL0CLQJW0HU0K1LAR1M', 'pay_JA7VqFzh3JejBE', 1060.00, 'INR', '', '', '', '', 1, '2022-03-22 11:35:11'),
(3, 26, 35, 'TXN_Y237OET0GPAA1CUNEICC', 'pay_JAT3w1Yb7n7qcj', 5529.00, 'INR', '', '', '', '', 1, '2022-03-23 08:40:03'),
(4, 26, 36, 'TXN_JR9JG4KYB6XZ6VVQ3PYV', 'pay_JAZFtErXoUaH2B', 4400.00, 'INR', '', '', '', '', 1, '2022-03-23 14:43:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pan_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1:Distributor 2:Dealer 3:SalesPerson' COMMENT '1:Distributor 2:Dealer 3:SalesPerson',
  `dob` date DEFAULT NULL,
  `anniversary_date` date DEFAULT NULL,
  `otp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` int NOT NULL DEFAULT '0' COMMENT '1: verified, 0: not verified',
  `status` int NOT NULL DEFAULT '1' COMMENT '1: active, 0: inactive',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `fname`, `lname`, `email`, `employee_id`, `whatsapp_no`, `mobile`, `email_verified_at`, `password`, `address`, `landmark`, `state`, `city`, `pin`, `aadhar_no`, `pan_no`, `type`, `dob`, `anniversary_date`, `otp`, `image`, `gender`, `social_id`, `is_verified`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'john doe', 'John', 'Doe', 'user@user.com', '', '0', '9876543210', NULL, '$2y$10$PFTCRZNJkPvcsRjdgr./i.WoIC8czBuUW2Vuu.Rlea3Yl5ulN1eq.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', NULL, NULL, '1234', 'uploads/user/1647953721.1734548749.download.jpeg', 'male', NULL, 0, 1, NULL, '2022-03-02 00:34:34', '2022-04-26 04:46:04'),
(5, NULL, 'John', 'Doen', 'diptitrader@gmail.com', '', '8841520036', '8899654123', NULL, '$2y$10$cyuHLaGcXXLGktDBkJC/NOqz/uqlaDHDZie2eYXfQDDBIB4PKSBMq', 'prasanta nagar', 'Lt road', 'mumbai', 'pune', '788563', '4562265', 'vfvbn456', '1', NULL, NULL, '2862', 'uploads/user/1647329044.596320953.download.jpeg', 'male', NULL, 1, 1, NULL, '2022-03-08 02:50:14', '2022-04-25 01:42:38'),
(6, NULL, 'Ravi', 'Shankar', 'ravi2020@gmail.com', 'EMP7854', '8777605241', '8745219631', NULL, '$2y$10$TUa/jac16ZICjrwIjKFIFemqMhQtz9URfL7yyI9BOw7aqVT3S.gBq', 'prasanta nagar', 'Lt road', 'mumbai', 'pune', '700002', '745215896300', 'BNhg859', '3', NULL, NULL, NULL, 'uploads/user/1650871644.download.jpeg', 'male', NULL, 0, 1, NULL, '2022-04-25 01:57:24', '2022-04-26 05:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `user_attendances`
--

CREATE TABLE `user_attendances` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_attendances`
--

INSERT INTO `user_attendances` (`id`, `user_id`, `location`, `lat`, `lng`, `date`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(1, 5, 'East Mumbai', 19, 1, '2022-03-08', '06:29:22', '07:29:02', '2022-03-09 01:57:18', '2022-04-25 01:39:50'),
(3, 5, 'East Mumbai', 19.1582, 72.9597, '2022-03-24', '10:00:22', '06:30:22', '2022-04-25 01:36:50', '2022-04-25 01:36:50'),
(4, 5, 'East Mumbai', 19.1582, 72.9597, '2022-03-25', '10:00:22', '06:30:22', '2022-04-25 01:37:14', '2022-04-25 01:37:14'),
(5, 5, 'East Delhi', 22.1582, 77.9597, '2022-03-26', '10:00:22', '06:30:22', '2022-04-25 01:38:34', '2022-04-25 01:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL DEFAULT '0',
  `product_id` bigint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `ip`, `user_id`, `product_id`, `created_at`) VALUES
(12, '127.0.0.1', 0, 125, '2022-03-17 09:34:40'),
(13, '103.121.157.14', 0, 32, '2022-03-31 13:26:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail_logs`
--
ALTER TABLE `mail_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `no_order_reasons`
--
ALTER TABLE `no_order_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_color_sizes`
--
ALTER TABLE `product_color_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `start_end_days`
--
ALTER TABLE `start_end_days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_mails`
--
ALTER TABLE `subscription_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_attendances`
--
ALTER TABLE `user_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupon_usages`
--
ALTER TABLE `coupon_usages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mail_logs`
--
ALTER TABLE `mail_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `no_order_reasons`
--
ALTER TABLE `no_order_reasons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_color_sizes`
--
ALTER TABLE `product_color_sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2352;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `start_end_days`
--
ALTER TABLE `start_end_days`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscription_mails`
--
ALTER TABLE `subscription_mails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_attendances`
--
ALTER TABLE `user_attendances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
