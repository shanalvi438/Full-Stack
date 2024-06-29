-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 27, 2024 at 04:14 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_to_cart_lists`
--

DROP TABLE IF EXISTS `add_to_cart_lists`;
CREATE TABLE IF NOT EXISTS `add_to_cart_lists` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `customer_id` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `offer_id` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `offer_discount` decimal(11,2) DEFAULT NULL,
  `offer_exp_date` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `admin_type` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `admin_type`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 'admin', 'admin@email.com', '$2y$10$mZWXcLFfYrxKltdLnIDGceUznv/tRmKZexbFijOp/jcVVpOUm2B/6', '1', 1, '2024-06-25 11:33:23', NULL, '2024-06-25 11:33:23', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
CREATE TABLE IF NOT EXISTS `ads` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `img` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `position` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

DROP TABLE IF EXISTS `bank_accounts`;
CREATE TABLE IF NOT EXISTS `bank_accounts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `account_type` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `branch_name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `available_balance` decimal(8,2) DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 'Drake Knox', 'storage/brand_icons/brand_icons-17193225897609.png', 1, '2024-06-25 11:36:29', NULL, '2024-06-25 11:36:29', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `state_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_infos`
--

DROP TABLE IF EXISTS `company_infos`;
CREATE TABLE IF NOT EXISTS `company_infos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `company_logo` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `company_address` text,
  `about_us` text,
  `refund_policy` text,
  `shipping_policy` text,
  `privacy_policy` text,
  `terms_condition` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `company_infos`
--

