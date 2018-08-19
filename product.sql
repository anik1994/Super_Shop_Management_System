-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2016 at 09:41 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `price` float NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buy price` float DEFAULT NULL,
  `barcode` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat` int(50) NOT NULL,
  `price_with_vat` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `stock`, `price`, `type`, `weight`, `buy price`, `barcode`, `vat`, `price_with_vat`) VALUES
(1, 'Ifad Choco Delight Biscuit', 55, 57, 'Snacks', '260 gm', 48, '140204001', 15, 65.55),
(2, 'Snickers Chocolate', 39, 42, 'Chocolate', '50 gm', 34, '140204002', 35, 56.7),
(3, 'Elit Choco Eggy', 292, 448, 'Chocolate', 'each', 408, '140204003', 35, 604.8),
(4, 'Nestlé MUNCH ROLLZ ', 147, 11, 'Chocolate', '6 gm', 6, '140204004', 35, 14.85),
(7, 'Milk', 88, 50, 'Bev', '500 ml', 41, '140204005', 10, 55),
(8, 'Danish Doreo Biscuit', 88, 105, 'Biscuits', '320 gm', 92, '140204006', 15, 120.75),
(9, 'Cadbury Original Drinking Chocolate', 55, 211, 'Chocolate', '250 gm', 188, '140204007', 35, 284.85),
(10, 'Kit Kat Chunky Chocolate Bar', 39, 74, 'Chocolate', '46 gm', 63, '140204008', 35, 99.9),
(12, 'BRAC Chicken Sausage', 0, 200, 'Frozen Snacks', '10 pcs', 180, '140204009', 15, 230),
(13, 'Rich Chicken Sausage', 78, 195, 'Frozen Snacks', '340 gm', 180, '140204010', 15, 224.25),
(15, 'Aftab Chicken Nugget', 52, 165, 'Frozen Snacks', '250 gm', 150, '140204011', 15, 189.75),
(16, 'Aftab Chicken Burger Pattie (7-8 pcs)', 66, 260, 'Frozen Snacks', '500 gm', 245, '140204012', 15, 299),
(18, 'Rich Frozen Chicken Nugget', 89, 165, 'Frozen Snacks', '300 gm', 150, '140204013', 15, 189.75),
(19, 'Alfa Mayonnaise', 92, 132, 'Jam & Spreads', '473 ml', 122, '140204014', 30, 171.6),
(20, 'Hersheys Strawberry Syrup', 164, 244, 'Jam & Spreads', '680 gm', 230, '140204015', 30, 317.2),
(21, 'Hersheys Chocolate Syrup', 93, 233, 'Jam & Spreads', '680 gm', 220, '140204015', 30, 302.9),
(22, 'Sprite', 14, 32, 'Soft Drinks', '500 ml', 27, '140204016', 10, 35.2),
(23, 'Fanta', 18, 32, 'Soft Drinks', '500 ml', 27, '140204017', 10, 35.2),
(24, 'Gatorade Lemon Lime Drink', 77, 130, 'Soft Drinks', '500 ml', 120, '140204018', 10, 143),
(26, 'Pepsi', 89, 15, 'Soft Drinks', '250 ml', 12, '140204019', 10, 16.5),
(27, 'Coca Cola', 86, 100, 'Soft Drinks', '2 lt', 90, '140204020', 10, 110),
(28, 'Data Structures', 198, 195, 'Book', '150 gm', 150, '140204021', 5, 204.75),
(30, 'Igloo Icecream', 99, 25, 'Ice Cream', '25 gm', 20, '140204022', 35, 33.75),
(31, 'Optimum Nutrition Whey Protein', 55, 2500, 'Sports Nutrition', '900 gm', 1850, '140204023', 20, 3000),
(32, 'Optimum Nutrition Micronized Creatine Powder', 78, 1000, 'Sports Nutrition', '500 gm', 750, '140204024', 20, 1200),
(33, 'AXE', 91, 195, 'Perfume', '250 ml', 150, '140204025', 25, 243.75),
(34, 'Water', 71, 18, 'Bev', '500 ml', 15, '140204026', 10, 19.8),
(35, 'Microlab T2', 2, 2350, 'HeadPhone', '', 2300, '140204027', 5, 2467.5),
(36, 'Wild Stone', 45, 270, 'Perfume', '320 ml', 245, '140204028', 25, 337.5),
(37, 'Fogg', 74, 285, 'Perfume', '320 ml', 265, '140204029', 25, 356.25),
(38, '7UP', 105, 29, 'Soft Drinks', '500 ml', 33, '140204030', 10, 36.3),
(39, 'Potato Crackers', 334, 10, 'Chips', '25 gm', 8, '140204031', 10, 11),
(40, 'Alooz', 220, 15, 'Chips', '25 gm', 11, '140204032', 10, 16.5),
(41, 'Sun', 190, 15, 'Chips', '25 gm', 11, '140204033', 10, 16.5),
(42, 'Ringo', 134, 9, 'Chips', '20 gm', 7, '140204033', 10, 9.9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
