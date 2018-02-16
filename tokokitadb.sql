-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2016 at 04:37 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tokokitadb`
--
CREATE DATABASE IF NOT EXISTS `tokokitadb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tokokitadb`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `permalink` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `permalink`, `description`) VALUES
(6, 'seafood', 'seafood', ''),
(8, 'Junk Food', 'junk-food', 'Makanan serba junk food'),
(9, 'Asia', 'asia', ''),
(10, 'Sunda', 'sunda', '');

-- --------------------------------------------------------

--
-- Table structure for table `confirmations`
--

CREATE TABLE IF NOT EXISTS `confirmations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sender_bank` varchar(255) DEFAULT NULL,
  `bank_account_name` varchar(255) NOT NULL,
  `receiver_bank` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `confirmations`
--

INSERT INTO `confirmations` (`id`, `sender_bank`, `bank_account_name`, `receiver_bank`, `amount`, `payment_date`, `status`, `order_id`, `created`, `modified`) VALUES
(1, 'BNI', 'syifa', '2', 4000, '1970-02-02', 1, 1, '2016-12-12 00:30:52', NULL),
(2, 'BCA', 'putri', '0', 4000, '1970-02-05', 1, 2, '2016-12-13 23:54:47', NULL),
(3, 'BCA', 'puput', '0', 53000, '1970-02-10', 0, 3, '2016-12-15 01:02:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `key` int(11) NOT NULL,
  `mime` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `type`, `key`, `mime`, `description`, `path`, `created`, `modified`) VALUES
(31, 'slide', 33, 'image/jpeg', '0', 'public/slides/1.jpg', '2013-05-25 13:03:19', '0000-00-00 00:00:00'),
(32, 'slide', 34, 'image/jpeg', '0', 'public/slides/5.jpg', '2013-05-25 13:03:34', '0000-00-00 00:00:00'),
(38, 'product', 9, 'image/jpeg', 'nasi goreng', 'public/products/oi.jpg', '2016-12-14 23:08:16', '0000-00-00 00:00:00'),
(40, 'product', 10, 'image/jpeg', 'pecel', 'public/products/gig_-_Copy.jpg', '2016-12-14 23:12:16', '0000-00-00 00:00:00'),
(42, 'product', 11, 'image/jpeg', 'sate', 'public/products/tut.jpg', '2016-12-14 23:14:53', '0000-00-00 00:00:00'),
(44, 'product', 12, 'image/jpeg', 'nasi rames', 'public/products/ll.jpg', '2016-12-14 23:21:08', '0000-00-00 00:00:00'),
(46, 'product', 13, 'image/jpeg', 'nasi goreng sate', 'public/products/sat.jpg', '2016-12-14 23:22:52', '0000-00-00 00:00:00'),
(49, 'product', 14, 'image/jpeg', 'udang balado', 'public/products/ghgy.jpg', '2016-12-14 23:35:12', '0000-00-00 00:00:00'),
(50, 'product', 15, 'image/jpeg', 'cumi asam manis', 'public/products/ciu.jpg', '2016-12-14 23:35:30', '0000-00-00 00:00:00'),
(53, 'product', 16, 'image/jpeg', 'kepiting pedas', 'public/products/gh.jpg', '2016-12-14 23:39:50', '0000-00-00 00:00:00'),
(54, 'product', 17, 'image/jpeg', 'kepiting pedas', 'public/products/hujjh.jpg', '2016-12-14 23:40:08', '0000-00-00 00:00:00'),
(56, 'product', 18, 'image/jpeg', 'kerang', 'public/products/nggrfty.jpg', '2016-12-14 23:41:53', '0000-00-00 00:00:00'),
(58, 'product', 19, 'image/jpeg', 'kerang hijau', 'public/products/fgf.jpg', '2016-12-14 23:45:06', '0000-00-00 00:00:00'),
(60, 'product', 20, 'image/jpeg', 'sambel pete', 'public/products/mu.jpg', '2016-12-14 23:51:10', '0000-00-00 00:00:00'),
(62, 'product', 21, 'image/jpeg', 'lalaban', 'public/products/la.jpg', '2016-12-14 23:55:49', '0000-00-00 00:00:00'),
(63, 'product', 0, 'image/jpeg', 'sambal leuncak', 'public/products/as.jpg', '2016-12-15 00:07:51', '0000-00-00 00:00:00'),
(64, 'product', 22, 'image/jpeg', 'sambal leuncak', 'public/products/as.jpg', '2016-12-15 00:08:17', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `order_date` date NOT NULL,
  `payment_deadline` date DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `total`, `order_date`, `payment_deadline`, `payment_method`, `user_id`, `status`, `created`, `modified`) VALUES
(1, '5R57RZMC', 4000, '2016-12-11', '2016-12-18', '1', 3, 1, '2016-12-11 00:00:00', NULL),
(2, 'WE7OE50P', 4000, '2016-12-13', '2016-12-20', '1', 3, 1, '2016-12-13 00:00:00', NULL),
(3, 'TPAY9YFA', 53000, '2016-12-15', '2016-12-22', '1', 6, 4, '2016-12-15 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `qty` int(10) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount_percent` double DEFAULT NULL,
  `net_price` double NOT NULL,
  `order_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `code`, `name`, `qty`, `price`, `discount_percent`, `net_price`, `order_id`) VALUES
(1, 'ABCR34', 'Product Baru', 1, 4000, 20, 4000, 1),
(2, 'ABCR34', 'Product Baru', 1, 4000, 20, 4000, 2),
(3, '1', 'udang balado', 1, 25000, 0, 23000, 3),
(4, '2', 'cumi asam manis', 1, 28000, 0, 15000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permalink` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `permalink`, `title`, `body`, `status`, `created`, `modified`) VALUES
(6, 'about', 'About', '<p>Daharan adalah delivery food yang menyediakan berbagai makanan seafood,sunda food,junk food,dan asia food. kami siap melayani pengiriman di seluruh daerah banten dengan ongkos kirim yang murah</p>', 1, '2012-05-15 19:53:52', '2012-05-15 19:54:01'),
(7, 'how-to-shop', 'How to Shop', '<p>Ini adalah cara berbelanja di toko kita</p>', 1, '2012-05-15 19:54:41', '0000-00-00 00:00:00'),
(10, 'contoh-aja', 'contoh aja', '<p>apa tah</p>', 1, '2016-12-15 04:15:01', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `permalink` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `discount_percent` double NOT NULL,
  `net_price` double NOT NULL,
  `description` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `permalink`, `price`, `discount_percent`, `net_price`, `description`, `stock`, `status`, `category_id`) VALUES
