-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2023 at 02:39 AM
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
-- Database: `pet_finder_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `lost_pets`
--

CREATE TABLE `lost_pets` (
  `id` int(11) NOT NULL,
  `file` blob NOT NULL,
  `petName` varchar(255) NOT NULL,
  `breed` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `lostDate` date NOT NULL,
  `lostTime` time NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `additionalInfo` text DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `ownerName` varchar(255) NOT NULL,
  `ownerTP` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lost_pets`
--

INSERT INTO `lost_pets` (`id`, `file`, `petName`, `breed`, `type`, `lostDate`, `lostTime`, `city`, `additionalInfo`, `color`, `age`, `size`, `gender`, `ownerName`, `ownerTP`, `email`, `image`) VALUES
(1, '', 'mm', 'mm', 'Dog', '0055-03-31', '20:28:00', 'mm', 'mm', 'mm', 'Baby', 'small', 'female', 'mm', '66', 'mm@gmail.com', 'uploads/gettyimages-114166947-1-268128f97e5c415baede328c1fe32f55.jpg'),
(2, '', 'mm', 'mm', 'Dog', '0055-03-31', '20:28:00', 'mm', 'mm', 'mm', 'Baby', 'small', 'female', 'mm', '66', 'mm@gmail.com', 'uploads/gettyimages-114166947-1-268128f97e5c415baede328c1fe32f55.jpg'),
(3, '', 'mm', 'mm', 'Dog', '0055-03-31', '20:28:00', 'mm', 'mm', 'mm', 'Baby', 'small', 'female', 'mm', '66', 'mm@gmail.com', 'uploads/gettyimages-114166947-1-268128f97e5c415baede328c1fe32f55.jpg'),
(4, '', 'mm', 'mm', 'Dog', '2222-04-05', '19:34:00', 'mm', 'mm', 'mm', 'Baby', 'small', 'male', 'mm', '55', 'mm@gmail.com', 'uploads/gettyimages-114166947-1-268128f97e5c415baede328c1fe32f55.jpg'),
(5, '', 'mm', 'mm', 'Dog', '2222-04-05', '19:34:00', 'mm', 'mm', 'mm', 'Baby', 'small', 'male', 'mm', '55', 'mm@gmail.com', 'uploads/gettyimages-114166947-1-268128f97e5c415baede328c1fe32f55.jpg'),
(6, '', 'jj', 'jj', 'Cat', '2022-07-08', '19:42:00', 'jj', 'jj', 'jj', 'Young Adult', 'Medium', 'female', 'jj', '42', 'jjj@gmail.com', 'uploads/dog-puppy-on-garden-royalty-free-image-1586966191.jpg'),
(7, '', 'ee', 'ee', 'Dog', '2222-03-04', '20:21:00', 'ee', 'ee', 'ee', 'Young Adult', 'Medium', 'male', 'ee', '33', 'ee@gmail.com', 'uploads/gettyimages-114166947-1-268128f97e5c415baede328c1fe32f55.jpg'),
(8, '', 'qq', 'qq', 'Rabbit', '3333-02-04', '20:36:00', 'qq', 'qq', 'qq', 'Adult', 'Medium', 'female', 'qq', '44', 'qq@gmail.com', 'uploads/88ii.png'),
(9, '', 'aa', 'aa', 'Cat', '0222-02-22', '12:41:00', 'aa', 'aa', 'aa', 'Young Adult', 'Medium', 'female', 'aa', '22', 'abc@gmail.com', 'uploads/gettyimages-114166947-1-268128f97e5c415baede328c1fe32f55.jpg'),
(10, '', 'gg', 'gg', 'Dog', '0333-02-04', '20:52:00', 'gg', 'gg', 'gg', 'Young Adult', 'Medium', 'female', 'gg', '66', 'ggg@gmail.om', 'uploads/88ii.png'),
(11, '', 'rr', 'rr', 'Dog', '2222-02-04', '21:12:00', 'rr', 'rr', 'rr', 'Young Adult', 'Medium', 'male', 'rr', '44', 'rrr@gmail.com', 'uploads/88ii.png'),
(12, '', 'mr', 'mr', 'Dog', '2222-03-04', '22:31:00', 'mr', 'mr', 'mr', 'Young Adult', 'small', 'female', 'mr', '33', 'manu@gmail.com', 'uploads/gettyimages-114166947-1-268128f97e5c415baede328c1fe32f55.jpg'),
(13, '', 'dr', 'dr', 'Rabbit', '3333-02-04', '22:50:00', 'dr', 'dr', 'dr', 'Adult', 'Medium', 'female', 'dr', '40', 'ddd@gmal.com', 'uploads/'),
(14, '', 'pr', 'pr', 'Dog', '2222-03-04', '22:51:00', 'pr', 'pr', 'pr', 'Young Adult', 'Medium', 'female', 'pr', '99', 'pqr@gmail.com', 'uploads/vecteezy_iftar-fruit-free-illustration-icon_22507093_722.png'),
(15, '', 'rr', 'rr', 'Cat', '2222-03-04', '12:54:00', 'rr', 'rr', 'rr', 'Adult', 'Medium', 'female', 'rr', '44', 'rrr@gmail.com', 'uploads/gettyimages-114166947-1-268128f97e5c415baede328c1fe32f55.jpg'),
(16, '', 'hh', 'hh', 'Cat', '2222-04-05', '22:56:00', 'hh', 'hh', 'hh', 'Young Adult', 'small', 'female', 'hh', '55', 'hhh@gmai.com', 'uploads/download (1).jpeg'),
(17, '', 'ww', 'ww', 'Rabbit', '2222-02-04', '05:40:00', 'ww', 'ww', 'ww', 'Adult', 'Medium', 'male', 'ww', '22', 'www@gmail.com', 'uploads/download (2).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `pet_images`
--

CREATE TABLE `pet_images` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pet_images`
--

INSERT INTO `pet_images` (`id`, `filename`, `uploaded_at`) VALUES
(1, 'download (2).jpeg', '2023-09-06 22:52:49'),
(2, 'download (2).jpeg', '2023-09-06 22:54:05'),
(3, 'download (2).jpeg', '2023-09-06 22:54:08'),
(4, 'gettyimages-114166947-1-268128f97e5c415baede328c1fe32f55.jpg', '2023-09-06 22:56:57'),
(5, 'download (1).jpeg', '2023-09-06 23:01:11'),
(6, 'download (1).jpeg', '2023-09-06 23:01:41'),
(7, 'gettyimages-114166947-1-268128f97e5c415baede328c1fe32f55.jpg', '2023-09-06 23:04:20'),
(8, 'dog-puppy-on-garden-royalty-free-image-1586966191.jpg', '2023-09-06 23:18:42'),
(9, 'download (1).jpeg', '2023-09-06 23:34:20'),
(10, 'download (2).jpeg', '2023-09-06 23:34:58'),
(11, 'images.jpeg', '2023-09-06 23:50:44'),
(12, 'dog-puppy-on-garden-royalty-free-image-1586966191.jpg', '2023-09-07 00:04:54'),
(13, 'dog-puppy-on-garden-royalty-free-image-1586966191.jpg', '2023-09-07 00:05:06'),
(14, 'dog-puppy-on-garden-royalty-free-image-1586966191.jpg', '2023-09-07 00:05:14'),
(15, 'images.jpeg', '2023-09-07 00:05:27'),
(16, 'images.jpeg', '2023-09-07 00:05:57'),
(17, 'download (1).jpeg', '2023-09-07 00:08:06'),
(18, 'download (1).jpeg', '2023-09-07 00:12:00'),
(19, 'download (1).jpeg', '2023-09-07 00:12:49'),
(20, 'download (1).jpeg', '2023-09-07 00:22:48'),
(21, 'download (1).jpeg', '2023-09-07 00:22:58'),
(22, 'images.jpeg', '2023-09-07 00:23:08'),
(23, 'images.jpeg', '2023-09-07 00:25:36'),
(24, 'images.jpeg', '2023-09-07 00:26:00'),
(25, 'images.jpeg', '2023-09-07 00:26:26'),
(26, 'images.jpeg', '2023-09-07 00:26:40'),
(27, 'images.jpeg', '2023-09-07 00:27:07'),
(28, 'images.jpeg', '2023-09-07 00:27:43'),
(29, 'images.jpeg', '2023-09-07 00:27:46'),
(30, 'images.jpeg', '2023-09-07 00:28:16'),
(31, 'images.jpeg', '2023-09-07 00:28:36'),
(32, 'images.jpeg', '2023-09-07 00:29:23'),
(33, 'images.jpeg', '2023-09-07 00:29:43'),
(34, 'download (1).jpeg', '2023-09-07 00:30:00'),
(35, 'download (1).jpeg', '2023-09-07 00:30:49'),
(36, 'download (1).jpeg', '2023-09-07 00:32:05'),
(37, 'download (1).jpeg', '2023-09-07 00:33:42'),
(38, 'download (1).jpeg', '2023-09-07 00:34:51'),
(39, 'gettyimages-114166947-1-268128f97e5c415baede328c1fe32f55.jpg', '2023-09-07 00:35:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lost_pets`
--
ALTER TABLE `lost_pets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet_images`
--
ALTER TABLE `pet_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lost_pets`
--
ALTER TABLE `lost_pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pet_images`
--
ALTER TABLE `pet_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
