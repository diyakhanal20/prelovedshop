-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 03:11 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `id` int(11) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `phonenumber`, `password`) VALUES
(1, '1234567', '$2y$10$CZQ0Xlak7Y7Yu3kAL/lxLutuKVnzBVMN8rK90fvCp3/ZzTRy9LFpy'),
(2, '9845800883', '$2y$10$cmYE3Giy2oTK2SIsqoIatOKFTjLcwSMRDOyT2E1iP7OsWU1CnKc.S'),
(3, '9860810719', '$2y$10$SqIYTuz7NUXMrukxAOlGze.Hzwjpjb7FqEbloCEx0tVCF99DVUC4S');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(255) NOT NULL,
  `discount` int(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `buyerid` varchar(255) NOT NULL,
  `productid` int(255) NOT NULL,
  `userid` int(255) NOT NULL,
  `storename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `category`, `description`, `price`, `discount`, `location`, `buyerid`, `productid`, `userid`, `storename`) VALUES
(1, 'Jacket', 'Clothing', '<p>solid color: 100% cotton; color: PINK ; freesize</p><p>Care Instruction&nbsp;</p><p>Handwash, Machinewash</p>', 1000, 900, 'products/1686063955pink jacket.jpg', '1', 2, 1, 'SHOPPE'),
(3, 'Samsung M33', 'Phone', '<p>Dimensions: 165.4 x 76.9 x 8.4mm,&nbsp;</p><p>198g Display: 6.6-inch TFT, FHD+ resolution,&nbsp;</p><p>120Hz Processor: Exynos 1280 (5nm)</p><p>&nbsp;Memory: 6/8GB RAM, 128GB storage (expandable up to 1TB)&nbsp;</p><p>Software: Android 12 based OneUI 4.1</p>', 20000, 20000, 'products/1686290309353026888_6462093350519968_625101386167337975_n.jpg', '2', 7, 3, 'Precious');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(15, 'Phone'),
(17, 'Electronics'),
(18, 'Laptop'),
(20, 'Clothing'),
(21, 'Beauty Products'),
(23, 'Shoes');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `ddate` varchar(255) NOT NULL,
  `productid` int(255) NOT NULL,
  `amount` int(255) NOT NULL,
  `userid` int(255) NOT NULL,
  `buyerid` int(255) NOT NULL,
  `buyernumber` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `paymentstatus` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `storename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `ddate`, `productid`, `amount`, `userid`, `buyerid`, `buyernumber`, `location`, `paymentstatus`, `status`, `storename`) VALUES
