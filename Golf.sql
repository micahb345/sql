-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 05, 2018 at 01:20 PM
-- Server version: 10.1.26-MariaDB-0+deb9u1
-- PHP Version: 7.0.19-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stream`
--

-- --------------------------------------------------------

--
-- Table structure for table `Golf`
--

CREATE TABLE `Golf` (
  `id` int(16) NOT NULL,
  `location` varchar(64) NOT NULL,
  `What Club` text NOT NULL,
  `my group` text NOT NULL,
  `score` int(16) NOT NULL,
  `date` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Golf`
--
ALTER TABLE `Golf`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `score` (`score`),
  ADD KEY `Location/3/5/18` (`location`,`date`);
ALTER TABLE `Golf` ADD FULLTEXT KEY `Club` (`What Club`);
ALTER TABLE `Golf` ADD FULLTEXT KEY `Group` (`my group`);
ALTER TABLE `Golf` ADD FULLTEXT KEY `location` (`location`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
