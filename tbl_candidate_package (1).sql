-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2020 at 04:39 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etest`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_candidate_package`
--

CREATE TABLE `tbl_candidate_package` (
  `id` int(11) NOT NULL,
  `package_id` varchar(11) DEFAULT NULL,
  `candidate_id` int(11) NOT NULL,
  `package_name` varchar(100) DEFAULT NULL,
  `package_duration` timestamp NULL DEFAULT NULL,
  `package_from` date NOT NULL,
  `package_to` date NOT NULL,
  `package_price` int(11) DEFAULT NULL,
  `package_description` text,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_candidate_package`
--

INSERT INTO `tbl_candidate_package` (`id`, `package_id`, `candidate_id`, `package_name`, `package_duration`, `package_from`, `package_to`, `package_price`, `package_description`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(3, '600589', 0, 'Master', '0000-00-00 00:00:00', '2020-12-18', '2020-12-02', 0, 'package_description', 'created_by', 'modified_by', '2020-12-22 20:31:24', '2020-12-22 20:31:24', 'y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_candidate_package`
--
ALTER TABLE `tbl_candidate_package`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_candidate_package`
--
ALTER TABLE `tbl_candidate_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
