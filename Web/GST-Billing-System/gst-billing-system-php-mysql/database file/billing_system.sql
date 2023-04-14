-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 04:03 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `billing_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `billing_items`
--

CREATE TABLE `billing_items` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `billing_items`
--

INSERT INTO `billing_items` (`id`, `name`, `price`, `category_id`, `status`) VALUES
(2, 'Tea', '15.00', 1, 'Enable'),
(3, 'Coffee', '50.00', 3, 'Enable'),
(4, 'Ponds Cream', '27.00', 0, 'Enable'),
(5, 'Parle G Biscuits', '10.00', 0, 'Enable'),
(6, 'sdsdfsd', '789.00', 0, 'Enable'),
(7, 'Ice Cream', '50.00', 0, 'Enable'),
(8, 'protein shake', '4.99', 0, 'Enable'),
(9, 'Biscuit', '100.00', 0, 'Enable'),
(10, 'test9', '100.00', 0, 'Enable'),
(11, 'Bourn vita', '150.00', 0, 'Enable'),
(14, 'Ice cream', '25.00', 0, 'Enable'),
(15, 'Ice', '56.00', 0, 'Enable'),
(16, 'Coca Cola', '100.00', 0, 'Enable'),
(17, 'Ghj', '0.00', 0, 'Disable'),
(18, 'Choco', '50.00', 0, 'Enable'),
(19, 'abc', '100.00', 0, 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `billing_order`
--

CREATE TABLE `billing_order` (
  `id` int(11) NOT NULL,
  `gross_amount` decimal(12,2) NOT NULL,
  `tax_amount` decimal(12,2) NOT NULL,
  `net_amount` decimal(12,2) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `status` enum('In Process','Paid') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'In Process'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `billing_order`
--

INSERT INTO `billing_order` (`id`, `gross_amount`, `tax_amount`, `net_amount`, `created`, `created_by`, `status`) VALUES
(1001, '27.00', '3.51', '30.51', '2020-12-31 21:39:00', 1, 'In Process'),
(1005, '36.00', '4.68', '40.68', '2021-02-06 22:09:32', 2, 'In Process'),
(1007, '36.00', '4.68', '40.68', '2020-12-31 21:40:09', 1, 'In Process'),
(1012, '12.00', '1.56', '13.56', '2021-02-07 10:16:33', 1, 'Paid'),
(1013, '100.00', '13.00', '113.00', '2021-02-07 10:17:31', 1, 'Paid'),
(1014, '22.00', '2.86', '24.86', '2021-02-19 06:46:13', 1, 'In Process'),
(1015, '48.00', '6.24', '54.24', '2021-02-19 06:45:12', 2, 'Paid'),
(1016, '36.00', '4.68', '40.68', '2021-05-21 06:50:21', 2, 'In Process'),
(1017, '156.00', '20.28', '176.28', '2021-02-26 14:21:43', 1, 'In Process'),
(1018, '24.00', '3.12', '27.12', '2021-03-05 14:32:11', 1, 'In Process'),
(1019, '64.00', '8.32', '72.32', '2021-04-05 09:13:21', 1, 'In Process'),
(1020, '30.00', '3.90', '33.90', '2021-04-09 23:27:35', 1, 'Paid'),
(1021, '105.00', '13.65', '118.65', '2021-04-09 23:29:24', 1, 'Paid'),
(1022, '30.00', '3.90', '33.90', '2021-04-18 04:21:51', 1, 'Paid'),
(1023, '57.00', '7.41', '64.41', '2021-04-19 09:39:36', 1, 'Paid'),
(1024, '45.00', '5.85', '50.85', '2021-05-11 17:20:26', 6, 'In Process'),
(1025, '15.00', '1.95', '16.95', '2021-05-19 03:52:28', 1, 'In Process'),
(1026, '30.00', '3.90', '33.90', '2021-05-19 12:06:25', 1, 'Paid'),
(1027, '240.00', '31.20', '271.20', '2021-05-29 03:05:12', 1, 'In Process'),
(1028, '54.00', '7.02', '61.02', '2021-05-29 20:16:01', 2, 'Paid'),
(1029, '60.00', '7.80', '67.80', '2021-07-02 05:22:11', 2, 'Paid'),
(1030, '69.00', '8.97', '77.97', '2021-06-03 04:47:44', 1, 'Paid'),
(1031, '30.00', '3.90', '33.90', '2021-06-05 03:22:52', 1, 'Paid'),
(1032, '61.00', '7.93', '68.93', '2021-06-11 06:39:12', 1, 'Paid'),
(1033, '10.00', '3.90', '33.90', '2021-06-11 14:58:46', 1, 'Paid'),
(1034, '1500.00', '195.00', '1695.00', '2021-06-13 06:37:14', 5, 'In Process'),
(1035, '207.00', '26.91', '233.91', '2021-06-17 02:03:40', 1, 'Paid'),
(1036, '819.00', '106.47', '925.47', '2021-06-19 02:04:53', 1, 'Paid'),
(1037, '114.00', '14.82', '128.82', '2021-06-22 02:44:23', 3, 'Paid'),
(1038, '85.00', '11.05', '96.05', '2021-06-23 02:03:59', 1, 'Paid'),
(1039, '54.00', '7.02', '61.02', '2021-06-26 01:13:29', 1, 'Paid'),
(1040, '141.00', '18.33', '159.33', '2021-06-26 01:12:53', 1, 'In Process'),
(1041, '24.00', '3.12', '27.12', '2021-07-02 05:29:21', 1, 'Paid'),
(1042, '280.00', '50.40', '330.40', '2021-07-07 02:04:31', 1, 'Paid'),
(1043, '858.00', '111.97', '969.97', '2021-07-03 07:15:31', 1, 'Paid'),
(1044, '24.00', '3.13', '27.13', '2021-07-03 20:30:17', 1, 'Paid'),
(1045, '84.00', '15.12', '99.12', '2021-07-09 07:23:33', 1, 'Paid'),
(1046, '100.00', '18.00', '118.00', '2021-07-04 01:41:56', 1, 'Paid'),
(1047, '1230.00', '221.40', '1451.40', '2021-07-05 09:10:45', 2, 'Paid'),
(1048, '27.00', '4.86', '31.86', '2021-07-07 02:03:27', 1, 'In Process'),
(1049, '612.00', '110.16', '722.16', '2021-07-09 07:25:20', 1, 'In Process'),
(1050, '144.00', '25.92', '169.92', '2021-07-11 04:25:33', 1, 'In Process'),
(1051, '115.00', '20.70', '135.70', '2021-07-11 23:26:50', 1, 'Paid'),
(1052, '357.00', '64.26', '421.26', '2021-07-20 09:56:47', 2, 'In Process'),
(1053, '105.00', '18.90', '123.90', '2021-11-12 22:53:53', 2, 'Paid'),
(1054, '118.00', '21.24', '139.24', '2021-07-20 09:56:21', 2, 'Paid'),
(1055, '61.00', '10.98', '71.98', '2021-07-20 09:57:21', 1, 'Paid'),
(1056, '30.00', '5.40', '35.40', '2021-07-21 08:23:50', 1, 'In Process'),
(1057, '15.00', '2.70', '17.70', '2021-07-24 01:17:54', 1, 'Paid'),
(1058, '23.00', '4.14', '27.14', '2021-07-25 08:33:40', 1, 'In Process'),
(1059, '120.00', '21.60', '141.60', '2021-07-26 08:24:23', 1, 'Paid'),
(1060, '15.00', '2.70', '17.70', '2021-07-26 08:51:59', 1, 'Paid'),
(1061, '824.00', '148.32', '972.32', '2021-07-29 07:57:21', 2, 'In Process'),
(1062, '51.00', '9.18', '60.18', '2021-07-30 02:35:28', 1, 'Paid'),
(1063, '15.00', '2.70', '17.70', '2021-07-30 07:57:12', 1, 'In Process'),
(1064, '750.00', '0.00', '0.00', '2021-08-09 22:25:46', 3, 'Paid'),
(1065, '30.00', '0.00', '0.00', '2021-08-04 02:12:59', 1, 'Paid'),
(1066, '143.00', '0.00', '0.00', '2021-08-04 02:13:45', 1, 'Paid'),
(1067, '20.00', '0.00', '0.00', '2021-08-11 06:39:36', 1, 'Paid'),
(1068, '95.00', '0.00', '0.00', '2021-08-07 21:24:43', 1, 'In Process'),
(1069, '534.00', '0.00', '0.00', '2021-08-09 22:23:23', 1, 'Paid'),
(1070, '25.00', '0.00', '0.00', '2021-08-09 23:29:21', 1, 'In Process'),
(1071, '30.00', '4.20', '34.20', '2021-08-10 03:43:26', 2, 'In Process'),
(1072, '40.00', '7.20', '47.20', '2021-08-18 04:48:48', 4, 'Paid'),
(1073, '210.00', '37.80', '247.80', '2021-10-23 08:45:29', 1, 'Paid'),
(1074, '1000.00', '180.00', '1180.00', '2021-08-18 04:52:16', 1, 'In Process'),
(1075, '150.00', '42.00', '192.00', '2021-08-18 04:53:53', 3, 'Paid'),
(1076, '115.00', '20.70', '135.70', '2021-08-22 11:16:55', 4, 'Paid'),
(1077, '520.00', '93.60', '613.60', '2021-09-01 01:33:32', 2, 'Paid'),
(1078, '50.00', '0.00', '0.00', '2021-08-22 01:17:40', 4, 'In Process'),
(1079, '27.00', '0.00', '0.00', '2021-08-22 01:18:07', 4, 'Paid'),
(1080, '50.00', '9.00', '59.00', '2021-08-22 12:40:08', 1, 'In Process'),
(1081, '530.00', '0.00', '0.00', '2021-08-23 06:21:33', 1, 'Paid'),
(1082, '605.00', '108.90', '713.90', '2021-08-23 06:28:58', 6, 'Paid'),
(1083, '150.00', '27.00', '177.00', '2021-08-26 14:44:48', 1, 'Paid'),
(1084, '25.00', '4.50', '29.50', '2021-08-29 07:01:32', 1, 'Paid'),
(1085, '20.00', '2.70', '17.70', '2021-09-01 19:36:09', 1, 'Paid'),
(1086, '270.00', '48.60', '318.60', '2021-09-25 07:18:47', 1, 'In Process'),
(1087, '60.00', '10.80', '70.80', '2021-09-14 06:17:41', 2, 'In Process'),
(1088, '35.00', '6.30', '41.30', '2021-09-08 09:36:13', 1, 'Paid'),
(1089, '105.00', '18.90', '123.90', '2021-09-08 12:23:55', 1, 'Paid'),
(1090, '77.00', '13.86', '90.86', '2021-09-09 03:25:58', 1, 'Paid'),
(1091, '849.00', '152.82', '1001.82', '2021-09-10 04:00:17', 1, 'Paid'),
(1092, '15.00', '2.70', '17.70', '2021-09-10 15:40:03', 1, 'In Process'),
(1093, '219.00', '39.42', '258.42', '2021-09-17 22:05:02', 1, 'Paid'),
(1094, '13.00', '2.34', '15.34', '2021-09-17 12:30:38', 1, 'Paid'),
(1095, '1998.00', '359.64', '2357.64', '2021-10-02 13:43:53', 1, 'Paid'),
(1096, '15000.00', '2700.00', '17700.00', '2021-09-26 09:00:14', 1, 'Paid'),
(1097, '30.00', '5.40', '35.40', '2021-09-27 00:02:08', 1, 'In Process'),
(1098, '89.00', '16.02', '105.02', '2021-09-28 00:24:04', 1, 'In Process'),
(1099, '92.00', '16.56', '108.56', '2021-09-30 12:09:18', 1, 'Paid'),
(1100, '327.00', '58.86', '385.86', '2021-10-02 03:17:53', 1, 'Paid'),
(1101, '60.00', '10.80', '70.80', '2021-10-02 13:43:42', 1, 'Paid'),
(1102, '889.00', '160.02', '1049.02', '2021-10-03 15:22:57', 1, 'In Process'),
(1103, '196.00', '35.28', '231.28', '2021-10-17 03:30:54', 1, 'In Process'),
(1104, '127.00', '22.86', '149.86', '2021-10-04 22:04:03', 1, 'Paid'),
(1105, '275.00', '49.50', '324.50', '2021-10-05 04:21:41', 1, 'Paid'),
(1106, '84.00', '15.12', '99.12', '2021-10-09 04:58:35', 1, 'Paid'),
(1107, '210.00', '37.80', '247.80', '2021-10-11 21:54:04', 1, 'Paid'),
(1108, '650.00', '117.00', '767.00', '2021-10-12 03:58:19', 1, 'Paid'),
(1109, '234.00', '42.12', '276.12', '2021-10-12 04:55:46', 2, 'In Process'),
(1110, '417.00', '75.06', '492.06', '2021-10-13 08:10:24', 2, 'In Process'),
(1111, '127.00', '22.86', '149.86', '2021-10-15 07:18:21', 1, 'In Process'),
(1112, '92.00', '16.56', '108.56', '2021-10-17 23:26:27', 1, 'In Process'),
(1113, '440.00', '79.20', '519.20', '2021-10-24 02:35:05', 2, 'Paid'),
(1114, '861.00', '154.98', '1015.98', '2021-10-23 07:47:48', 1, 'In Process'),
(1115, '70.00', '12.60', '82.60', '2021-10-23 08:46:00', 1, 'In Process'),
(1116, '150.00', '27.00', '177.00', '2021-10-24 23:25:36', 1, 'In Process'),
(1117, '216.00', '38.88', '254.88', '2021-11-15 19:55:44', 2, 'In Process'),
(1118, '2000.00', '360.00', '2360.00', '2021-10-28 05:04:15', 1, 'In Process'),
(1119, '15.00', '2.70', '17.70', '2021-10-29 11:07:23', 1, 'In Process'),
(1120, '530.00', '190.80', '720.80', '2021-10-30 02:52:15', 1, 'Paid'),
(1121, '118.00', '21.24', '139.24', '2021-10-30 16:03:30', 1, 'Paid'),
(1122, '1535.00', '276.30', '1811.30', '2021-11-01 12:28:53', 1, 'Paid'),
(1123, '839.00', '151.02', '990.02', '2021-11-03 08:24:01', 1, 'Paid'),
(1124, '65.00', '11.70', '76.70', '2021-11-04 13:26:07', 1, 'Paid'),
(1125, '38.00', '6.84', '44.84', '2021-11-10 23:56:40', 1, 'Paid'),
(1126, '30.00', '5.40', '35.40', '2021-11-12 02:06:24', 1, 'Paid'),
(1127, '87.00', '15.66', '102.66', '2021-11-12 22:58:54', 1, 'Paid'),
(1128, '190.00', '34.20', '224.20', '2021-11-14 09:05:19', 1, 'Paid'),
(1129, '177.00', '31.86', '208.86', '2021-11-15 20:33:50', 0, 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `billing_order_item`
--

CREATE TABLE `billing_order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL,
  `rate` decimal(12,2) NOT NULL,
  `amount` decimal(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `billing_order_item`
--

INSERT INTO `billing_order_item` (`id`, `order_id`, `item_id`, `quantity`, `rate`, `amount`) VALUES
(3, 1005, 1, 1, '12.00', '12.00'),
(10, 1001, 1, 1, '12.00', '12.00'),
(11, 1001, 2, 1, '15.00', '15.00'),
(12, 1007, 1, 1, '12.00', '12.00'),
(13, 1007, 3, 1, '24.00', '24.00'),
(17, 1012, 1, 1, '120.00', '12.00'),
(18, 1013, 1, 2, '12.00', '24.00'),
(19, 1013, 2, 1, '15.00', '15.00'),
(20, 1013, 3, 1, '24.00', '24.00'),
(21, 1013, 4, 1, '27.00', '27.00'),
(22, 1013, 5, 1, '10.00', '10.00'),
(28, 1015, 3, 1, '24.00', '24.00'),
(29, 1015, 0, 1, '24.00', '24.00'),
(30, 1014, 5, 1, '10.00', '10.00'),
(31, 1014, 1, 1, '12.00', '12.00'),
(38, 1017, 1, 5, '18.00', '90.00'),
(39, 1017, 2, 1, '15.00', '15.00'),
(40, 1017, 3, 1, '24.00', '24.00'),
(41, 1017, 4, 1, '27.00', '27.00'),
(42, 1018, 3, 1, '24.00', '24.00'),
(43, 1019, 1, 1, '30.00', '30.00'),
(44, 1019, 3, 1, '24.00', '24.00'),
(45, 1019, 5, 1, '10.00', '10.00'),
(46, 1020, 1, 1, '30.00', '30.00'),
(48, 1021, 2, 7, '15.00', '105.00'),
(49, 1022, 1, 1, '30.00', '30.00'),
(50, 1023, 4, 1, '27.00', '27.00'),
(51, 1023, 1, 1, '30.00', '30.00'),
(53, 1024, 2, 1, '15.00', '15.00'),
(54, 1024, 2, 1, '15.00', '15.00'),
(55, 1024, 2, 1, '15.00', '15.00'),
(56, 1024, 0, 0, '0.00', '0.00'),
(60, 1025, 2, 1, '15.00', '15.00'),
(62, 1026, 1, 1, '30.00', '30.00'),
(63, 1016, 1, 1, '12.00', '12.00'),
(64, 1016, 0, 1, '24.00', '24.00'),
(66, 1027, 1, 8, '30.00', '240.00'),
(69, 1028, 1, 1, '30.00', '30.00'),
(70, 1028, 3, 1, '24.00', '24.00'),
(76, 1030, 1, 1, '30.00', '30.00'),
(77, 1030, 2, 1, '15.00', '15.00'),
(78, 1030, 3, 1, '24.00', '24.00'),
(79, 1031, 1, 1, '30.00', '30.00'),
(80, 1031, 0, 0, '0.00', '0.00'),
(82, 1032, 4, 1, '27.00', '27.00'),
(83, 1032, 3, 1, '24.00', '24.00'),
(84, 1032, 5, 1, '10.00', '10.00'),
(85, 1033, 1, 1, '30.00', '30.00'),
(86, 1034, 2, 100, '15.00', '1500.00'),
(99, 1035, 1, 4, '30.00', '120.00'),
(100, 1035, 0, 2, '30.00', '60.00'),
(101, 1035, 0, 1, '27.00', '27.00'),
(102, 1036, 6, 1, '789.00', '789.00'),
(103, 1036, 1, 1, '30.00', '30.00'),
(104, 1036, 0, 0, '0.00', '0.00'),
(107, 1037, 3, 1, '24.00', '24.00'),
(108, 1037, 1, 3, '30.00', '90.00'),
(114, 1038, 2, 1, '10.00', '10.00'),
(115, 1038, 0, 2, '24.00', '48.00'),
(116, 1038, 0, 1, '27.00', '27.00'),
(122, 1040, 3, 1, '24.00', '24.00'),
(123, 1040, 1, 1, '30.00', '30.00'),
(124, 1040, 4, 1, '27.00', '27.00'),
(125, 1040, 1, 2, '30.00', '60.00'),
(126, 1039, 2, 1, '15.00', '15.00'),
(127, 1039, 2, 1, '15.00', '15.00'),
(128, 1039, 3, 1, '24.00', '24.00'),
(130, 1029, 2, 2, '15.00', '30.00'),
(131, 1029, 1, 1, '30.00', '30.00'),
(132, 1041, 3, 1, '24.00', '24.00'),
(135, 1043, 2, 1, '15.00', '15.00'),
(136, 1043, 3, 1, '24.00', '24.00'),
(137, 1043, 6, 1, '789.00', '789.00'),
(138, 1043, 1, 1, '30.00', '30.00'),
(139, 1044, 3, 1, '24.00', '24.00'),
(143, 1046, 9, 1, '100.00', '100.00'),
(144, 1047, 5, 123, '10.00', '12.00'),
(145, 1048, 4, 1, '27.00', '27.00'),
(146, 1042, 2, 2, '15.00', '30.00'),
(147, 1042, 1, 3, '50.00', '150.00'),
(148, 1042, 0, 4, '25.00', '100.00'),
(151, 1045, 4, 2, '27.00', '54.00'),
(152, 1045, 2, 2, '15.00', '30.00'),
(153, 1049, 2, 12, '15.00', '180.00'),
(154, 1049, 0, 18, '24.00', '432.00'),
(155, 1050, 0, 12, '12.00', '144.00'),
(156, 1051, 4, 1, '27.00', '27.00'),
(157, 1051, 8, 22, '4.00', '88.00'),
(170, 1052, 2, 2, '150.00', '300.00'),
(171, 1052, 2, 2, '15.00', '30.00'),
(172, 1052, 4, 1, '27.00', '27.00'),
(173, 1055, 4, 1, '27.00', '27.00'),
(174, 1055, 3, 1, '24.00', '24.00'),
(175, 1055, 5, 1, '10.00', '10.00'),
(178, 1056, 2, 1, '15.00', '15.00'),
(179, 1056, 0, 1, '18.00', '15.00'),
(180, 1057, 2, 1, '15.00', '15.00'),
(181, 1058, 3, 1, '23.00', '23.00'),
(182, 1059, 2, 8, '15.00', '120.00'),
(183, 1060, 2, 1, '15.00', '15.00'),
(185, 1061, 1, 1, '30.00', '30.00'),
(186, 1061, 6, 1, '789.00', '789.00'),
(187, 1061, 8, 1, '5.00', '5.00'),
(188, 1062, 2, 3, '17.00', '51.00'),
(191, 1063, 2, 1, '15.00', '15.00'),
(193, 1065, 1, 12, '30.00', '30.00'),
(194, 1066, 1, 1, '30.00', '30.00'),
(195, 1066, 2, 1, '15.00', '15.00'),
(196, 1066, 3, 1, '24.00', '24.00'),
(197, 1066, 3, 1, '24.00', '24.00'),
(198, 1066, 7, 1, '50.00', '50.00'),
(200, 1068, 1, 1, '30.00', '30.00'),
(201, 1068, 2, 1, '15.00', '15.00'),
(202, 1068, 7, 1, '50.00', '50.00'),
(206, 1069, 9, 1, '500.00', '500.00'),
(207, 1069, 0, 1, '24.00', '24.00'),
(208, 1069, 0, 2, '5.00', '10.00'),
(209, 1064, 3, 2, '350.00', '700.00'),
(210, 1064, 1, 2, '50.00', '50.00'),
(213, 1070, 2, 1, '15.00', '15.00'),
(214, 1070, 5, 1, '10.00', '10.00'),
(215, 1071, 1, 2, '30.00', '30.00'),
(216, 1067, 5, 2, '10.00', '20.00'),
(218, 1072, 1, 1, '30.00', '30.00'),
(219, 1072, 5, 1, '10.00', '10.00'),
(221, 1074, 10, 10, '100.00', '1000.00'),
(222, 1075, 3, 1, '50.00', '50.00'),
(223, 1075, 10, 1, '100.00', '100.00'),
(227, 1078, 3, 1, '50.00', '50.00'),
(228, 1079, 0, 0, '0.00', '0.00'),
(229, 1079, 0, 0, '0.00', '0.00'),
(230, 1079, 0, 0, '0.00', '0.00'),
(231, 1079, 0, 0, '0.00', '0.00'),
(232, 1079, 4, 1, '27.00', '27.00'),
(235, 1076, 10, 1, '100.00', '100.00'),
(236, 1076, 2, 1, '15.00', '15.00'),
(238, 1080, 3, 1, '50.00', '50.00'),
(242, 1081, 1, 1, '30.00', '30.00'),
(243, 1081, 9, 2, '100.00', '200.00'),
(244, 1081, 0, 2, '150.00', '300.00'),
(245, 1082, 1, 2, '30.00', '60.00'),
(246, 1082, 2, 3, '15.00', '45.00'),
(247, 1082, 3, 4, '50.00', '200.00'),
(248, 1082, 9, 3, '100.00', '300.00'),
(249, 1083, 3, 2, '50.00', '100.00'),
(250, 1083, 7, 2, '50.00', '50.00'),
(251, 1084, 2, 1, '15.00', '15.00'),
(252, 1084, 5, 1, '10.00', '10.00'),
(253, 1077, 1, 14, '32.00', '420.00'),
(254, 1077, 0, 2, '50.00', '100.00'),
(255, 1077, 0, 0, '0.00', '0.00'),
(256, 1085, 2, 1, '15.00', '15.00'),
(263, 1088, 5, 1, '10.00', '10.00'),
(264, 1088, 2, 1, '15.00', '15.00'),
(265, 1088, 5, 1, '10.00', '10.00'),
(266, 1089, 1, 3, '30.00', '90.00'),
(267, 1089, 2, 4, '15.00', '15.00'),
(268, 1090, 7, 1, '50.00', '50.00'),
(269, 1090, 4, 1, '27.00', '27.00'),
(273, 1091, 3, 1, '50.00', '50.00'),
(274, 1091, 5, 1, '10.00', '10.00'),
(275, 1091, 6, 1, '789.00', '789.00'),
(276, 1092, 1, 1, '15.00', '15.00'),
(277, 1087, 2, 6, '10.00', '60.00'),
(278, 1054, 1, 2, '30.00', '60.00'),
(279, 1054, 0, 1, '24.00', '24.00'),
(280, 1054, 0, 1, '10.00', '10.00'),
(281, 1054, 0, 1, '24.00', '24.00'),
(290, 1094, 2, 1, '13.00', '13.00'),
(291, 1094, 0, 0, '0.00', '0.00'),
(292, 1093, 3, 1, '50.00', '50.00'),
(293, 1093, 4, 2, '27.00', '54.00'),
(294, 1093, 3, 2, '50.00', '100.00'),
(295, 1093, 2, 1, '15.00', '15.00'),
(302, 1086, 2, 8, '15.00', '120.00'),
(303, 1086, 9, 1, '100.00', '100.00'),
(304, 1086, 7, 1, '50.00', '50.00'),
(305, 1096, 2, 10, '1500.00', '15000.00'),
(306, 1097, 1, 1, '30.00', '30.00'),
(307, 1097, 0, 0, '0.00', '0.00'),
(308, 1098, 12, 1, '89.00', '89.00'),
(317, 1099, 2, 1, '15.00', '15.00'),
(318, 1099, 3, 1, '50.00', '50.00'),
(319, 1099, 4, 1, '27.00', '27.00'),
(320, 1100, 4, 1, '27.00', '27.00'),
(321, 1100, 10, 1, '100.00', '100.00'),
(322, 1100, 3, 1, '50.00', '50.00'),
(323, 1100, 11, 1, '150.00', '150.00'),
(330, 1101, 1, 1, '30.00', '30.00'),
(331, 1101, 0, 1, '15.00', '15.00'),
(332, 1101, 0, 1, '15.00', '15.00'),
(333, 1095, 13, 2, '999.00', '1998.00'),
(334, 1102, 9, 1, '100.00', '100.00'),
(335, 1102, 6, 1, '789.00', '789.00'),
(336, 1102, 0, 0, '0.00', '0.00'),
(343, 1104, 3, 1, '50.00', '50.00'),
(344, 1104, 3, 1, '50.00', '50.00'),
(345, 1104, 4, 1, '27.00', '27.00'),
(346, 1105, 3, 1, '50.00', '50.00'),
(347, 1105, 1, 1, '30.00', '30.00'),
(348, 1105, 0, 65, '3.00', '195.00'),
(349, 1105, 0, 0, '0.00', '0.00'),
(350, 1105, 0, 0, '0.00', '0.00'),
(351, 1106, 2, 2, '15.00', '30.00'),
(352, 1106, 4, 2, '27.00', '54.00'),
(356, 1107, 9, 2, '100.00', '200.00'),
(357, 1107, 8, 1, '10.00', '10.00'),
(358, 1107, 0, 0, '0.00', '0.00'),
(359, 1108, 3, 10, '50.00', '500.00'),
(360, 1108, 5, 15, '10.00', '150.00'),
(361, 1108, 0, 0, '0.00', '0.00'),
(362, 1109, 2, 1, '10.00', '10.00'),
(363, 1109, 5, 2, '10.00', '20.00'),
(364, 1109, 4, 2, '27.00', '54.00'),
(365, 1109, 11, 2, '150.00', '150.00'),
(368, 1110, 2, 8, '15.00', '120.00'),
(369, 1110, 0, 8, '27.00', '216.00'),
(370, 1110, 4, 3, '27.00', '81.00'),
(377, 1111, 3, 2, '50.00', '100.00'),
(378, 1111, 4, 1, '27.00', '27.00'),
(379, 1111, 17, 4, '0.00', '0.00'),
(382, 1103, 2, 1, '15.00', '15.00'),
(383, 1103, 3, 2, '50.00', '100.00'),
(384, 1103, 4, 3, '27.00', '81.00'),
(385, 1112, 2, 1, '15.00', '15.00'),
(386, 1112, 3, 1, '50.00', '50.00'),
(387, 1112, 4, 1, '27.00', '27.00'),
(390, 1114, 2, 1, '15.00', '15.00'),
(391, 1114, 1, 1, '30.00', '30.00'),
(392, 1114, 6, 1, '789.00', '789.00'),
(393, 1114, 4, 1, '27.00', '27.00'),
(397, 1073, 3, 2, '50.00', '100.00'),
(398, 1073, 5, 1, '10.00', '10.00'),
(399, 1073, 10, 1, '100.00', '100.00'),
(400, 1115, 5, 1, '10.00', '10.00'),
(401, 1115, 7, 1, '50.00', '50.00'),
(402, 1115, 5, 1, '10.00', '10.00'),
(403, 1113, 2, 2, '15.00', '30.00'),
(404, 1113, 0, 4, '100.00', '400.00'),
(405, 1113, 5, 1, '10.00', '10.00'),
(408, 1116, 3, 3, '50.00', '150.00'),
(423, 1119, 2, 1, '15.00', '15.00'),
(425, 1120, 3, 10, '50.00', '500.00'),
(426, 1120, 1, 1, '30.00', '30.00'),
(427, 1120, 0, 0, '0.00', '0.00'),
(428, 1120, 0, 0, '0.00', '0.00'),
(429, 1120, 0, 0, '0.00', '0.00'),
(430, 1121, 1, 4, '27.00', '108.00'),
(431, 1121, 5, 1, '10.00', '10.00'),
(435, 1122, 2, 3, '230.00', '690.00'),
(436, 1122, 8, 1, '6.00', '6.00'),
(437, 1122, 3, 1, '50.00', '50.00'),
(438, 1122, 6, 1, '789.00', '789.00'),
(439, 1123, 3, 1, '50.00', '50.00'),
(440, 1123, 6, 1, '789.00', '789.00'),
(441, 1124, 2, 1, '15.00', '15.00'),
(442, 1124, 3, 1, '50.00', '50.00'),
(443, 1125, 0, 0, '0.00', '0.00'),
(444, 1125, 3, 2, '19.00', '38.00'),
(445, 1125, 0, 0, '0.00', '0.00'),
(446, 1126, 2, 2, '15.00', '30.00'),
(450, 1053, 14, 1, '25.00', '25.00'),
(451, 1053, 2, 2, '15.00', '30.00'),
(452, 1053, 3, 1, '50.00', '50.00'),
(456, 1127, 3, 1, '50.00', '50.00'),
(457, 1127, 5, 1, '10.00', '10.00'),
(458, 1127, 4, 1, '27.00', '27.00'),
(459, 1118, 2, 50, '15.00', '750.00'),
(460, 1118, 0, 25, '50.00', '1250.00'),
(461, 1128, 9, 2, '95.00', '190.00'),
(462, 1117, 4, 8, '27.00', '216.00'),
(463, 1129, 3, 1, '50.00', '50.00'),
(464, 1129, 4, 1, '27.00', '27.00'),
(465, 1129, 9, 1, '100.00', '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `billing_tax`
--

CREATE TABLE `billing_tax` (
  `id` int(11) NOT NULL,
  `tax_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `percentage` decimal(4,2) NOT NULL,
  `status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `billing_tax`
--

INSERT INTO `billing_tax` (`id`, `tax_name`, `percentage`, `status`) VALUES
(1, 'SGST', '9.00', 'Enable'),
(2, 'CGST', '9.00', 'Enable'),
(3, 'IGST', '12.00', 'Enable'),
(4, 'IGST', '12.00', 'Enable'),
(6, 'VAT', '20.00', 'Enable');

-- --------------------------------------------------------

--
-- Table structure for table `billing_user`
--

CREATE TABLE `billing_user` (
  `id` int(11) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `address` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `role` enum('admin','user') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `billing_user`
--

INSERT INTO `billing_user` (`id`, `first_name`, `last_name`, `gender`, `email`, `password`, `mobile`, `address`, `created`, `role`) VALUES
(1, 'Andy ', 'Smith', 'Male', 'admin@coderszine.com', '202cb962ac59075b964b07152d234b70', '1234567890', '', '2020-11-28 22:45:58', 'admin'),
(2, 'joe', 'root ', 'Male', 'user1@coderszine.com', '202cb962ac59075b964b07152d234b70', '123456789', 'fcfhvtfdrtfbvydy  mmmmm', '2020-11-28 22:45:58', 'user'),
(3, 'Tim', 'Pane', 'Male', 'user2@coderszine.com', '202cb962ac59075b964b07152d234b70', '123456789', '', '2020-11-28 22:45:58', 'user'),
(4, 'Andy', 'Behkem', 'Male', 'user3@coderszine.com', '202cb962ac59075b964b07152d234b70', '123456789', '', '2020-11-28 22:45:58', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billing_items`
--
ALTER TABLE `billing_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_order`
--
ALTER TABLE `billing_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_order_item`
--
ALTER TABLE `billing_order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_tax`
--
ALTER TABLE `billing_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_user`
--
ALTER TABLE `billing_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billing_items`
--
ALTER TABLE `billing_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `billing_order`
--
ALTER TABLE `billing_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1130;

--
-- AUTO_INCREMENT for table `billing_order_item`
--
ALTER TABLE `billing_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- AUTO_INCREMENT for table `billing_tax`
--
ALTER TABLE `billing_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `billing_user`
--
ALTER TABLE `billing_user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
