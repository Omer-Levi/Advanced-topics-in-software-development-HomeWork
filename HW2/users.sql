-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 11:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `date_of_birth` date NOT NULL,
  `number_phone` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `date_of_birth`, `number_phone`, `user_name`, `password`) VALUES
(16, 'Omer', 'Levi', '1992-05-15', 502548884, 'Omer20', '$2y$10$xVQ3uQl2Exk9TEmlvMN6tuS2p88sdeGRQQXOcHNDhu1vcjfUhPrZG'),
(17, 'Ofek', 'Ben Hemo', '1998-08-07', 507534343, 'ofek500', '$2y$10$W9pPTBe1ZgGMIBblMWm.cOh1OA.RSoRFNktOL8XahL3CbQ2sgzmtK'),
(18, 'Shalv', 'Roimi', '2023-05-02', 2147483647, 'Shalev12', '$2y$10$H/kd7a5H0HsElQW7nmcZ.u64arBWcGYIi26f.kTOrLKewXUpBMVbe'),
(19, 'Ofir', 'Levi', '2023-05-07', 502556687, 'ofir1212', '$2y$10$gAyKN4yaA31IVR1qGjp5jOOEBIj9RHO6iIlVp4vMIpEzWLARUqplC'),
(20, 'ela', 'levi', '2016-02-23', 2147483647, 'ela13', '$2y$10$yoE3E4aPximZy4lPEICJZOyXZ2NIVWRleGj9tWwiPGhgsjyMCrWW2');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
