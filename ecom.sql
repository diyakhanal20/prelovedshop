-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2023 at 05:50 PM
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
  `id` int(45) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`id`, `fname`, `lname`, `password`, `email`, `address`, `phone`) VALUES
(1, 'nisha', 'adhikari', '$2y$10$c.JXJBn7JymiMnYl5OrmcuLu5.gVssXxYXHINSMrOAWtgAGC1OUkG', 'nishaadhikari53@gmail.com', 'hattiban', 2147483647);

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
  `buyeremail` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `paymentstatus` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `storename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `ddate`, `productid`, `amount`, `userid`, `buyerid`, `buyeremail`, `location`, `paymentstatus`, `status`, `storename`) VALUES
(1, '2023-07-10', 1689004028, 0, 1, 1, 'nishaadhikari53@gmail.com', 'products/1689003953lightbluetshirt.jpg', '', '', 'shop'),
(2, '2023-07-10', 1689004028, 0, 1, 1, 'nishaadhikari53@gmail.com', 'products/1689003953lightbluetshirt.jpg', '', '', 'shop');

-- --------------------------------------------------------

--
-- Table structure for table `productorder`
--

CREATE TABLE `productorder` (
  `id` int(11) NOT NULL,
  `productid` int(255) NOT NULL,
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

INSERT INTO `productorder` (`id`, `productid`, `name`, `location`, `category`, `discount`, `price`, `description`, `userid`, `username`, `address`, `phonenumber`, `status`, `buyerid`, `quantity`, `ddate`, `storename`) VALUES
(1, 2, 'samsung', 'products/1688988473slider.jpg', 'Phone', 10000, 10000, '', 1, 'Nisha Adhikari', 'hattiban', '9860810719', 'delivered', '1', '1', '2023-07-10', 'shop'),
(2, 2, 'samsung', 'products/1688988473slider.jpg', 'Phone', 10000, 10000, '', 1, 'Nisha Adhikari', 'hattiban', '9860810719', 'delivered', '1', '1', '2023-07-10', 'shop');

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
  `storename` text NOT NULL,
  `soldout` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `location`, `category`, `discount`, `price`, `description`, `userid`, `storename`, `soldout`) VALUES
(1, 'tshirt', 'products/1689003953lightbluetshirt.jpg', 'Clothing', 400, 500, '<p>good tshirt</p>', 1, 'shop', 1);

-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--

CREATE TABLE `review_table` (
  `review_id` int(11) NOT NULL,
  `product_id` int(255) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_rating` int(1) NOT NULL,
  `user_review` text NOT NULL,
  `datetime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `first` varchar(255) NOT NULL,
  `last` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL,
  `storename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first`, `last`, `password`, `email`, `address`, `phone`, `storename`) VALUES
(1, 'nisha', 'adhikari', '$2y$10$XldxzImpeKYi2Qm3ocfFseu54muBTHKTBMGz66VyiFl4038mhmeZS', 'nishaadhikari53@gmail.com', 'hattiban', 2147483647, 'shop');

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
-- Indexes for table `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`review_id`);

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
  MODIFY `id` int(45) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `productorder`
--
ALTER TABLE `productorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review_table`
--
ALTER TABLE `review_table`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
