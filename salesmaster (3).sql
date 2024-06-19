-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 03:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salesmaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `sn` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `services` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(38) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`sn`, `name`, `services`, `address`, `phone`, `created`, `status`) VALUES
(1, 'Livepetal Supermarket', 'groceries, food items and pasteries', '24, State Industrial Layout, Akure', '09037548864', '2024-06-19 13:44:34', 1),
(2, 'SIWES Fashion', 'clothes, fashion and designs', '24, State Industrial Layout, Akure', '07036990322', '2024-06-19 13:43:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `sn` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `phone` varchar(24) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 1,
  `bid` int(8) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`sn`, `name`, `phone`, `address`, `created`, `status`, `bid`) VALUES
(1, 'Daniel', '08168297922', NULL, '2024-06-17 14:39:16', 1, 1),
(2, 'Adewale Samuel', '08038404758', NULL, '2024-06-17 14:39:16', 1, 1),
(3, 'Emmanuel', '07786778676', NULL, '2024-06-17 14:39:16', 1, 1),
(4, 'bola', '67657567767', NULL, '2024-06-17 14:39:16', 1, 1),
(5, 'daniel', '08076567878', NULL, '2024-06-17 14:39:16', 1, 1),
(6, 'demilade', '09087968675', NULL, '2024-06-17 14:39:16', 1, 1),
(7, 'Emmark', '08143209448', NULL, '2024-06-17 14:39:16', 1, 1),
(8, 'Richard', '09036659715', NULL, '2024-06-17 14:39:16', 1, 1),
(9, '', '', NULL, '2024-06-17 14:39:16', 1, 1),
(10, 'Emmark', '09134492516', NULL, '2024-06-17 14:39:16', 1, 1),
(11, 'nifemi', '0806371277', NULL, '2024-06-17 14:39:16', 1, 1),
(12, 'tayo', '0806543677', NULL, '2024-06-17 14:39:16', 1, 1),
(13, 'kewa', '07068363912', NULL, '2024-06-17 14:39:16', 1, 1),
(14, 'Fort', '08135272653', NULL, '2024-06-17 14:39:16', 1, 1),
(15, 'david', '08023456663', NULL, '2024-06-17 14:39:16', 1, 1),
(16, 'demilade', '09035515754', NULL, '2024-06-17 14:39:16', 1, 1),
(17, 'daniel', '09068297922', NULL, '2024-06-17 14:39:16', 1, 1),
(18, 'david', '7774574583', NULL, '2024-06-17 14:39:16', 1, 1),
(19, 'Emmark', '080646556546', NULL, '2024-06-17 14:39:16', 1, 1),
(20, 'Wale James', '08150905504', NULL, '2024-06-17 14:39:16', 1, 1),
(21, 'sammy Jakes', '080323185883', NULL, '2024-06-17 14:39:16', 1, 1),
(22, 'kemisola', '080323185888', NULL, '2024-06-17 14:39:16', 1, 1),
(23, 'kemisola', '08037253650', NULL, '2024-06-17 14:39:16', 1, 1),
(24, 'sammy Jakes', '08032318581', NULL, '2024-06-17 14:39:16', 1, 1),
(25, 'Wale James', '08150905504', NULL, '2024-06-17 14:16:37', 1, 1),
(26, 'Wale James', '08032318588', NULL, '2024-06-17 14:54:44', 1, 2),
(27, 'Folasade', '08032318590', NULL, '2024-06-17 15:31:16', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `sn` bigint(20) UNSIGNED NOT NULL,
  `item` varchar(55) DEFAULT NULL,
  `price` int(9) DEFAULT NULL,
  `qty` int(9) DEFAULT NULL,
  `amount` int(9) DEFAULT NULL,
  `salesid` varchar(16) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(2) NOT NULL DEFAULT 1,
  `bid` int(8) NOT NULL DEFAULT 0,
  `user` int(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`sn`, `item`, `price`, `qty`, `amount`, `salesid`, `created`, `status`, `bid`, `user`) VALUES
(1, 'Rice', 2555, 4, 10220, NULL, '2024-06-17 14:38:33', 1, 1, 0),
(10, 'rice', 100, 5, 500, '1784497219', '2024-06-17 14:38:53', 1, 1, 0),
(12, 'fish', 200, 2, 400, '1784497219', '2024-06-17 14:38:53', 1, 1, 0),
(13, 'garri', 1500, 4, 6000, '1784497219', '2024-06-17 14:38:53', 1, 1, 0),
(14, 'kulikuli', 70, 10, 700, '1784497219', '2024-06-17 14:38:53', 1, 1, 0),
(15, 'sugar', 50, 5, 250, '1784497219', '2024-06-17 14:38:53', 1, 1, 0),
(20, 'garri', 6760, 2, 13520, '550014743', '2024-06-17 14:38:53', 1, 1, 0),
(22, 'fish', 2500, 6, 15000, '1095364945', '2024-06-17 14:38:53', 1, 1, 0),
(23, 'rice', 40000, 3, 120000, '1095364945', '2024-06-17 14:38:53', 1, 1, 0),
(24, 'fish', 1990, 4, 7960, '1198513486', '2024-06-17 14:38:53', 1, 1, 0),
(25, 'books', 2000, 3, 6000, '1198513486', '2024-06-17 14:38:53', 1, 1, 0),
(27, 'garri', 2300, 3, 6900, '1321233030', '2024-06-17 14:38:53', 1, 1, 0),
(28, 'mouse', 5000, 2, 10000, '52473797', '2024-06-17 14:38:53', 1, 1, 0),
(29, 'bread', 900, 4, 3600, '1185677107', '2024-06-17 14:38:53', 1, 1, 0),
(30, 'meat', 4000, 6, 24000, '1185677107', '2024-06-17 14:38:53', 1, 1, 0),
(31, 'laptop', 280000, 1, 280000, '1185677107', '2024-06-17 14:38:53', 1, 1, 0),
(32, 'flash drive', 3500, 1, 3500, '52473797', '2024-06-17 14:38:53', 1, 1, 0),
(33, 'pc holder', 12000, 1, 12000, '52473797', '2024-06-17 14:38:53', 1, 1, 0),
(34, 'pc', 600000, 1, 600000, '52473797', '2024-06-17 14:38:53', 1, 1, 0),
(35, 'apple', 3988, 6, 23928, '1507609423', '2024-06-17 14:38:53', 1, 1, 0),
(36, 'benz', 5900, 6, 35400, '1507609423', '2024-06-17 14:38:53', 1, 1, 0),
(37, 'iphone 13', 650000, 1, 650000, '1185677107', '2024-06-17 14:38:53', 1, 1, 0),
(39, 'books', 3500, 5, 17500, '580108574', '2024-06-17 14:38:53', 1, 1, 0),
(40, 'ice', 46700, 1, 46700, '580108574', '2024-06-17 14:38:53', 1, 1, 0),
(41, 'rice', 46000, 1, 46000, '580108574', '2024-06-17 14:38:53', 1, 1, 0),
(42, 'fish', 688, 2, 1376, '1809181894', '2024-06-17 14:38:53', 1, 1, 0),
(43, 'rice', 67373, 1, 67373, '1809181894', '2024-06-17 14:38:53', 1, 1, 0),
(45, 'potato', 500, 5, 2500, '148299291', '2024-06-17 14:38:53', 1, 1, 0),
(46, 'rice', 5000, 4, 20000, '1095364945', '2024-06-17 14:38:53', 1, 1, 0),
(47, 'egg', 6000, 7, 42000, '1095364945', '2024-06-17 14:38:53', 1, 1, 0),
(48, 'bomb', 45000, 9, 405000, '1919603267', '2024-06-17 14:38:53', 1, 1, 0),
(49, 'fireworks', 6800, 5, 34000, '1919603267', '2024-06-17 14:38:53', 1, 1, 0),
(50, 'bullet', 955, 50, 47750, '1919603267', '2024-06-17 14:38:53', 1, 1, 0),
(51, 'fish', 5400, 4, 21600, '148299291', '2024-06-17 14:38:53', 1, 1, 0),
(53, 'plantain', 4000, 3, 12000, '137025051', '2024-06-17 14:38:53', 1, 1, 26),
(54, 'PTA Fees', 5000, 6, 30000, '153300507', '2024-06-17 14:38:53', 1, 1, 26),
(55, 'School Shoes', 2600, 4, 10400, '153300507', '2024-06-17 14:38:53', 1, 1, 26),
(56, 'School Books', 4500, 3, 13500, '153300507', '2024-06-17 14:38:53', 1, 1, 26),
(57, 'School Shoes', 5000, 2, 10000, '931922290', '2024-06-17 14:38:53', 1, 1, 26),
(58, 'PTA Fees', 5000, 2, 10000, '52296376', '2024-06-17 14:38:53', 1, 1, 26),
(59, 'School Shoes', 4880, 3, 14640, '52296376', '2024-06-17 14:38:53', 1, 1, 26),
(60, 'School Shoes', 5000, 1, 5000, '390018598', '2024-06-17 14:38:53', 1, 1, 26),
(62, 'School Shoes', 3000, 2, 6000, '390018598', '2024-06-17 14:38:53', 1, 1, 26),
(63, 'School Shoes', 5000, 4, 20000, '362964843', '2024-06-17 14:38:53', 1, 1, 1),
(64, 'books', 240, 9, 2160, '362964843', '2024-06-17 14:38:53', 1, 1, 1),
(65, 'School Shoes', 5000, 2, 10000, '1856783996', '2024-06-17 14:16:15', 1, 1, 1),
(66, 'School Shoes', 5000, 3, 15000, '92051487', '2024-06-17 14:54:29', 1, 2, 29),
(67, 'School Shoes', 3400, 6, 20400, '625911539', '2024-06-17 15:28:56', 1, 2, 29),
(68, 'books', 5230, 3, 15690, '625911539', '2024-06-17 15:30:44', 1, 2, 29),
(69, 'School Shoes', 4780, 3, 14340, '2076316908', '2024-06-18 11:37:15', 1, 1, 1),
(70, 'PTA Fees', 3000, 3, 9000, '2076316908', '2024-06-18 11:37:28', 1, 1, 1),
(71, 'School Shoes', 3700, 2, 7400, '1386769235', '2024-06-18 11:41:59', 1, 1, 1),
(72, 'School Shoes', 5000, 2, 10000, '1386769235', '2024-06-18 11:42:16', 1, 1, 1),
(73, 'School Shoes', 3880, 1, 3880, '1386769235', '2024-06-18 11:51:47', 1, 1, 1),
(74, 'books', 2300, 3, 6900, '1386769235', '2024-06-18 11:56:36', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sn` bigint(20) UNSIGNED NOT NULL,
  `salesid` varchar(16) DEFAULT NULL,
  `customer` varchar(24) DEFAULT NULL,
  `phone` varchar(24) DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(2) NOT NULL DEFAULT 1,
  `bid` int(8) NOT NULL DEFAULT 0,
  `user` int(6) NOT NULL DEFAULT 0,
  `mode` varchar(22) NOT NULL DEFAULT 'cash'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sn`, `salesid`, `customer`, `phone`, `total`, `created`, `status`, `bid`, `user`, `mode`) VALUES
(8, '550014743', 'bola', '67657567767', 13520, '2024-06-17 14:39:02', 1, 1, 26, 'cash'),
(18, '52473797', 'Emmark', '09134492516', 625500, '2024-06-17 14:39:02', 1, 1, 26, 'cash'),
(20, '1507609423', 'tayo', '0806543677', 59328, '2024-06-17 14:39:02', 1, 1, 26, 'cash'),
(22, '1185677107', 'Richard', '09036659715', 957600, '2024-06-17 14:39:02', 1, 1, 26, 'cash'),
(23, '580108574', 'kewa', '07068363912', 110200, '2024-06-17 14:39:02', 1, 1, 26, 'cash'),
(24, '1809181894', 'Fort', '08135272653', 68749, '2024-06-17 14:39:02', 1, 1, 26, 'cash'),
(26, '1095364945', 'demilade', '09035515754', 197000, '2024-06-17 14:39:02', 1, 1, 26, 'cash'),
(28, '1919603267', 'daniel', '08168297922', 486750, '2024-06-17 14:39:02', 1, 1, 26, 'cash'),
(29, '148299291', 'david', '7774574583', 24100, '2024-06-17 14:39:02', 1, 1, 26, 'cash'),
(30, '137025051', 'Emmark', '080646556546', 12000, '2024-06-17 14:39:02', 1, 1, 26, 'cash'),
(31, '153300507', 'Wale James', '08150905504', 53900, '2024-06-17 14:39:02', 1, 1, 26, 'cash'),
(32, '931922290', 'sammy Jakes', '080323185883', 10000, '2024-06-17 14:39:02', 1, 1, 26, 'cash'),
(38, '52296376', 'kemisola', '08037253650', 24640, '2024-06-17 14:39:02', 1, 1, 26, 'transfer'),
(39, '362964843', 'sammy Jakes', '08032318581', 22160, '2024-06-17 14:39:02', 1, 1, 1, 'pos'),
(40, '1856783996', 'Wale James', '08150905504', 10000, '2024-06-17 14:16:37', 1, 1, 1, 'cash'),
(41, '92051487', 'Wale James', '08032318588', 15000, '2024-06-17 14:54:44', 1, 2, 29, 'cash'),
(42, '625911539', 'Folasade', '08032318590', 36090, '2024-06-17 15:31:16', 1, 2, 29, 'pos'),
(43, '2076316908', 'Wale James', '08150905504', 23340, '2024-06-18 11:37:44', 1, 1, 1, 'transfer'),
(44, '1386769235', 'Wale James', '080323185888', 28180, '2024-06-18 11:59:23', 1, 1, 1, 'transfer');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `sn` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `phone` varchar(24) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `bid` int(8) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `admin` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`sn`, `name`, `phone`, `email`, `password`, `status`, `bid`, `created`, `admin`) VALUES
(1, 'Kemi Sola', '08032318588', 'kemi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '2024-06-19 13:32:04', 1),
(26, 'Bolarinwa James', '09134492516', 'bola@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '2024-06-17 14:15:23', 0),
(29, 'James Bola', '08150905502', 'salami@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 2, '2024-06-19 13:31:16', 1),
(30, 'Sarah Johnson', '08150905501', 'sara@gmail.com', 'c80dd3e4bc81e572fa637b655f0dc8f7', 1, 2, '2024-06-17 18:25:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD UNIQUE KEY `sn` (`sn`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD UNIQUE KEY `sn` (`sn`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD UNIQUE KEY `sn` (`sn`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD UNIQUE KEY `sn` (`sn`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `sn` (`sn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `sn` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
