-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2020 at 06:27 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `user_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `itemdetails_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`user_id`, `item_id`, `itemdetails_id`, `quantity`, `date_added`, `date_updated`, `id`) VALUES
(20, 76, 1, 3, '2020-10-01 18:44:49', NULL, 8),
(20, 76, 2, 4, '2020-10-01 18:45:09', NULL, 9),
(15, 76, 1, 3, '2020-10-01 19:08:50', NULL, 10),
(15, 76, 2, 5, '2020-10-01 19:09:31', NULL, 11),
(31, 76, 2, 3, '2020-10-14 00:07:33', NULL, 15),
(31, 140, 49, 1, '2020-10-14 00:34:58', NULL, 16),
(31, 139, 46, 1, '2020-10-14 00:36:30', '2020-10-14 00:36:36', 17),
(31, 138, 43, 10, '2020-10-14 03:11:35', '2020-10-14 03:34:03', 18),
(31, 105, 6, 4, '2020-10-14 03:29:08', NULL, 19);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'clothes', '2020-09-12 22:53:59', '2020-09-12 23:25:27'),
(2, 'kitchenware', '2020-09-12 22:54:29', NULL),
(3, 'housewere', '2020-09-12 23:12:20', NULL),
(4, 'footwear', '2020-09-12 23:28:14', NULL),
(5, 'accessories', '2020-09-12 23:30:32', NULL),
(8, 'bottomwear', '2020-09-12 23:37:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `name` varchar(80) NOT NULL,
  `description` text NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `condition_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `seller_id`, `name`, `description`, `subcategory_id`, `condition_id`, `created_at`, `updated_at`) VALUES
(76, 22, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-09-26 09:39:11', '0000-00-00 00:00:00'),
(94, 22, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-09-27 06:33:14', '0000-00-00 00:00:00'),
(95, 22, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-09-27 06:47:04', '0000-00-00 00:00:00'),
(96, 22, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-09-27 06:48:05', '0000-00-00 00:00:00'),
(97, 22, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-09-27 06:49:20', '0000-00-00 00:00:00'),
(101, 32, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-02 03:31:44', '0000-00-00 00:00:00'),
(102, 32, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-02 03:38:49', '0000-00-00 00:00:00'),
(103, 32, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-02 03:40:00', '0000-00-00 00:00:00'),
(104, 32, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-02 03:41:08', '0000-00-00 00:00:00'),
(105, 32, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-02 03:42:29', '0000-00-00 00:00:00'),
(106, 38, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-04 07:27:22', '0000-00-00 00:00:00'),
(128, 38, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-04 11:35:40', '0000-00-00 00:00:00'),
(130, 38, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-04 12:48:21', '0000-00-00 00:00:00'),
(131, 38, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-04 12:48:22', '0000-00-00 00:00:00'),
(134, 38, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-04 14:13:28', '0000-00-00 00:00:00'),
(135, 38, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-04 14:21:00', '0000-00-00 00:00:00'),
(136, 38, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-04 15:05:33', '0000-00-00 00:00:00'),
(137, 38, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-04 15:09:45', '0000-00-00 00:00:00'),
(138, 38, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-04 15:15:58', '0000-00-00 00:00:00'),
(139, 38, 'Vantela sneakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-04 15:17:38', '0000-00-00 00:00:00'),
(140, 38, 'Gator Senakers', 'Sneaker khas yang nyaman dipakai, cocok untuk olahraga, lari dan untuk gayamu yang super trendy!', 7, 1, '2020-10-04 23:34:00', '2020-10-12 01:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `item_condition`
--

CREATE TABLE `item_condition` (
  `id` int(11) NOT NULL,
  `item_condition` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_condition`
--

INSERT INTO `item_condition` (`id`, `item_condition`) VALUES
(1, 'New'),
(2, 'Second-hand'),
(3, 'New'),
(4, 'Second-hand'),
(5, 'Refurbish');

-- --------------------------------------------------------

--
-- Table structure for table `item_details`
--

CREATE TABLE `item_details` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `color_name` varchar(80) NOT NULL,
  `hex` varchar(80) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_details`
--

INSERT INTO `item_details` (`id`, `item_id`, `color_name`, `hex`, `stock`, `price`, `created_at`, `updated_at`) VALUES
(1, 76, 'grey', '#808080', 3, 14000, '2020-09-27 14:56:58', NULL),
(2, 76, 'black', '#000000', 3, 14000, '2020-09-27 14:56:58', NULL),
(4, 103, 'pink', '#FFC0CB', 10, 1000000, '2020-10-02 03:40:01', NULL),
(5, 104, 'pink', '#FFC0CB', 10, 150000, '2020-10-02 03:41:08', NULL),
(6, 105, 'pink', '#FFC0CB', 10, 150000, '2020-10-02 03:42:29', NULL),
(7, 106, 'pink', '#FFC0CB', 10, 150000, '2020-10-04 07:27:22', NULL),
(29, 128, 'pink', '#FFC0CB', 10, 150000, '2020-10-04 11:35:40', NULL),
(32, 134, 'pink', '#FFC0CB', 10, 150000, '2020-10-04 14:13:28', NULL),
(33, 134, 'maroon', '#800000', 11, 14000, '2020-10-04 14:13:28', NULL),
(34, 135, 'pink', '#FFC0CB', 10, 1500000, '2020-10-04 14:21:00', NULL),
(35, 135, 'maroon', '#800000', 11, 1400000, '2020-10-04 14:21:00', NULL),
(36, 135, 'blue', '#0000FF', 10, 150000, '2020-10-04 14:21:00', NULL),
(37, 136, 'purple', '#800080', 10, 1500000, '2020-10-04 15:05:33', NULL),
(38, 136, 'red', '#FF0000', 11, 1400000, '2020-10-04 15:05:33', NULL),
(39, 136, 'green', '#008000', 10, 1500000, '2020-10-04 15:05:33', NULL),
(40, 137, 'purple', '#800080', 10, 650000, '2020-10-04 15:09:45', NULL),
(41, 137, 'red', '#FF0000', 11, 640000, '2020-10-04 15:09:45', NULL),
(42, 137, 'green', '#008000', 10, 650000, '2020-10-04 15:09:45', NULL),
(43, 138, 'purple', '#800080', 10, 250000, '2020-10-04 15:15:58', NULL),
(44, 138, 'red', '#FF0000', 11, 240000, '2020-10-04 15:15:58', NULL),
(45, 138, 'green', '#008000', 10, 250000, '2020-10-04 15:15:58', NULL),
(46, 139, 'purple', '#800080', 10, 250000, '2020-10-04 15:17:38', NULL),
(47, 139, 'red', '#FF0000', 11, 240000, '2020-10-04 15:17:38', NULL),
(48, 139, 'green', '#008000', 10, 250000, '2020-10-04 15:17:38', NULL),
(49, 140, 'purple', '#800080', 10, 250000, '2020-10-04 23:34:00', '2020-10-12 01:24:51'),
(50, 140, 'red', '#FF0000', 11, 240000, '2020-10-04 23:34:00', '2020-10-12 01:24:51'),
(51, 140, 'green', '#008000', 10, 250000, '2020-10-04 23:34:00', '2020-10-12 01:24:51'),
(58, 101, 'purple', '#800080', 10, 250000, '2020-10-05 13:57:43', NULL),
(59, 101, 'red', '#FF0000', 11, 240000, '2020-10-05 13:57:43', NULL),
(60, 101, 'green', '#008000', 10, 250000, '2020-10-05 13:57:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE `item_images` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_images`
--

INSERT INTO `item_images` (`id`, `item_id`, `name`, `image_url`, `created_at`, `updated_at`) VALUES
(23, 96, 'product_image_1', 'Uploads/14-product_image-1601189284979.jpeg', '2020-09-27 06:48:05', NULL),
(24, 96, 'product_image_2', 'Uploads/14-product_image-1601189285054.jpeg', '2020-09-27 06:48:05', NULL),
(25, 96, 'product_image_3', 'Uploads/14-product_image-1601189285059.jpeg', '2020-09-27 06:48:05', NULL),
(26, 96, 'product_image_4', 'Uploads/14-product_image-1601189285142.jpeg', '2020-09-27 06:48:05', NULL),
(27, 97, 'product_image_1', 'Uploads/14-product_image-1601202591937.jpeg', '2020-09-27 06:49:21', '2020-09-27 10:29:52'),
(28, 97, 'product_image_2', 'Uploads/14-product_image-1601202591964.jpeg', '2020-09-27 06:49:21', '2020-09-27 10:29:53'),
(29, 97, 'product_image_3', 'Uploads/14-product_image-1601202592010.jpeg', '2020-09-27 06:49:22', '2020-09-27 10:29:53'),
(30, 97, 'product_image_4', 'Uploads/14-product_image-1601202592016.jpeg', '2020-09-27 06:49:22', '2020-09-27 10:29:53'),
(43, 103, 'product_image_1', 'Uploads/32-product_image-1601612232830.jpeg', '2020-10-02 03:40:00', '2020-10-02 04:17:13'),
(44, 103, 'product_image_2', 'Uploads/32-product_image-1601612232836.jpeg', '2020-10-02 03:40:00', '2020-10-02 04:17:13'),
(45, 103, 'product_image_3', 'Uploads/32-product_image-1601612232985.jpeg', '2020-10-02 03:40:00', '2020-10-02 04:17:14'),
(46, 103, 'product_image_4', 'Uploads/32-product_image-1601612232993.jpeg', '2020-10-02 03:40:01', '2020-10-02 04:17:14'),
(47, 104, 'product_image_1', 'Uploads/32-product_image-1601610068513.jpeg', '2020-10-02 03:41:08', NULL),
(48, 104, 'product_image_2', 'Uploads/32-product_image-1601610068524.jpeg', '2020-10-02 03:41:08', NULL),
(49, 104, 'product_image_3', 'Uploads/32-product_image-1601610068547.jpeg', '2020-10-02 03:41:08', NULL),
(50, 104, 'product_image_4', 'Uploads/32-product_image-1601610068556.jpeg', '2020-10-02 03:41:08', NULL),
(51, 105, 'product_image_1', 'Uploads/32-product_image-1601610149448.jpeg', '2020-10-02 03:42:29', NULL),
(52, 105, 'product_image_2', 'Uploads/32-product_image-1601610149454.jpeg', '2020-10-02 03:42:29', NULL),
(53, 105, 'product_image_3', 'Uploads/32-product_image-1601610149458.jpeg', '2020-10-02 03:42:29', NULL),
(54, 105, 'product_image_4', 'Uploads/32-product_image-1601610149461.jpeg', '2020-10-02 03:42:29', NULL),
(55, 106, 'product_image_1', 'Uploads/38-product_image-1601806373236.jpeg', '2020-10-04 10:16:34', NULL),
(56, 106, 'product_image_2', 'Uploads/38-product_image-1601806373337.jpeg', '2020-10-04 10:16:34', NULL),
(57, 106, 'product_image_3', 'Uploads/38-product_image-1601806373342.jpeg', '2020-10-04 10:16:34', NULL),
(58, 106, 'product_image_4', 'Uploads/38-product_image-1601806373378.jpeg', '2020-10-04 10:16:34', NULL),
(59, 128, 'product_image_1', 'Uploads/38-product_image-1601811339175.jpeg', '2020-10-04 11:35:40', NULL),
(60, 128, 'product_image_2', 'Uploads/38-product_image-1601811339237.jpeg', '2020-10-04 11:35:40', NULL),
(61, 128, 'product_image_3', 'Uploads/38-product_image-1601811339247.jpeg', '2020-10-04 11:35:40', NULL),
(62, 128, 'product_image_4', 'Uploads/38-product_image-1601811339259.jpeg', '2020-10-04 11:35:40', NULL),
(63, 134, 'product_image_1', 'Uploads/38-product_image-1601820805491.jpeg', '2020-10-04 14:13:28', NULL),
(64, 134, 'product_image_2', 'Uploads/38-product_image-1601820805746.jpeg', '2020-10-04 14:13:28', NULL),
(65, 134, 'product_image_3', 'Uploads/38-product_image-1601820805760.jpeg', '2020-10-04 14:13:28', NULL),
(66, 134, 'product_image_4', 'Uploads/38-product_image-1601820805770.jpeg', '2020-10-04 14:13:28', NULL),
(67, 135, 'product_image_1', 'Uploads/38-product_image-1601821259475.jpeg', '2020-10-04 14:21:00', NULL),
(68, 135, 'product_image_2', 'Uploads/38-product_image-1601821259572.jpeg', '2020-10-04 14:21:00', NULL),
(69, 135, 'product_image_3', 'Uploads/38-product_image-1601821259578.jpeg', '2020-10-04 14:21:00', NULL),
(70, 135, 'product_image_4', 'Uploads/38-product_image-1601821259586.jpeg', '2020-10-04 14:21:00', NULL),
(71, 136, 'product_image_1', 'Uploads/38-product_image-1601823932485.jpeg', '2020-10-04 15:05:33', NULL),
(72, 136, 'product_image_2', 'Uploads/38-product_image-1601823932641.jpeg', '2020-10-04 15:05:33', NULL),
(73, 136, 'product_image_3', 'Uploads/38-product_image-1601823932647.jpeg', '2020-10-04 15:05:33', NULL),
(74, 136, 'product_image_4', 'Uploads/38-product_image-1601823932654.jpeg', '2020-10-04 15:05:33', NULL),
(75, 137, 'product_image_1', 'Uploads/38-product_image-1601824184504.jpeg', '2020-10-04 15:09:45', NULL),
(76, 137, 'product_image_2', 'Uploads/38-product_image-1601824184519.jpeg', '2020-10-04 15:09:45', NULL),
(77, 137, 'product_image_3', 'Uploads/38-product_image-1601824184639.jpeg', '2020-10-04 15:09:45', NULL),
(78, 137, 'product_image_4', 'Uploads/38-product_image-1601824184657.jpeg', '2020-10-04 15:09:45', NULL),
(79, 138, 'product_image_1', 'Uploads/38-product_image-1601824557090.jpeg', '2020-10-04 15:15:58', NULL),
(80, 138, 'product_image_2', 'Uploads/38-product_image-1601824557175.jpeg', '2020-10-04 15:15:58', NULL),
(81, 138, 'product_image_3', 'Uploads/38-product_image-1601824557180.jpeg', '2020-10-04 15:15:58', NULL),
(82, 138, 'product_image_4', 'Uploads/38-product_image-1601824557197.jpeg', '2020-10-04 15:15:58', NULL),
(83, 139, 'product_image_1', 'Uploads/38-product_image-1601824657653.jpeg', '2020-10-04 15:17:39', NULL),
(84, 139, 'product_image_2', 'Uploads/38-product_image-1601824657703.jpeg', '2020-10-04 15:17:39', NULL),
(85, 139, 'product_image_3', 'Uploads/38-product_image-1601824657707.jpeg', '2020-10-04 15:17:39', NULL),
(86, 139, 'product_image_4', 'Uploads/38-product_image-1601824657714.jpeg', '2020-10-04 15:17:39', NULL),
(89, 101, 'product_image_1', 'Uploads/38-product_image-1601906262485.jpeg', '2020-10-05 13:57:43', NULL),
(90, 101, 'product_image_2', 'Uploads/38-product_image-1601906262559.jpeg', '2020-10-05 13:57:43', NULL),
(94, 140, 'product_image', 'Uploads/38-product_image-1602490816760.jpeg', '2020-10-05 15:07:17', '2020-10-12 01:20:17'),
(95, 140, 'product_image', 'Uploads/38-product_image-1602490816760.jpeg', '2020-10-12 07:54:03', '2020-10-12 01:20:17'),
(96, 140, 'product_image', 'Uploads/38-product_image-1602490816760.jpeg', '2020-10-12 07:54:03', '2020-10-12 01:20:17'),
(97, 140, 'product_image', 'Uploads/38-product_image-1602490816760.jpeg', '2020-10-12 07:54:03', '2020-10-12 01:20:17'),
(98, 140, 'product_image_1', 'Uploads/38-product_image-1602491091002.jpeg', '2020-10-12 08:24:51', NULL),
(99, 140, 'product_image_2', 'Uploads/38-product_image-1602491091013.jpeg', '2020-10-12 08:24:51', NULL),
(100, 140, 'product_image_3', 'Uploads/38-product_image-1602491091036.jpeg', '2020-10-12 08:24:51', NULL),
(101, 140, 'product_image_4', 'Uploads/38-product_image-1602491091080.jpeg', '2020-10-12 08:24:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_ratings`
--

CREATE TABLE `item_ratings` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_ratings`
--

INSERT INTO `item_ratings` (`id`, `item_id`, `rating`, `description`, `created_at`) VALUES
(1, 76, 5, 'Jilbabnya sangat bagus, saya suka karena lucu seperti kamu', '2020-10-01 00:03:28'),
(2, 76, 4, 'Keren sekali saya sangat suka!! tapi sayang dia sama yang lain huhu', '2020-10-01 00:04:14'),
(3, 76, 5, 'harga murah kualitasnya juga markotop!', '2020-10-01 00:04:48'),
(4, 140, 5, 'Mantap jiwaa', '2020-10-12 09:02:29'),
(5, 140, 4, 'Lumayan mantap jiwaa', '2020-10-12 09:02:29'),
(6, 140, 5, 'Mantap jiwaa', '2020-10-12 09:03:22'),
(7, 140, 4, 'Lumayan mantap jiwaa', '2020-10-12 09:03:22'),
(8, 140, 1, 'Lumayan mantap jiwaa', '2020-10-12 09:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(80) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'hijab', '2020-09-26 07:42:17', NULL),
(4, 2, 'pastry stuff', '2020-10-02 02:17:41', NULL),
(5, 2, 'stove', '2020-10-02 02:17:41', NULL),
(6, 2, 'pan', '2020-10-02 02:17:41', NULL),
(7, 4, 'sneakers', '2020-10-02 02:17:41', NULL),
(8, 4, 'sandals', '2020-10-02 02:17:41', NULL),
(9, 4, 'socks', '2020-10-02 02:17:41', NULL),
(10, 5, 'jewellery', '2020-10-02 02:17:41', NULL),
(11, 5, 'hats', '2020-10-02 02:17:41', NULL),
(12, 2, 'peralatan memasak', '2020-10-04 07:22:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `invoice` varchar(80) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_payment` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `invoice` int(11) NOT NULL,
  `item_name` int(11) NOT NULL,
  `item_color` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `address` int(11) NOT NULL,
  `delivery_fee` int(11) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `username` varchar(80) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'M Faris Alkodri', 'alkodrimuhfaris', 'farisalkodri@gmail.com', '$2a$10$uMIowGp1zGjwsMuxdtl1ZOoA9.RwebSYJM7ld.dRSJF4uJDJoSpSm', '2020-09-24 01:31:13', '2020-09-25 12:37:18', 1),
(15, 'Begovich Notorof', '4545', 'abc45@rocketmail.com', '$2a$10$nlPv5HL4ITjgpfBss61d4uqaGoOn1EtgIQFf0.zzG70Aup5Hrl4QK', '2020-09-25 03:03:24', NULL, 4),
(19, 'Begovich Natawijaya', '4321', 'abc5dasar@rocketmail.com', '$2a$10$Cb0o2XTR9e2q1jxfE32bGuLaSBUd4wGx9TTxK.WjNx4ykqW5w/PKS', '2020-09-27 04:49:01', NULL, 4),
(20, 'dobleh', 'bortor', 'bolo@bolo.com', '$2a$10$qwGfYllryYMXUNY02IPFYOa5F5F.2YqIDaSFA/SCEc1ofmpc37dza', '2020-09-28 03:02:18', '2020-09-30 08:28:20', 4),
(22, 'Dolomit Gorbachev', 'bolobolo', 'bolo123@bolo.com', '$2a$10$Ea7gNboae6tOvnPBCHS1KeqL9CAiHhAsRp3pEUmH3.D1la7xzPfK6', '2020-09-28 03:10:41', NULL, 3),
(27, 'Michael Borris', NULL, 'boboho@bolo.com', '$2a$10$/nd.lO3IDGrwHPZfwDqtEubSEMvbBNzWKrxmDcgOA1oqCZf2wqT/i', '2020-10-02 00:25:01', NULL, 4),
(28, 'Brie Landerson', NULL, 'boboho@boho.com', '$2a$10$gLCLXEXhRLJr2h1oMsVvxe9pCT951XMPhQWnm7yGcA0VCtNwwbnqG', '2020-10-02 00:26:33', NULL, 4),
(30, 'Andrew Davies', NULL, 'bohoboboho@boho.com', '$2a$10$AcliZGPKu7Vf.PuuItBbbO8IUZ6rIhOZkKpY.fPwOLXTy1ycqBTV6', '2020-10-02 00:37:34', NULL, 4),
(31, 'Davis Chaniago', NULL, 'diabolitical@mail.com', '$2a$10$8AT0ijDOruKikI3fIZcIUe5Fh8hfjF81UJuuIe0DOlvMILjg4S3GW', '2020-10-02 00:44:32', '2020-10-17 00:10:56', 4),
(32, 'Andrew Davies Chaniago', NULL, 'davischaniago@mail.com', '$2a$10$J3FFvohJDL7GZAUaF6VSKOyrivvNnrf3PqcSuHOTbNViIhiun3Td2', '2020-10-02 03:00:10', NULL, 3),
(33, 'Andrew Davies Chaniago', NULL, 'davischaniago@gmail.com', '$2a$10$2QZ1lmjrhu6fjxUXIsv8Ke6YIkrt7ZUB2gVuniz9GkfPHuks/ZoPi', '2020-10-02 06:33:55', NULL, 4),
(35, 'Tyler Dutner', NULL, 'maitlands@mail.com', '$2a$10$V/6qSU/.96iMhFg.e/HCJuCcvYVac5B3LMsGAQVzzqyxPM8jxLyh2', '2020-10-03 06:08:36', '0000-00-00 00:00:00', 4),
(36, 'Mani Paqiao', NULL, 'paqiao@mail.com', '$2a$10$FYii46.aad0aacTecvteGOPGv4PVdv11VvgnPnZxiNC7VQZyfdYqy', '2020-10-04 03:55:14', NULL, 4),
(38, 'Dominic Torreto', NULL, 'dominic@mail.com', '$2a$10$tZkLwcI7Vlh91B/wOIxuiePuIIMbMLHP1sL4XH262vC1Yx09.FsFu', '2020-10-04 07:15:18', NULL, 3),
(39, 'Hector Bellerin', NULL, 'bellerinofficial@mail.com', '$2a$10$Fik5NW9MM2GjWL/uhwEEg.m6z08BRp2zPLPI1aareAir7MOIB.jf2', '2020-10-04 11:38:26', NULL, 3),
(40, 'Kodir Magadir', NULL, 'kodirmagadir@gmail.com', '$2a$10$U52rVDEuy2UkTIf5cLKiWuX8/IjIkzWppBM.zy5OStQc.4tNRT.dq', '2020-10-07 20:51:07', NULL, 4),
(41, 'faris alkodri', NULL, 'alkodrifaris@kodri.com', '$2a$10$vUnV7wIAGngwvkkEbQmwlu8sOZO.Fhv3w.MTG8AlJes0Ghn.gZqS2', '2020-10-09 03:47:23', NULL, 4),
(42, 'alkodri muhammad faris', NULL, 'fariskodri@faris.com', '$2a$10$snaERCcRRRtPVbXktnFUouMdzMuWtcY37coT29nat5e09ffZQXRm6', '2020-10-09 03:48:58', NULL, 4),
(43, 'Bohemian Rhapsody', NULL, 'bohemian@mail.com', '$2a$10$WF1CCtrGJA0G989fW5zjPujUetyo9bLLrZStINakP4vetdRjCMtHG', '2020-10-09 03:53:25', NULL, 4),
(44, 'alkodri muhammad faris', NULL, 'muhammadkodri@mail.com', '$2a$10$vo0.Sz9s97NqZpjR4o6dpuz6qX7kN3veWXkLLF7ZQegpdb41TjWCK', '2020-10-09 03:56:29', NULL, 4),
(45, 'faris kodri', NULL, 'kodirmagadri@mail.com', '$2a$10$QlaLRqdfISnidSAklCuKiOICAFFoGTNHC0if/llgz/xkjdNBFViZi', '2020-10-09 04:02:17', NULL, 4),
(46, 'kodri', NULL, 'kodri@kodri.com', '$2a$10$P41gYr5sP5BxyPXHd3EKZ.NEXH.3MPRASRXpoLzJb4.Lu8X3hA1g2', '2020-10-09 04:03:45', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_name` varchar(80) NOT NULL,
  `recipient_name` varchar(80) NOT NULL,
  `phone` double NOT NULL,
  `city` varchar(80) NOT NULL,
  `address` text NOT NULL,
  `postal_code` int(11) NOT NULL,
  `maps_pin_point` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `primary_address` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`id`, `user_id`, `address_name`, `recipient_name`, `phone`, `city`, `address`, `postal_code`, `maps_pin_point`, `created_at`, `updated_at`, `primary_address`) VALUES
(2, 20, 'Home', 'Bams', 89633449007, 'Palembang', 'Kancil Putih Pulau Street No. 13 B', 14321, NULL, '2020-09-30 22:59:35', '2020-10-01 17:27:08', 0),
(8, 20, 'home 3', 'Mas Bram', 89633449007, 'Palembang', 'Kancil Putih Pulau Street No. 12 B', 14321, NULL, '2020-10-01 17:32:02', '2020-10-01 17:33:40', 0),
(10, 20, 'home 4', 'Mas Bram', 89633449007, 'Palembang', 'Kancil Putih Pulau Street No. 11 B', 14321, NULL, '2020-10-01 17:33:40', '2020-10-01 17:33:57', 0),
(11, 20, 'home 4', 'Suaminya Bu Bram', 89633449007, 'Palembang', 'Kancil Putih Pulau Street No. 10', 14321, NULL, '2020-10-01 17:33:58', '2020-10-02 07:09:50', 0),
(13, 31, 'Kantor', 'Iga si Iguana', 89633449007, 'Palembang', 'Macan Kota No 14 A', 14321, NULL, '2020-10-02 00:46:33', NULL, 0),
(14, 31, 'Kantor', 'Iga si Iguana', 89633449007, 'Palembang', 'Macan Kota No 14 A', 14321, NULL, '2020-10-02 07:07:47', '2020-10-02 07:13:17', 1),
(16, 35, 'Rumah', 'Marzuki', 89633449007, 'Palembang', 'Jalan Kancil Putih No 14 A', 14321, NULL, '2020-10-03 11:52:25', '2020-10-17 07:15:33', 0),
(19, 35, 'Address that i want to get rid off', 'Iga si Iguana', 89633449007, 'Palembang', 'Jalan Kancil Putih No 14 A', 14321, NULL, '2020-10-17 07:15:33', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `avatar` varchar(80) DEFAULT NULL,
  `gender` varchar(80) DEFAULT NULL,
  `phone` double DEFAULT NULL,
  `store_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `role_id`, `user_id`, `birthdate`, `avatar`, `gender`, `phone`, `store_description`, `created_at`, `updated_at`, `store_name`) VALUES
(9, 4, 20, '2000-11-11', 'Uploads/20-avatar-1601454500721.jpeg', 'male', 89633449007, NULL, '2020-09-30 02:33:44', '2020-09-30 08:28:20', NULL),
(10, 3, 22, NULL, NULL, NULL, 82185901744, 'Menjual Segala Jenis Jilbab Lucu', '2020-10-01 18:14:55', NULL, 'Jilbab Sangkuriang'),
(11, 4, 22, '1999-12-12', NULL, 'male', 82185901744, NULL, '2020-10-01 18:17:30', NULL, NULL),
(14, 4, 27, NULL, NULL, NULL, NULL, NULL, '2020-10-02 00:25:01', NULL, NULL),
(15, 4, 28, NULL, NULL, NULL, NULL, NULL, '2020-10-02 00:26:33', NULL, NULL),
(16, 4, 30, NULL, NULL, NULL, NULL, NULL, '2020-10-02 00:37:34', NULL, NULL),
(17, 4, 31, NULL, 'Uploads/31-avatar-1602700034260.png', NULL, NULL, NULL, '2020-10-02 00:44:32', NULL, NULL),
(18, 3, 32, NULL, NULL, NULL, NULL, NULL, '2020-10-02 03:00:10', NULL, NULL),
(19, 4, 33, NULL, NULL, NULL, NULL, NULL, '2020-10-02 06:33:55', NULL, NULL),
(20, 4, 35, NULL, 'Uploads/35-avatar-1601705851744.jpeg', NULL, 89633449007, NULL, '2020-10-03 06:08:36', NULL, NULL),
(21, 4, 36, NULL, NULL, NULL, NULL, NULL, '2020-10-04 03:55:14', NULL, NULL),
(23, 3, 38, NULL, NULL, NULL, 89867852564, NULL, '2020-10-04 07:15:18', NULL, 'Torreto Knife'),
(24, 3, 39, NULL, NULL, NULL, 89633449070, NULL, '2020-10-04 11:38:26', NULL, 'Arsenal Clothes'),
(25, 4, 40, NULL, NULL, NULL, NULL, NULL, '2020-10-07 20:51:07', NULL, NULL),
(26, 4, 41, NULL, NULL, NULL, NULL, NULL, '2020-10-09 03:47:23', NULL, NULL),
(27, 4, 42, NULL, NULL, NULL, NULL, NULL, '2020-10-09 03:48:58', NULL, NULL),
(28, 4, 43, NULL, NULL, NULL, NULL, NULL, '2020-10-09 03:53:25', NULL, NULL),
(29, 4, 44, NULL, NULL, NULL, NULL, NULL, '2020-10-09 03:56:29', NULL, NULL),
(30, 4, 45, NULL, NULL, NULL, NULL, NULL, '2020-10-09 04:02:17', NULL, NULL),
(31, 4, 46, NULL, NULL, NULL, NULL, NULL, '2020-10-09 04:03:45', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_payment`
--

CREATE TABLE `user_payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_flow` int(11) DEFAULT NULL,
  `transaction_date` int(11) DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(80) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'super admin', '2020-09-24 14:02:04', NULL),
(2, 'admin', '2020-09-24 14:02:35', NULL),
(3, 'seller', '2020-09-24 14:02:56', NULL),
(4, 'user', '2020-09-24 14:08:20', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`itemdetails_id`),
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `item_id_2` (`item_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategory_id` (`subcategory_id`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `item_condition`
--
ALTER TABLE `item_condition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_details`
--
ALTER TABLE `item_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `item_ratings`
--
ALTER TABLE `item_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `item_condition`
--
ALTER TABLE `item_condition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `item_details`
--
ALTER TABLE `item_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `item_ratings`
--
ALTER TABLE `item_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user_address`
--
ALTER TABLE `user_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_payment`
--
ALTER TABLE `user_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_ibfk_3` FOREIGN KEY (`itemdetails_id`) REFERENCES `item_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_ibfk_4` FOREIGN KEY (`item_id`) REFERENCES `item_details` (`item_id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_details`
--
ALTER TABLE `item_details`
  ADD CONSTRAINT `item_details_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_images`
--
ALTER TABLE `item_images`
  ADD CONSTRAINT `item_images_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `sub_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_details_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_payment`
--
ALTER TABLE `user_payment`
  ADD CONSTRAINT `user_payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
