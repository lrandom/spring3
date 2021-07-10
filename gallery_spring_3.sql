-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2021 at 04:35 PM
-- Server version: 5.7.12
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery_spring_3`
--

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `brand` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`id`, `name`, `user_id`, `brand`) VALUES
(1, 'T-Shirt', 1, 'Old Navy'),
(2, 'Short', 1, 'reebook');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `path`, `title`) VALUES
(1, '7_2021/16259198021370793920957.jpg', ''),
(2, '7_2021/1625919831Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(3, '7_2021/1625919892Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(4, '7_2021/16259199231370793920957.jpg', 'Samurai xưa'),
(5, '7_2021/16259198021370793920957.jpg', ''),
(6, '7_2021/1625919831Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(7, '7_2021/1625919892Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(8, '7_2021/16259199231370793920957.jpg', 'Samurai xưa'),
(9, '7_2021/16259198021370793920957.jpg', ''),
(10, '7_2021/1625919831Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(11, '7_2021/1625919892Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(12, '7_2021/16259199231370793920957.jpg', 'Samurai xưa'),
(13, '7_2021/16259198021370793920957.jpg', ''),
(14, '7_2021/1625919831Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(15, '7_2021/1625919892Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(16, '7_2021/16259199231370793920957.jpg', 'Samurai xưa'),
(17, '7_2021/16259198021370793920957.jpg', ''),
(18, '7_2021/1625919831Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(19, '7_2021/1625919892Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(20, '7_2021/16259199231370793920957.jpg', 'Samurai xưa'),
(21, '7_2021/16259198021370793920957.jpg', ''),
(22, '7_2021/1625919831Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(23, '7_2021/1625919892Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(24, '7_2021/16259199231370793920957.jpg', 'Samurai xưa'),
(25, '7_2021/16259198021370793920957.jpg', ''),
(26, '7_2021/1625919831Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(27, '7_2021/1625919892Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(28, '7_2021/16259199231370793920957.jpg', 'Samurai xưa'),
(29, '7_2021/16259198021370793920957.jpg', ''),
(30, '7_2021/1625919831Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(31, '7_2021/1625919892Ban_do_ba_vuong_quoc_Trieu_Tien.png', 'Tri?u Tiên x?a'),
(32, '7_2021/16259199231370793920957.jpg', 'Samurai xưa');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint(20) NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `address`, `type`) VALUES
(1, 'Tiểu học Minh Hà', 'Hạ Long', 1),
(2, 'THCS Hà Tu', 'Hạ Long', 2),
(3, 'THPT Vũ Văn Hiếu', 'Hạ Long', 3),
(4, 'HVQL Giáo dục', 'Hà Nội ', 4),
(5, 'Aptech', 'Hà Nội ', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `pwd`, `phone`, `address`) VALUES
(1, 'be@gmail.com', '121212121212', '212121212', 'Quang Ninh'),
(2, 'son@gmail.com', '12121212', '1921829', 'Vinh Phuc');

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE `user_infos` (
  `hobby` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `height` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `weight` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_infos`
--

INSERT INTO `user_infos` (`hobby`, `dob`, `height`, `weight`, `user_id`, `id`) VALUES
('rap, code, game', '12/01/92', '1m72', '75', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_school`
--

CREATE TABLE `user_school` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_school`
--

INSERT INTO `user_school` (`id`, `user_id`, `school_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9v7gut79d5gafwodlxbpv5y2x` (`user_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2p47ojr9e68ofkuyxbvng571w` (`user_id`);

--
-- Indexes for table `user_school`
--
ALTER TABLE `user_school`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7q4t0uxvqoskqyxfabtosesbh` (`user_id`),
  ADD KEY `FKd4cavtk1kakojgr5myxd0rt8w` (`school_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clothes`
--
ALTER TABLE `clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_school`
--
ALTER TABLE `user_school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clothes`
--
ALTER TABLE `clothes`
  ADD CONSTRAINT `FK9v7gut79d5gafwodlxbpv5y2x` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD CONSTRAINT `FK2p47ojr9e68ofkuyxbvng571w` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_school`
--
ALTER TABLE `user_school`
  ADD CONSTRAINT `FK7q4t0uxvqoskqyxfabtosesbh` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKd4cavtk1kakojgr5myxd0rt8w` FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`),
  ADD CONSTRAINT `FKiqcddtgjhpnkn81d0q046guta` FOREIGN KEY (`user_id`) REFERENCES `schools` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
