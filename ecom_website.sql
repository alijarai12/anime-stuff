-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2022 at 11:35 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2022-01-24 16:21:18', '28-05-2022 09:24:12 PM');

username - admin
password - admin
-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Manga and Books', 'comic, story', '2022-01-24 19:17:37', '28-05-2022 09:53:27 PM'),
(4, 'Bags', 'purse, handbag', '2022-01-24 19:19:32', '28-05-2022 09:53:47 PM'),
(5, 'Cosplay Essential', 'clothes, weapons', '2022-01-24 19:19:54', '28-05-2022 09:54:33 PM'),
(6, 'Fashion', 'Fashion', '2022-02-20 19:18:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 5, '19', 1, '2022-05-28 15:47:48', 'COD', NULL),
(8, 5, '19', 2, '2022-05-28 15:48:52', 'COD', NULL),
(9, 5, '28', 3, '2022-05-28 17:32:18', 'COD', 'Delivered'),
(10, 5, '36', 1, '2022-05-28 17:49:35', 'COD', NULL),
(11, 5, '36', 1, '2022-05-28 17:52:03', 'COD', NULL),
(12, 6, '30', 2, '2022-05-30 14:50:20', 'COD', 'in Process'),
(13, 7, '28', 2, '2022-12-24 11:02:04', 'COD', 'in Process');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(5, 9, 'in Process', 'in process', '2022-05-28 17:35:50'),
(6, 9, 'Delivered', 'delivered', '2022-05-28 17:38:02'),
(7, 12, 'in Process', 'processed', '2022-05-30 14:56:12'),
(8, 13, 'in Process', 'processed', '2022-12-24 11:03:25');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(5, 30, 2, 0, 0, 'sabina', '', 'good', '2022-12-24 10:38:43'),
(6, 30, 4, 0, 0, 'alija', '', ':)', '2022-12-24 10:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(21, 3, 15, 'beyblade manga', '-', 100, 100, 'beyblade manga<br>', 'beyblade manga.jpg', 'beyblade manga.jpg', 'beyblade manga.jpg', 0, 'In Stock', '2022-05-28 16:32:44', NULL),
(22, 3, 14, 'deathnote manga', '-', 120, 120, 'deathnote manga<br>', 'deathnot mng.jpg', 'deathnot mng.jpg', 'deathnot mng.jpg', 0, 'In Stock', '2022-05-28 16:33:49', NULL),
(23, 3, 13, 'my hero academia manga', '-', 110, 110, 'my hero academia manga<br>', 'hero acedemia manga.jpg', 'hero acedemia manga.jpg', 'hero acedemia manga.jpg', 0, 'Out of Stock', '2022-05-28 16:34:53', NULL),
(24, 4, 18, 'purse', '-', 130, 130, 'purse<br>', 'aq.jpg', 'aq.jpg', 'aq.jpg', 0, 'In Stock', '2022-05-28 16:35:41', NULL),
(25, 4, 18, 'gojo purse', '-', 120, 120, 'gojo purse<br>', 'goujo purse.jpg', 'goujo purse.jpg', 'goujo purse.jpg', 0, 'In Stock', '2022-05-28 16:36:41', NULL),
(26, 4, 19, 'kaneki_bag', '-', 150, 150, 'kaneki_bag<br>', 'kaneki_bag.jpg', 'kaneki_bag.jpg', 'kaneki_bag.jpg', 0, 'In Stock', '2022-05-28 16:38:04', NULL),
(27, 4, 19, 'maruko handbag', '-', 145, 145, 'maruko handbag<br>', 'maruko_bag.jpg', 'maruko_bag.jpg', 'maruko_bag.jpg', 0, 'In Stock', '2022-05-28 16:39:11', NULL),
(28, 4, 20, 'cherry_blosom_bag', '-', 210, 210, 'cherry_blosom_bag<br>', 'cherry_blosom_bag.jpg', 'cherry_blosom_bag.jpg', 'cherry_blosom_bag.jpg', 0, 'In Stock', '2022-05-28 16:40:01', NULL),
(29, 4, 20, 'levi bagpack', '-', 240, 240, 'levi bagpack<br>', 'levi bagpack.jpg', 'levi bagpack.jpg', 'levi bagpack.jpg', 0, 'In Stock', '2022-05-28 16:41:19', NULL),
(30, 5, 16, 'sakura costume', '-', 340, 340, 'sakura cloth<br>', 'sakura cos.jpg', 'sakura cos.jpg', 'sakura cos.jpg', 0, 'In Stock', '2022-05-28 16:42:29', NULL),
(31, 5, 16, 'nezuko costume', '-', 320, 320, 'nezuko costume<br>', 'nez ostume.jpg', 'nez ostume.jpg', 'nez ostume.jpg', 0, 'In Stock', '2022-05-28 16:43:33', NULL),
(32, 5, 17, 'kunai', '-', 90, 90, 'kunai', 'kunai.jpeg', 'kunai.jpeg', 'kunai.jpeg', 0, 'In Stock', '2022-05-28 16:45:40', NULL),
(33, 5, 24, 'anbu mask', '-', 1600, 160, 'anbu mask<br>', 'anbu mask.jpg', 'anbu mask.jpg', 'anbu mask.jpg', 0, 'In Stock', '2022-05-28 16:47:57', NULL),
(34, 5, 24, 'kaneki mask', '-', 70, 70, 'kaneki mask<br>', 'kaneki mask.jpg', 'kaneki mask.jpg', 'kaneki mask.jpg', 0, 'In Stock', '2022-05-28 16:48:47', NULL),
(35, 6, 21, 'bakugo hoodie', '-', 500, 500, 'bakugo hoodie<br>', 'bakugo hodie.jpeg', 'bakugo hodie.jpeg', 'bakugo hodie.jpeg', 0, 'In Stock', '2022-05-28 16:49:30', NULL),
(36, 6, 21, 'kaneki hoodie', '-', 700, 700, 'kaneki hoodie<br>', 'kaneki hoodie.jpg', 'kaneki hoodie.jpg', 'kaneki hoodie.jpg', 0, 'In Stock', '2022-05-28 16:50:50', NULL),
(37, 6, 22, 'hokage shirt', '-', 444, 444, 'hokage shirt<br>', 'hokage shirt.jpg', 'hokage shirt.jpg', 'hokage shirt.jpg', 0, 'In Stock', '2022-05-28 16:51:39', NULL),
(38, 6, 22, 'kaneki shirt', '-', 340, 340, 'kaneki shirt<br>', 'kaneki shirt.jpg', 'kaneki shirt.jpg', 'kaneki shirt.jpg', 0, 'In Stock', '2022-05-28 16:52:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 3, 'shonen', '2022-05-28 16:24:55', NULL),
(14, 3, 'detective', '2022-05-28 16:25:27', NULL),
(15, 3, 'sports', '2022-05-28 16:25:40', NULL),
(16, 5, 'costume', '2022-05-28 16:25:49', '28-05-2022 10:16:48 PM'),
(17, 5, 'weapons', '2022-05-28 16:26:00', NULL),
(18, 4, 'purse', '2022-05-28 16:26:28', NULL),
(19, 4, 'handbag', '2022-05-28 16:26:42', NULL),
(20, 4, 'backpack', '2022-05-28 16:28:46', NULL),
(21, 6, 'hoodie', '2022-05-28 16:28:56', NULL),
(22, 6, 'tshirt', '2022-05-28 16:29:08', NULL),
(24, 5, 'masks', '2022-05-28 16:47:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(25, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-28 15:42:28', '28-05-2022 09:37:22 PM', 1),
(26, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-28 17:27:11', NULL, 0),
(27, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-28 17:27:24', NULL, 1),
(28, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-30 14:24:08', NULL, 0),
(29, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-30 14:24:19', '30-05-2022 08:15:36 PM', 1),
(30, 'peme@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-30 14:46:40', '30-05-2022 08:24:53 PM', 1),
(31, 'peme@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-30 14:55:07', '30-05-2022 08:26:29 PM', 1),
(32, 'peme@gmail.com', 0x3a3a3100000000000000000000000000, '2022-05-30 14:56:41', '30-05-2022 08:27:50 PM', 1),
(33, 'dipesh@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-24 10:57:14', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'test ', 'test@gmail.com', 9819819234, '962a36218a682120bee6374c0eb715a0', 'boudha', '3', 'ktm', 44600, 'boudha', '3', 'ktm', 44600, '2022-05-28 15:42:08', NULL),
(6, 'pema sherpa', 'peme@gmail.com', 9819819654, '962a36218a682120bee6374c0eb715a0', 'nayabasti', '', 'kathmandu', 0, 'nayabasti', '', 'kathmandu', 0, '2022-05-30 14:46:28', NULL),
(7, 'Dipesh Rai', 'dipesh@gmail.com', 9819819234, '827ccb0eea8a706c4c34a16891f84e7b', 'ktm', '', 'kathmandu', 0, 'ktm', '', 'kathmandu', 0, '2022-12-24 10:56:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categoryName` (`categoryName`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
