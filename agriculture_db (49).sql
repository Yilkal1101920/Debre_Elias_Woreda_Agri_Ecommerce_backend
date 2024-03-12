-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 01:05 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agriculture_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `agri_product`
--

CREATE TABLE `agri_product` (
  `product_id` int(11) NOT NULL,
  `post_email` varchar(50) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type_product` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `original_cost` double DEFAULT NULL,
  `measurement` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `postedForMarket` int(11) NOT NULL,
  `seller` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `kebele` varchar(255) NOT NULL,
  `marketState` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agri_product`
--

INSERT INTO `agri_product` (`product_id`, `post_email`, `category`, `type_product`, `title`, `price`, `original_cost`, `measurement`, `amount`, `postedForMarket`, `seller`, `address`, `image`, `description`, `state`, `kebele`, `marketState`) VALUES
(214, 'mulatfkadu@gmail.com', 'SUGAR AND OIL', 'SUGAR AND OIL', 'Oil', 500, 480, 'litter', 1900, 95, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/t23x9MJ/agriculture.jpg', 'oil', 0, 'Yemezegn', 0),
(215, 'mulatfkadu@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Wheate', 6000, 5600, '50kg', 3564, 0, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/D1ZLySb/agriculture.jpg', 'wheate', 1, 'Yemezegn', 0),
(216, 'mulatfkadu@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Teff', 10000, 9700, '50kg', 1600, 0, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/p1Y8vT2/agriculture.jpg', 'teff', 0, 'Yemezegn', 0),
(224, 'ayinalemmenber@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Wheate', 6000, 6000, '50KG', 1909, 0, 'farmer', 'Yemezegn', 'https://i.ibb.co/tXPgnz6/agriculture.jpg', 'wheate', 0, 'Yemezegn', 1),
(225, 'ayinalemmenber@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Maize', 4000, 4000, '50KG', 2888, 0, 'farmer', 'Yemezegn', 'https://i.ibb.co/ZXHqsTR/agriculture.jpg', 'maize', 0, 'Yemezegn', 1),
(226, 'mulatfkadu@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Teff', 10000, 10000, '50kg', 1000, 400, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/CWdX24b/agriculture.jpg', 'teff', 0, 'Yemezegn', 1),
(227, 'mulatfkadu@gmail.com', 'SUGAR AND OIL', 'SUGAR AND OIL', 'Sugar', 60, 60, 'kg', 2000, 959, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/Bn3j7yD/agriculture.jpg', 'sugar', 1, 'Yemezegn', 1),
(231, 'mulatfkadu@gmail.com', 'SUGAR AND OIL', 'SUGAR AND OIL', 'Oil', 510, 500, 'litter', 4000, 0, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/rH07yQt/agriculture.jpg', 'oil', 0, 'Yemezegn', 0),
(232, 'luelmenber@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Teff', 10000, 10000, '50kg', 1933, 0, '', 'Yemezegn', 'https://i.ibb.co/pytRH2k/agriculture.jpg', 'teff', 0, 'Yemezegn', 1),
(233, 'luelmenber@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Wheate', 6000, 6000, '50kg', 1941, 0, '', 'Yemezegn', 'https://i.ibb.co/wNLqKn6/agriculture.jpg', 'wheate', 0, 'Yemezegn', 1),
(235, 'mulatfkadu@gmail.com', 'FERTILIZER', 'FERTILIZER', 'DAP', 2000, 1900, '50kg', 4000, 0, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/QJvN7ZL/agriculture.jpg', 'dap', 1, 'Yemezegn', 0),
(236, 'mulatfkadu@gmail.com', 'FERTILIZER', 'FERTILIZER', 'UREA', 1900, 1800, '50kg', 2000, 978, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/RPKKr3s/agriculture.jpg', 'urea', 1, 'Yemezegn', 1),
(238, 'alebeleedmealem@gmail.com', 'FERTILIZER', 'FERTILIZER', 'DAP', 2000, 1900, '50kg', 4000, 580, 'mahiberat', 'Yeguarat', 'https://i.ibb.co/8gH53jJ/agriculture.jpg', 'dap', 1, 'Yeguarat', 1),
(239, 'alebeleedmealem@gmail.com', 'FERTILIZER', 'FERTILIZER', 'UREA', 1900, 1800, '50kg', 3000, 488, 'mahiberat', 'Yeguarat', 'https://i.ibb.co/pKKgV1B/agriculture.jpg', 'urea', 1, 'Yeguarat', 1),
(240, 'mulatfkadu@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Teff', 4500, 4400, '50kg', 500, 0, 'mahiberat', 'Yemezegn', 'https://i.ibb.co/m61qP0X/agriculture.jpg', 'teff', 0, 'Yemezegn', 0),
(257, 'alebeleedmealem@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Teff', 5000, 4700, '50kg', 2000, 994, 'mahiberat', 'Yeguarat', 'https://i.ibb.co/b5kXksQ/agriculture.jpg', 'teff', 0, 'Yeguarat', 1),
(258, 'alebeleedmealem@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Wheate', 4000, 3800, '50kg', 2000, 1000, 'mahiberat', 'Yeguarat', 'https://i.ibb.co/KFc2fPN/agriculture.jpg', 'wheate', 0, 'Yeguarat', 1),
(259, 'alebeleedmealem@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Maize', 3000, 2900, '50kg', 1500, 1497, 'mahiberat', 'Yeguarat', 'https://i.ibb.co/Ypz83Tf/agriculture.jpg', 'maize', 0, 'Yeguarat', 1),
(260, 'alebeleedmealem@gmail.com', 'SUGAR AND OIL', 'SUGAR AND OIL', 'Sugar', 60, 57, 'kg', 7000, 3000, 'mahiberat', 'Yeguarat', 'https://i.ibb.co/LdjtkTn/agriculture.jpg', 'sugar', 0, 'Yeguarat', 1),
(261, 'alebeleedmealem@gmail.com', 'SUGAR AND OIL', 'SUGAR AND OIL', 'Oil', 500, 470, 'litter', 1300, 696, 'mahiberat', 'Yeguarat', 'https://i.ibb.co/4VLWNW7/agriculture.jpg', 'oil', 1, 'Yeguarat', 1),
(262, 'yaregaladamu@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Teff', 5000, 4700, '50kg', 90, 0, 'farmer', 'Yemezegn', 'https://i.ibb.co/dfpxM2p/agriculture.jpg', 'teff', 0, 'Yemezegn', 1),
(266, 'yibeltalabebe@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Teff', 5000, 4700, '50kg', 87, 7, 'farmer', 'Yeguarat', 'https://i.ibb.co/dfpxM2p/agriculture.jpg', 'teff', 0, 'Yeguarat', 1),
(268, 'yibeltalabebe@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Maize', 3000, 2900, '50kg', 290, 0, 'farmer', 'Yeguarat', 'https://i.ibb.co/zrxTkkq/agriculture.jpg', 'maize', 0, 'Yeguarat', 1),
(269, 'abebesmachew@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Teff', 5000, 4700, '50kg', 295, 0, 'farmer', 'Yeguarat', 'https://i.ibb.co/dfpxM2p/agriculture.jpg', 'teff', 0, 'Yeguarat', 1),
(270, 'abebesmachew@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Wheate', 4000, 3800, '50kg', 389, 0, 'farmer', 'Yeguarat', 'https://i.ibb.co/b5Tbwfh/agriculture.jpg', 'wheate', 0, 'Yeguarat', 1),
(271, 'abebesmachew@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Maize', 3000, 2900, '50kg', 492, 2, 'farmer', 'Yeguarat', 'https://i.ibb.co/zrxTkkq/agriculture.jpg', 'maize', 0, 'Yeguarat', 1),
(273, 'yaregaladamu@gmail.com', 'AGRICULTURAL PRODUCT', '', 'Maize', 1500, 1400, '50kg', 1993, 0, 'farmer', 'Yemezegn', 'https://i.ibb.co/HGY7nvx/agriculture.jpg', 'maize', 0, 'Yemezegn', 1),
(274, 'demekegetaneh@gmail.com', 'FERTILIZER', 'FERTILIZER', 'DAP', 2000, 1900, '50kg', 3000, 988, 'mahiberat', 'Yeenbegn', 'https://i.ibb.co/qxnF4rk/agriculture.jpg', 'dap', 1, 'Yedenbegn', 1),
(275, 'demekegetaneh@gmail.com', 'AGRICULTURAL PRODUCT', 'AGRICULTURAL PRODUCT', 'Teff', 5000, 4700, '50kg', 3000, 0, 'mahiberat', 'Yedenbegn', 'https://i.ibb.co/mRn17RL/agriculture.jpg', 'teff', 0, 'Yedenbegn', 0),
(276, 'demekegetaneh@gmail.com', 'FERTILIZER', 'FERTILIZER', 'UREA', 1700, 1600, '50kg', 1000, 988, 'mahiberat', 'Yedenbegn', 'https://i.ibb.co/Jrr893j/agriculture.jpg', 'urea', 1, 'Yedenbegn', 1),
(280, 'kassayielnger@gmail.com', 'FERTILIZER', 'FERTILIZER', 'DAP', 2000, 1900, '50kg', 3000, 999, 'mahiberat', 'Degolma', 'https://i.ibb.co/qxnF4rk/agriculture.jpg', 'dap', 1, 'Degolma', 1),
(281, 'enawugawwalie@gmail.com', 'AGRICULTURAL PRODUCT', '', 'Teff', 5000, 4700, '50kg', 2000, 0, 'farmer', 'Yemezegn', 'https://i.ibb.co/RQpbVkG/News-Image.jpg', 'teff', 0, 'Yemezegn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chattingtable`
--

CREATE TABLE `chattingtable` (
  `chat_id` int(11) NOT NULL,
  `send_email` varchar(50) NOT NULL,
  `receive_email` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chattingtable`
--

INSERT INTO `chattingtable` (`chat_id`, `send_email`, `receive_email`, `message`) VALUES
(259, 'zelalembayih@gmail.com', 'luelmenber@gmail.com', 'rrrrrrrrrrrrrrrrrrrrrrrrr'),
(260, 'zelalembayih@gmail.com', 'luelmenber@gmail.com', 'ttttttttttttttt'),
(261, 'luelmenber@gmail.com', 'zelalembayih@gmail.com', 'ejjejhwj ejw j sjgfsjh isj js fsjh jh s jhd bsj'),
(262, 'luelmenber@gmail.com', 'zelalembayih@gmail.com', 'w hih tiu4whuih uih ui whsuih uihsui usih uihauih fisuf ais iuhif saiu'),
(263, 'luelmenber@gmail.com', 'zelalembayih@gmail.com', 's fs'),
(267, 'zelalembayih@gmail.com', 'bihonegnmenber@gmail.com', 'Ay altekembet bleh nw mihon ena expired kaderege block yideregal'),
(268, 'zelalembayih@gmail.com', 'bihonegnmenber@gmail.com', 'Ay altekembet bleh nw mihon ena expired kaderege block yideregal'),
(270, 'ayinalemmenber@gmail.com', 'zelalembayih@gmail.com', 'Temesgen negn  Madaberiya meta'),
(271, 'zelalembayih@gmail.com', 'ayinalemmenber@gmail.com', 'Awo'),
(272, 'ayinalemmenber@gmail.com', 'zelalembayih@gmail.com', 'this is the message'),
(273, 'ayinalemmenber@gmail.com', 'zelalembayih@gmail.com', 'Selam nw Zelalem'),
(274, 'zelalembayih@gmail.com', 'ayinalemmenber@gmail.com', 'Egziabher Ymesgen Selam Nw Ayinalem'),
(275, 'ayinalemmenber@gmail.com', 'dea1500068@gmail.com', 'Yaregal Selam nw'),
(276, 'ayinalemmenber@gmail.com', 'luelmenber@gmail.com', 'Selam nw Luel'),
(277, 'luelmenber@gmail.com', 'ayinalemmenber@gmail.com', 'Selam nw Ayinalem'),
(278, 'zelalembayih@gmail.com', 'yilkalayinalem@gmail.com', 'Yilkal Endet Neh'),
(279, 'yilkalayinalem@gmail.com', 'luelmenber@gmail.com', 'Selam neh Wondmalem'),
(280, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', 'Yilkal Adisun dewulina Ehud Bet Na Blohal Belew'),
(281, 'yilkalayinalem@gmail.com', 'ayinalemmenber@gmail.com', 'Eshi Slku Kesera Enegrewalehu '),
(282, 'ayinalemmenber@gmail.com', 'bihonegnmenber@gmail.com', 'sdfhdjh'),
(283, 'ayinalemmenber@gmail.com', 'bihonegnmenber@gmail.com', 'erg'),
(284, 'ayinalemmenber@gmail.com', 'bihonegnmenber@gmail.com', 'dgf'),
(285, 'ayinalemmenber@gmail.com', 'bihonegnmenber@gmail.com', 'dff'),
(286, 'ayinalemmenber@gmail.com', 'bihonegnmenber@gmail.com', 'dffg'),
(287, 'ayinalemmenber@gmail.com', 'bihonegnmenber@gmail.com', 'dffg'),
(288, 'ayinalemmenber@gmail.com', 'bihonegnmenber@gmail.com', 'dfgf'),
(289, 'ayinalemmenber@gmail.com', 'bihonegnmenber@gmail.com', 'dfg'),
(290, 'ayinalemmenber@gmail.com', 'bihonegnmenber@gmail.com', 'dgf'),
(291, 'ayinalemmenber@gmail.com', 'bihonegnmenber@gmail.com', 'sjdfjdks'),
(292, 'ayinalemmenber@gmail.com', 'bihonegnmenber@gmail.com', 'hsjdghfj'),
(293, 'ayinalemmenber@gmail.com', 'zelalembayih@gmail.com', 'fjkfsfkf'),
(294, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', 'tyewur'),
(295, 'ayinalemmenber@gmail.com', 'luelmenber@gmail.com', 'yruiut'),
(296, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', 'tyrytiii'),
(300, 'yilkalayinalem@gmail.com', 'ayinalemmenber@gmail.com', 'uuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu'),
(301, 'yilkalayinalem@gmail.com', 'ayinalemmenber@gmail.com', 'yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy'),
(302, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'),
(303, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', 'BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB'),
(304, 'zelalembayih@gmail.com', 'luelmenber@gmail.com', 'Luel Menber'),
(305, 'luelmenber@gmail.com', 'zelalembayih@gmail.com', 'Abet Zelalem Bayih'),
(306, 'ayinalemmenber@gmail.com', 'zelalembayih@gmail.com', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh'),
(307, 'zelalembayih@gmail.com', 'ayinalemmenber@gmail.com', 'ggggggggggggggggggggggggggggggggggggggggggggggg'),
(308, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', 'ይልቃል'),
(309, 'yilkalayinalem@gmail.com', 'ayinalemmenber@gmail.com', 'አቤት'),
(310, 'ayinalemmenber@gmail.com', 'bihonegnmenber@gmail.com', 'yyryyyyyyyyyyyy'),
(311, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', ''),
(312, 'ayinalemmenber@gmail.com', 'zelalembayih@gmail.com', 'uuuuuuuuuuuuuuu'),
(313, 'ayinalemmenber@gmail.com', 'zelalembayih@gmail.com', 'uuuuuuuuuuuuuuuuuu'),
(314, 'ayinalemmenber@gmail.com', 'zelalembayih@gmail.com', 'ttt'),
(315, 'ayinalemmenber@gmail.com', 'zelalembayih@gmail.com', 'temesgen'),
(316, 'ayinalemmenber@gmail.com', 'zelalembayih@gmail.com', '6666666666'),
(317, 'ayinalemmenber@gmail.com', 'zelalembayih@gmail.com', '55555'),
(318, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', '88888888888'),
(319, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', '99999999999999999'),
(320, 'ayinalemmenber@gmail.com', 'luelmenber@gmail.com', 'luel'),
(321, 'ayinalemmenber@gmail.com', 'luelmenber@gmail.com', 'Abebe'),
(322, 'ayinalemmenber@gmail.com', 'luelmenber@gmail.com', 'ggggggggggg'),
(323, 'ayinalemmenber@gmail.com', 'zelalembayih@gmail.com', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhh'),
(324, 'yilkalayinalem@gmail.com', 'ayinalemmenber@gmail.com', 'Father'),
(325, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', 'Yilkal'),
(326, 'yilkalayinalem@gmail.com', 'luelmenber@gmail.com', 'fdsdeyeruyeririri'),
(327, 'luelmenber@gmail.com', 'yilkalayinalem@gmail.com', 'reeeeeeeeeeeeeeeeeeee'),
(328, 'ayinalemmenber@gmail.com', 'abebesmachew@gmail.com', 'jkxjz jds jfsd jh'),
(329, 'ayinalemmenber@gmail.com', 'abebesmachew@gmail.com', 'gfhfhj bbbvbb mmm'),
(330, 'ayinalemmenber@gmail.com', 'abebesmachew@gmail.com', 'ddddddddd dddddddddddddddddd dddddddddddddddddd'),
(331, 'abebesmachew@gmail.com', 'ayinalemmenber@gmail.com', 'eeeeeeeeee eeeeeeeeeee eeeeeeeeeeeeeeeeeee '),
(332, 'abebesmachew@gmail.com', 'ayinalemmenber@gmail.com', 'ffffffffffffffffffff fffffffffffffffffffffff ffffffffffffffffffffffffff'),
(333, 'yilkalayinalem@gmail.com', 'ayinalemmenber@gmail.com', 'twerywyuirtui'),
(334, 'yilkalayinalem@gmail.com', 'ayinalemmenber@gmail.com', 'helen'),
(335, 'yilkalayinalem@gmail.com', 'abebesmachew@gmail.com', 'Abe Pc nw');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `poster_email` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `postedDate` varchar(250) NOT NULL,
  `newsSource` varchar(250) NOT NULL,
  `newsImage` varchar(250) NOT NULL,
  `description` varchar(255) NOT NULL,
  `news_quantity` int(11) NOT NULL,
  `kebele` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `poster_email`, `title`, `postedDate`, `newsSource`, `newsImage`, `description`, `news_quantity`, `kebele`) VALUES
(578, 'enawugawwalie@gmail.com', 'Wheate', '2023-06-12', 'User', 'https://i.ibb.co/fxmhV6Y/News-Image.jpg', 'wheate\n', 1, 'Yemezegn'),
(579, 'zelalembayih@gmail.com', 'DAP', '2023-06-12', 'Mahiberat', '', 'dap\n', 1, 'Yemezegn'),
(580, 'zelalembayih@gmail.com', 'DAP', '2023-06-12', 'Mahiberat', '', 'dap\n', 1, 'Yemezegn'),
(581, 'kerealemeshetie@gmail.com', 'Debre Elias agricultural office', '2023-06-12', 'Debre Elias Agricultural Office', '', 'Debre Elias agricultural office\n', 1, 'Debre Elias Woreda');

-- --------------------------------------------------------

--
-- Table structure for table `orderrestriction`
--

CREATE TABLE `orderrestriction` (
  `restriction_id` int(11) NOT NULL,
  `product_Id` int(11) NOT NULL,
  `allowed_quantity` int(11) NOT NULL,
  `notifier_email` varchar(50) NOT NULL,
  `kebele` varchar(50) NOT NULL,
  `expire_date` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderrestriction`
--

INSERT INTO `orderrestriction` (`restriction_id`, `product_Id`, `allowed_quantity`, `notifier_email`, `kebele`, `expire_date`) VALUES
(75, 212, 8, 'zelalembayih@gmail.com', 'Yemezegn', '2023-08-31 21:00:00.000000'),
(76, 213, 6, 'zelalembayih@gmail.com', 'Yemezegn', '2023-08-31 21:00:00.000000'),
(77, 214, 7, 'zelalembayih@gmail.com', 'Yemezegn', '2023-08-31 21:00:00.000000'),
(78, 215, 9, 'zelalembayih@gmail.com', 'Yemezegn', '2023-08-31 21:00:00.000000'),
(79, 217, 10, 'zelalembayih@gmail.com', 'Yemezegn', '2023-04-29 21:00:00.000000'),
(80, 227, 15, 'zelalembayih@gmail.com', 'Yemezegn', '2023-04-20 21:00:00.000000'),
(81, 236, 10, 'zelalembayih@gmail.com', 'Yemezegn', '2023-05-14 21:00:00.000000'),
(82, 235, 10, 'zelalembayih@gmail.com', 'Yemezegn', '2023-05-14 21:00:00.000000'),
(83, 238, 10, 'bereketedmealem@gmail.com', 'Yeguarat', '2023-05-24 21:00:00.000000'),
(84, 239, 6, 'bereketedmealem@gmail.com', 'Yeguarat', '2023-05-24 21:00:00.000000'),
(85, 257, 20, 'bereketedmealem@gmail.com', 'Yeguarat', '2023-05-25 21:00:00.000000'),
(86, 259, 30, 'bereketedmealem@gmail.com', 'Yeguarat', '2023-05-25 21:00:00.000000'),
(87, 261, 10, 'bereketedmealem@gmail.com', 'Yeguarat', '2023-05-25 21:00:00.000000'),
(88, 274, 10, 'wondmenehworku@gmail.com', 'Yedenbegn', '2023-06-07 21:00:00.000000'),
(89, 276, 10, 'wondmenehworku@gmail.com', 'Yedenbegn', '2023-06-07 21:00:00.000000'),
(90, 280, 10, 'asmarezelalem@gmail.com', 'Degolma', '2023-06-07 21:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

CREATE TABLE `ordertable` (
  `order_id` int(11) NOT NULL,
  `patent_email` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `nOrders` int(11) DEFAULT NULL,
  `ordered_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `edited_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `order_kebele` varchar(255) NOT NULL,
  `totalCart` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `confirm` int(11) NOT NULL,
  `confir` int(11) NOT NULL,
  `cancel` int(11) NOT NULL,
  `payStatus` int(11) NOT NULL,
  `reciet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordertable`
--

INSERT INTO `ordertable` (`order_id`, `patent_email`, `user_email`, `nOrders`, `ordered_date`, `edited_date`, `order_kebele`, `totalCart`, `product_id`, `confirm`, `confir`, `cancel`, `payStatus`, `reciet`) VALUES
(935, 'mulatfkadu@gmail.com', 'luelmenber@gmail.com', 2, '2023-04-23 05:11:46.593000', '2023-04-23 05:11:46.593000', 'Yemezegn', 0, 227, 1, 1, 0, 1, 0),
(958, 'mulatfkadu@gmail.com', 'luelmenber@gmail.com', 1, '2023-04-23 10:01:47.093000', '2023-04-23 10:01:47.093000', 'Yemezegn', 0, 227, 1, 1, 0, 1, 0),
(960, 'mulatfkadu@gmail.com', 'luelmenber@gmail.com', 1, '2023-04-23 10:11:08.150000', '2023-04-23 10:11:08.150000', 'Yemezegn', 0, 227, 1, 1, 0, 1, 0),
(962, 'mulatfkadu@gmail.com', 'luelmenber@gmail.com', 1, '2023-04-23 10:24:44.850000', '2023-04-23 10:24:44.850000', 'Yemezegn', 0, 227, 1, 1, 0, 1, 0),
(1028, 'mulatfkadu@gmail.com', 'luelmenber@gmail.com', 2, '2023-05-03 05:16:00.510000', '2023-05-03 05:16:00.510000', 'Yemezegn', 0, 235, 1, 1, 0, 1, 0),
(1029, 'mulatfkadu@gmail.com', 'luelmenber@gmail.com', 3, '2023-05-03 05:16:12.892000', '2023-05-03 05:16:12.892000', 'Yemezegn', 0, 236, 1, 1, 0, 1, 0),
(1064, 'luelmenber@gmail.com', 'ayinalemmenber@gmail.com', 2, '2023-05-13 01:20:04.515000', '2023-05-13 01:20:04.515000', '', NULL, 232, 1, 1, 0, 1, 0),
(1111, 'alebeleedmealem@gmail.com', 'abebesmachew@gmail.com', 2, '2023-05-15 08:11:02.763000', '2023-05-15 08:11:02.763000', 'Yeguarat', 0, 238, 1, 1, 0, 1, 0),
(1140, 'ayinalemmenber@gmail.com', 'luelmenber@gmail.com', 2, '2023-05-19 10:56:56.789000', '2023-05-19 10:56:56.789000', '', NULL, 224, 1, 1, 0, 1, 0),
(1146, 'luelmenber@gmail.com', 'abebesmachew@gmail.com', 2, '2023-05-26 03:55:37.728000', '2023-05-26 03:55:37.728000', '', NULL, 232, 1, 1, 0, 1, 0),
(1162, 'ayinalemmenber@gmail.com', 'befkaduenawugaw@gmail.com', 1, '2023-06-02 02:37:08.172000', '2023-06-02 02:37:08.172000', '', NULL, 224, 1, 1, 0, 1, 0),
(1164, 'luelmenber@gmail.com', 'befkaduenawugaw@gmail.com', 1, '2023-06-02 02:37:21.605000', '2023-06-02 02:37:21.605000', '', NULL, 232, 1, 1, 0, 1, 0),
(1165, 'mulatfkadu@gmail.com', 'yaregaladamu@gmail.com', 1, '2023-06-02 05:09:43.782000', '2023-06-02 05:09:43.782000', 'Yemezegn', 0, 215, 1, 1, 0, 1, 0),
(1166, 'mulatfkadu@gmail.com', 'yaregaladamu@gmail.com', 2, '2023-06-02 05:10:03.437000', '2023-06-02 05:10:03.437000', 'Yemezegn', 0, 227, 1, 1, 0, 1, 0),
(1167, 'mulatfkadu@gmail.com', 'yaregaladamu@gmail.com', 1, '2023-06-02 05:42:11.046000', '2023-06-02 05:42:11.046000', 'Yemezegn', 0, 215, 1, 1, 0, 1, 0),
(1168, 'mulatfkadu@gmail.com', 'yaregaladamu@gmail.com', 1, '2023-06-02 05:42:17.520000', '2023-06-02 05:42:17.520000', 'Yemezegn', 0, 227, 1, 1, 0, 1, 0),
(1175, 'mulatfkadu@gmail.com', 'yaregaladamu@gmail.com', 1, '2023-06-04 17:50:38.298000', '2023-06-04 17:50:38.298000', 'Yemezegn', 0, 215, 1, 1, 0, 1, 0),
(1176, 'mulatfkadu@gmail.com', 'yaregaladamu@gmail.com', 1, '2023-06-04 17:51:01.996000', '2023-06-04 17:51:01.996000', 'Yemezegn', 0, 227, 1, 1, 0, 1, 0),
(1201, 'kassayielnger@gmail.com', 'balewhaimanot@gmail.com', 1, '2023-06-08 15:34:20.239000', '2023-06-08 15:34:20.239000', 'Degolma', 0, 280, 0, 0, 0, 0, 0),
(1202, 'mulatfkadu@gmail.com', 'yaregaladamu@gmail.com', 1, '2023-06-08 17:22:44.302000', '2023-06-08 17:22:44.302000', 'Yemezegn', 0, 236, 1, 1, 0, 1, 0),
(1203, 'mulatfkadu@gmail.com', 'yaregaladamu@gmail.com', 1, '2023-06-08 17:22:51.167000', '2023-06-08 17:22:51.167000', 'Yemezegn', 0, 227, 1, 1, 0, 1, 0),
(1204, 'mulatfkadu@gmail.com', 'yaregaladamu@gmail.com', 1, '2023-06-08 17:23:03.480000', '2023-06-08 17:23:03.480000', 'Yemezegn', 0, 215, 1, 1, 0, 1, 0),
(1217, 'mulatfkadu@gmail.com', 'luelmenber@gmail.com', 2, '2023-06-09 04:35:26.539000', '2023-06-09 04:35:26.539000', 'Yemezegn', 0, 236, 1, 1, 0, 1, 0),
(1219, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', 4, '2023-06-09 05:24:59.016000', '2023-06-10 03:04:59.007000', '', NULL, 224, 1, 1, 0, 1, 0),
(1232, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', 9, '2023-06-09 13:58:02.161000', '2023-06-10 03:06:11.529000', '', NULL, 225, 1, 1, 0, 1, 0),
(1233, 'mulatfkadu@gmail.com', 'luelmenber@gmail.com', 4, '2023-06-09 14:00:26.927000', '2023-06-09 15:04:17.586000', 'Yemezegn', 0, 215, 0, 0, 0, 0, 0),
(1241, 'luelmenber@gmail.com', 'yilkalayinalem@gmail.com', 3, '2023-06-10 03:05:16.060000', '2023-06-10 03:05:16.060000', '', NULL, 232, 1, 1, 0, 1, 0),
(1242, 'luelmenber@gmail.com', 'yilkalayinalem@gmail.com', 3, '2023-06-10 03:05:47.300000', '2023-06-10 03:05:47.300000', '', NULL, 233, 1, 1, 0, 1, 0),
(1243, 'yaregaladamu@gmail.com', 'yilkalayinalem@gmail.com', 1, '2023-06-10 03:06:01.296000', '2023-06-10 03:06:01.296000', '', NULL, 262, 1, 1, 0, 1, 0),
(1244, 'ayinalemmenber@gmail.com', 'abebesmachew@gmail.com', 3, '2023-06-10 03:33:29.043000', '2023-06-10 03:33:29.043000', '', NULL, 224, 0, 0, 0, 0, 0),
(1245, 'ayinalemmenber@gmail.com', 'abebesmachew@gmail.com', 2, '2023-06-10 03:33:40.606000', '2023-06-10 03:33:40.606000', '', NULL, 225, 0, 0, 0, 0, 0),
(1246, 'luelmenber@gmail.com', 'abebesmachew@gmail.com', 4, '2023-06-10 03:33:47.396000', '2023-06-10 03:33:47.396000', '', NULL, 232, 0, 0, 0, 0, 0),
(1247, 'luelmenber@gmail.com', 'abebesmachew@gmail.com', 2, '2023-06-10 03:33:53.165000', '2023-06-10 03:33:53.165000', '', NULL, 233, 0, 0, 0, 0, 0),
(1248, 'yaregaladamu@gmail.com', 'abebesmachew@gmail.com', 3, '2023-06-10 03:34:01.566000', '2023-06-10 03:34:01.566000', '', NULL, 273, 0, 0, 0, 0, 0),
(1252, 'ayinalemmenber@gmail.com', 'ayinalemmenber@gmail.com', 2, '2023-06-11 04:05:07.529000', '2023-06-11 04:05:07.529000', '', NULL, 225, 0, 0, 0, 0, 0),
(1253, 'mulatfkadu@gmail.com', 'ayinalemmenber@gmail.com', 2, '2023-06-11 04:05:29.005000', '2023-06-11 04:05:52.720000', 'Yemezegn', 0, 236, 0, 0, 0, 0, 0),
(1254, 'luelmenber@gmail.com', 'ayinalemmenber@gmail.com', 1, '2023-06-11 04:05:43.535000', '2023-06-11 04:05:43.535000', '', NULL, 232, 0, 0, 0, 0, 0),
(1255, 'mulatfkadu@gmail.com', 'enawugawwalie@gmail.com', 2, '2023-06-11 04:21:59.291000', '2023-06-11 04:22:16.524000', 'Yemezegn', 0, 227, 1, 1, 0, 1, 0),
(1256, 'mulatfkadu@gmail.com', 'enawugawwalie@gmail.com', 2, '2023-06-11 04:22:05.531000', '2023-06-11 04:22:10.486000', 'Yemezegn', 0, 236, 1, 1, 0, 1, 0),
(1257, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', 2, '2023-06-11 04:59:37.218000', '2023-06-11 04:59:37.218000', '', NULL, 224, 1, 1, 0, 1, 0),
(1258, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', 2, '2023-06-11 04:59:43.453000', '2023-06-11 04:59:43.453000', '', NULL, 225, 1, 1, 0, 1, 0),
(1259, 'luelmenber@gmail.com', 'yilkalayinalem@gmail.com', 2, '2023-06-11 04:59:49.621000', '2023-06-11 04:59:49.621000', '', NULL, 232, 1, 1, 0, 1, 0),
(1260, 'luelmenber@gmail.com', 'yilkalayinalem@gmail.com', 2, '2023-06-11 04:59:54.582000', '2023-06-11 04:59:54.582000', '', NULL, 233, 1, 1, 0, 1, 0),
(1261, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', 4, '2023-06-11 05:29:06.624000', '2023-06-11 05:29:06.624000', '', NULL, 224, 1, 1, 0, 1, 0),
(1262, 'ayinalemmenber@gmail.com', 'yilkalayinalem@gmail.com', 3, '2023-06-11 05:29:16.153000', '2023-06-11 05:29:16.153000', '', NULL, 225, 1, 1, 0, 1, 0),
(1263, 'luelmenber@gmail.com', 'yilkalayinalem@gmail.com', 3, '2023-06-11 05:29:25.366000', '2023-06-11 05:29:25.366000', '', NULL, 232, 0, 0, 0, 0, 0),
(1264, 'luelmenber@gmail.com', 'yilkalayinalem@gmail.com', 2, '2023-06-11 05:29:32.051000', '2023-06-11 05:29:32.051000', '', NULL, 233, 0, 0, 0, 0, 0),
(1265, 'yaregaladamu@gmail.com', 'yilkalayinalem@gmail.com', 2, '2023-06-11 05:29:42.721000', '2023-06-11 05:29:42.721000', '', NULL, 262, 0, 0, 0, 0, 0),
(1266, 'yibeltalabebe@gmail.com', 'yilkalayinalem@gmail.com', 2, '2023-06-11 05:29:49.749000', '2023-06-11 05:29:49.749000', '', NULL, 268, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ratingandfavorite`
--

CREATE TABLE `ratingandfavorite` (
  `favorite_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `favorite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratingandfavorite`
--

INSERT INTO `ratingandfavorite` (`favorite_id`, `user_email`, `product_id`, `star`, `favorite`) VALUES
(41, 'ayinalemmenber@gmail.com', 214, 4, 0),
(45, 'ayinalemmenber@gmail.com', 215, 3, 0),
(46, 'ayinalemmenber@gmail.com', 226, 5, 0),
(53, 'luelmenber@gmail.com', 224, 5, 0),
(54, 'luelmenber@gmail.com', 227, 5, 0),
(56, 'yilkalayinalem@gmail.com', 266, 4, 0),
(57, 'yilkalayinalem@gmail.com', 271, 5, 0),
(58, 'yibeltalabebe@gmail.com', 259, 1, 0),
(60, 'yilkalayinalem@gmail.com', 225, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `reporter_email` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `report_owner` varchar(255) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `report_status` varchar(255) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `transaction_in_birr` int(11) NOT NULL,
  `transfer_status` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `monthName` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `hour` int(11) NOT NULL,
  `minute` int(11) NOT NULL,
  `second` int(11) NOT NULL,
  `millisecond` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `reporter_email`, `product_name`, `quantity`, `report_owner`, `user_email`, `report_status`, `transaction`, `transaction_in_birr`, `transfer_status`, `day`, `monthName`, `year`, `month`, `date`, `hour`, `minute`, `second`, `millisecond`) VALUES
(5, 'zelalembayih@gmail.com', 'DAP', 7, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 4100, 1, 'Wensday', 'April', 2020, 4, 18, 0, 0, 0, 0),
(6, 'zelalembayih@gmail.com', 'UREA', 6, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 3500, 1, 'Monday', 'May', 2020, 5, 21, 0, 0, 0, 0),
(7, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 4100, 1, 'Monday', 'June', 2020, 6, 12, 0, 0, 0, 0),
(8, 'zelalembayih@gmail.com', 'Oil', 2, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 500, 0, 'Tuesday', 'January', 2021, 1, 23, 0, 0, 0, 0),
(9, 'zelalembayih@gmail.com', 'UREA', 1, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 3500, 0, 'Wenesday', 'March', 2021, 3, 15, 0, 0, 0, 0),
(10, 'zelalembayih@gmail.com', 'DAP', 2, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 4100, 0, 'Tuersday', 'May', 2021, 5, 11, 0, 0, 0, 0),
(11, 'zelalembayih@gmail.com', 'Oil', 4, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 500, 0, 'Friday', 'June', 2021, 6, 10, 0, 0, 0, 0),
(15, 'zelalembayih@gmail.com', 'Oil', 3, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 500, 0, 'Tuesday', 'June', 2022, 6, 1, 0, 0, 0, 0),
(16, 'zelalembayih@gmail.com', 'Oil', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 0, 'Wesnsday', 'March', 2023, 3, 18, 0, 0, 0, 0),
(17, 'zelalembayih@gmail.com', 'UREA', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 3500, 0, 'Tuersday', 'March', 2023, 3, 18, 0, 0, 0, 0),
(18, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 0, 'Friday', 'March', 2023, 3, 18, 9, 51, 41, 801),
(19, 'zelalembayih@gmail.com', 'UREA', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 3500, 0, 'Saturday', 'March', 2023, 3, 18, 9, 57, 41, 499),
(20, 'zelalembayih@gmail.com', 'Oil', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 0, 'Sunday', 'March', 2023, 3, 18, 10, 4, 51, 870),
(21, 'zelalembayih@gmail.com', 'Oil', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 0, 'Sunday', 'March', 2023, 3, 18, 10, 44, 55, 478),
(22, 'zelalembayih@gmail.com', 'UREA', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 3500, 0, 'Sunday', 'March', 2023, 3, 18, 10, 48, 53, 513),
(23, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 0, 'Sunday', 'March', 2023, 3, 18, 11, 9, 25, 387),
(25, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 0, 'Sunday', 'March', 2023, 3, 18, 14, 12, 57, 520),
(26, 'zelalembayih@gmail.com', 'UREA', 3, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 3500, 0, 'Sunday', 'March', 2023, 3, 18, 19, 42, 9, 786),
(27, 'zelalembayih@gmail.com', 'DAP', 4, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 0, 'Sunday', 'March', 2023, 3, 18, 19, 42, 12, 574),
(28, 'zelalembayih@gmail.com', 'Oil', 2, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 0, 'Sunday', 'March', 2023, 3, 18, 19, 42, 14, 327),
(29, 'zelalembayih@gmail.com', 'UREA', 2, 'Yemezegn', 'bihonegnmenber@gmail.com', 'sell', 'cash in', 3500, 0, 'Sunday', 'March', 2023, 3, 18, 19, 42, 15, 998),
(30, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', 'bihonegnmenber@gmail.com', 'sell', 'cash in', 4100, 0, 'Sunday', 'March', 2023, 3, 18, 19, 42, 17, 731),
(31, 'zelalembayih@gmail.com', 'Oil', 3, 'Yemezegn', 'bihonegnmenber@gmail.com', 'sell', 'cash in', 500, 0, 'Sunday', 'March', 2023, 3, 18, 19, 42, 19, 469),
(32, 'zelalembayih@gmail.com', 'UREA', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 3500, 0, 'Sunday', 'March', 2023, 3, 18, 20, 16, 54, 778),
(33, 'zelalembayih@gmail.com', 'UREA', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 3500, 0, 'Sunday', 'March', 2023, 3, 18, 20, 16, 57, 901),
(34, 'zelalembayih@gmail.com', 'UREA', 2, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 3500, 0, 'Monday', 'March', 2023, 3, 19, 14, 9, 55, 271),
(35, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 0, 'Monday', 'March', 2023, 3, 19, 14, 9, 57, 674),
(36, 'zelalembayih@gmail.com', 'Oil', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 0, 'Monday', 'March', 2023, 3, 19, 14, 9, 59, 294),
(37, 'zelalembayih@gmail.com', 'DAP', 3, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 0, 'Monday', 'March', 2023, 3, 19, 16, 3, 43, 479),
(38, 'zelalembayih@gmail.com', 'Oil', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 0, 'Monday', 'March', 2023, 3, 19, 16, 3, 45, 285),
(39, 'zelalembayih@gmail.com', 'DAP', 5, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 0, 'Monday', 'March', 2023, 3, 19, 18, 6, 24, 685),
(40, 'zelalembayih@gmail.com', 'Oil', 2, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 0, 'Monday', 'March', 2023, 3, 19, 18, 6, 28, 341),
(41, 'zelalembayih@gmail.com', 'DAP', 3, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 0, 'Monday', 'March', 2023, 3, 19, 19, 8, 30, 366),
(42, 'zelalembayih@gmail.com', 'Oil', 1, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 0, 'Monday', 'March', 2023, 3, 19, 19, 8, 32, 234),
(43, 'zelalembayih@gmail.com', 'DAP', 7, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 4100, 0, 'Monday', 'March', 2023, 3, 19, 20, 29, 7, 265),
(44, 'zelalembayih@gmail.com', 'Oil', 3, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 500, 0, 'Monday', 'March', 2023, 3, 19, 20, 29, 9, 157),
(86, 'zelalembayih@gmail.com', 'Oil', 2, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 500, 0, 'Wednsday', 'March', 2023, 3, 28, 20, 19, 19, 181),
(87, 'zelalembayih@gmail.com', 'DAP', 10, 'Yemezegn', 'ayinalemmenber@gmail.com', 'sell', 'cash in', 4000, 0, 'Wednsday', 'March', 2023, 3, 28, 20, 19, 21, 175),
(88, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Wednsday', 'March', 2023, 3, 28, 23, 22, 10, 581),
(89, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Wednsday', 'March', 2023, 3, 28, 23, 24, 5, 65),
(90, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Wednsday', 'March', 2023, 3, 28, 23, 24, 29, 367),
(91, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Wednsday', 'March', 2023, 3, 28, 23, 46, 33, 739),
(92, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Wednsday', 'March', 2023, 3, 28, 23, 46, 44, 552),
(93, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'March', 2023, 3, 29, 0, 11, 37, 998),
(94, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'March', 2023, 3, 29, 1, 30, 0, 806),
(95, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'March', 2023, 3, 29, 8, 49, 14, 741),
(96, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'March', 2023, 3, 29, 8, 49, 26, 331),
(97, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'March', 2023, 3, 29, 8, 49, 36, 632),
(98, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'March', 2023, 3, 29, 8, 55, 14, 974),
(99, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'March', 2023, 3, 29, 8, 55, 24, 336),
(100, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'March', 2023, 3, 29, 8, 55, 33, 220),
(101, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'March', 2023, 3, 29, 9, 12, 56, 32),
(102, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'March', 2023, 3, 29, 9, 13, 5, 495),
(103, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'March', 2023, 3, 29, 9, 13, 15, 61),
(104, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'March', 2023, 3, 29, 11, 16, 6, 987),
(105, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'March', 2023, 3, 30, 17, 38, 10, 660),
(106, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'March', 2023, 3, 30, 17, 38, 21, 783),
(107, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'March', 2023, 3, 30, 17, 38, 32, 358),
(108, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'March', 2023, 3, 30, 19, 4, 53, 657),
(109, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'March', 2023, 3, 30, 19, 6, 32, 21),
(110, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'March', 2023, 3, 30, 19, 6, 39, 221),
(111, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'March', 2023, 3, 30, 19, 6, 47, 451),
(112, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'March', 2023, 3, 30, 19, 32, 22, 208),
(113, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 11, 56, 4, 220),
(114, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 11, 56, 12, 544),
(115, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 11, 56, 19, 110),
(116, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 12, 13, 39, 773),
(117, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 12, 13, 50, 496),
(118, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 13, 57, 47, 975),
(119, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 14, 15, 28, 921),
(120, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 14, 15, 34, 464),
(121, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 14, 22, 3, 567),
(122, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 14, 22, 9, 10),
(123, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 14, 53, 42, 208),
(124, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 14, 56, 30, 547),
(125, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 15, 2, 38, 771),
(126, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 15, 6, 49, 533),
(127, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 15, 10, 7, 537),
(128, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 15, 12, 27, 175),
(129, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 15, 13, 38, 147),
(130, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tuesday', 'April', 2023, 4, 3, 15, 13, 43, 854),
(131, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Wednsday', 'April', 2023, 4, 4, 13, 1, 37, 544),
(132, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Wednsday', 'April', 2023, 4, 4, 13, 1, 44, 988),
(133, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'April', 2023, 4, 5, 0, 20, 51, 683),
(134, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'April', 2023, 4, 5, 0, 20, 58, 860),
(135, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'April', 2023, 4, 5, 14, 41, 34, 260),
(136, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'April', 2023, 4, 6, 16, 16, 2, 197),
(137, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Saturday', 'April', 2023, 4, 7, 23, 55, 50, 21),
(138, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Saturday', 'April', 2023, 4, 7, 23, 57, 8, 986),
(139, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Sunday', 'April', 2023, 4, 8, 0, 20, 30, 698),
(140, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Sunday', 'April', 2023, 4, 15, 7, 8, 27, 269),
(141, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Sunday', 'April', 2023, 4, 15, 7, 9, 16, 111),
(142, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'April', 2023, 4, 19, 22, 2, 13, 990),
(143, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'April', 2023, 4, 19, 22, 2, 21, 671),
(145, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'April', 2023, 4, 19, 22, 42, 12, 738),
(146, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'April', 2023, 4, 19, 22, 46, 25, 496),
(147, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'April', 2023, 4, 19, 22, 46, 33, 402),
(148, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'April', 2023, 4, 19, 23, 4, 31, 4),
(149, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'April', 2023, 4, 19, 23, 4, 37, 633),
(150, 'zelalembayih@gmail.com', 'A, B, C', 5, 'Yemezegn', '', 'sell', 'cash in', 500, 0, 'Tursday', 'April', 2023, 4, 19, 5, 3, 40, 500),
(151, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'April', 2023, 4, 20, 9, 32, 22, 231),
(152, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', '', 'sell', 'cash in', 4000, 0, 'Friday', 'April', 2023, 4, 20, 9, 34, 32, 749),
(153, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', '', 'sell', 'cash in', 4000, 0, 'Friday', 'April', 2023, 4, 20, 9, 34, 49, 561),
(154, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', '', 'sell', 'cash in', 4000, 0, 'Friday', 'April', 2023, 4, 20, 9, 34, 49, 751),
(155, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', '', 'sell', 'cash in', 4000, 0, 'Friday', 'April', 2023, 4, 20, 9, 37, 29, 885),
(156, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'April', 2023, 4, 20, 10, 28, 25, 551),
(157, '', 'DAP', 1, 'Yemezegn', '', 'sell', 'cash in', 4000, 0, 'Friday', 'April', 2023, 4, 20, 10, 51, 25, 831),
(158, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', '', 'sell', 'cash in', 4000, 0, 'Friday', 'April', 2023, 4, 20, 13, 50, 25, 440),
(159, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', '', 'sell', 'cash in', 4000, 0, 'Friday', 'April', 2023, 4, 20, 13, 50, 56, 631),
(160, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', '', 'sell', 'cash in', 4000, 0, 'Friday', 'April', 2023, 4, 20, 13, 51, 37, 863),
(161, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', '', 'sell', 'cash in', 4000, 0, 'Friday', 'April', 2023, 4, 20, 13, 51, 38, 53),
(162, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'April', 2023, 4, 20, 14, 3, 22, 769),
(163, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', '', 'sell', 'cash in', 4000, 0, 'Friday', 'April', 2023, 4, 20, 14, 25, 50, 998),
(164, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', '', 'sell', 'cash in', 4000, 0, 'Friday', 'April', 2023, 4, 20, 14, 32, 31, 483),
(165, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'April', 2023, 4, 20, 14, 40, 5, 506),
(166, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', '', 'sell', 'cash in', 4000, 0, 'Friday', 'April', 2023, 4, 20, 14, 40, 15, 5),
(167, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'April', 2023, 4, 20, 14, 45, 23, 284),
(168, 'zelalembayih@gmail.com', 'DAP', 1, 'Yemezegn', '', 'sell', 'cash in', 500, 0, 'Friday', 'April', 2023, 4, 20, 14, 45, 51, 237),
(169, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'April', 2023, 4, 20, 15, 18, 58, 405),
(170, 'zelalembayih@gmail.com', 'Oil, ', 1, 'Yemezegn', '', 'sell', 'cash in', 500, 0, 'Friday', 'April', 2023, 4, 20, 15, 45, 49, 120),
(171, 'zelalembayih@gmail.com', 'Oil, ', 1, 'Yemezegn', '', 'sell', 'cash in', 500, 0, 'Friday', 'April', 2023, 4, 20, 15, 49, 57, 205),
(172, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'April', 2023, 4, 20, 15, 52, 30, 215),
(173, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Friday', 'April', 2023, 4, 20, 15, 52, 39, 128),
(174, 'zelalembayih@gmail.com', 'Wheate, Oil, ', 1, 'Yemezegn', '', 'sell', 'cash in', 6500, 0, 'Friday', 'April', 2023, 4, 20, 15, 53, 28, 320),
(175, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Saturday', 'April', 2023, 4, 21, 10, 17, 48, 79),
(176, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Saturday', 'April', 2023, 4, 21, 10, 17, 59, 407),
(177, 'zelalembayih@gmail.com', 'Sugar, Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 300, 0, 'Saturday', 'April', 2023, 4, 21, 10, 18, 7, 446),
(178, 'mulatfkadu@gmail.com', 'Oil', 4000, 'Yemezegn', '', 'buy', 'cash out', 500, 0, 'Saturday', 'April', 2023, 4, 21, 10, 23, 47, 815),
(179, 'zelalembayih@gmail.com', '', 1, 'Yemezegn', '', 'sell', 'cash in', 0, 0, 'Saturday', 'April', 2023, 4, 21, 23, 37, 35, 317),
(180, 'zelalembayih@gmail.com', '', 1, 'Yemezegn', '', 'sell', 'cash in', 0, 0, 'Saturday', 'April', 2023, 4, 21, 23, 37, 48, 679),
(181, 'zelalembayih@gmail.com', '', 1, 'Yemezegn', '', 'sell', 'cash in', 0, 0, 'Saturday', 'April', 2023, 4, 21, 23, 37, 57, 270),
(182, 'zelalembayih@gmail.com', '', 1, 'Yemezegn', '', 'sell', 'cash in', 0, 0, 'Saturday', 'April', 2023, 4, 21, 23, 38, 2, 433),
(183, 'zelalembayih@gmail.com', '', 1, 'Yemezegn', '', 'sell', 'cash in', 0, 0, 'Saturday', 'April', 2023, 4, 21, 23, 38, 5, 89),
(184, 'zelalembayih@gmail.com', '', 1, 'Yemezegn', '', 'sell', 'cash in', 0, 0, 'Saturday', 'April', 2023, 4, 21, 23, 38, 5, 671),
(185, 'zelalembayih@gmail.com', 'Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 120, 0, 'Saturday', 'April', 2023, 4, 21, 23, 51, 54, 629),
(186, 'zelalembayih@gmail.com', '', 1, '', '', 'sell', 'cash in', 5000, 0, 'Sunday', 'April', 2023, 4, 22, 9, 50, 46, 390),
(187, 'zelalembayih@gmail.com', 'Wheate, Teff, Maize, Maize, ', 1, '', '', 'sell', 'cash in', 91000, 0, 'Sunday', 'April', 2023, 4, 22, 10, 6, 42, 97),
(188, 'zelalembayih@gmail.com', 'Wheate, Teff, Maize, ', 1, '', '', 'sell', 'cash in', 47000, 0, 'Monday', 'April', 2023, 4, 23, 9, 34, 26, 344),
(189, 'zelalembayih@gmail.com', 'Wheate, Maize, ', 1, '', '', 'sell', 'cash in', 64000, 0, 'Monday', 'April', 2023, 4, 23, 9, 39, 52, 129),
(190, 'zelalembayih@gmail.com', 'Teff, Wheate, ', 1, 'DEA1500003', '', 'sell', 'cash in', 60000, 0, 'Monday', 'April', 2023, 4, 23, 9, 52, 12, 691),
(191, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Monday', 'April', 2023, 4, 23, 9, 57, 40, 961),
(192, 'zelalembayih@gmail.com', 'Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 120, 0, 'Monday', 'April', 2023, 4, 23, 9, 58, 49, 49),
(193, 'bihonegnmenber@gmail.com', 'Maize, Wheate, ', 1, 'DEA1500003', '', 'sell', 'cash in', 51000, 0, 'Monday', 'April', 2023, 4, 23, 10, 29, 37, 692),
(194, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Monday', 'April', 2023, 4, 23, 10, 54, 55, 658),
(195, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Monday', 'April', 2023, 4, 23, 10, 55, 7, 817),
(196, 'mulatfkadu@gmail.com', 'Sugar, Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 300, 0, 'Monday', 'April', 2023, 4, 23, 10, 55, 22, 993),
(197, 'luelmenber@gmail.com', 'Teff, ', 1, 'DEA150000', '', 'sell', 'cash in', 40000, 0, 'Monday', 'April', 2023, 4, 23, 11, 3, 28, 933),
(198, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Monday', 'April', 2023, 4, 23, 11, 11, 46, 670),
(199, 'mulatfkadu@gmail.com', 'Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 120, 0, 'Monday', 'April', 2023, 4, 23, 11, 11, 54, 943),
(200, 'ayinalemmenber@gmail.com', 'Maize, Wheate, ', 1, 'DEA150000', '', 'sell', 'cash in', 30000, 0, 'Monday', 'April', 2023, 4, 23, 12, 0, 13, 25),
(201, 'ayinalemmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 69000, 0, 'Monday', 'April', 2023, 4, 23, 14, 29, 4, 969),
(202, 'ayinalemmenber@gmail.com', 'Wheate, Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 52000, 0, 'Monday', 'April', 2023, 4, 23, 14, 50, 23, 972),
(203, 'ayinalemmenber@gmail.com', 'Wheate, Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 52000, 0, 'Monday', 'April', 2023, 4, 23, 14, 50, 24, 161),
(204, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Monday', 'April', 2023, 4, 23, 15, 6, 52, 26),
(205, 'mulatfkadu@gmail.com', 'Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Monday', 'April', 2023, 4, 23, 15, 7, 0, 192),
(206, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Monday', 'April', 2023, 4, 23, 15, 12, 47, 714),
(207, 'mulatfkadu@gmail.com', 'Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Monday', 'April', 2023, 4, 23, 15, 13, 1, 191),
(208, 'bihonegnmenber@gmail.com', 'Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 12000, 0, 'Monday', 'April', 2023, 4, 23, 15, 14, 45, 788),
(209, 'bihonegnmenber@gmail.com', 'Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 12000, 0, 'Monday', 'April', 2023, 4, 23, 15, 19, 32, 122),
(210, 'bihonegnmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 157000, 0, 'Monday', 'April', 2023, 4, 23, 15, 21, 23, 372),
(211, 'bihonegnmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 157000, 0, 'Monday', 'April', 2023, 4, 23, 15, 21, 48, 176),
(212, 'bihonegnmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 157000, 0, 'Monday', 'April', 2023, 4, 23, 15, 21, 51, 789),
(213, 'bihonegnmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 157000, 0, 'Monday', 'April', 2023, 4, 23, 15, 21, 51, 977),
(214, 'bihonegnmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 157000, 0, 'Monday', 'April', 2023, 4, 23, 15, 22, 52, 665),
(215, 'bihonegnmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 157000, 0, 'Monday', 'April', 2023, 4, 23, 15, 23, 0, 549),
(216, 'bihonegnmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 157000, 0, 'Monday', 'April', 2023, 4, 23, 15, 28, 37, 833),
(217, 'bihonegnmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 157000, 0, 'Monday', 'April', 2023, 4, 23, 15, 28, 42, 716),
(218, 'bihonegnmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 157000, 0, 'Monday', 'April', 2023, 4, 23, 15, 28, 43, 228),
(219, 'bihonegnmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 157000, 0, 'Monday', 'April', 2023, 4, 23, 15, 28, 43, 417),
(220, 'luelmenber@gmail.com', 'Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 40000, 0, 'Monday', 'April', 2023, 4, 23, 15, 30, 50, 992),
(221, 'luelmenber@gmail.com', 'Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 40000, 0, 'Monday', 'April', 2023, 4, 23, 15, 30, 52, 887),
(222, 'luelmenber@gmail.com', 'Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 40000, 0, 'Monday', 'April', 2023, 4, 23, 15, 30, 53, 77),
(223, 'luelmenber@gmail.com', 'Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 46000, 0, 'Monday', 'April', 2023, 4, 23, 15, 35, 15, 720),
(224, 'luelmenber@gmail.com', 'Teff, Wheate, Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 60000, 0, 'Monday', 'April', 2023, 4, 23, 15, 36, 59, 768),
(225, 'ayinalemmenber@gmail.com', 'Wheate, Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 12000, 0, 'Monday', 'April', 2023, 4, 23, 15, 58, 23, 756),
(226, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Monday', 'April', 2023, 4, 23, 16, 1, 37, 372),
(227, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Monday', 'April', 2023, 4, 23, 16, 1, 47, 254),
(228, 'mulatfkadu@gmail.com', 'Sugar, Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 180, 0, 'Monday', 'April', 2023, 4, 23, 16, 1, 57, 84),
(229, 'mulatfkadu@gmail.com', 'Sugar, Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 180, 0, 'Monday', 'April', 2023, 4, 23, 16, 2, 7, 74),
(230, 'mulatfkadu@gmail.com', 'Sugar, Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 180, 0, 'Monday', 'April', 2023, 4, 23, 16, 2, 7, 262),
(231, 'mulatfkadu@gmail.com', 'Sugar, Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 180, 0, 'Monday', 'April', 2023, 4, 23, 16, 3, 7, 473),
(232, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Monday', 'April', 2023, 4, 23, 16, 7, 38, 604),
(233, 'mulatfkadu@gmail.com', 'Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Monday', 'April', 2023, 4, 23, 16, 7, 50, 11),
(234, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Monday', 'April', 2023, 4, 23, 16, 11, 8, 263),
(235, 'mulatfkadu@gmail.com', 'Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Monday', 'April', 2023, 4, 23, 16, 11, 17, 605),
(236, 'mulatfkadu@gmail.com', 'Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Monday', 'April', 2023, 4, 23, 16, 11, 45, 44),
(237, 'mulatfkadu@gmail.com', 'Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Monday', 'April', 2023, 4, 23, 16, 12, 50, 106),
(238, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Monday', 'April', 2023, 4, 23, 16, 19, 58, 441),
(239, 'mulatfkadu@gmail.com', 'Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Monday', 'April', 2023, 4, 23, 16, 20, 27, 481),
(240, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Monday', 'April', 2023, 4, 23, 16, 24, 44, 923),
(241, 'mulatfkadu@gmail.com', 'Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Monday', 'April', 2023, 4, 23, 16, 24, 54, 464),
(242, 'ayinalemmenber@gmail.com', 'Wheate, ', 1, 'DEA1500003', '', 'sell', 'cash in', 18000, 0, 'Monday', 'April', 2023, 4, 23, 16, 32, 14, 858),
(243, 'bihonegnmenber@gmail.com', 'Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 40000, 0, 'Monday', 'April', 2023, 4, 23, 16, 35, 14, 558),
(244, 'bihonegnmenber@gmail.com', 'Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 40000, 0, 'Wednsday', 'April', 2023, 4, 25, 20, 22, 23, 836),
(245, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Wednsday', 'April', 2023, 4, 25, 21, 14, 39, 93),
(246, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Wednsday', 'April', 2023, 4, 25, 21, 14, 47, 740),
(247, 'mulatfkadu@gmail.com', 'Sugar, Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 180, 0, 'Wednsday', 'April', 2023, 4, 25, 21, 14, 59, 146),
(248, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Wednsday', 'April', 2023, 4, 25, 21, 21, 36, 25),
(249, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Wednsday', 'April', 2023, 4, 25, 21, 21, 53, 695),
(250, 'mulatfkadu@gmail.com', 'Sugar, Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 180, 0, 'Wednsday', 'April', 2023, 4, 25, 21, 22, 56, 108),
(251, 'ayinalemmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, Teff, Wheate, Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 18000, 0, 'Wednsday', 'April', 2023, 4, 25, 21, 29, 45, 209),
(252, 'ayinalemmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, Teff, Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 70000, 0, 'Wednsday', 'April', 2023, 4, 25, 21, 33, 35, 600),
(253, 'ayinalemmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 24000, 0, 'Wednsday', 'April', 2023, 4, 25, 21, 35, 12, 799),
(254, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Wednsday', 'April', 2023, 4, 25, 22, 44, 36, 855),
(255, 'mulatfkadu@gmail.com', 'Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 120, 0, 'Wednsday', 'April', 2023, 4, 25, 22, 44, 45, 419),
(256, 'bihonegnmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 15000, 0, 'Saturday', 'April', 2023, 4, 28, 0, 56, 35, 898),
(257, 'luelmenber@gmail.com', 'Wheate, Teff, Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 40000, 0, 'Saturday', 'April', 2023, 4, 28, 8, 49, 55, 854),
(258, 'bihonegnmenber@gmail.com', 'Wheate, Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 48000, 0, 'Saturday', 'April', 2023, 4, 28, 9, 28, 54, 513),
(259, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Saturday', 'April', 2023, 4, 28, 9, 32, 0, 734),
(260, 'mulatfkadu@gmail.com', 'Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 120, 0, 'Saturday', 'April', 2023, 4, 28, 9, 32, 7, 751),
(261, 'ayinalemmenber@gmail.com', 'Teff, ', 1, 'Yemezegn', '', 'sell', 'cash in', 30000, 0, 'Saturday', 'April', 2023, 4, 28, 9, 37, 7, 980),
(262, 'ayinalemmenber@gmail.com', 'Teff, ', 1, 'Yemezegn', '', 'sell', 'cash in', 10000, 0, 'Saturday', 'April', 2023, 4, 28, 10, 56, 4, 607),
(263, 'ayinalemmenber@gmail.com', 'Maize, ', 1, 'Yemezegn', '', 'sell', 'cash in', 24000, 0, 'Saturday', 'April', 2023, 4, 28, 11, 4, 4, 674),
(264, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Sunday', 'April', 2023, 4, 29, 9, 31, 17, 885),
(265, 'mulatfkadu@gmail.com', 'Sugar, ', 1, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Sunday', 'April', 2023, 4, 29, 9, 35, 12, 145),
(266, 'luelmenber@gmail.com', 'Wheate, ', 1, 'Yemezegn', '', 'sell', 'cash in', 24000, 0, 'Sunday', 'April', 2023, 4, 29, 9, 43, 35, 953),
(267, 'ayinalemmenber@gmail.com', 'Wheate, Teff, Wheate, ', 1, 'DEA1500003', '', 'sell', 'cash in', 42000, 0, 'Sunday', 'April', 2023, 4, 29, 9, 45, 17, 490),
(268, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Monday', 'April', 2023, 4, 30, 9, 47, 29, 290),
(269, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Monday', 'April', 2023, 4, 30, 9, 47, 43, 495),
(270, 'bihonegnmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 3000, 0, 'Monday', 'April', 2023, 4, 30, 10, 44, 28, 608),
(271, 'luelmenber@gmail.com', 'Wheate, Teff, Wheate, Teff, ', 1, 'DEA1500003', '', 'sell', 'cash in', 30000, 0, 'Monday', 'April', 2023, 4, 30, 10, 46, 23, 753),
(272, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Wednsday', 'May', 2023, 5, 2, 21, 0, 3, 607),
(273, 'mulatfkadu@gmail.com', 'DAP, ', 1, 'Yemezegn', '', 'sell', 'cash in', 8000, 0, 'Wednsday', 'May', 2023, 5, 2, 21, 0, 11, 5),
(274, 'bihonegnmenber@gmail.com', 'Teff, Maize, Wheate, Teff, ', 1, '', '', 'sell', 'cash in', 12000, 0, 'Wednsday', 'May', 2023, 5, 2, 21, 2, 38, 155),
(275, 'bihonegnmenber@gmail.com', 'Teff, Wheate, Teff, ', 1, 'DEA1500024', '', 'sell', 'cash in', 72000, 0, 'Wednsday', 'May', 2023, 5, 2, 21, 8, 57, 636),
(276, 'luelmenber@gmail.com', 'Wheate, Maize, ', 1, 'DEA1500079', '', 'sell', 'cash in', 24000, 0, 'Wednsday', 'May', 2023, 5, 2, 21, 10, 54, 504),
(277, 'luelmenber@gmail.com', 'Wheate, Teff, Maize, Wheate, Teff, Teff, Wheate, Maize, ', 1, 'DEA1500079', '', 'sell', 'cash in', 24000, 0, 'Wednsday', 'May', 2023, 5, 2, 22, 22, 43, 442),
(278, 'ayinalemmenber@gmail.com', 'Teff, Maize, Wheate, Teff, Teff, Wheate, Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 30000, 0, 'Wednsday', 'May', 2023, 5, 2, 22, 31, 12, 49),
(279, 'ayinalemmenber@gmail.com', 'Teff, Maize, Wheate, Teff, Wheate, Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 18000, 0, 'Wednsday', 'May', 2023, 5, 2, 22, 34, 19, 635),
(280, 'bihonegnmenber@gmail.com', 'Teff, Maize, Wheate, Teff, Maize, ', 1, 'DEA1500024', '', 'sell', 'cash in', 12000, 0, 'Wednsday', 'May', 2023, 5, 2, 22, 38, 3, 231),
(281, 'bihonegnmenber@gmail.com', 'Teff, Wheate, Teff, Maize, ', 1, 'DEA1500024', '', 'sell', 'cash in', 60000, 0, 'Wednsday', 'May', 2023, 5, 2, 22, 38, 38, 386),
(282, 'ayinalemmenber@gmail.com', 'Teff, Teff, Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 28000, 0, 'Wednsday', 'May', 2023, 5, 2, 22, 48, 8, 90),
(283, 'ayinalemmenber@gmail.com', 'Teff, Teff, Teff, Wheate, Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 30000, 0, 'Tursday', 'May', 2023, 5, 3, 0, 36, 45, 300),
(284, 'ayinalemmenber@gmail.com', 'Teff, Teff, Wheate, Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 36000, 0, 'Tursday', 'May', 2023, 5, 3, 0, 40, 18, 929),
(285, 'ayinalemmenber@gmail.com', 'Teff, Teff, Maize, ', 1, 'DEA1500003', '', 'sell', 'cash in', 8000, 0, 'Tursday', 'May', 2023, 5, 3, 0, 40, 41, 274),
(286, 'luelmenber@gmail.com', 'Teff', 2000, 'DEA1500079', '', 'buy', 'cash out', 10000, 0, 'Tursday', 'May', 2023, 5, 3, 0, 49, 41, 986),
(287, 'luelmenber@gmail.com', 'Wheate', 2000, 'DEA1500079', '', 'buy', 'cash out', 6000, 0, 'Tursday', 'May', 2023, 5, 3, 0, 51, 39, 562),
(288, 'luelmenber@gmail.com', 'Teff', 1, 'DEA1500079', '', 'sell', 'cash in', 30000, 0, 'Tursday', 'May', 2023, 5, 3, 1, 9, 36, 974),
(289, 'luelmenber@gmail.com', 'Wheate', 1, 'DEA1500079', '', 'sell', 'cash in', 30000, 0, 'Tursday', 'May', 2023, 5, 3, 1, 10, 19, 69),
(290, 'luelmenber@gmail.com', 'Teff', 4, 'DEA1500079', '', 'sell', 'cash in', 80000, 0, 'Tursday', 'May', 2023, 5, 3, 1, 45, 19, 394),
(291, 'luelmenber@gmail.com', 'Wheate', 3, 'DEA1500079', '', 'sell', 'cash in', 42000, 0, 'Tursday', 'May', 2023, 5, 3, 1, 45, 54, 604),
(292, 'bihonegnmenber@gmail.com', 'Wheate', 6, 'DEA1500024', '', 'sell', 'cash in', 36000, 0, 'Tursday', 'May', 2023, 5, 3, 8, 36, 32, 874),
(293, 'bihonegnmenber@gmail.com', 'Maize', 3, 'DEA1500024', '', 'sell', 'cash in', 9000, 0, 'Tursday', 'May', 2023, 5, 3, 8, 37, 6, 891),
(294, 'bihonegnmenber@gmail.com', 'Teff', 3, 'DEA1500024', '', 'sell', 'cash in', 30000, 0, 'Tursday', 'May', 2023, 5, 3, 8, 39, 26, 838),
(295, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'May', 2023, 5, 3, 8, 42, 34, 677),
(296, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'May', 2023, 5, 3, 8, 42, 45, 41),
(297, 'mulatfkadu@gmail.com', 'Sugar Maize Sugar ', 0, 'Yemezegn', '', 'sell', 'cash in', 15240, 0, 'Tursday', 'May', 2023, 5, 3, 8, 44, 2, 6),
(298, 'mulatfkadu@gmail.com', 'DAP', 4000, 'Yemezegn', '', 'buy', 'cash out', 1900, 0, 'Tursday', 'May', 2023, 5, 3, 8, 58, 52, 331),
(299, 'mulatfkadu@gmail.com', 'DAP', 4000, 'Yemezegn', '', 'buy', 'cash out', 1900, 0, 'Tursday', 'May', 2023, 5, 3, 9, 0, 11, 139),
(300, 'mulatfkadu@gmail.com', 'UREA', 2000, 'Yemezegn', '', 'buy', 'cash out', 1800, 0, 'Tursday', 'May', 2023, 5, 3, 9, 1, 48, 803),
(301, 'mulatfkadu@gmail.com', 'Oil Wheate Sugar ', 0, 'Yemezegn', '', 'sell', 'cash in', 30560, 0, 'Tursday', 'May', 2023, 5, 3, 9, 11, 40, 339),
(302, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'May', 2023, 5, 3, 9, 29, 26, 360),
(303, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'May', 2023, 5, 3, 9, 29, 35, 588),
(304, 'mulatfkadu@gmail.com', 'DAP ', 3, 'Yemezegn', '', 'sell', 'cash in', 2000, 0, 'Tursday', 'May', 2023, 5, 3, 10, 5, 42, 910),
(305, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'May', 2023, 5, 3, 10, 9, 35, 44),
(306, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'May', 2023, 5, 3, 10, 9, 41, 520),
(307, 'mulatfkadu@gmail.com', 'DAP ', 3, 'Yemezegn', '', 'sell', 'cash in', 2000, 0, 'Tursday', 'May', 2023, 5, 3, 10, 9, 50, 3),
(308, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'May', 2023, 5, 3, 10, 17, 58, 205),
(309, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'May', 2023, 5, 3, 10, 18, 9, 238),
(310, 'mulatfkadu@gmail.com', 'UREA ', 3, 'Yemezegn', '', 'sell', 'cash in', 1900, 0, 'Tursday', 'May', 2023, 5, 3, 10, 18, 19, 496),
(311, 'mulatfkadu@gmail.com', 'DAP ', 3, 'Yemezegn', '', 'sell', 'cash in', 2000, 0, 'Tursday', 'May', 2023, 5, 3, 10, 18, 58, 267),
(312, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'May', 2023, 5, 3, 10, 31, 15, 104),
(313, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'May', 2023, 5, 3, 10, 31, 22, 820),
(314, 'mulatfkadu@gmail.com', 'DAP ', 3, 'Yemezegn', '', 'sell', 'cash in', 2000, 0, 'Tursday', 'May', 2023, 5, 3, 10, 31, 37, 951),
(315, 'mulatfkadu@gmail.com', 'UREA ', 1, 'Yemezegn', '', 'sell', 'cash in', 1900, 0, 'Tursday', 'May', 2023, 5, 3, 10, 42, 5, 155),
(316, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'May', 2023, 5, 3, 10, 53, 24, 9),
(317, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'May', 2023, 5, 3, 10, 53, 32, 476),
(318, 'yilkal@gmail.com', 'teff', 5, 'yemezegn', '', 'order', 'no', 0, 0, 'Tursday', 'May', 2023, 5, 3, 10, 53, 41, 410),
(319, 'mulatfkadu@gmail.com', 'Sugar ', 2, 'Yemezegn', '', 'sell', 'cash in', 120, 0, 'Tursday', 'May', 2023, 5, 3, 10, 53, 51, 707),
(320, 'mulatfkadu@gmail.com', 'DAP ', 2, 'Yemezegn', '', 'sell', 'cash in', 4000, 0, 'Tursday', 'May', 2023, 5, 3, 10, 54, 26, 514),
(321, 'mulatfkadu@gmail.com', 'UREA ', 3, 'Yemezegn', '', 'sell', 'cash in', 5700, 0, 'Tursday', 'May', 2023, 5, 3, 10, 54, 55, 411),
(322, 'mulatfkadu@gmail.com', 'Sugar ', 2, 'Yemezegn', '', 'sell', 'cash in', 120, 0, 'Tursday', 'May', 2023, 5, 3, 11, 7, 37, 29),
(323, 'mulatfkadu@gmail.com', 'DAP ', 1, 'Yemezegn', '', 'sell', 'cash in', 2000, 0, 'Tursday', 'May', 2023, 5, 3, 11, 10, 1, 400),
(324, 'mulatfkadu@gmail.com', 'UREA ', 2, 'Yemezegn', '', 'sell', 'cash in', 3800, 0, 'Tursday', 'May', 2023, 5, 3, 11, 11, 18, 942),
(325, 'mulatfkadu@gmail.com', 'DAP ', 2, 'Yemezegn', '', 'sell', 'cash in', 4000, 0, 'Tursday', 'May', 2023, 5, 3, 11, 16, 27, 222),
(326, 'mulatfkadu@gmail.com', 'Sugar ', 2, 'Yemezegn', '', 'sell', 'cash in', 120, 0, 'Sunday', 'May', 2023, 5, 6, 19, 21, 51, 499),
(327, 'mulatfkadu@gmail.com', 'DAP ', 4, 'Yemezegn', '', 'sell', 'cash in', 8000, 0, 'Sunday', 'May', 2023, 5, 6, 19, 22, 45, 876),
(328, 'ayinalemmenber@gmail.com', 'Nuggets', 600, 'DEA1500003', '', 'buy', 'cash out', 6000, 0, 'Sunday', 'May', 2023, 5, 6, 19, 25, 32, 127),
(329, 'ayinalemmenber@gmail.com', 'Teff', 3, 'DEA1500003', '', 'sell', 'cash in', 30000, 0, 'Saturday', 'May', 2023, 5, 12, 20, 34, 16, 592),
(330, 'ayinalemmenber@gmail.com', 'Teff', 6, 'DEA1500003', '', 'sell', 'cash in', 60000, 0, 'Saturday', 'May', 2023, 5, 12, 21, 42, 36, 400),
(331, 'alebeleedmealem@gmail.com', 'DAP', 4000, 'Yeguarat', '', 'buy', 'cash out', 1900, 0, 'Saturday', 'May', 2023, 5, 12, 21, 59, 54, 749),
(332, 'alebeleedmealem@gmail.com', 'UREA', 3000, 'Yeguarat', '', 'buy', 'cash out', 1800, 0, 'Saturday', 'May', 2023, 5, 12, 22, 0, 54, 665),
(333, 'alebeleedmealem@gmail.com', 'DAP ', 1, 'Yeguarat', '', 'sell', 'cash in', 2000, 0, 'Saturday', 'May', 2023, 5, 12, 22, 12, 43, 14),
(334, 'alebeleedmealem@gmail.com', 'DAP ', 1, 'Yeguarat', '', 'sell', 'cash in', 2000, 0, 'Saturday', 'May', 2023, 5, 12, 22, 30, 18, 831),
(335, 'alebeleedmealem@gmail.com', 'UREA ', 1, 'Yeguarat', '', 'sell', 'cash in', 1900, 0, 'Saturday', 'May', 2023, 5, 12, 22, 30, 51, 992),
(336, 'bihonegnmenber@gmail.com', 'Maize', 2, 'DEA1500024', '', 'sell', 'cash in', 6000, 0, 'Saturday', 'May', 2023, 5, 12, 22, 39, 33, 715),
(337, 'bihonegnmenber@gmail.com', 'Teff', 2, 'DEA1500024', '', 'sell', 'cash in', 20000, 0, 'Saturday', 'May', 2023, 5, 12, 22, 39, 53, 519),
(338, 'ayinalemmenber@gmail.com', 'Maize', 2, 'DEA1500003', '', 'sell', 'cash in', 8000, 0, 'Saturday', 'May', 2023, 5, 12, 22, 49, 59, 403),
(339, 'ayinalemmenber@gmail.com', 'Teff', 1, 'DEA1500003', '', 'sell', 'cash in', 10000, 0, 'Saturday', 'May', 2023, 5, 12, 23, 58, 56, 140),
(340, 'ayinalemmenber@gmail.com', 'Maize', 2, 'DEA1500003', '', 'sell', 'cash in', 8000, 0, 'Saturday', 'May', 2023, 5, 12, 23, 59, 32, 652),
(341, 'bihonegnmenber@gmail.com', 'Teff', 4, 'DEA1500024', '', 'sell', 'cash in', 40000, 0, 'Sunday', 'May', 2023, 5, 13, 0, 0, 1, 623),
(342, 'ayinalemmenber@gmail.com', 'Maize', 4, 'DEA1500003', '', 'sell', 'cash in', 16000, 0, 'Sunday', 'May', 2023, 5, 13, 0, 2, 16, 317),
(343, 'bihonegnmenber@gmail.com', 'Wheate', 3, 'DEA1500024', '', 'sell', 'cash in', 18000, 0, 'Sunday', 'May', 2023, 5, 13, 0, 2, 37, 87),
(344, 'luelmenber@gmail.com', 'Wheate', 2, 'DEA1500079', '', 'sell', 'cash in', 12000, 0, 'Sunday', 'May', 2023, 5, 13, 0, 2, 56, 922),
(345, 'alebeleedmealem@gmail.com', 'DAP ', 1, 'Yeguarat', '', 'sell', 'cash in', 2000, 0, 'Sunday', 'May', 2023, 5, 13, 0, 5, 17, 283),
(346, 'alebeleedmealem@gmail.com', 'UREA ', 1, 'Yeguarat', '', 'sell', 'cash in', 1900, 0, 'Sunday', 'May', 2023, 5, 13, 0, 6, 11, 788),
(347, 'ayinalemmenber@gmail.com', 'Teff', 2, 'DEA1500003', '', 'sell', 'cash in', 20000, 0, 'Sunday', 'May', 2023, 5, 13, 0, 55, 25, 105),
(348, 'ayinalemmenber@gmail.com', 'Wheate', 2, 'DEA1500003', '', 'sell', 'cash in', 12000, 0, 'Sunday', 'May', 2023, 5, 13, 0, 57, 24, 681),
(349, 'mulatfkadu@gmail.com', 'Maize ', 2, 'Yemezegn', '', 'sell', 'cash in', 6000, 0, 'Sunday', 'May', 2023, 5, 13, 7, 13, 32, 81),
(350, 'mulatfkadu@gmail.com', 'Sugar ', 1, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Sunday', 'May', 2023, 5, 13, 7, 17, 0, 664),
(351, 'mulatfkadu@gmail.com', 'DAP ', 1, 'Yemezegn', '', 'sell', 'cash in', 2000, 0, 'Sunday', 'May', 2023, 5, 13, 7, 17, 55, 157),
(352, 'mulatfkadu@gmail.com', 'DAP ', 1, 'Yemezegn', '', 'sell', 'cash in', 2000, 0, 'Sunday', 'May', 2023, 5, 13, 7, 17, 55, 157),
(353, 'bihonegnmenber@gmail.com', 'Maize', 2, 'DEA1500024', '', 'sell', 'cash in', 6000, 0, 'Sunday', 'May', 2023, 5, 13, 7, 20, 16, 943),
(354, 'bihonegnmenber@gmail.com', 'Wheate', 1, 'DEA1500024', '', 'sell', 'cash in', 6000, 0, 'Sunday', 'May', 2023, 5, 13, 7, 24, 44, 86),
(355, 'mulatfkadu@gmail.com', 'Teff', 1000, 'Yemezegn', '', 'buy', 'cash out', 4400, 0, 'Sunday', 'May', 2023, 5, 13, 10, 27, 6, 543),
(356, 'mulatfkadu@gmail.com', 'Wheate ', 1, 'Yemezegn', '', 'sell', 'cash in', 6000, 0, 'Sunday', 'May', 2023, 5, 13, 10, 34, 50, 449),
(357, 'mulatfkadu@gmail.com', 'DAP ', 1, 'Yemezegn', '', 'sell', 'cash in', 2000, 0, 'Sunday', 'May', 2023, 5, 13, 10, 35, 40, 565),
(358, 'alebeleedmealem@gmail.com', 'DAP', 2, 'Yeguarat', '', 'sell', 'cash in', 2000, 0, 'Monday', 'May', 2023, 5, 14, 21, 36, 41, 993),
(359, 'alebeleedmealem@gmail.com', 'UREA', 1, 'Yeguarat', '', 'sell', 'cash in', 1900, 0, 'Monday', 'May', 2023, 5, 14, 21, 36, 41, 993),
(360, 'alebeleedmealem@gmail.com', 'DAP', 2, 'Yeguarat', '', 'sell', 'cash in', 2000, 0, 'Monday', 'May', 2023, 5, 14, 21, 36, 42, 183),
(361, 'alebeleedmealem@gmail.com', 'UREA', 1, 'Yeguarat', '', 'sell', 'cash in', 1900, 0, 'Monday', 'May', 2023, 5, 14, 21, 36, 42, 183),
(362, 'alebeleedmealem@gmail.com', 'DAP', 1, 'Yeguarat', '', 'sell', 'cash in', 2000, 0, 'Monday', 'May', 2023, 5, 14, 21, 40, 45, 97),
(363, 'alebeleedmealem@gmail.com', 'UREA', 1, 'Yeguarat', '', 'sell', 'cash in', 1900, 0, 'Monday', 'May', 2023, 5, 14, 21, 40, 45, 97),
(400, 'ayinalemmenber@gmail.com', 'Maize', 2, 'DEA1500003', '', 'sell', 'cash in', 4000, 0, 'Tuesday', 'May', 2023, 5, 15, 12, 22, 32, 665),
(401, 'luelmenber@gmail.com', 'Teff', 2, 'DEA1500079', '', 'sell', 'cash in', 10000, 0, 'Tuesday', 'May', 2023, 5, 15, 14, 5, 4, 191),
(402, 'luelmenber@gmail.com', 'Wheate', 3, 'DEA1500079', '', 'sell', 'cash in', 6000, 0, 'Tuesday', 'May', 2023, 5, 15, 14, 5, 4, 191),
(403, 'luelmenber@gmail.com', 'Teff', 2, 'DEA1500079', '', 'sell', 'cash in', 10000, 0, 'Tuesday', 'May', 2023, 5, 15, 14, 5, 4, 381),
(404, 'luelmenber@gmail.com', 'Wheate', 3, 'DEA1500079', '', 'sell', 'cash in', 6000, 0, 'Tuesday', 'May', 2023, 5, 15, 14, 5, 4, 381),
(405, 'alebeleedmealem@gmail.com', 'DAP', 2, 'Yeguarat', '', 'sell', 'cash in', 2000, 0, 'Tuesday', 'May', 2023, 5, 15, 14, 11, 35, 202),
(406, 'ayinalemmenber@gmail.com', 'Teff', 1, 'DEA1500003', '', 'sell', 'cash in', 10000, 0, 'Tuesday', 'May', 2023, 5, 15, 14, 14, 24, 866),
(407, 'ayinalemmenber@gmail.com', 'Wheate', 2, 'DEA1500003', '', 'sell', 'cash in', 6000, 0, 'Tuesday', 'May', 2023, 5, 15, 14, 14, 24, 866),
(408, 'ayinalemmenber@gmail.com', 'Maize', 3, 'DEA1500003', '', 'sell', 'cash in', 4000, 0, 'Tuesday', 'May', 2023, 5, 15, 14, 14, 24, 866),
(409, 'luelmenber@gmail.com', 'Teff', 3, 'DEA1500079', '', 'sell', 'cash in', 10000, 0, 'Tuesday', 'May', 2023, 5, 15, 14, 15, 29, 684),
(410, 'luelmenber@gmail.com', 'Wheate', 2, 'DEA1500079', '', 'sell', 'cash in', 6000, 0, 'Tuesday', 'May', 2023, 5, 15, 14, 15, 29, 684),
(411, 'luelmenber@gmail.com', 'Teff', 2, 'DEA1500079', '', 'sell', 'cash in', 10000, 0, 'Wednsday', 'May', 2023, 5, 16, 20, 37, 43, 277),
(412, 'luelmenber@gmail.com', 'Wheate', 2, 'DEA1500079', '', 'sell', 'cash in', 6000, 0, 'Wednsday', 'May', 2023, 5, 16, 20, 37, 43, 277),
(413, 'ayinalemmenber@gmail.com', 'Maize', 3, 'DEA1500003', '', 'sell', 'cash in', 4000, 0, 'Wednsday', 'May', 2023, 5, 16, 20, 40, 53, 156),
(414, 'ayinalemmenber@gmail.com', 'Teff', 4, 'DEA1500003', '', 'sell', 'cash in', 10000, 0, 'Wednsday', 'May', 2023, 5, 16, 20, 46, 21, 658),
(415, 'ayinalemmenber@gmail.com', 'Wheate', 2, 'DEA1500003', '', 'sell', 'cash in', 6000, 0, 'Wednsday', 'May', 2023, 5, 16, 20, 46, 21, 658),
(416, 'ayinalemmenber@gmail.com', 'Maize', 4, 'DEA1500003', '', 'sell', 'cash in', 4000, 0, 'Wednsday', 'May', 2023, 5, 16, 20, 46, 21, 658),
(417, 'luelmenber@gmail.com', 'Teff', 3, 'DEA1500079', '', 'sell', 'cash in', 10000, 0, 'Wednsday', 'May', 2023, 5, 16, 20, 58, 40, 798),
(418, 'luelmenber@gmail.com', 'Wheate', 3, 'DEA1500079', '', 'sell', 'cash in', 6000, 0, 'Wednsday', 'May', 2023, 5, 16, 20, 58, 40, 798),
(419, 'mulatfkadu@gmail.com', 'Oil', 2, 'Yemezegn', '', 'sell', 'cash in', 500, 0, 'Saturday', 'May', 2023, 5, 19, 9, 33, 7, 454),
(420, 'mulatfkadu@gmail.com', 'Wheate', 3, 'Yemezegn', '', 'sell', 'cash in', 6000, 0, 'Saturday', 'May', 2023, 5, 19, 9, 33, 7, 454),
(421, 'mulatfkadu@gmail.com', 'Sugar', 2, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Saturday', 'May', 2023, 5, 19, 9, 33, 7, 454),
(422, 'luelmenber@gmail.com', 'Teff', 2, 'DEA1500079', '', 'sell', 'cash in', 10000, 0, 'Saturday', 'May', 2023, 5, 19, 9, 47, 17, 819),
(423, 'ayinalemmenber@gmail.com', 'Teff', 2, 'DEA1500003', '', 'sell', 'cash in', 10000, 0, 'Saturday', 'May', 2023, 5, 19, 9, 50, 43, 158),
(424, 'ayinalemmenber@gmail.com', 'Wheate', 3, 'DEA1500003', '', 'sell', 'cash in', 6000, 0, 'Saturday', 'May', 2023, 5, 19, 9, 50, 43, 158),
(425, 'luelmenber@gmail.com', 'Teff', 2, 'DEA1500079', '', 'sell', 'cash in', 10000, 0, 'Saturday', 'May', 2023, 5, 19, 10, 17, 47, 335),
(426, 'ayinalemmenber@gmail.com', 'Maize', 2, 'DEA1500003', '', 'sell', 'cash in', 4000, 0, 'Saturday', 'May', 2023, 5, 19, 10, 28, 0, 710),
(427, 'mulatfkadu@gmail.com', 'Sugar', 2, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Saturday', 'May', 2023, 5, 19, 16, 44, 19, 638),
(428, 'mulatfkadu@gmail.com', 'DAP', 2, 'Yemezegn', '', 'sell', 'cash in', 2000, 0, 'Saturday', 'May', 2023, 5, 19, 16, 44, 19, 638),
(429, 'luelmenber@gmail.com', 'Teff', 4, 'DEA1500079', '', 'sell', 'cash in', 10000, 0, 'Saturday', 'May', 2023, 5, 19, 16, 54, 46, 521),
(430, 'luelmenber@gmail.com', 'Wheate', 1, 'DEA1500079', '', 'sell', 'cash in', 6000, 0, 'Saturday', 'May', 2023, 5, 19, 16, 54, 46, 521),
(431, 'ayinalemmenber@gmail.com', 'Teff', 3, 'DEA1500003', '', 'sell', 'cash in', 10000, 0, 'Saturday', 'May', 2023, 5, 19, 16, 58, 47, 571),
(432, 'ayinalemmenber@gmail.com', 'Wheate', 2, 'DEA1500003', '', 'sell', 'cash in', 6000, 0, 'Saturday', 'May', 2023, 5, 19, 16, 58, 47, 571),
(433, 'ayinalemmenber@gmail.com', 'Maize', 1, 'DEA1500003', '', 'sell', 'cash in', 4000, 0, 'Saturday', 'May', 2023, 5, 19, 16, 58, 47, 571),
(434, 'luelmenber@gmail.com', 'Teff', 3, 'DEA1500079', '', 'sell', 'cash in', 10000, 0, 'Saturday', 'May', 2023, 5, 19, 19, 52, 37, 834),
(435, 'luelmenber@gmail.com', 'Wheate', 2, 'DEA1500079', '', 'sell', 'cash in', 6000, 0, 'Saturday', 'May', 2023, 5, 19, 19, 52, 37, 834),
(436, 'alebeleedmealem@gmail.com', 'Teff', 2000, 'Yeguarat', '', 'buy', 'cash out', 4800, 0, 'Tuesday', 'May', 2023, 5, 22, 15, 40, 41, 792),
(437, 'alebeleedmealem@gmail.com', 'Wheate', 2000, 'Yeguarat', '', 'buy', 'cash out', 3400, 0, 'Tuesday', 'May', 2023, 5, 22, 15, 42, 4, 456),
(438, 'alebeleedmealem@gmail.com', 'Maize', 3000, 'Yeguarat', '', 'buy', 'cash out', 2900, 0, 'Tuesday', 'May', 2023, 5, 22, 15, 47, 18, 152),
(439, 'alebeleedmealem@gmail.com', 'Teff', 4000, 'Yeguarat', '', 'buy', 'cash out', 4900, 0, 'Tuesday', 'May', 2023, 5, 22, 16, 6, 47, 916),
(440, 'alebeleedmealem@gmail.com', 'Wheate', 3000, 'Yeguarat', '', 'buy', 'cash out', 3700, 0, 'Tuesday', 'May', 2023, 5, 22, 16, 8, 33, 773),
(441, 'alebeleedmealem@gmail.com', 'Maize', 4000, 'Yeguarat', '', 'buy', 'cash out', 2500, 0, 'Tuesday', 'May', 2023, 5, 22, 16, 10, 3, 824),
(442, 'alebeleedmealem@gmail.com', 'Teff', 4000, 'Yeguarat', '', 'buy', 'cash out', 4800, 0, 'Tuesday', 'May', 2023, 5, 22, 20, 5, 18, 313),
(443, 'alebeleedmealem@gmail.com', 'Wheate', 3000, 'Yeguarat', '', 'buy', 'cash out', 3800, 0, 'Tuesday', 'May', 2023, 5, 22, 20, 9, 0, 268),
(444, 'alebeleedmealem@gmail.com', 'Maize', 4000, 'Yeguarat', '', 'buy', 'cash out', 2900, 0, 'Tuesday', 'May', 2023, 5, 22, 20, 10, 3, 677),
(445, 'alebeleedmealem@gmail.com', 'Oil', 5000, 'Yeguarat', '', 'buy', 'cash out', 470, 0, 'Tuesday', 'May', 2023, 5, 22, 20, 13, 16, 99),
(446, 'alebeleedmealem@gmail.com', 'Sugar', 10000, 'Yeguarat', '', 'buy', 'cash out', 57, 0, 'Tuesday', 'May', 2023, 5, 22, 20, 16, 53, 664),
(447, 'alebeleedmealem@gmail.com', 'Teff', 4000, 'Yeguarat', '', 'buy', 'cash out', 4700, 0, 'Tuesday', 'May', 2023, 5, 22, 20, 46, 38, 726),
(448, 'alebeleedmealem@gmail.com', 'Wheate', 3000, 'Yeguarat', '', 'buy', 'cash out', 3900, 0, 'Tuesday', 'May', 2023, 5, 22, 20, 49, 30, 785),
(449, 'alebeleedmealem@gmail.com', 'Maize', 4000, 'Yeguarat', '', 'buy', 'cash out', 2700, 0, 'Tuesday', 'May', 2023, 5, 22, 20, 53, 49, 728);
INSERT INTO `report` (`report_id`, `reporter_email`, `product_name`, `quantity`, `report_owner`, `user_email`, `report_status`, `transaction`, `transaction_in_birr`, `transfer_status`, `day`, `monthName`, `year`, `month`, `date`, `hour`, `minute`, `second`, `millisecond`) VALUES
(450, 'alebeleedmealem@gmail.com', 'Sugar', 10000, 'Yeguarat', '', 'buy', 'cash out', 58, 0, 'Tuesday', 'May', 2023, 5, 22, 20, 55, 2, 23),
(451, 'alebeleedmealem@gmail.com', 'Oil', 2000, 'Yeguarat', '', 'buy', 'cash out', 470, 0, 'Tuesday', 'May', 2023, 5, 22, 20, 56, 35, 731),
(452, 'alebeleedmealem@gmail.com', 'Teff', 3000, 'Yeguarat', '', 'buy', 'cash out', 4700, 0, 'Tuesday', 'May', 2023, 5, 22, 21, 15, 55, 999),
(453, 'alebeleedmealem@gmail.com', 'Wheate', 3000, 'Yeguarat', '', 'buy', 'cash out', 3800, 0, 'Tuesday', 'May', 2023, 5, 22, 21, 17, 8, 294),
(454, 'alebeleedmealem@gmail.com', 'Maize', 3000, 'Yeguarat', '', 'buy', 'cash out', 2900, 0, 'Tuesday', 'May', 2023, 5, 22, 21, 18, 30, 978),
(455, 'alebeleedmealem@gmail.com', 'Sugar', 10000, 'Yeguarat', '', 'buy', 'cash out', 57, 0, 'Tuesday', 'May', 2023, 5, 22, 21, 19, 25, 68),
(456, 'alebeleedmealem@gmail.com', 'Oil', 2000, 'Yeguarat', '', 'buy', 'cash out', 470, 0, 'Tuesday', 'May', 2023, 5, 22, 21, 22, 2, 967),
(457, 'bihonegnmenber@gmail.com', 'Wheate', 4, 'DEA1500024', '', 'sell', 'cash in', 6000, 0, 'Saturday', 'May', 2023, 5, 26, 9, 55, 59, 343),
(458, 'bihonegnmenber@gmail.com', 'Teff', 4, 'DEA1500024', '', 'sell', 'cash in', 10000, 0, 'Saturday', 'May', 2023, 5, 26, 9, 55, 59, 343),
(459, 'luelmenber@gmail.com', 'Teff', 2, 'DEA1500079', '', 'sell', 'cash in', 10000, 0, 'Saturday', 'May', 2023, 5, 26, 9, 57, 13, 614),
(460, 'mulatfkadu@gmail.com', 'Oil', 3, 'Yemezegn', '', 'sell', 'cash in', 500, 0, 'Saturday', 'May', 2023, 5, 26, 10, 33, 56, 590),
(461, 'mulatfkadu@gmail.com', 'Wheate', 1, 'Yemezegn', '', 'sell', 'cash in', 6000, 0, 'Saturday', 'May', 2023, 5, 26, 10, 33, 56, 590),
(462, 'mulatfkadu@gmail.com', 'Sugar', 1, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Saturday', 'May', 2023, 5, 26, 10, 33, 56, 590),
(463, 'mulatfkadu@gmail.com', 'UREA', 2, 'Yemezegn', '', 'sell', 'cash in', 1900, 0, 'Saturday', 'May', 2023, 5, 26, 10, 33, 56, 590),
(464, 'alebeleedmealem@gmail.com', 'Teff', 3, 'Yeguarat', '', 'sell', 'cash in', 5000, 0, 'Saturday', 'May', 2023, 5, 26, 15, 3, 49, 585),
(465, 'alebeleedmealem@gmail.com', 'Maize', 2, 'Yeguarat', '', 'sell', 'cash in', 3000, 0, 'Saturday', 'May', 2023, 5, 26, 15, 3, 49, 585),
(466, 'alebeleedmealem@gmail.com', 'Oil', 2, 'Yeguarat', '', 'sell', 'cash in', 500, 0, 'Saturday', 'May', 2023, 5, 26, 15, 3, 49, 585),
(467, 'alebeleedmealem@gmail.com', 'Teff', 3, 'Yeguarat', '', 'sell', 'cash in', 5000, 0, 'Saturday', 'May', 2023, 5, 26, 15, 8, 14, 86),
(468, 'alebeleedmealem@gmail.com', 'Maize', 1, 'Yeguarat', '', 'sell', 'cash in', 3000, 0, 'Saturday', 'May', 2023, 5, 26, 15, 8, 14, 86),
(469, 'alebeleedmealem@gmail.com', 'Oil', 2, 'Yeguarat', '', 'sell', 'cash in', 500, 0, 'Saturday', 'May', 2023, 5, 26, 15, 8, 14, 86),
(470, 'yaregaladamu@gmail.com', 'Teff', 100, 'DEA1500068', '', 'buy', 'cash out', 4700, 0, 'Saturday', 'May', 2023, 5, 26, 16, 33, 8, 367),
(471, 'yaregaladamu@gmail.com', 'Wheate', 200, 'DEA1500068', '', 'buy', 'cash out', 3800, 0, 'Saturday', 'May', 2023, 5, 26, 16, 34, 18, 82),
(472, 'yaregaladamu@gmail.com', 'Maize', 300, 'DEA1500068', '', 'buy', 'cash out', 2900, 0, 'Saturday', 'May', 2023, 5, 26, 16, 37, 59, 240),
(473, 'yaregaladamu@gmail.com', 'Maize', 300, 'DEA1500068', '', 'buy', 'cash out', 2900, 0, 'Saturday', 'May', 2023, 5, 26, 16, 52, 49, 222),
(474, 'yibeltalabebe@gmail.com', 'Teff', 100, 'DEA1313131', '', 'buy', 'cash out', 4700, 0, 'Saturday', 'May', 2023, 5, 26, 20, 42, 59, 247),
(475, 'yibeltalabebe@gmail.com', 'Wheate', 200, 'DEA1313131', '', 'buy', 'cash out', 3800, 0, 'Saturday', 'May', 2023, 5, 26, 20, 46, 17, 135),
(476, 'yibeltalabebe@gmail.com', 'Maize', 300, 'DEA1313131', '', 'buy', 'cash out', 2900, 0, 'Saturday', 'May', 2023, 5, 26, 20, 47, 8, 126),
(477, 'abebesmachew@gmail.com', 'Teff', 300, 'DEA1212121', '', 'buy', 'cash out', 4700, 0, 'Saturday', 'May', 2023, 5, 26, 22, 31, 44, 662),
(478, 'abebesmachew@gmail.com', 'Wheate', 400, 'DEA1212121', '', 'buy', 'cash out', 3800, 0, 'Saturday', 'May', 2023, 5, 26, 22, 32, 44, 434),
(479, 'abebesmachew@gmail.com', 'Maize', 500, 'DEA1212121', '', 'buy', 'cash out', 2900, 0, 'Saturday', 'May', 2023, 5, 26, 22, 33, 54, 583),
(480, 'mulatfkadu@gmail.com', 'Oil', 2, 'Yemezegn', '', 'sell', 'cash in', 500, 0, 'Wednsday', 'May', 2023, 5, 30, 11, 34, 14, 91),
(481, 'mulatfkadu@gmail.com', 'Wheate', 1, 'Yemezegn', '', 'sell', 'cash in', 6000, 0, 'Wednsday', 'May', 2023, 5, 30, 11, 34, 14, 91),
(482, 'ayinalemmenber@gmail.com', 'Maize', 4, 'DEA1500003', '', 'sell', 'cash in', 4000, 0, 'Saturday', 'June', 2023, 6, 2, 8, 17, 15, 756),
(483, 'bihonegnmenber@gmail.com', 'Maize', 3, 'DEA1500024', '', 'sell', 'cash in', 3000, 0, 'Saturday', 'June', 2023, 6, 2, 8, 35, 23, 916),
(484, 'bihonegnmenber@gmail.com', 'Wheate', 2, 'DEA1500024', '', 'sell', 'cash in', 6000, 0, 'Saturday', 'June', 2023, 6, 2, 8, 35, 23, 916),
(485, 'bihonegnmenber@gmail.com', 'Teff', 2, 'DEA1500024', '', 'sell', 'cash in', 10000, 0, 'Saturday', 'June', 2023, 6, 2, 8, 35, 23, 916),
(486, 'mulatfkadu@gmail.com', 'Wheate', 1, 'Yemezegn', '', 'sell', 'cash in', 6000, 0, 'Saturday', 'June', 2023, 6, 2, 11, 32, 9, 117),
(487, 'mulatfkadu@gmail.com', 'Sugar', 2, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Saturday', 'June', 2023, 6, 2, 11, 32, 9, 117),
(488, 'mulatfkadu@gmail.com', 'Wheate', 1, 'Yemezegn', '', 'sell', 'cash in', 6000, 0, 'Saturday', 'June', 2023, 6, 2, 11, 44, 38, 419),
(489, 'mulatfkadu@gmail.com', 'Sugar', 1, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Saturday', 'June', 2023, 6, 2, 11, 44, 38, 419),
(490, 'luelmenber@gmail.com', 'Teff', 1, 'DEA1500079', '', 'sell', 'cash in', 10000, 0, 'Saturday', 'June', 2023, 6, 2, 11, 49, 14, 290),
(491, 'ayinalemmenber@gmail.com', 'Wheate', 1, 'DEA1500003', '', 'sell', 'cash in', 6000, 0, 'Saturday', 'June', 2023, 6, 2, 11, 51, 17, 646),
(492, 'yaregaladamu@gmail.com', 'Teff', 1, 'DEA1500068', '', 'sell', 'cash in', 5000, 0, 'Saturday', 'June', 2023, 6, 2, 12, 43, 49, 509),
(493, 'yaregaladamu@gmail.com', 'Wheate', 1, 'DEA1500068', '', 'sell', 'cash in', 4000, 0, 'Saturday', 'June', 2023, 6, 2, 12, 43, 49, 509),
(494, 'ayinalemmenber@gmail.com', 'Teff', 2, 'DEA1500003', '', 'sell', 'cash in', 10000, 0, 'Saturday', 'June', 2023, 6, 2, 12, 47, 31, 948),
(495, 'ayinalemmenber@gmail.com', 'Wheate', 3, 'DEA1500003', '', 'sell', 'cash in', 6000, 0, 'Saturday', 'June', 2023, 6, 2, 12, 47, 31, 948),
(496, 'ayinalemmenber@gmail.com', 'Maize', 2, 'DEA1500003', '', 'sell', 'cash in', 4000, 0, 'Saturday', 'June', 2023, 6, 2, 12, 47, 31, 948),
(497, 'luelmenber@gmail.com', 'Wheate', 3, 'DEA1500079', '', 'sell', 'cash in', 6000, 0, 'Monday', 'June', 2023, 6, 4, 19, 56, 27, 859),
(498, 'ayinalemmenber@gmail.com', 'UREA', 3, 'Yemezegn', '', 'sell', 'cash in', 1900, 0, 'Monday', 'June', 2023, 6, 4, 20, 1, 36, 476),
(499, 'ayinalemmenber@gmail.com', 'Wheate', 2, 'Yemezegn', '', 'sell', 'cash in', 6000, 0, 'Monday', 'June', 2023, 6, 4, 20, 1, 36, 476),
(500, 'yaregaladamu@gmail.com', 'Maize', 2000, 'DEA1500068', '', 'buy', 'cash out', 1400, 0, 'Monday', 'June', 2023, 6, 4, 21, 2, 17, 100),
(501, 'yaregaladamu@gmail.com', 'Maize', 2000, 'DEA1500068', '', 'buy', 'cash out', 1400, 0, 'Monday', 'June', 2023, 6, 4, 21, 4, 40, 822),
(502, 'mulatfkadu@gmail.com', 'Wheate', 1, 'Yemezegn', '', 'sell', 'cash in', 6000, 0, 'Monday', 'June', 2023, 6, 4, 23, 51, 14, 933),
(503, 'mulatfkadu@gmail.com', 'Sugar', 1, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Monday', 'June', 2023, 6, 4, 23, 51, 14, 933),
(504, 'yibeltalabebe@gmail.com', 'Teff', 3, 'DEA1313131', '', 'sell', 'cash in', 5000, 0, 'Tursday', 'June', 2023, 6, 7, 22, 55, 2, 429),
(505, 'demekegetaneh@gmail.com', 'DAP', 4000, 'Yedenbegn', '', 'buy', 'cash out', 1900, 0, 'Friday', 'June', 2023, 6, 8, 8, 52, 54, 251),
(506, 'demekegetaneh@gmail.com', 'Teff', 3000, 'Yedenbegn', '', 'buy', 'cash out', 4700, 0, 'Friday', 'June', 2023, 6, 8, 8, 54, 2, 352),
(507, 'demekegetaneh@gmail.com', 'UREA', 2000, 'Yedenbegn', '', 'buy', 'cash out', 1600, 0, 'Friday', 'June', 2023, 6, 8, 8, 55, 3, 639),
(508, 'ayinalemmenber@gmail.com', 'Maize', 4, 'DEA1500003', '', 'sell', 'cash in', 4000, 0, 'Friday', 'June', 2023, 6, 8, 10, 32, 24, 966),
(509, 'demekegetaneh@gmail.com', 'DAP', 2, 'Yedenbegn', '', 'sell', 'cash in', 2000, 0, 'Friday', 'June', 2023, 6, 8, 10, 48, 30, 523),
(510, 'demekegetaneh@gmail.com', 'UREA', 2, 'Yedenbegn', '', 'sell', 'cash in', 1700, 0, 'Friday', 'June', 2023, 6, 8, 10, 48, 30, 523),
(511, 'luelmenber@gmail.com', 'Wheate', 5, 'DEA1500079', '', 'sell', 'cash in', 6000, 0, 'Friday', 'June', 2023, 6, 8, 11, 24, 40, 746),
(512, 'abebesmachew@gmail.com', 'Maize', 2, 'DEA1212121', '', 'sell', 'cash in', 3000, 0, 'Friday', 'June', 2023, 6, 8, 11, 40, 5, 737),
(513, 'abebesmachew@gmail.com', 'Wheate', 7, 'DEA1212121', '', 'sell', 'cash in', 4000, 0, 'Friday', 'June', 2023, 6, 8, 11, 40, 5, 737),
(514, 'abebesmachew@gmail.com', 'Teff', 3, 'DEA1212121', '', 'sell', 'cash in', 5000, 0, 'Friday', 'June', 2023, 6, 8, 11, 40, 5, 737),
(515, 'ayinalemmenber@gmail.com', 'Teff', 2, 'DEA1500003', '', 'sell', 'cash in', 10000, 0, 'Friday', 'June', 2023, 6, 8, 11, 40, 33, 446),
(516, 'ayinalemmenber@gmail.com', 'Wheate', 6, 'DEA1500003', '', 'sell', 'cash in', 6000, 0, 'Friday', 'June', 2023, 6, 8, 11, 40, 33, 446),
(517, 'ayinalemmenber@gmail.com', 'Maize', 3, 'DEA1500003', '', 'sell', 'cash in', 4000, 0, 'Friday', 'June', 2023, 6, 8, 11, 40, 33, 446),
(518, 'luelmenber@gmail.com', 'Teff', 3, 'DEA1500079', '', 'sell', 'cash in', 10000, 0, 'Friday', 'June', 2023, 6, 8, 11, 41, 40, 337),
(519, 'luelmenber@gmail.com', 'Wheate', 3, 'DEA1500079', '', 'sell', 'cash in', 6000, 0, 'Friday', 'June', 2023, 6, 8, 11, 41, 40, 337),
(520, 'yibeltalabebe@gmail.com', 'Teff', 3, 'DEA1313131', '', 'sell', 'cash in', 5000, 0, 'Friday', 'June', 2023, 6, 8, 11, 42, 5, 397),
(521, 'yibeltalabebe@gmail.com', 'Maize', 2, 'DEA1313131', '', 'sell', 'cash in', 3000, 0, 'Friday', 'June', 2023, 6, 8, 11, 42, 5, 397),
(522, 'ayinalemzeleke@gmail.com', 'Teff', 300, 'DEA101010', '', 'buy', 'cash out', 4700, 0, 'Friday', 'June', 2023, 6, 8, 11, 59, 10, 464),
(523, 'ayinalemzeleke@gmail.com', 'Wheate', 300, 'DEA101010', '', 'buy', 'cash out', 3900, 0, 'Friday', 'June', 2023, 6, 8, 12, 0, 27, 290),
(524, 'ayinalemzeleke@gmail.com', 'Maize', 400, 'DEA101010', '', 'buy', 'cash out', 2900, 0, 'Friday', 'June', 2023, 6, 8, 12, 3, 24, 77),
(525, 'ayinalemzeleke@gmail.com', 'Wheate', 3, 'DEA101010', '', 'sell', 'cash in', 4000, 0, 'Friday', 'June', 2023, 6, 8, 16, 12, 0, 217),
(526, 'abebesmachew@gmail.com', 'Wheate', 4, 'DEA1212121', '', 'sell', 'cash in', 4000, 0, 'Friday', 'June', 2023, 6, 8, 19, 59, 33, 245),
(527, 'kassayielnger@gmail.com', 'DAP', 4000, 'Degolma', '', 'buy', 'cash out', 1900, 0, 'Friday', 'June', 2023, 6, 8, 20, 44, 52, 261),
(528, 'zelalembayih@gmail.com', 'UREA', 1, 'Yemezegn', 'yaregaladamu@gmail.com', 'sell', 'cash in', 1900, 0, 'Saturday', 'June', 2023, 6, 9, 10, 45, 48, 249),
(529, 'zelalembayih@gmail.com', 'Sugar', 1, 'Yemezegn', 'yaregaladamu@gmail.com', 'sell', 'cash in', 60, 0, 'Saturday', 'June', 2023, 6, 9, 10, 45, 52, 317),
(530, 'zelalembayih@gmail.com', 'Wheate', 1, 'Yemezegn', 'yaregaladamu@gmail.com', 'sell', 'cash in', 6000, 0, 'Saturday', 'June', 2023, 6, 9, 10, 45, 55, 75),
(531, 'zelalembayih@gmail.com', 'UREA', 2, 'Yemezegn', 'luelmenber@gmail.com', 'sell', 'cash in', 1900, 0, 'Saturday', 'June', 2023, 6, 9, 10, 45, 59, 133),
(532, 'luelmenber@gmail.com', 'Teff', 3, 'Yemezegn', 'yilkalayinalem@gmail.com', 'sell', 'cash in', 10000, 0, 'Saturday', 'June', 2023, 6, 9, 11, 5, 8, 337),
(533, 'luelmenber@gmail.com', 'Wheate', 2, 'DEA1500079', '', 'sell', 'cash in', 6000, 0, 'Saturday', 'June', 2023, 6, 9, 11, 9, 19, 17),
(534, 'luelmenber@gmail.com', 'Wheate', 2, 'DEA1500079', 'yilkalayinalem@gmail.com', 'sell', 'cash in', 6000, 0, 'Saturday', 'June', 2023, 6, 9, 11, 39, 46, 417),
(535, 'yibeltalabebe@gmail.com', 'Maize', 4, 'DEA1313131', 'semahegnzeleke@gmail.com', 'sell', 'cash in', 3000, 0, 'Saturday', 'June', 2023, 6, 9, 11, 43, 12, 713),
(536, 'yibeltalabebe@gmail.com', 'Maize', 2, 'DEA1313131', 'yilkalayinalem@gmail.com', 'sell', 'cash in', 3000, 0, 'Saturday', 'June', 2023, 6, 9, 11, 43, 19, 304),
(537, 'abebesmachew@gmail.com', 'Teff', 2, 'DEA1212121', '', 'sell', 'cash in', 5000, 0, 'Saturday', 'June', 2023, 6, 9, 16, 26, 23, 8),
(538, 'yaregaladamu@gmail.com', 'Teff', 6, 'DEA1500068', '', 'sell', 'cash in', 5000, 0, 'Saturday', 'June', 2023, 6, 9, 19, 16, 28, 515),
(539, 'yaregaladamu@gmail.com', 'Maize', 2, 'DEA1500068', '', 'sell', 'cash in', 1500, 0, 'Saturday', 'June', 2023, 6, 9, 19, 16, 28, 515),
(540, 'demekegetaneh@gmail.com', 'DAP', 10, 'Yedenbegn', '', 'sell', 'cash in', 2000, 0, 'Saturday', 'June', 2023, 6, 9, 22, 40, 39, 265),
(541, 'demekegetaneh@gmail.com', 'UREA', 10, 'Yedenbegn', '', 'sell', 'cash in', 1700, 0, 'Saturday', 'June', 2023, 6, 9, 22, 40, 39, 265),
(542, 'ayinalemmenber@gmail.com', 'Maize', 3, 'DEA1500003', '', 'sell', 'cash in', 4000, 0, 'Saturday', 'June', 2023, 6, 9, 23, 40, 20, 756),
(543, 'luelmenber@gmail.com', 'Teff', 3, 'DEA1500079', '', 'sell', 'cash in', 10000, 0, 'Saturday', 'June', 2023, 6, 9, 23, 46, 13, 136),
(544, 'luelmenber@gmail.com', 'Wheate', 2, 'DEA1500079', '', 'sell', 'cash in', 6000, 0, 'Saturday', 'June', 2023, 6, 9, 23, 46, 13, 136),
(545, 'ayinalemmenber@gmail.com', 'Maize', 2, 'DEA1500003', '', 'sell', 'cash in', 4000, 0, 'Sunday', 'June', 2023, 6, 10, 0, 47, 4, 277),
(546, 'ayinalemzeleke@gmail.com', 'Teff', 2, 'DEA101010', '', 'sell', 'cash in', 5000, 0, 'Sunday', 'June', 2023, 6, 10, 0, 48, 51, 275),
(547, 'luelmenber@gmail.com', 'Wheate', 3, 'DEA1500079', '', 'sell', 'cash in', 6000, 0, 'Sunday', 'June', 2023, 6, 10, 0, 49, 43, 597),
(548, 'yaregaladamu@gmail.com', 'Maize', 2, 'DEA1500068', '', 'sell', 'cash in', 1500, 0, 'Sunday', 'June', 2023, 6, 10, 0, 52, 14, 197),
(549, 'ayinalemmenber@gmail.com', 'Wheate', 4, 'DEA1500003', '', 'sell', 'cash in', 6000, 0, 'Sunday', 'June', 2023, 6, 10, 9, 6, 41, 155),
(550, 'ayinalemmenber@gmail.com', 'Maize', 9, 'DEA1500003', '', 'sell', 'cash in', 4000, 0, 'Sunday', 'June', 2023, 6, 10, 9, 6, 41, 155),
(551, 'ayinalemzeleke@gmail.com', 'Maize', 2, 'DEA101010', '', 'sell', 'cash in', 3000, 0, 'Sunday', 'June', 2023, 6, 10, 9, 17, 38, 953),
(552, 'luelmenber@gmail.com', 'Teff', 3, 'DEA1500079', '', 'sell', 'cash in', 10000, 0, 'Sunday', 'June', 2023, 6, 10, 15, 43, 45, 130),
(553, 'luelmenber@gmail.com', 'Wheate', 3, 'DEA1500079', '', 'sell', 'cash in', 6000, 0, 'Sunday', 'June', 2023, 6, 10, 15, 43, 45, 130),
(554, 'yaregaladamu@gmail.com', 'Teff', 1, 'DEA1500068', '', 'sell', 'cash in', 5000, 0, 'Sunday', 'June', 2023, 6, 10, 16, 37, 37, 585),
(555, 'ayinalemmenber@gmail.com', 'Wheate', 2, 'DEA1500003', '', 'sell', 'cash in', 6000, 0, 'Monday', 'June', 2023, 6, 11, 11, 24, 5, 113),
(556, 'ayinalemmenber@gmail.com', 'Maize', 2, 'DEA1500003', '', 'sell', 'cash in', 4000, 0, 'Monday', 'June', 2023, 6, 11, 11, 24, 5, 113),
(557, 'luelmenber@gmail.com', 'Teff', 2, 'DEA1500079', '', 'sell', 'cash in', 10000, 0, 'Monday', 'June', 2023, 6, 11, 11, 26, 3, 793),
(558, 'luelmenber@gmail.com', 'Wheate', 2, 'DEA1500079', '', 'sell', 'cash in', 6000, 0, 'Monday', 'June', 2023, 6, 11, 11, 26, 3, 793),
(559, 'ayinalemmenber@gmail.com', 'Wheate', 4, 'DEA1500003', '', 'sell', 'cash in', 6000, 0, 'Monday', 'June', 2023, 6, 11, 11, 30, 10, 862),
(560, 'ayinalemmenber@gmail.com', 'Maize', 3, 'DEA1500003', '', 'sell', 'cash in', 4000, 0, 'Monday', 'June', 2023, 6, 11, 11, 30, 10, 862),
(561, 'enawugawwalie@gmail.com', 'Teff', 2000, 'DEA787898', '', 'buy', 'cash out', 4700, 0, 'Tuesday', 'June', 2023, 6, 12, 8, 38, 31, 272),
(562, 'mulatfkadu@gmail.com', 'Sugar', 2, 'Yemezegn', '', 'sell', 'cash in', 60, 0, 'Tuesday', 'June', 2023, 6, 12, 9, 12, 16, 714),
(563, 'mulatfkadu@gmail.com', 'UREA', 2, 'Yemezegn', '', 'sell', 'cash in', 1900, 0, 'Tuesday', 'June', 2023, 6, 12, 9, 12, 16, 714);

-- --------------------------------------------------------

--
-- Table structure for table `showednotification`
--

CREATE TABLE `showednotification` (
  `email` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showednotification`
--

INSERT INTO `showednotification` (`email`, `notification_id`) VALUES
('ayinalemmenber@gmail.com', 581);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fName` varchar(255) NOT NULL,
  `faName` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `kebele` varchar(255) NOT NULL,
  `subKebele` varchar(255) NOT NULL,
  `village` varchar(255) NOT NULL,
  `kebele_id_photo` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `user_state` int(11) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fName`, `faName`, `phone`, `email`, `username`, `user_role`, `password`, `kebele`, `subKebele`, `village`, `kebele_id_photo`, `photo`, `job`, `sex`, `age`, `user_state`, `active`) VALUES
('Abebe', 'Smachew', '0923233128', 'abebesmachew@gmail.com', 'DEA1212121', 'user', 'b34058064ea2460b54cd43fd1e8cc02f', 'Yeguarat', 'Yeguarat', 'Yeguarat', 'https://i.ibb.co/RPGSNZM/IdImage.png', 'https://i.ibb.co/dc3WVm4/photo.jpg', 'Farmer', 'Male', 27, 1, 0),
('Alebel', 'Edmealem', '0923233128', 'alebeleedmealem@gmail.com', 'DEA9999999', 'store', '8d77fd080aa160eabccb39cea265c645', 'Yeguarat', 'Yeguarat', 'Yeguarat', 'https://i.ibb.co/vj4cgkt/photo.jpg', 'https://i.ibb.co/vj4cgkt/photo.jpg', 'Manager', 'male', 28, 1, 0),
('Asmare', 'Zelalem', '0923233128', 'asmarezelalem@gmail.com', 'DEA888888', 'manager', '3e579f7fb76ab29e37f7b10d9cc6b8fc', 'Degolma', 'Degolma', 'Degolma', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'Manager', 'male', 24, 1, 0),
('Ayinalem', 'Menber', '923233128', 'ayinalemmenber@gmail.com', 'DEA1500003', 'user', 'c40cc61054c6e1588f1e01c3889bca92', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/F8zYJ0Q/IdImage.png', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'Farmer', 'Male', 47, 1, 0),
('Balew', 'Haimanot', '0923233128', 'balewhaimanot@gmail.com', 'DEA181818', 'user', '2a36d0f5f98669ceb8c8ce1ba3f00f96', 'Degolma', 'Degolma', 'Degolma', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'Farmer', 'Male', 30, 1, 0),
('Wudneh', 'Birhan', '+251923233128', 'bdu1101907@gmail.com', 'BDU1101907', 'user', '', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/MDDH1ky/IdImage.jpg', 'https://i.ibb.co/hFgyGRn/photo.jpg', 'Farmer', 'Male', 25, 1, 0),
('Befkadu', 'Enawugaw', NULL, 'befkaduenawugaw@gmail.com', 'DEA222222222222', 'customer', '9fb5967c954e2136ce0fb029281e16a5', '', '', '', '', '', '', '', 0, 1, 0),
('Bereket', 'Edmealem', '0923233128', 'bereketedmealem@gmail.com', 'DEA8888888', 'manager', '1a3728537fae70e1632d028b8a5b3227', 'Yeguarat', 'Yeguarat', 'Yeguarat', 'https://i.ibb.co/r7Trkqh/IdImage.jpg', 'https://i.ibb.co/vj4cgkt/photo.jpg', 'Manager', 'male', 25, 1, 0),
('Damtie', 'Eheyis', '0923233128', 'damtieeheyis@gmail.com', 'DEA525252', 'store', 'f59bc7886abdea90e5c256f27d4a2061', 'Gofchima', 'Gofchima', 'Gofchima', 'https://i.ibb.co/n1k42tf/photo.jpg', 'https://i.ibb.co/n1k42tf/photo.jpg', 'Manager', 'male', 26, 1, 0),
('Melkamu', 'Ayinalem', '0923233128', 'dea1101907@gmail.com', 'DEA1101907', 'user', '', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/3BdQwj7/IdImage.png', 'https://i.ibb.co/hFgyGRn/photo.jpg', 'Farmer', 'Male', 16, 1, 0),
('Anmaw', 'Mekuriyaw', '923233128', 'dea1500000@gmail.com', 'DEA1500000', 'user', '', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/44fDYVr/IdImage.png', 'https://i.ibb.co/DwM5Hs7/photo.jpg', 'Farmer', 'Male', 55, 0, 0),
('Fentahun', 'Sewunet', '923233128', 'dea1500032@gmail.com', 'DEA1500032', 'user', '', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/44fDYVr/IdImage.png', 'https://i.ibb.co/DwM5Hs7/photo.jpg', 'Farmer', 'Male', 50, 0, 0),
('Temesgen', 'Sewunet', '923233128', 'dea1500052@gmail.com', 'DEA1500052', 'user', '', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/44fDYVr/IdImage.png', 'https://i.ibb.co/DwM5Hs7/photo.jpg', 'Farmer', 'Male', 50, 0, 0),
('Bayih', 'Molla', '923233128', 'dea1500083@gmail.com', 'DEA1500083', 'user', '', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/44fDYVr/IdImage.png', 'https://i.ibb.co/DwM5Hs7/photo.jpg', 'Farmer', 'Male', 50, 0, 0),
('Getahun', 'Ayinalem', '0723233128', 'dea211111111@gmail.com', 'DEA211111111', 'user', '', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/hFgyGRn/photo.jpg', 'https://i.ibb.co/3BdQwj7/IdImage.png', 'Farmer', 'Male', 12, 0, 0),
('Bedilu', 'Ayinalem', '0123233128', 'dea2222222222@gmail.com', 'DEA2222222222', 'user', '', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/MDDH1ky/IdImage.jpg', 'https://i.ibb.co/hFgyGRn/photo.jpg', 'Farmer', 'Male', 18, 0, 0),
('Gashaw', 'Addiss', '0723233128', 'dea233445@gmail.com', 'DEA233445', 'user', '', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/n1k42tf/photo.jpg', 'https://i.ibb.co/n1k42tf/photo.jpg', 'Farmer', 'Male', 33, 0, 0),
('Zemenu', 'Taye', '0923233128', 'DEA767676@gmail.com', 'DEA767676', 'manager', '', 'Guay', 'Guay', 'Guay', '', '', 'Manager', 'male', 24, 0, 0),
('Tadele', 'Teshome', '0923233128', 'dea797979@gmail.com', 'DEA797979', 'user', '', 'Degolma', 'Degolma', 'Degolma', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'Farmer', 'Male', 45, 0, 0),
('Yizengaw', 'Yenesew', '0923233128', 'DEA878787@gmail.com', 'DEA878787', 'store', '', 'Guay', 'Guay', 'Guay', '', '', 'Manager', 'male', 24, 0, 0),
('Ayalsew', 'Addiss', '0923233128', 'dea878797@gmail.com', 'DEA878797', 'user', '', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/n1k42tf/photo.jpg', 'https://i.ibb.co/n1k42tf/photo.jpg', 'Farmer', 'Male', 55, 0, 0),
('Demeke', 'Getaneh', '0923233128', 'demekegetaneh@gmail.com', 'DEA221133', 'store', 'd731b58728e7747ddb016a38602bfaaa', 'Yedenbegn', 'Yedenbegn', 'Yedenbegn', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'Manager', 'male', 26, 1, 0),
('Enawugaw', 'Walie', '0923233128', 'enawugawwalie@gmail.com', 'DEA787898', 'user', '1ef592c1cd81b3fd5781678409bb6890', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/n1k42tf/photo.jpg', 'https://i.ibb.co/n1k42tf/photo.jpg', 'Farmer', 'Male', 50, 1, 0),
('Gzachew', 'Teshome', '0923233128', 'gzachewteshome@gmail.com', 'DEA383838', 'user', '241c157f14e6c459b222a6ea65cd3a89', 'Degolma', 'Degolma', 'Degolma', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'Farmer', 'Male', 40, 1, 0),
('Kassayie', 'Lnger', '0923233128', 'kassayielnger@gmail.com', 'DEA989898', 'store', 'b4e21e4590d86ccedfce7f25c580e620', 'Degolma', 'Degolma', 'Degolma', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'Manager', 'male', 24, 1, 0),
('Kerealem', 'Eshetie', '923233128', 'kerealemeshetie@gmail.com', 'DEA1500001', 'woreda_admin', 'e69c1ec7ba12ba28117331b8fe48396e', 'Debre Elias', 'Elias', 'Elias', 'https://i.ibb.co/T08Mf34/IdImage.png', 'https://i.ibb.co/qCk9Fqk/photo.jpg', 'agriculture officer', 'Male', 28, 1, 0),
('Luel', 'Menber', '923233128', 'luelmenber@gmail.com', 'DEA1500079', 'user', 'be1b6f6a421be49698c4d64813ae9719', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/fNJ5gP4/IdImage.png', 'https://i.ibb.co/7RQ8Wfn/photo.jpg', 'Farmer', 'Male', 30, 1, 0),
('Mengstu', 'Teshome', '+251923233128', 'mengstuteshome@gmail.com', 'DEA252525', 'manager', '26348cc274a2a926a30772236e9fa704', 'Gofchima', 'Gofchima', 'Gofchima', 'https://i.ibb.co/n1k42tf/photo.jpg', 'https://i.ibb.co/n1k42tf/photo.jpg', 'Manager', 'male', 27, 1, 0),
('Mola', 'Tesema', NULL, 'molatesema@gmail.com', 'DEA2828282', 'customer', '3708c018df99f6f3bd1ffd5f9599944f', '', '', '', '', '', '', '', 0, 1, 0),
('Mulat', 'Fkadu', '923233128', 'mulatfkadu@gmail.com', 'DEA1500062', 'store', 'ae3ceab19ed7468ef28e22bf18bfa9d9', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/x2BSnVW/IdImage.png', 'https://i.ibb.co/mckbkZS/photo.jpg', 'Manager', 'Male', 25, 1, 0),
('Semahegn', 'Zeleke', '0923233128', 'semahegnzeleke@gmail.com', 'DEA209080', 'user', 'd0115d0ce413e9e81199ea2068d8574d', 'Yedenbegn', 'Yedebegn', 'Yedebegn', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'Farmer', 'Male', 56, 1, 0),
('Wondmeneh', 'Worku', '0923233128', 'wondmenehworku@gmail.com', 'DEA112233', 'manager', '56843b065add6e1369477c5ad2a45040', 'Yedenbegn', 'Yedenbegn', 'Yedenbegn', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'Manager', 'male', 26, 1, 0),
('Wudneh', 'Birhan', NULL, 'wudnehbirhan@gmail.com', 'DEA3333333333', 'customer', '98d2b3eee1edcd6b69d72887c3f7a90e', '', '', '', '', '', '', '', 0, 1, 0),
('Yaregal', 'Adamu', '923233128', 'yaregaladamu@gmail.com', 'DEA1500068', 'user', 'd72aacd13c6207339049caac60dcf5c8', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/44fDYVr/IdImage.png', 'https://i.ibb.co/Bj2vHJN/photo.jpg', 'Farmer', 'Male', 50, 1, 0),
('Yibeltal', 'Abebe', '0923233128', 'yibeltalabebe@gmail.com', 'DEA1313131', 'user', '9ba49d0b146fee9e42d2aa662189bffd', 'Yeguarat', 'Yeguarat', 'Yeguarat', 'https://i.ibb.co/RPGSNZM/IdImage.png', 'https://i.ibb.co/z5JBgD6/photo.jpg', 'Farmer', 'Male', 30, 1, 0),
('Yilkal', 'Ayinalem', NULL, 'yilkalayinalem@gmail.com', 'BDU1101920', 'customer', '44a0484f2f050891f08f0b55c07f5beb', '', '', '', '', '', '', '', 0, 1, 0),
('Zelalem', 'Bayih', '923233128', 'zelalembayih@gmail.com', 'DEA1500043', 'manager', '55d91af19c79ca65071ed7cc52909fc4', 'Yemezegn', 'Yemezegn', 'Yemezegn', 'https://i.ibb.co/T08Mf34/IdImage.png', 'https://i.ibb.co/qCk9Fqk/photo.jpg', 'Manager', 'Male', 25, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_transaction`
--

CREATE TABLE `user_transaction` (
  `transaction_id` int(11) NOT NULL,
  `transaction_email` varchar(50) NOT NULL,
  `product_id` varchar(250) NOT NULL,
  `NoOrders` int(11) NOT NULL,
  `transaction_kebele` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_transaction`
--

INSERT INTO `user_transaction` (`transaction_id`, `transaction_email`, `product_id`, `NoOrders`, `transaction_kebele`) VALUES
(186, 'ayinalemmenber@gmail.com', '212', 8, 'Yemezegn'),
(187, 'luelmenber@gmail.com', '212', 1, 'Yemezegn'),
(188, 'ayinalemmenber@gmail.com', '213', 6, 'Yemezegn'),
(189, 'ayinalemmenber@gmail.com', '214', 6, 'Yemezegn'),
(190, 'ayinalemmenber@gmail.com', '215', 1, 'Yemezegn'),
(191, 'ayinalemmenber@gmail.com', '217', 10, 'Yemezegn'),
(192, 'ayinalemmenber@gmail.com', '227', 15, 'Yemezegn'),
(193, 'luelmenber@gmail.com', '227', 5, 'Yemezegn'),
(194, 'luelmenber@gmail.com', '217', 4, 'Yemezegn'),
(195, 'bihonegnmenber@gmail.com', '217', 5, 'Yemezegn'),
(196, 'bihonegnmenber@gmail.com', '227', 9, 'Yemezegn'),
(197, 'bihonegnmenber@gmail.com', '212', 2, 'Yemezegn'),
(198, 'ayinalemmenber@gmail.com', '235', 10, 'Yemezegn'),
(199, 'ayinalemmenber@gmail.com', '236', 7, 'Yemezegn'),
(200, 'bihonegnmenber@gmail.com', '235', 3, 'Yemezegn'),
(201, 'bihonegnmenber@gmail.com', '236', 5, 'Yemezegn'),
(202, 'luelmenber@gmail.com', '235', 2, 'Yemezegn'),
(203, 'luelmenber@gmail.com', '236', 2, 'Yemezegn'),
(204, 'abebesmachew@gmail.com', '238', 10, 'Yeguarat'),
(205, 'yibeltalabebe@gmail.com', '239', 6, 'Yeguarat'),
(206, 'yibeltalabebe@gmail.com', '238', 10, 'Yeguarat'),
(207, 'abebesmachew@gmail.com', '239', 6, 'Yeguarat'),
(208, 'yaregaladamu@gmail.com', '214', 7, 'Yemezegn'),
(209, 'yaregaladamu@gmail.com', '215', 9, 'Yemezegn'),
(210, 'yaregaladamu@gmail.com', '227', 10, 'Yemezegn'),
(211, 'yaregaladamu@gmail.com', '235', 2, 'Yemezegn'),
(212, 'yaregaladamu@gmail.com', '236', 3, 'Yemezegn'),
(213, 'yibeltalabebe@gmail.com', '261', 4, 'Yeguarat'),
(214, 'yibeltalabebe@gmail.com', '257', 0, 'Yeguarat'),
(215, 'yibeltalabebe@gmail.com', '259', 0, 'Yeguarat'),
(216, 'ayinalemzeleke@gmail.com', '274', 2, 'Yedenbegn'),
(217, 'ayinalemzeleke@gmail.com', '276', 2, 'Yedenbegn'),
(218, 'balewhaimanot@gmail.com', '280', 1, 'Degolma'),
(219, 'luelmenber@gmail.com', '215', 4, 'Yemezegn'),
(220, 'semahegnzeleke@gmail.com', '274', 10, 'Yedenbegn'),
(221, 'semahegnzeleke@gmail.com', '276', 10, 'Yedenbegn'),
(222, 'enawugawwalie@gmail.com', '227', 2, 'Yemezegn'),
(223, 'enawugawwalie@gmail.com', '236', 2, 'Yemezegn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agri_product`
--
ALTER TABLE `agri_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `email` (`post_email`);

--
-- Indexes for table `chattingtable`
--
ALTER TABLE `chattingtable`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `receive_email` (`receive_email`),
  ADD KEY `send_email` (`send_email`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poster_email` (`poster_email`);

--
-- Indexes for table `orderrestriction`
--
ALTER TABLE `orderrestriction`
  ADD PRIMARY KEY (`restriction_id`),
  ADD KEY `notifier_email` (`notifier_email`);

--
-- Indexes for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `patent_email` (`patent_email`);

--
-- Indexes for table `ratingandfavorite`
--
ALTER TABLE `ratingandfavorite`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `reporter_email` (`reporter_email`);

--
-- Indexes for table `showednotification`
--
ALTER TABLE `showednotification`
  ADD PRIMARY KEY (`email`),
  ADD KEY `notification_id` (`notification_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `user_transaction`
--
ALTER TABLE `user_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `transaction_email` (`transaction_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agri_product`
--
ALTER TABLE `agri_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT for table `chattingtable`
--
ALTER TABLE `chattingtable`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=582;

--
-- AUTO_INCREMENT for table `orderrestriction`
--
ALTER TABLE `orderrestriction`
  MODIFY `restriction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `ordertable`
--
ALTER TABLE `ordertable`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1267;

--
-- AUTO_INCREMENT for table `ratingandfavorite`
--
ALTER TABLE `ratingandfavorite`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=564;

--
-- AUTO_INCREMENT for table `user_transaction`
--
ALTER TABLE `user_transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agri_product`
--
ALTER TABLE `agri_product`
  ADD CONSTRAINT `agri_product_ibfk_1` FOREIGN KEY (`post_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chattingtable`
--
ALTER TABLE `chattingtable`
  ADD CONSTRAINT `chattingtable_ibfk_1` FOREIGN KEY (`send_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`poster_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderrestriction`
--
ALTER TABLE `orderrestriction`
  ADD CONSTRAINT `orderrestriction_ibfk_1` FOREIGN KEY (`notifier_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD CONSTRAINT `ordertable_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordertable_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `agri_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ordertable_ibfk_3` FOREIGN KEY (`patent_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratingandfavorite`
--
ALTER TABLE `ratingandfavorite`
  ADD CONSTRAINT `ratingandfavorite_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `agri_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratingandfavorite_ibfk_2` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `showednotification`
--
ALTER TABLE `showednotification`
  ADD CONSTRAINT `showednotification_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `showednotification_ibfk_2` FOREIGN KEY (`notification_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