(9, '1', 'nasi goreng', 'nasi-goreng', 23000, 0, 23000, '<p>nasi goreng telor pedas</p>', 78, 1, 9),
(10, '2', 'pecel', 'pecel', 15000, 0, 15000, '<p>sayuran sehat</p>', 34, 1, 9),
(11, '3', 'sate', 'sate', 25000, 0, 25000, '<p>sate ayam daging lembut</p>', 34, 1, 9),
(12, '4', 'nasi rames', 'nasi-rames', 23000, 0, 23000, '<p>nasi putih dengan sambel dan berbagai lauk</p>', 76, 1, 9),
(13, '5', 'nasi goreng sate', 'nasi-goreng-sate', 25000, 0, 25000, '<p>nasi goreng dengan sate dan lalapn</p>', 8, 1, 9),
(14, '1', 'udang balado', 'udang-balado', 25000, 0, 25000, '<p>udang balado pedas</p>', 34, 1, 6),
(15, '2', 'cumi asam manis', 'cumi-asam-manis', 28000, 0, 28000, '<p>cumi asam manis pedas</p>', 67, 1, 6),
(16, '3', 'kepiting pedas', 'kepiting-pedas', 35000, 0, 35000, '<p>kepiting pedas sa,mbal balado pedas</p>', 67, 1, 6),
(17, '3', 'kepiting pedas', 'kepiting-pedas', 35000, 0, 35000, '<p>Kepiting pedas daging lembut</p>', 67, 1, 6),
(18, '5', 'kerang', 'kerang', 40000, 0, 40000, '<p>kerang sambel hijau pedas manis</p>', 56, 1, 6),
(19, '6', 'kerang hijau', 'kerang-hijau', 50000, 0, 50000, '<p>kerang hijau tumis saus tiram</p>', 56, 1, 6),
(20, '1', 'sambel pete', 'sambel-pete', 12000, 0, 12000, '<p>sambal pete pedas</p>', 13, 1, 10),
(21, '2', 'lalaban', 'lalaban', 10000, 0, 10000, '<p>bermacam-macam lalaban</p>', 34, 1, 10),
(22, '5', 'sambal leuncak', 'sambal-leuncak', 10000, 0, 10000, '<p>sambal leuncak oncom pedas</p>', 12, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `description`) VALUES
(1, 'paginationLimit', '6', 'Global pagination limit'),
(2, 'imageAllowed', 'gif|jpg|png|jpeg', ''),
(3, 'maxImageSize', '200000', ''),
(4, 'Order.DueDate', '7', 'Days payment due'),
(5, 'Bank.Name', 'BCA,Mandiri,BNI', 'Bank name that receive transfer from customer'),
(6, 'Email.Admin', 'admin@tokokita.com', 'Email Admin');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE IF NOT EXISTS `slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `description_en` text NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `full_name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `zip` int(11) NOT NULL,
  `level` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `last_login` datetime NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `reset_token`, `full_name`, `address`, `phone`, `zip`, `level`, `status`, `last_login`, `created`, `modified`) VALUES
(1, 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Daharan', 'Jl Tamansiswa, Yogyakarta', '54674573', 234234, 1, 1, '2016-12-15 04:19:29', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'syifa.graha@gmail.com', '21232f297a57a5a743894a0e4a801fc3', NULL, 'syifa nurinayah', 'sfadf', '098576', 0, 0, 1, '2016-12-15 01:15:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'naya.elsyanu@gmail.com', 'admin', 'sadw06', 'syifa nurinayah', 'kstdkjasd', '075785684', 234235, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'putri@gmail.com', '4093fed663717c843bea100d17fb67c8', NULL, 'putri andalusia', 'cilegon', '907498326480326', 231133, 0, 1, '2016-12-13 23:48:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'puput@gmail.com', 'f95c24c42b0f2ea683727cc47cde3ad2', NULL, 'putri puput', 'cilegon', '081288398853', 1213, 0, 1, '2016-12-15 01:00:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
