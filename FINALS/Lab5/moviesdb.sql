-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2025 at 05:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `main_actor` varchar(50) NOT NULL,
  `director` varchar(50) NOT NULL,
  `genre` varchar(25) NOT NULL,
  `gross_sales` float NOT NULL,
  `ratings` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `title`, `main_actor`, `director`, `genre`, `gross_sales`, `ratings`) VALUES
(111, 'Avatar', 'Sam Worthington', 'James Cameron', 'Sci-Fi', 2920000000, 'G'),
(112, 'Inside Out 2', 'Maya Hawke', 'Kelsey Mann', 'Animation', 1690000000, 'PG'),
(113, 'Deadpool & Wolverine', 'Ryan Reynolds', 'Shawn Levy', 'Action', 1330000000, 'R16'),
(114, 'The Wild Robot', 'Lupita Nyong\'o', 'Chris Sanders', 'Adventure', 334000000, 'PG'),
(115, 'The Lion King', 'Matthew Broderick', 'Roger Allers', 'Musical', 968000000, 'G'),
(117, 'Sanggre', 'Mark', 'Justine', 'Fantasy', 100, 'PG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