INSERT INTO `company_infos` (`id`, `name`, `email`, `phone`, `company_logo`, `facebook_link`, `youtube_link`, `twitter_link`, `company_address`, `about_us`, `refund_policy`, `shipping_policy`, `privacy_policy`, `terms_condition`, `created_at`, `updated_at`) VALUES
(1, 'Gulf', 'tywyjorul@mailinator.com', '9876543', 'storage/company_logo/company_logo-17193676451471.png', 'zewyleh@mailinator.com', 'hugody@mailinator.com', 'syciga@mailinator.com', 'Voluptatibus sint mi', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '0000-00-00 00:00:00', '2024-06-26 10:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `currency_symbol` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `currency_symbol`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', '$', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(2, 'Aland Islands', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(3, 'Albania', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(4, 'Algeria', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(5, 'American Samoa', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(6, 'Andorra', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(7, 'Angola', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(8, 'Anguilla', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(9, 'Antarctica', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(10, 'Antigua and Barbuda', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(11, 'Argentina', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(12, 'Armenia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(13, 'Aruba', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(14, 'Australia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(15, 'Austria', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(16, 'Azerbaijan', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(17, 'Bahamas', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(18, 'Bahrain', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(19, 'Bangladesh', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(20, 'Barbados', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(21, 'Belarus', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(22, 'Belgium', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(23, 'Belize', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(24, 'Benin', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(25, 'Bermuda', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(26, 'Bhutan', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(27, 'Bolivia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(28, 'Bonaire, Sint Eustatius and Saba', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(29, 'Bosnia and Herzegovina', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(30, 'Botswana', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(31, 'Bouvet Island', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(32, 'Brazil', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(33, 'British Indian Ocean Territory', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(34, 'Brunei Darussalam', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(35, 'Bulgaria', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(36, 'Burkina Faso', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(37, 'Burundi', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(38, 'Cambodia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(39, 'Cameroon', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(40, 'Canada', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(41, 'Cape Verde', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(42, 'Cayman Islands', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(43, 'Central African Republic', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(44, 'Chad', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(45, 'Chile', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(46, 'China', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(47, 'Christmas Island', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(48, 'Cocos (Keeling) Islands', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(49, 'Colombia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(50, 'Comoros', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(51, 'Congo', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(52, 'Congo, Democratic Republic of the Congo', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(53, 'Cook Islands', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(54, 'Costa Rica', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(55, 'Cote D\'Ivoire', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(56, 'Croatia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(57, 'Cuba', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(58, 'Curacao', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(59, 'Cyprus', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(60, 'Czech Republic', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(61, 'Denmark', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(62, 'Djibouti', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(63, 'Dominica', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(64, 'Dominican Republic', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(65, 'Ecuador', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(66, 'Egypt', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(67, 'El Salvador', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(68, 'Equatorial Guinea', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(69, 'Eritrea', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(70, 'Estonia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(71, 'Ethiopia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(72, 'Falkland Islands (Malvinas)', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(73, 'Faroe Islands', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(74, 'Fiji', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(75, 'Finland', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(76, 'France', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(77, 'French Guiana', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(78, 'French Polynesia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(79, 'French Southern Territories', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(80, 'Gabon', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(81, 'Gambia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(82, 'Georgia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(83, 'Germany', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(84, 'Ghana', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(85, 'Gibraltar', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(86, 'Greece', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(87, 'Greenland', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(88, 'Grenada', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(89, 'Guadeloupe', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(90, 'Guam', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(91, 'Guatemala', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(92, 'Guernsey', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(93, 'Guinea', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(94, 'Guinea-Bissau', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(95, 'Guyana', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(96, 'Haiti', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(97, 'Heard Island and McDonald Islands', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(98, 'Holy See (Vatican City State)', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(99, 'Honduras', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(100, 'Hong Kong', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(101, 'Hungary', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(102, 'Iceland', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(103, 'India', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(104, 'Indonesia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(105, 'Iran, Islamic Republic of', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(106, 'Iraq', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(107, 'Ireland', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(108, 'Isle of Man', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(109, 'Israel', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(110, 'Italy', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(111, 'Jamaica', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(112, 'Japan', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(113, 'Jersey', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(114, 'Jordan', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(115, 'Kazakhstan', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(116, 'Kenya', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(117, 'Kiribati', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(118, 'Korea, Democratic People\'s Republic of', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(119, 'Korea, Republic of', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(120, 'Kosovo', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(121, 'Kuwait', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(122, 'Kyrgyzstan', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(123, 'Lao People\'s Democratic Republic', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(124, 'Latvia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(125, 'Lebanon', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(126, 'Lesotho', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(127, 'Liberia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(128, 'Libyan Arab Jamahiriya', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(129, 'Liechtenstein', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(130, 'Lithuania', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(131, 'Luxembourg', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(132, 'Macao', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(133, 'Macedonia, the Former Yugoslav Republic of', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(134, 'Madagascar', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(135, 'Malawi', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(136, 'Malaysia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(137, 'Maldives', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(138, 'Mali', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(139, 'Malta', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(140, 'Marshall Islands', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(141, 'Martinique', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(142, 'Mauritania', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(143, 'Mauritius', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(144, 'Mayotte', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(145, 'Mexico', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(146, 'Micronesia, Federated States of', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(147, 'Moldova, Republic of', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(148, 'Monaco', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(149, 'Mongolia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(150, 'Montenegro', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(151, 'Montserrat', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(152, 'Morocco', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(153, 'Mozambique', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(154, 'Myanmar', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(155, 'Namibia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(156, 'Nauru', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(157, 'Nepal', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(158, 'Netherlands', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(159, 'Netherlands Antilles', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(160, 'New Caledonia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(161, 'New Zealand', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(162, 'Nicaragua', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(163, 'Niger', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(164, 'Nigeria', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(165, 'Niue', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(166, 'Norfolk Island', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(167, 'Northern Mariana Islands', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(168, 'Norway', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(169, 'Oman', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(170, 'Pakistan', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(171, 'Palau', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(172, 'Palestinian Territory, Occupied', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(173, 'Panama', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(174, 'Papua New Guinea', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(175, 'Paraguay', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(176, 'Peru', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(177, 'Philippines', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(178, 'Pitcairn', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(179, 'Poland', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(180, 'Portugal', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(181, 'Puerto Rico', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(182, 'Qatar', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(183, 'Reunion', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(184, 'Romania', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(185, 'Russian Federation', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(186, 'Rwanda', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(187, 'Saint Barthelemy', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(188, 'Saint Helena', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(189, 'Saint Kitts and Nevis', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(190, 'Saint Lucia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(191, 'Saint Martin', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(192, 'Saint Pierre and Miquelon', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(193, 'Saint Vincent and the Grenadines', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(194, 'Samoa', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(195, 'San Marino', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(196, 'Sao Tome and Principe', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(197, 'Saudi Arabia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(198, 'Senegal', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(199, 'Serbia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(200, 'Serbia and Montenegro', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(201, 'Seychelles', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(202, 'Sierra Leone', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(203, 'Singapore', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(204, 'St Martin', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(205, 'Slovakia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(206, 'Slovenia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(207, 'Solomon Islands', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(208, 'Somalia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(209, 'South Africa', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(210, 'South Georgia and the South Sandwich Islands', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(211, 'South Sudan', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(212, 'Spain', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(213, 'Sri Lanka', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(214, 'Sudan', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(215, 'Suriname', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(216, 'Svalbard and Jan Mayen', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(217, 'Swaziland', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(218, 'Sweden', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(219, 'Switzerland', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(220, 'Syrian Arab Republic', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(221, 'Taiwan, Province of China', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(222, 'Tajikistan', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(223, 'Tanzania, United Republic of', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(224, 'Thailand', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(225, 'Timor-Leste', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(226, 'Togo', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(227, 'Tokelau', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(228, 'Tonga', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(229, 'Trinidad and Tobago', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(230, 'Tunisia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(231, 'Turkey', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(232, 'Turkmenistan', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(233, 'Turks and Caicos Islands', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(234, 'Tuvalu', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(235, 'Uganda', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(236, 'Ukraine', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(237, 'United Arab Emirates', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(238, 'United Kingdom', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(239, 'United States', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(240, 'United States Minor Outlying Islands', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(241, 'Uruguay', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(242, 'Uzbekistan', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(243, 'Vanuatu', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(244, 'Venezuela', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(245, 'Viet Nam', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(246, 'Virgin Islands, British', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(247, 'Virgin Islands, U.s.', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(248, 'Wallis and Futuna', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(249, 'Western Sahara', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(250, 'Yemen', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(251, 'Zambia', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02'),
(252, 'Zimbabwe', '', '2024-06-25 11:32:02', '2024-06-25 11:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `par_dollar_rate` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country_name`, `currency_symbol`, `par_dollar_rate`, `created_at`, `updated_at`) VALUES
(1, 'incrementing', '$', 270.00, '2024-06-25 11:33:17', '2024-06-25 23:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
CREATE TABLE IF NOT EXISTS `districts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `bn_name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `division_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `bn_name`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 'Comilla', 'কুমিল্লা', 1, NULL, NULL),
(2, 'Feni', 'ফেনী', 1, NULL, NULL),
(3, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1, NULL, NULL),
(4, 'Rangamati', 'রাঙ্গামাটি', 1, NULL, NULL),
(5, 'Noakhali', 'নোয়াখালী', 1, NULL, NULL),
(6, 'Chandpur', 'চাঁদপুর', 1, NULL, NULL),
(7, 'Lakshmipur', 'লক্ষ্মীপুর', 1, NULL, NULL),
(8, 'Chattogram', 'চট্টগ্রাম', 1, NULL, NULL),
(9, 'Coxsbazar', 'কক্সবাজার', 1, NULL, NULL),
(10, 'Khagrachhari', 'খাগড়াছড়ি', 1, NULL, NULL),
(11, 'Bandarban', 'বান্দরবান', 1, NULL, NULL),
(12, 'Sirajganj', 'সিরাজগঞ্জ', 2, NULL, NULL),
(13, 'Pabna', 'পাবনা', 2, NULL, NULL),
(14, 'Bogura', 'বগুড়া', 2, NULL, NULL),
(15, 'Rajshahi', 'রাজশাহী', 2, NULL, NULL),
(16, 'Natore', 'নাটোর', 2, NULL, NULL),
(17, 'Joypurhat', 'জয়পুরহাট', 2, NULL, NULL),
(18, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', 2, NULL, NULL),
(19, 'Naogaon', 'নওগাঁ', 2, NULL, NULL),
(20, 'Jashore', 'যশোর', 3, NULL, NULL),
(21, 'Satkhira', 'সাতক্ষীরা', 3, NULL, NULL),
(22, 'Meherpur', 'মেহেরপুর', 3, NULL, NULL),
(23, 'Narail', 'নড়াইল', 3, NULL, NULL),
(24, 'Chuadanga', 'চুয়াডাঙ্গা', 3, NULL, NULL),
(25, 'Kushtia', 'কুষ্টিয়া', 3, NULL, NULL),
(26, 'Magura', 'মাগুরা', 3, NULL, NULL),
(27, 'Khulna', 'খুলনা', 3, NULL, NULL),
(28, 'Bagerhat', 'বাগেরহাট', 3, NULL, NULL),
(29, 'Jhenaidah', 'ঝিনাইদহ', 3, NULL, NULL),
(30, 'Jhalakathi', 'ঝালকাঠি', 4, NULL, NULL),
(31, 'Patuakhali', 'পটুয়াখালী', 4, NULL, NULL),
(32, 'Pirojpur', 'পিরোজপুর', 4, NULL, NULL),
(33, 'Barisal', 'বরিশাল', 4, NULL, NULL),
(34, 'Bhola', 'ভোলা', 4, NULL, NULL),
(35, 'Barguna', 'বরগুনা', 4, NULL, NULL),
(36, 'Sylhet', 'সিলেট', 5, NULL, NULL),
(37, 'Moulvibazar', 'মৌলভীবাজার', 5, NULL, NULL),
(38, 'Habiganj', 'হবিগঞ্জ', 5, NULL, NULL),
(39, 'Sunamganj', 'সুনামগঞ্জ', 5, NULL, NULL),
(40, 'Narsingdi', 'নরসিংদী', 6, NULL, NULL),
(41, 'Gazipur', 'গাজীপুর', 6, NULL, NULL),
(42, 'Shariatpur', 'শরীয়তপুর', 6, NULL, NULL),
(43, 'Narayanganj', 'নারায়ণগঞ্জ', 6, NULL, NULL),
(44, 'Tangail', 'টাঙ্গাইল', 6, NULL, NULL),
(45, 'Kishoreganj', 'কিশোরগঞ্জ', 6, NULL, NULL),
(46, 'Manikganj', 'মানিকগঞ্জ', 6, NULL, NULL),
(47, 'Dhaka', 'ঢাকা', 6, NULL, NULL),
(48, 'Munshiganj', 'মুন্সিগঞ্জ', 6, NULL, NULL),
(49, 'Rajbari', 'রাজবাড়ী', 6, NULL, NULL),
(50, 'Madaripur', 'মাদারীপুর', 6, NULL, NULL),
(51, 'Gopalganj', 'গোপালগঞ্জ', 6, NULL, NULL),
(52, 'Faridpur', 'ফরিদপুর', 6, NULL, NULL),
(53, 'Panchagarh', 'পঞ্চগড়', 7, NULL, NULL),
(54, 'Dinajpur', 'দিনাজপুর', 7, NULL, NULL),
(55, 'Lalmonirhat', 'লালমনিরহাট', 7, NULL, NULL),
(56, 'Nilphamari', 'নীলফামারী', 7, NULL, NULL),
(57, 'Gaibandha', 'গাইবান্ধা', 7, NULL, NULL),
(58, 'Thakurgaon', 'ঠাকুরগাঁও', 7, NULL, NULL),
(59, 'Rangpur', 'রংপুর', 7, NULL, NULL),
(60, 'Kurigram', 'কুড়িগ্রাম', 7, NULL, NULL),
(61, 'Sherpur', 'শেরপুর', 8, NULL, NULL),
(62, 'Mymensingh', 'ময়মনসিংহ', 8, NULL, NULL),
(63, 'Jamalpur', 'জামালপুর', 8, NULL, NULL),
(64, 'Netrokona', 'নেত্রকোণা', 8, NULL, NULL),
(65, 'Comilla', 'কুমিল্লা', 1, NULL, NULL),
(66, 'Feni', 'ফেনী', 1, NULL, NULL),
(67, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1, NULL, NULL),
(68, 'Rangamati', 'রাঙ্গামাটি', 1, NULL, NULL),
(69, 'Noakhali', 'নোয়াখালী', 1, NULL, NULL),
(70, 'Chandpur', 'চাঁদপুর', 1, NULL, NULL),
(71, 'Lakshmipur', 'লক্ষ্মীপুর', 1, NULL, NULL),
(72, 'Chattogram', 'চট্টগ্রাম', 1, NULL, NULL),
(73, 'Coxsbazar', 'কক্সবাজার', 1, NULL, NULL),
(74, 'Khagrachhari', 'খাগড়াছড়ি', 1, NULL, NULL),
(75, 'Bandarban', 'বান্দরবান', 1, NULL, NULL),
(76, 'Sirajganj', 'সিরাজগঞ্জ', 2, NULL, NULL),
(77, 'Pabna', 'পাবনা', 2, NULL, NULL),
(78, 'Bogura', 'বগুড়া', 2, NULL, NULL),
(79, 'Rajshahi', 'রাজশাহী', 2, NULL, NULL),
(80, 'Natore', 'নাটোর', 2, NULL, NULL),
(81, 'Joypurhat', 'জয়পুরহাট', 2, NULL, NULL),
(82, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', 2, NULL, NULL),
(83, 'Naogaon', 'নওগাঁ', 2, NULL, NULL),
(84, 'Jashore', 'যশোর', 3, NULL, NULL),
(85, 'Satkhira', 'সাতক্ষীরা', 3, NULL, NULL),
(86, 'Meherpur', 'মেহেরপুর', 3, NULL, NULL),
(87, 'Narail', 'নড়াইল', 3, NULL, NULL),
(88, 'Chuadanga', 'চুয়াডাঙ্গা', 3, NULL, NULL),
(89, 'Kushtia', 'কুষ্টিয়া', 3, NULL, NULL),
(90, 'Magura', 'মাগুরা', 3, NULL, NULL),
(91, 'Khulna', 'খুলনা', 3, NULL, NULL),
(92, 'Bagerhat', 'বাগেরহাট', 3, NULL, NULL),
(93, 'Jhenaidah', 'ঝিনাইদহ', 3, NULL, NULL),
(94, 'Jhalakathi', 'ঝালকাঠি', 4, NULL, NULL),
(95, 'Patuakhali', 'পটুয়াখালী', 4, NULL, NULL),
(96, 'Pirojpur', 'পিরোজপুর', 4, NULL, NULL),
(97, 'Barisal', 'বরিশাল', 4, NULL, NULL),
(98, 'Bhola', 'ভোলা', 4, NULL, NULL),
(99, 'Barguna', 'বরগুনা', 4, NULL, NULL),
(100, 'Sylhet', 'সিলেট', 5, NULL, NULL),
(101, 'Moulvibazar', 'মৌলভীবাজার', 5, NULL, NULL),
(102, 'Habiganj', 'হবিগঞ্জ', 5, NULL, NULL),
(103, 'Sunamganj', 'সুনামগঞ্জ', 5, NULL, NULL),
(104, 'Narsingdi', 'নরসিংদী', 6, NULL, NULL),
(105, 'Gazipur', 'গাজীপুর', 6, NULL, NULL),
(106, 'Shariatpur', 'শরীয়তপুর', 6, NULL, NULL),
(107, 'Narayanganj', 'নারায়ণগঞ্জ', 6, NULL, NULL),
(108, 'Tangail', 'টাঙ্গাইল', 6, NULL, NULL),
(109, 'Kishoreganj', 'কিশোরগঞ্জ', 6, NULL, NULL),
(110, 'Manikganj', 'মানিকগঞ্জ', 6, NULL, NULL),
(111, 'Dhaka', 'ঢাকা', 6, NULL, NULL),
(112, 'Munshiganj', 'মুন্সিগঞ্জ', 6, NULL, NULL),
(113, 'Rajbari', 'রাজবাড়ী', 6, NULL, NULL),
(114, 'Madaripur', 'মাদারীপুর', 6, NULL, NULL),
(115, 'Gopalganj', 'গোপালগঞ্জ', 6, NULL, NULL),
(116, 'Faridpur', 'ফরিদপুর', 6, NULL, NULL),
(117, 'Panchagarh', 'পঞ্চগড়', 7, NULL, NULL),
(118, 'Dinajpur', 'দিনাজপুর', 7, NULL, NULL),
(119, 'Lalmonirhat', 'লালমনিরহাট', 7, NULL, NULL),
(120, 'Nilphamari', 'নীলফামারী', 7, NULL, NULL),
(121, 'Gaibandha', 'গাইবান্ধা', 7, NULL, NULL),
(122, 'Thakurgaon', 'ঠাকুরগাঁও', 7, NULL, NULL),
(123, 'Rangpur', 'রংপুর', 7, NULL, NULL),
(124, 'Kurigram', 'কুড়িগ্রাম', 7, NULL, NULL),
(125, 'Sherpur', 'শেরপুর', 8, NULL, NULL),
(126, 'Mymensingh', 'ময়মনসিংহ', 8, NULL, NULL),
(127, 'Jamalpur', 'জামালপুর', 8, NULL, NULL),
(128, 'Netrokona', 'নেত্রকোণা', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

DROP TABLE IF EXISTS `divisions`;
CREATE TABLE IF NOT EXISTS `divisions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `bn_name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `country_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Chattagram', 'চট্টগ্রাম', 1, NULL, NULL),
(2, 'Rajshahi', 'রাজশাহী', 2, NULL, NULL),
(3, 'Khulna', 'খুলনা', 3, NULL, NULL),
(4, 'Barisal', 'বরিশাল', 4, NULL, NULL),
(5, 'Sylhet', 'সিলেট', 5, NULL, NULL),
(6, 'Dhaka', 'ঢাকা', 6, NULL, NULL),
(7, 'Rangpur', 'রংপুর', 7, NULL, NULL),
(8, 'Mymensingh', 'ময়মনসিংহ', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_customers`
--

DROP TABLE IF EXISTS `ecommerce_customers`;
CREATE TABLE IF NOT EXISTS `ecommerce_customers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone_one` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone_two` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `present_address` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `permanent_address` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_links`
--

DROP TABLE IF EXISTS `featured_links`;
CREATE TABLE IF NOT EXISTS `featured_links` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `is_active` tinyint NOT NULL DEFAULT '0' COMMENT '0=Inactive,1=Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language_settings`
--

DROP TABLE IF EXISTS `language_settings`;
CREATE TABLE IF NOT EXISTS `language_settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `default_language` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'en,bn',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(43, '2014_10_12_000000_create_users_table', 1),
(44, '2014_10_12_100000_create_password_resets_table', 1),
(45, '2019_08_19_000000_create_failed_jobs_table', 1),
(46, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(47, '2023_03_07_103006_create_products_table', 1),
(48, '2023_03_07_112721_create_product_images_table', 1),
(49, '2023_03_07_113649_create_product_categories_table', 1),
(50, '2023_03_07_113706_create_product_sub_categories_table', 1),
(51, '2023_03_07_114713_create_brands_table', 1),
(52, '2023_03_09_044658_create_add_to_cart_lists_table', 1),
(53, '2023_03_09_045844_create_offer_product_lists_table', 1),
(54, '2023_03_09_050819_create_purchase_product_lists_table', 1),
(55, '2023_03_09_050922_create_purchase_details_table', 1),
(56, '2023_03_09_051028_create_sells_table', 1),
(57, '2023_03_09_051047_create_sell_details_table', 1),
(58, '2023_03_09_051128_create_pos_customers_table', 1),
(59, '2023_03_09_051256_create_ecommerce_customers_table', 1),
(60, '2023_03_09_051732_create_money_transactions_table', 1),
(61, '2023_03_09_051802_create_bank_accounts_table', 1),
(62, '2023_03_09_051929_create_product_reviews_table', 1),
(63, '2023_03_09_051958_create_product_ratings_table', 1),
(64, '2023_03_09_052149_create_language_settings_table', 1),
(65, '2023_03_09_080451_create_online_payment_details_table', 1),
(66, '2023_03_13_104224_create_suppliers_table', 1),
(67, '2023_03_27_072418_create_offers_table', 1),
(68, '2023_04_26_163040_create_payment_infos_table', 1),
(69, '2023_05_03_154536_create_user_shipping_billing_addresses_table', 1),
(70, '2023_05_07_164705_create_sell_order_addresses_table', 1),
(71, '2023_05_11_133824_create_countries_states_cities_tables', 1),
(72, '2023_05_11_140623_create_districts_table', 1),
(73, '2023_05_11_141813_create_divisions_table', 1),
(74, '2023_05_11_154333_create_shipping_costs_table', 1),
(75, '2023_05_13_204528_create_currencies_table', 1),
(76, '2023_05_17_021050_create_wishlists_table', 1),
(77, '2023_05_22_004638_create_product_sizes_table', 1),
(78, '2023_05_28_124412_create_admins_table', 1),
(79, '2023_05_29_171404_create_roles_table', 1),
(80, '2023_06_03_205845_create_jobs_table', 1),
(81, '2023_06_11_182902_create_product_colors_table', 1),
(82, '2023_06_13_163146_create_featured_links_table', 1),
(83, '2023_06_21_144239_create_faqs_table', 1),
(84, '2023_06_21_164507_create_ads_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `money_transactions`
--

DROP TABLE IF EXISTS `money_transactions`;
CREATE TABLE IF NOT EXISTS `money_transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `transaction_type` tinyint NOT NULL COMMENT 'in, out',
  `purchase_id` bigint DEFAULT NULL,
  `sell_id` bigint DEFAULT NULL,
  `expense_id` bigint DEFAULT NULL,
  `total_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `bank_id` bigint DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `is_invest` tinyint NOT NULL DEFAULT '0' COMMENT '1=yes,0=no',
  `date` date NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
CREATE TABLE IF NOT EXISTS `offers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `offer_name` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `banner_image` text COLLATE utf8mb3_unicode_ci,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `note` text COLLATE utf8mb3_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `offer_name`, `banner_image`, `start_date`, `end_date`, `note`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 'Armand Deleon', 'storage/banner_images/banner_images-17193663926043.png', '2024-06-26', '2024-06-28', NULL, 1, '2024-06-25 23:46:33', NULL, '2024-06-25 23:46:33', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offer_product_lists`
--

DROP TABLE IF EXISTS `offer_product_lists`;
CREATE TABLE IF NOT EXISTS `offer_product_lists` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `offer_id` bigint NOT NULL,
  `max_quantity` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total_sell_quantity` decimal(11,2) DEFAULT NULL,
  `offer_type` tinyint NOT NULL COMMENT '0=fixed,1=percentage',
  `offer_amount` decimal(11,2) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `online_payment_details`
--

DROP TABLE IF EXISTS `online_payment_details`;
CREATE TABLE IF NOT EXISTS `online_payment_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sell_id` bigint NOT NULL,
  `total_amount` decimal(11,3) NOT NULL,
  `pay_with` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_infos`
--

DROP TABLE IF EXISTS `payment_infos`;
CREATE TABLE IF NOT EXISTS `payment_infos` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `sell_id` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `total_paid` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tnx_id` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `card_brand` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `card_last_digit` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `payment_inv_link` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb3_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'main', '6f598146a1d0391392dc735e21ad3a94e4e31c0980dfc9878fa2c0c939a850fc', '[\"*\"]', '2024-06-25 12:23:50', NULL, '2024-06-25 11:39:48', '2024-06-25 12:23:50'),
(2, 'App\\Models\\User', 2, 'main', '9efd793ce6ab44bd5c544710420980f294ee29ea2635b6652ba84d3c815a2024', '[\"*\"]', '2024-06-26 02:36:13', NULL, '2024-06-25 23:48:28', '2024-06-26 02:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `pos_customers`
--

DROP TABLE IF EXISTS `pos_customers`;
CREATE TABLE IF NOT EXISTS `pos_customers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `available_balance` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `category_id` bigint NOT NULL,
  `subcategory_id` bigint DEFAULT NULL,
  `image_path` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `brand_id` bigint DEFAULT '0',
  `supplier_id` bigint DEFAULT NULL,
  `current_purchase_cost` decimal(11,3) NOT NULL,
  `current_sale_price` decimal(11,3) DEFAULT NULL,
  `previous_purchase_cost` decimal(11,3) DEFAULT NULL,
  `current_wholesale_price` decimal(11,3) DEFAULT NULL,
  `wholesale_minimum_qty` decimal(11,3) DEFAULT '1.000',
  `previous_wholesale_price` decimal(11,3) DEFAULT NULL,
  `previous_sale_price` decimal(11,3) DEFAULT NULL,
  `available_quantity` decimal(11,3) NOT NULL DEFAULT '0.000',
  `discount_type` tinyint DEFAULT '0' COMMENT 'fixed=0,percentage=1',
  `discount` decimal(11,2) DEFAULT '0.00',
  `unit_type` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'kg,gm,li',
  `description` text COLLATE utf8mb3_unicode_ci,
  `is_popular` tinyint DEFAULT NULL COMMENT '0=no,1=yes',
  `is_trending` tinyint DEFAULT NULL COMMENT '0=no,1=yes',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `subcategory_id`, `image_path`, `code`, `color`, `size`, `brand_id`, `supplier_id`, `current_purchase_cost`, `current_sale_price`, `previous_purchase_cost`, `current_wholesale_price`, `wholesale_minimum_qty`, `previous_wholesale_price`, `previous_sale_price`, `available_quantity`, `discount_type`, `discount`, `unit_type`, `description`, `is_popular`, `is_trending`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 'Celeste', 1, 1, 'storage/product_images/product_images-17193226995065.png', '1001', 'Yellow', 'Medium,Extra Large', 1, 1, 1000.000, 1100.000, NULL, 1050.000, 10.000, NULL, NULL, -94.000, 1, 10.00, NULL, 'sjflsdhfh aghsi ghsui ghsapu', 1, 1, 1, '2024-06-25 11:38:19', NULL, '2024-06-26 02:25:54', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `is_popular` tinyint NOT NULL DEFAULT '0' COMMENT '0=not popular,1=popular',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `image`, `note`, `status`, `is_popular`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 'Tallulah Goff', 'storage/category_icons/category_icons-17193225007602.png', 'Eu nemo repellendus', 1, 0, '2024-06-25 11:35:00', NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

DROP TABLE IF EXISTS `product_colors`;
CREATE TABLE IF NOT EXISTS `product_colors` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `color_code` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_colors_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `name`, `color_code`, `created_at`, `updated_at`) VALUES
(1, 'Red', '#FF0000', NULL, NULL),
(2, 'Blue', '#0000FF', NULL, NULL),
(3, 'Green', '#00FF00', NULL, NULL),
(4, 'Yellow', '#FFFF00', NULL, NULL),
(5, 'Black', '#000000', NULL, NULL),
(6, 'White', '#FFFFFF', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT 'active=1,inactive=0',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT 'not delete=0,deleted=1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_ratings`
--

DROP TABLE IF EXISTS `product_ratings`;
CREATE TABLE IF NOT EXISTS `product_ratings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint NOT NULL,
  `rating_amount` bigint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

DROP TABLE IF EXISTS `product_reviews`;
CREATE TABLE IF NOT EXISTS `product_reviews` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `product_review_details` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

DROP TABLE IF EXISTS `product_sizes`;
CREATE TABLE IF NOT EXISTS `product_sizes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `size` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `size`, `created_at`, `updated_at`) VALUES
(1, 'Small', NULL, NULL),
(2, 'Medium', NULL, NULL),
(3, 'Large', NULL, NULL),
(4, 'Extra Large', NULL, NULL),
(5, 'XXL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_categories`
--

DROP TABLE IF EXISTS `product_sub_categories`;
CREATE TABLE IF NOT EXISTS `product_sub_categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `category_id` bigint NOT NULL,
  `image` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `product_sub_categories`
--

INSERT INTO `product_sub_categories` (`id`, `name`, `category_id`, `image`, `note`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 'McKenzie Schneider', 1, NULL, 'qwertyuiop qwertyuio sdfghjk', 1, '2024-06-25 11:35:49', NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_details`
--

DROP TABLE IF EXISTS `purchase_details`;
CREATE TABLE IF NOT EXISTS `purchase_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `purchase_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `unit_cost` bigint NOT NULL,
  `total_qty` decimal(11,3) NOT NULL,
  `total_cost` decimal(11,3) NOT NULL,
  `total_vat` decimal(11,2) DEFAULT '0.00',
  `total_discount` decimal(8,2) DEFAULT '0.00',
  `purchase_payable_amount` decimal(11,2) NOT NULL DEFAULT '0.00',
  `date` date NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `purchase_details`
--

INSERT INTO `purchase_details` (`id`, `purchase_id`, `product_id`, `unit_cost`, `total_qty`, `total_cost`, `total_vat`, `total_discount`, `purchase_payable_amount`, `date`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 1, 1, 1020, 100.000, 102000.000, 0.00, 0.00, 102000.00, '2024-06-25', 1, '2024-06-25 11:39:20', NULL, '2024-06-25 11:39:20', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product_lists`
--

DROP TABLE IF EXISTS `purchase_product_lists`;
CREATE TABLE IF NOT EXISTS `purchase_product_lists` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `total_cost` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `total_vat` decimal(11,3) DEFAULT NULL,
  `total_discount` decimal(11,3) DEFAULT NULL,
  `purchase_code` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `total_payable_amount` decimal(11,3) NOT NULL,
  `total_paid` decimal(11,3) NOT NULL,
  `total_due` decimal(11,3) NOT NULL,
  `supplier_id` bigint NOT NULL,
  `date` timestamp NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `purchase_product_lists`
--

INSERT INTO `purchase_product_lists` (`id`, `total_cost`, `total_vat`, `total_discount`, `purchase_code`, `total_payable_amount`, `total_paid`, `total_due`, `supplier_id`, `date`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, '86700', 0.000, NULL, '1001', 86700.000, 86700.000, 0.000, 1, '2024-06-25 11:39:20', 1, '2024-06-25 11:39:20', NULL, '2024-06-25 11:39:20', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `access_role_list` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sells`
--

DROP TABLE IF EXISTS `sells`;
CREATE TABLE IF NOT EXISTS `sells` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sell_type` tinyint NOT NULL COMMENT 'pos_sell=1,ecommerce_sell=2',
  `sell_by` tinyint DEFAULT NULL,
  `bank_id` bigint DEFAULT NULL,
  `total_vat_amount` decimal(11,3) NOT NULL DEFAULT '0.000',
  `shipping_cost` decimal(11,3) NOT NULL DEFAULT '0.000',
  `total_discount` decimal(11,3) NOT NULL DEFAULT '0.000',
  `total_payable_amount` decimal(11,3) NOT NULL,
  `total_paid` decimal(11,2) NOT NULL,
  `total_due` decimal(11,2) NOT NULL,
  `payment_type` tinyint DEFAULT '0' COMMENT '0=>cash_on_hand,1=>online_pay',
  `order_status` tinyint DEFAULT NULL COMMENT '0=pending,1=processing,2=on_the_way 3=cancel_request,4=cancel_accepted,5=cancel_order_process_completed,6=order completed',
  `date` timestamp NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0=uncompleted,1=completed',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sells`
--

INSERT INTO `sells` (`id`, `customer_id`, `invoice_id`, `sell_type`, `sell_by`, `bank_id`, `total_vat_amount`, `shipping_cost`, `total_discount`, `total_payable_amount`, `total_paid`, `total_due`, `payment_type`, `order_status`, `date`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, '2', '1001', 2, 1, 1, 0.000, 25.000, 330.000, 2995.000, 0.00, 2995.00, 0, 4, '2024-06-26 02:25:54', 0, '2024-06-26 02:25:54', NULL, '2024-06-26 02:27:38', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sell_details`
--

DROP TABLE IF EXISTS `sell_details`;
CREATE TABLE IF NOT EXISTS `sell_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `sell_id` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `unit_product_cost` decimal(8,2) DEFAULT NULL,
  `unit_sell_price` decimal(8,2) NOT NULL,
  `unit_vat` decimal(8,2) DEFAULT '0.00',
  `sale_quantity` decimal(11,2) NOT NULL,
  `total_discount` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total_payable_amount` decimal(11,2) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sell_details`
--

INSERT INTO `sell_details` (`id`, `product_id`, `sell_id`, `unit_product_cost`, `unit_sell_price`, `unit_vat`, `sale_quantity`, `total_discount`, `total_payable_amount`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, '1', '1', 1000.00, 1100.00, 0.00, 3.00, 330.00, 2970.00, 1, '2024-06-26 02:25:54', NULL, '2024-06-26 02:25:54', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sell_order_addresses`
--

DROP TABLE IF EXISTS `sell_order_addresses`;
CREATE TABLE IF NOT EXISTS `sell_order_addresses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `sell_id` bigint NOT NULL,
  `email` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `shipping_division` bigint NOT NULL,
  `shipping_district` bigint NOT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_first_name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_division` bigint DEFAULT NULL,
  `billing_district` bigint DEFAULT NULL,
  `billing_last_name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_email` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_address` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_country` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_state` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sell_order_addresses`
--

INSERT INTO `sell_order_addresses` (`id`, `user_id`, `sell_id`, `email`, `name`, `shipping_phone`, `shipping_address`, `shipping_division`, `shipping_district`, `shipping_city`, `shipping_country`, `shipping_zip`, `shipping_state`, `billing_first_name`, `billing_division`, `billing_district`, `billing_last_name`, `billing_email`, `billing_phone`, `billing_address`, `billing_city`, `billing_country`, `billing_zip`, `billing_state`, `note`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'shanalvi120@gmail.com', 'Zeeshan Alvi', '03204069243', '22 B Al hamad Park', 1, 1, 'null', 'Pakistan', '4786', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-26 02:25:54', '2024-06-26 02:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_costs`
--

DROP TABLE IF EXISTS `shipping_costs`;
CREATE TABLE IF NOT EXISTS `shipping_costs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `division_id` bigint NOT NULL,
  `district_id` bigint NOT NULL,
  `inside_price` decimal(8,2) DEFAULT '0.00',
  `outside_price` decimal(8,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `shipping_costs`
--

INSERT INTO `shipping_costs` (`id`, `division_id`, `district_id`, `inside_price`, `outside_price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 25.00, 100.00, '2024-06-25 13:57:47', '2024-06-25 23:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `country_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `supplier_phone_one` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `supplier_phone_two` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `supplier_address` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_email` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `company_phone` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `supplier_email` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `previous_due` decimal(11,3) DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `image`, `supplier_phone_one`, `supplier_phone_two`, `company_name`, `company_address`, `supplier_address`, `company_email`, `company_phone`, `supplier_email`, `previous_due`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 'guhib', NULL, '12345670', '34567890', 'Olson and Rogers Associates', 'Occaecat vitae esse', 'Laborum sunt ea sed', 'qatohymi@mailinator.com', 'Farrell Manning Inc', 'sixo@mailinator.com', 99.000, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `roll_type` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0=inactive,1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=deleted',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `roll_type`, `address`, `photo`, `password`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted`, `deleted_at`, `deleted_by`) VALUES
(1, 'Unde consectetur ve', '', 'robygefe@mailinator.com', '', '', NULL, '$2y$10$VcnUJkicAAG5ICCQzb6qD.MKS7Qoqg4Q47zIGdfLnVVE7jNSbKC7O', 1, '2024-06-25 11:39:48', NULL, '2024-06-25 11:39:48', NULL, 0, NULL, NULL),
(2, 'Necessitatibus culpa', '', 'tero@mailinator.com', '', '', NULL, '$2y$10$9rkwZhIZtXb2TS1rOTzwuukGOaSOvHX.fObvsy8MWCtienpGa9qaS', 1, '2024-06-25 23:48:28', NULL, '2024-06-25 23:48:28', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_shipping_billing_addresses`
--

DROP TABLE IF EXISTS `user_shipping_billing_addresses`;
CREATE TABLE IF NOT EXISTS `user_shipping_billing_addresses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `email` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `shipping_division` bigint DEFAULT NULL,
  `shipping_district` bigint DEFAULT NULL,
  `billing_division` bigint DEFAULT NULL,
  `billing_district` bigint DEFAULT NULL,
  `billing_first_name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_last_name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_email` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_address` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_country` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `billing_state` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `user_shipping_billing_addresses`
--

INSERT INTO `user_shipping_billing_addresses` (`id`, `user_id`, `email`, `first_name`, `last_name`, `shipping_phone`, `shipping_address`, `shipping_country`, `shipping_zip`, `shipping_state`, `shipping_city`, `shipping_division`, `shipping_district`, `billing_division`, `billing_district`, `billing_first_name`, `billing_last_name`, `billing_email`, `billing_phone`, `billing_address`, `billing_city`, `billing_country`, `billing_zip`, `billing_state`, `note`, `created_at`, `updated_at`) VALUES
(1, 2, 'dyjyg@mailinator.com', 'dujo@mailinator.com', 'Paloma', 'Joy', 'jovat@mailinator.com', 'Cambodia', 'Dennis', NULL, NULL, NULL, NULL, NULL, NULL, 'walywuv@mailinator.com', 'Walter', 'Hermione', 'Adrienne', 'Armand', NULL, 'Lao People\'s Democratic Republic', 'Jacob', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