(1, '2023-06-06', 1686064338, 0, 1, 1, '1234567', 'products/1686063955pink jacket.jpg', '', '', 'SHOPPE'),
(2, '2023-06-07', 1686107068, 0, 1, 1, '1234567', 'products/1686063955pink jacket.jpg', '', '', 'SHOPPE'),
(3, '2023-06-11', 1686456041, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(4, '2023-06-11', 1686456200, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(5, '2023-06-11', 1686456219, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(6, '2023-06-11', 1686458279, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(7, '2023-06-11', 1686460737, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(8, '2023-06-11', 1686460764, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(9, '2023-06-11', 1686460765, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(10, '2023-06-11', 1686460765, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(11, '2023-06-11', 1686460794, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(12, '2023-06-11', 1686460884, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(13, '2023-06-11', 1686460919, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(14, '2023-06-11', 1686461039, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(15, '2023-06-11', 1686461124, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(16, '2023-06-11', 1686461189, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(17, '2023-06-11', 1686461357, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(18, '2023-06-11', 1686461372, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(19, '2023-06-11', 1686461520, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(20, '2023-06-11', 1686462413, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(21, '2023-06-11', 1686462444, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(22, '2023-06-11', 1686462490, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(23, '2023-06-11', 1686462498, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(24, '2023-06-11', 1686464288, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(25, '2023-06-11', 1686465211, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(26, '2023-06-11', 1686465534, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(27, '2023-06-11', 1686465565, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(28, '2023-06-11', 1686465592, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(29, '2023-06-11', 1686465628, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(30, '2023-06-11', 1686465650, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(31, '2023-06-11', 1686465679, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(32, '2023-06-11', 1686465685, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(33, '2023-06-11', 1686465714, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(34, '2023-06-11', 1686465726, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(35, '2023-06-11', 1686465793, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(36, '2023-06-11', 1686466010, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(37, '2023-06-11', 1686466050, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(38, '2023-06-11', 1686466096, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(39, '2023-06-11', 1686466329, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(40, '2023-06-11', 1686466437, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(41, '2023-06-11', 1686466459, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(42, '2023-06-11', 1686466604, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(43, '2023-06-11', 1686466726, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(44, '2023-06-11', 1686466788, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(45, '2023-06-11', 1686466931, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(46, '2023-06-11', 1686467054, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(47, '2023-06-11', 1686467124, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(48, '2023-06-11', 1686467174, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(49, '2023-06-11', 1686467245, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(50, '2023-06-11', 1686467309, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(51, '2023-06-11', 1686467732, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(52, '2023-06-11', 1686467770, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(53, '2023-06-11', 1686468098, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(54, '2023-06-11', 1686468157, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(55, '2023-06-11', 1686468167, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(56, '2023-06-11', 1686468193, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(57, '2023-06-11', 1686468193, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(58, '2023-06-11', 1686468194, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(59, '2023-06-11', 1686468194, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(60, '2023-06-11', 1686468194, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(61, '2023-06-11', 1686468416, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(62, '2023-06-11', 1686472513, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(63, '2023-06-11', 1686472802, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(64, '2023-06-11', 1686473140, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(65, '2023-06-11', 1686473908, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(66, '2023-06-11', 1686475701, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(67, '2023-06-11', 1686475708, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(68, '2023-06-11', 1686477090, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(69, '2023-06-11', 1686477250, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(70, '2023-06-11', 1686478352, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(71, '2023-06-11', 1686478744, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(72, '2023-06-11', 1686478803, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(73, '2023-06-11', 1686479224, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(74, '2023-06-11', 1686479347, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(75, '2023-06-11', 1686479374, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(76, '2023-06-11', 1686479399, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(77, '2023-06-11', 1686479423, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(78, '2023-06-11', 1686479446, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(79, '2023-06-11', 1686479473, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(80, '2023-06-11', 1686479528, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(81, '2023-06-11', 1686479577, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(82, '2023-06-11', 1686479776, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(83, '2023-06-11', 1686480074, 0, 3, 2, '9845800883', 'products/1686290309353026888_6462093350519968_625101386167337975_n.jpg', '', '', 'Precious'),
(84, '2023-06-11', 1686481324, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(85, '2023-06-11', 1686481550, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(86, '2023-06-11', 1686481552, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(87, '2023-06-11', 1686481631, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(88, '2023-06-11', 1686481751, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(89, '2023-06-11', 1686482126, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(90, '2023-06-11', 1686482141, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(91, '2023-06-11', 1686482308, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(92, '2023-06-11', 1686483814, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(93, '2023-06-11', 1686484187, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(94, '2023-06-11', 1686484233, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(95, '2023-06-11', 1686484248, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(96, '2023-06-11', 1686484272, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(97, '2023-06-11', 1686484288, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(98, '2023-06-11', 1686484345, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(99, '2023-06-11', 1686484457, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(100, '2023-06-11', 1686484525, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(101, '2023-06-11', 1686484811, 0, 1, 2, '9845800883', 'products/1685944228tshirt.jpg', '', '', 'SHOPPE'),
(102, '2023-06-11', 1686484917, 0, 3, 2, '9845800883', 'products/1686290984345444639_232329876176935_5391371312302098325_n.jpg', '', '', 'Precious'),
(103, '2023-06-12', 1686553430, 0, 2, 3, '9860810719', 'products/1686289588lightbluetshirt.jpg', '', '', 'Hilltop'),
(104, '2023-06-13', 1686657213, 0, 3, 3, '9860810719', 'products/1686290984345444639_232329876176935_5391371312302098325_n.jpg', '', '', 'Precious'),
(105, '2023-06-13', 1686657555, 0, 3, 3, '9860810719', 'products/1686290309353026888_6462093350519968_625101386167337975_n.jpg', '', '', 'Precious'),
(106, '2023-06-13', 1686658424, 0, 1, 3, '9860810719', 'products/1686063955pink jacket.jpg', '', '', 'SHOPPE'),
(107, '2023-06-13', 1686659084, 0, 1, 3, '9860810719', 'products/1686063955pink jacket.jpg', '', '', 'SHOPPE'),
(108, '2023-06-13', 1686659084, 0, 1, 3, '9860810719', 'products/1686063955pink jacket.jpg', '', '', 'SHOPPE');

-- --------------------------------------------------------

--
-- Table structure for table `esewacode`
--

CREATE TABLE `esewacode` (
  `id` int(11) NOT NULL,
  `userid` int(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `esewacode`
--

INSERT INTO `esewacode` (`id`, `userid`, `code`) VALUES
(2, 3, 'EPAYTEST'),
(3, 6, 'EPAYTEST'),
(5, 1, 'EPAYTEST');

-- --------------------------------------------------------

--
-- Table structure for table `productorder`
--

CREATE TABLE `productorder` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `discount` int(255) NOT NULL,
  `price` int(255) NOT NULL,
  `description` text NOT NULL,
  `userid` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `buyerid` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `ddate` varchar(255) NOT NULL,
  `storename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productorder`
--

INSERT INTO `productorder` (`id`, `name`, `location`, `category`, `discount`, `price`, `description`, `userid`, `username`, `address`, `phonenumber`, `status`, `buyerid`, `quantity`, `ddate`, `storename`) VALUES
(1, 'Jacket', 'products/1686063955pink jacket.jpg', 'Clothing', 900, 1000, '', 1, 'nisha Adhikari', 'hattiban', '9860810719', 'delivered', '1', '1', '2023-06-06', 'SHOPPE'),
(2, 'Jacket', 'products/1686063955pink jacket.jpg', 'Clothing', 900, 1000, '', 1, 'nisha', 'hattiban', '9860810719', 'delivered', '1', '1', '2023-06-07', 'SHOPPE'),
(3, 'Tshirt', 'products/1685944228tshirt.jpg', 'Clothing', 400, 450, '', 1, 'ADHIKARINAVARAJ', 'kathmandu', '9845800883', '', '2', '1', '2023-06-11', 'SHOPPE');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `discount` int(255) NOT NULL,
  `price` int(255) NOT NULL,
  `description` text NOT NULL,
  `userid` int(255) NOT NULL,
  `storename` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `location`, `category`, `discount`, `price`, `description`, `userid`, `storename`) VALUES
(1, 'Tshirt', 'products/1685944228tshirt.jpg', 'Clothing', 400, 450, '<p>solid color: 100% cotton; color: grey ; freesize</p><p>Care Instruction&nbsp;</p><p>Handwash, Machinewash</p>', 1, 'SHOPPE'),
(2, 'Jacket', 'products/1686063955pink jacket.jpg', 'Clothing', 900, 1000, '<p>solid color: 100% cotton; color: PINK ; freesize</p><p>Care Instruction&nbsp;</p><p>Handwash, Machinewash</p>', 1, 'SHOPPE'),
(3, 'Red Jacket', 'products/1686289292redjacket.jpg', 'Clothing', 690, 700, '<p>Material: 100% polyster</p><p>Gender: female</p><p>sleeves: long</p><p>Waterproof</p><p>&nbsp;</p>', 2, 'Hilltop'),
(4, 'Tshirt', 'products/1686289464bluetshirt.jpg', 'Clothing', 800, 900, '<p>solid color: 100% cotton; color: blue ; freesize</p><p>Care Instruction&nbsp;</p><p>Handwash, Machinewash</p>', 2, 'Hilltop'),
(5, 'Tshirt', 'products/1686289588lightbluetshirt.jpg', 'Clothing', 400, 500, '<p>solid color: 100% cotton; color: sky blue ; freesize</p><p>Care Instruction&nbsp;</p><p>Handwash, Machinewash</p>', 2, 'Hilltop'),
(7, 'Samsung M33', 'products/1686290309353026888_6462093350519968_625101386167337975_n.jpg', 'Phone', 20000, 20000, '<p>Dimensions: 165.4 x 76.9 x 8.4mm,&nbsp;</p><p>198g Display: 6.6-inch TFT, FHD+ resolution,&nbsp;</p><p>120Hz Processor: Exynos 1280 (5nm)</p><p>&nbsp;Memory: 6/8GB RAM, 128GB storage (expandable up to 1TB)&nbsp;</p><p>Software: Android 12 based OneUI 4.1</p>', 3, 'Precious'),
(11, 'samsung m31', 'products/1686290984345444639_232329876176935_5391371312302098325_n.jpg', 'Phone', 18000, 18000, '<p>Dimensions: 165.4 x 76.9 x 8.4mm,&nbsp;</p><p>198g Display: 6.6-inch TFT, FHD+ resolution,&nbsp;</p><p>120Hz Processor: Exynos 1280 (5nm)</p><p>&nbsp;Memory: 6/8GB RAM, 128GB storage (expandable up to 1TB)&nbsp;</p><p>Software: Android 12 based OneUI 4.1</p>', 3, 'Precious'),
(12, 'one plus', 'products/1686291017350771950_575032444819416_162473507376940563_n.jpg', 'Phone', 23000, 23000, '<p>Dimensions: 165.4 x 76.9 x 8.4mm,&nbsp;</p><p>198g Display: 6.6-inch TFT, FHD+ resolution,&nbsp;</p><p>120Hz Processor: Exynos 1280 (5nm)</p><p>&nbsp;Memory: 6/8GB RAM, 128GB storage (expandable up to 1TB)&nbsp;</p><p>Software: Android 12 based OneUI 4.1</p>', 3, 'Precious'),
(13, 'iphone 13', 'products/1686291185351732898_995913815103016_5582525234912445007_n.jpg', 'Phone', 80000, 80000, '<p>Dimensions: 165.4 x 76.9 x 8.4mm,&nbsp;</p><p>198g Display: 6.6-inch TFT, FHD+ resolution,&nbsp;</p><p>120Hz Processor: Exynos 1280 (5nm)</p><p>&nbsp;Memory: 6GB RAM, 128GB storage (expandable up to 1TB)&nbsp;</p><p>Software:Apple</p>', 3, 'Precious');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `location`) VALUES
(4, 'slider/1686045900352446158_260770459943350_8369024046431325375_n.png'),
(5, 'slider/1686047319262179893_444963110417614_3111179931878103073_n.jpg'),
(10, 'slider/1686049053slider.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `superadminuser`
--

CREATE TABLE `superadminuser` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `superadminuser`
--

INSERT INTO `superadminuser` (`id`, `username`, `password`) VALUES
(1, 'superadmin', '$2y$10$wbaFL4Vpcl4pm2o/rzlb/eEEkShAzS5pxUBFS9Dd2cXqysdmV3qa.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `phonenumber` varchar(255) NOT NULL,
  `storename` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `phonenumber`, `storename`, `password`) VALUES
(1, '9860810719', 'SHOPPE', '$2y$10$vYmOkciTmCfQDpkgFoA1jueX69snjdCZ4PYq1Mui8s3rNHt0lMu7C'),
(2, '9840450108', 'Hilltop', '$2y$10$D6f64kc5QJai0RZZ5N3ntOqqf7NCB7FHHSi/hl1O8KkSIrkEetori'),
(3, '9847086702', 'Precious', '$2y$10$j5MOKZPsPB84rcwS4iHolOPHcbfrNe9LlRTV0cNJfnAYDH2HR2C.2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `esewacode`
--
ALTER TABLE `esewacode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productorder`
--
ALTER TABLE `productorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `superadminuser`
--
ALTER TABLE `superadminuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `esewacode`
--
ALTER TABLE `esewacode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productorder`
--
ALTER TABLE `productorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `superadminuser`
--
ALTER TABLE `superadminuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
