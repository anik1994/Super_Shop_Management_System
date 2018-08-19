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
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accinfo`
--

CREATE TABLE `accinfo` (
  `id` int(100) NOT NULL,
  `firstName` varchar(250) NOT NULL,
  `lastName` varchar(250) NOT NULL,
  `userName` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  `passWord` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accinfo`
--

INSERT INTO `accinfo` (`id`, `firstName`, `lastName`, `userName`, `type`, `passWord`) VALUES
(1, 'Anik', 'Chowdhury', 'anik1994', 'Manager', '9876'),
(2, 'Shehabul', 'Alam', 'shatu', 'Manager', '1996'),
(3, 'Shihab', 'Shahriar', 'shihab', 'Manager', '12345'),
(4, 'Nafis', 'Islam', 'nFs', 'Manager', '1234'),
(5, 'Redoan', 'Rahman', 'r1', 'Cashier', '1234'),
(6, 'Tanvir', 'Rahman', 'tRahman', 'Cashier', 'dell'),
(7, 'Kumar Akash', 'Partho', 'KAP', 'Cashier', '8520');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `sex` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `blood_grp` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dob` varchar(250) NOT NULL,
  `type` varchar(250) NOT NULL,
  `card_number` varchar(250) NOT NULL,
  `discount` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `sex`, `address`, `blood_grp`, `phone`, `email`, `dob`, `type`, `card_number`, `discount`) VALUES
(1, 'Isti', 'Male', 'Cantonment', 'A+', '01534654981', 'Istahid_hossain@gmail.com', '05/06/1994', 'Silver', '140204001', 5),
(2, 'Nafis', 'Male', 'Kallanpur', 'O+', '01678543267', 'Nafis_hasan@gmail.com', '23/05/1994', 'Silver', '140204010', 5),
(3, 'Hasan', 'Male', 'Chittagang', '', '01856243982', 'hanan_mahmud@yahoo.com', '23/07/1990', 'Silver', '140204009', 5),
(5, 'Humayara', 'Female', 'Tejkunipara', 'O+', '01681731958', 'Shihabshahriar59@gmail.com', '20/02/1995', 'Platinum', '140204008', 10),
(6, 'Adnan', 'Male', 'Rajshahi', 'AB+', '01934674321', 'adnan875@yaahoo.com', '25/01/1991', 'Silver', '140204007', 5),
(7, 'Borsa', 'Female', 'Dhaka', 'A-', '01731875622', 'borsa_69@hotmail.com', '14/02/1990', 'Gold', '140204006', 7),
(8, 'Tamanna', 'Female', 'Dhaka', 'O+', '01972658989', 'tamanna_89@hotmail.com', '14/02/1990', 'Gold', '140204005', 7),
(9, 'Sakkor', 'Male', 'Borisal', 'AB-', '01192345678', 'sakkor99@gmail.com', '19/08/1993', 'Silver', '140204004', 5);

-- --------------------------------------------------------

--
-- Table structure for table `earl`
--

CREATE TABLE `earl` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` varchar(250) NOT NULL,
  `vat` varchar(250) NOT NULL,
  `discount` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(2, 'Snickers Chocolate', 38, 42, 'Chocolate', '50 gm', 34, '140204002', 35, 56.7),
(3, 'Elit Choco Eggy', 290, 448, 'Chocolate', 'each', 408, '140204003', 35, 604.8),
(4, 'Nestlé MUNCH ROLLZ ', 147, 11, 'Chocolate', '6 gm', 6, '140204004', 35, 14.85),
(7, 'Milk', 88, 50, 'Bev', '500 ml', 41, '140204005', 10, 55),
(8, 'Danish Doreo Biscuit', 88, 105, 'Biscuits', '320 gm', 92, '140204006', 15, 120.75),
(9, 'Cadbury Original Drinking Chocolate', 54, 211, 'Chocolate', '250 gm', 188, '140204007', 35, 284.85),
(10, 'Kit Kat Chunky Chocolate Bar', 39, 74, 'Chocolate', '46 gm', 63, '140204008', 35, 99.9),
(12, 'BRAC Chicken Sausage', 4, 200, 'Frozen Snacks', '10 pcs', 180, '140204009', 15, 230),
(13, 'Rich Chicken Sausage', 76, 195, 'Frozen Snacks', '340 gm', 180, '140204010', 15, 224.25),
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
(28, 'Data Structures', 195, 195, 'Book', '150 gm', 150, '140204021', 5, 204.75),
(30, 'Igloo Icecream', 97, 25, 'Ice Cream', '25 gm', 20, '140204022', 35, 33.75),
(31, 'Optimum Nutrition Whey Protein', 55, 2500, 'Sports Nutrition', '900 gm', 1850, '140204023', 20, 3000),
(32, 'Optimum Nutrition Micronized Creatine Powder', 77, 1000, 'Sports Nutrition', '500 gm', 750, '140204024', 20, 1200),
(33, 'AXE', 91, 195, 'Perfume', '250 ml', 150, '140204025', 25, 243.75),
(34, 'Water', 70, 18, 'Bev', '500 ml', 15, '140204026', 10, 19.8),
(35, 'Microlab T2', 5, 2350, 'HeadPhone', '', 2300, '140204027', 5, 2467.5),
(36, 'Wild Stone', 45, 270, 'Perfume', '320 ml', 245, '140204028', 25, 337.5),
(37, 'Fogg', 74, 285, 'Perfume', '320 ml', 265, '140204029', 25, 356.25),
(38, '7UP', 105, 29, 'Soft Drinks', '500 ml', 33, '140204030', 10, 36.3),
(39, 'Potato Crackers', 334, 10, 'Chips', '25 gm', 8, '140204031', 10, 11),
(40, 'Alooz', 220, 15, 'Chips', '25 gm', 11, '140204032', 10, 16.5),
(41, 'Sun', 190, 15, 'Chips', '25 gm', 11, '140204033', 10, 16.5),
(42, 'Ringo', 134, 9, 'Chips', '20 gm', 7, '140204034', 10, 9.9);

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `customer_code` varchar(250) NOT NULL,
  `cashier_name` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `month` varchar(250) NOT NULL,
  `year` varchar(250) NOT NULL,
  `barcode` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accinfo`
--
ALTER TABLE `accinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earl`
--
ALTER TABLE `earl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accinfo`
--
ALTER TABLE `accinfo`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `earl`
--
ALTER TABLE `earl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `sell`
--
ALTER TABLE `sell`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
