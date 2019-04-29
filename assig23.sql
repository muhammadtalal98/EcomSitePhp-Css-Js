-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 06:02 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assig23`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(3) NOT NULL,
  `Name` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `Brand` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `Quantity` int(5) NOT NULL,
  `Image` blob,
  `detail` text COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `Name`, `Brand`, `Quantity`, `Image`, `detail`) VALUES
(1, 'Shirt', 'Polo', 15, NULL, 'Polo shirt Polo shirt Polo shirt Polo shirt Polo shirt Polo shirt Polo shirt Polo shirt Polo shirt Polo shirt Polo shirt Polo shirt Polo shirt Polo shirt Polo shirt '),
(2, 'Shirt', 'Dockers', 20, NULL, 'Dockers Shirt Dockers Dockers DockersDockersDockersDockersDockersDockersDockersDockersDockers'),
(3, 'Shirt', 'One', 25, NULL, 'One Shirt One ShirtOne Shirt One Shirt One ShirtOne Shirt One Shirt One Shirt'),
(4, 'Polo Shirt', 'Polo', 10, NULL, 'Polo Shirt One Shirt polo shirt polo shirtpolo shirt polo shirt polo shirt polo shirt polo shirt polo shirt polo shirt v');

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
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
