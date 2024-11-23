-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2024 at 03:18 AM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_uid` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_uid`, `user_email`, `user_pwd`) VALUES
(1, 'nguo', 'nguo@gmail.com', '$2y$10$6zADV.VzOTjTSMBF00hsO.S5Y4i0AC8fvgj/z/CFLKigRd07axAoG'),
(2, 'rahma hafidh hamis', 'rhhamis00@gmail.com', '$2y$10$2NrY5KkPpyNcFFYepI7FO.omLvZsiYulnFx4.TK7QS1EVi4bldCYi'),
(3, 'james peter', 'james@gmail.com', '$2y$10$VR.1O9jwyn9VWaTjRm6iUOhm4LLRCNsozTXCRtgAlLFhNTRomHWJy'),
(4, 'ramy', 'ramy@gmail.com', '$2y$10$rXNHqWgF7SV4GuCiCDoV2uRMCO0A6XvkF2BktS17ynj3lgwfAFpXK'),
(5, 'joshua bakari', 'joshuabakari@gmail.com', '$2y$10$9gwHhrF91r6xgwxTI8waWOFwIGKKqB7uJg60QuSFCuwKeLmRIMsWe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
