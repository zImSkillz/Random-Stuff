-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 17, 2022 at 07:21 PM
-- Server version: 10.3.36-MariaDB-0+deb10u2
-- PHP Version: 7.3.33-4+0~20220627.98+debian10~1.gbp40b3e4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lyxosGBAN`
--

-- --------------------------------------------------------

--
-- Table structure for table `global_ban`
--

CREATE TABLE `global_ban` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `liveid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `xbl` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `hwid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `license` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `global_ban`
--

INSERT INTO `global_ban` (`name`, `liveid`, `xbl`, `hwid`, `ip`, `discord`, `license`, `date`, `reason`) VALUES
('exampleName', 'exampleLiveID', 'exampleXBL', 'exampleHWID', 'exampleIP', 'exampleDiscord', 'exampleLicense', 'exampleDate', 'exampleReason');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `global_ban`
--
ALTER TABLE `global_ban`
  ADD PRIMARY KEY (`hwid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
