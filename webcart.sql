-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 08:59 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(11, 1, 'Hari', 'hari1502@gmail.com', '6382410315', 'There is problem while adding product to cart'),
(12, 1, 'Riyas', 'riyas01@gmail.com', '9876543210', 'cash paid but its still shows pending');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(12, 1, 'Hari', '6382410315', 'hari1502@gmail.com', 'cash on delivery', 'flat no. 152, North Street, Thoothukudi, india - 628103', ', XoX Compo T-Shirt (2) , Adidas Pro Sports Shoe (1) , Noise Smart Watch Pro (1) , Pro Gaming Headset (1) , Moto G34 5G ultra Mobile (1) ', 23194, '24-Mar-2024', 'completed'),
(13, 1, 'riyas', '9876543210', 'riyas01@gmail.com', 'cash on delivery', 'flat no. 32, south street, Trichy, india - 620210', ', Sumsung Digital Inverter Tech Refrigerator  (1) , Xiaomi Smart TV A 32 inches (1) , Boat Blitz 1508 Multimedia Home Theatre (1) , Sony alpha ILCE-6400L APS-C Mirrorless Camera (1) ', 93596, '24-Mar-2024', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(3, 'Vivo T2 Pro 5G Mobile', 22399, 'Screenshot_20240317_170723.jpg'),
(4, 'Sumsung Digital Inverter Tech Refrigerator ', 35999, 'Screenshot_20240317_171251.jpg'),
(5, 'Nikon Camera Ultra', 25999, 'Screenshot_20240317_170745.jpg'),
(6, 'XoX Compo T-Shirt', 499, 'Screenshot_20240317_171554.jpg'),
(7, 'Adidas Pro Sports Shoe', 899, 'Screenshot_20240317_171404.jpg'),
(8, 'Noise Smart Watch Pro', 2099, 'Screenshot_20240317_170902.jpg'),
(9, 'Pro Gaming Headset', 1599, 'Screenshot_20240317_171210.jpg'),
(10, 'Boult Earbuds Active', 1199, 'Screenshot_20240317_171024.jpg'),
(11, 'HP i3 Laptop', 40099, 'Screenshot_20240317_170838.jpg'),
(12, 'Xiaomi Smart TV A 32 inches', 38599, 'Screenshot_20240317_170818.jpg'),
(13, 'Boat Nirvana Ion 32dB Earbuds', 2499, 'Screenshot_20240324_094732.jpg'),
(14, 'Boat Blitz 1508 Multimedia Home Theatre', 2999, 'Screenshot_20240324_094758.jpg'),
(15, 'Boat 155w Earbuds', 1199, 'Screenshot_20240324_094822.jpg'),
(16, 'Sony alpha ILCE-6400L APS-C Mirrorless Camera', 15999, 'Screenshot_20240324_094847.jpg'),
(17, 'Brooks ADRENALINE GTS 22 Running Shoe', 2099, 'Screenshot_20240324_094908.jpg'),
(18, 'TR Running Shoe', 499, 'Screenshot_20240324_094946.jpg'),
(19, 'TR Sports Running Shoe', 799, 'Screenshot_20240324_094957.jpg'),
(20, 'SAMSUNG Crystal Vision 4K TV ', 44990, 'Screenshot_20240324_095045.jpg'),
(21, 'Moto G34 5G ultra Mobile', 17599, 'Screenshot_20240324_095127.jpg'),
(22, 'OnePlus 12R Mobile ', 45607, 'Screenshot_20240324_095146.jpg'),
(23, 'RealMe 12Pro+ 5G Mobile', 22799, 'Screenshot_20240324_095201.jpg'),
(24, 'Samsung Galaxy S24 Ultra Mobile', 32099, 'Screenshot_20240324_095210.jpg'),
(25, 'Iphone 13 Mobile', 51200, 'Screenshot_20240324_095224.jpg'),
(26, 'Nikon Z5 Mirrorless camera 24-200 mm', 150299, 'Screenshot_20240324_110611.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Hari', 'hari15@gmail.com', 'a9bcf1e4d7b95a22e2975c812d938889', 'user'),
(2, 'Hariharan', 'hari1502@gmail.com', 'a9bcf1e4d7b95a22e2975c812d938889', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
