-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2020 at 04:13 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `tbl_admin_candidate`
--

CREATE TABLE `tbl_admin_candidate` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `exam_id` varchar(11) DEFAULT NULL,
  `total_candidate` int(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_candidate_history`
--

CREATE TABLE `tbl_admin_candidate_history` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `exam_id` varchar(11) DEFAULT NULL,
  `result` enum('pass','fail') DEFAULT NULL,
  `candidate_mark` int(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_new_test`
--

CREATE TABLE `tbl_admin_new_test` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subject_id` varchar(11) DEFAULT NULL,
  `exam_name` varchar(100) DEFAULT NULL,
  `exam_date` datetime DEFAULT NULL,
  `exam_duration` timestamp NULL DEFAULT NULL,
  `exam_mark` int(6) DEFAULT NULL,
  `exam_pass_mark` int(6) DEFAULT NULL,
  `re_exam` tinyint(1) DEFAULT NULL,
  `marking_type` enum('negative','non-negative') DEFAULT NULL,
  `admin_id` varchar(11) DEFAULT NULL,
  `examiner_id` varchar(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_payment`
--

CREATE TABLE `tbl_admin_payment` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `package_id` varchar(11) DEFAULT NULL,
  `package_date` datetime DEFAULT NULL,
  `package_expiry_date` timestamp NULL DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisement`
--

CREATE TABLE `tbl_advertisement` (
  `id` int(11) NOT NULL,
  `advertisement_id` varchar(11) DEFAULT NULL,
  `advertisement_name` varchar(100) DEFAULT NULL,
  `advertisement_image` varchar(500) DEFAULT NULL,
  `advertisement_expiry_date` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_candidate_exam`
--

CREATE TABLE `tbl_candidate_exam` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `exam_id` varchar(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_candidate_history`
--

CREATE TABLE `tbl_candidate_history` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `exam_id` varchar(11) DEFAULT NULL,
  `result` enum('pass','fail') DEFAULT NULL,
  `candidate_mark` int(6) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_candidate_package`
--

CREATE TABLE `tbl_candidate_package` (
  `id` int(11) NOT NULL,
  `package_id` varchar(11) DEFAULT NULL,
  `package_name` varchar(100) DEFAULT NULL,
  `package_duration` timestamp NULL DEFAULT NULL,
  `package_price` int(11) DEFAULT NULL,
  `package_description` text DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_candidate_payment`
--

CREATE TABLE `tbl_candidate_payment` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `package_id` varchar(11) DEFAULT NULL,
  `package_buy_date` timestamp NULL DEFAULT current_timestamp(),
  `package_expiry_date` timestamp NULL DEFAULT current_timestamp(),
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_candidate_payment`
--

INSERT INTO `tbl_candidate_payment` (`id`, `candidate_id`, `package_id`, `package_buy_date`, `package_expiry_date`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(1, '2242453', '143453', '2020-12-05 15:09:39', '2020-12-05 15:09:39', 'rhxv', 'fbhdfh', '2020-12-05 20:39:39', '2020-12-12 22:46:18', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_candidate_registration`
--

CREATE TABLE `tbl_candidate_registration` (
  `id` int(11) NOT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `d_o_b` varchar(10) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `dept_id` varchar(11) DEFAULT NULL,
  `category_id` varchar(11) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `package_type` varchar(100) DEFAULT NULL,
  `package_expiry` timestamp NULL DEFAULT NULL,
  `last_login_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` varchar(100) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_candidate_registration`
--

INSERT INTO `tbl_candidate_registration` (`id`, `candidate_id`, `first_name`, `last_name`, `gender`, `d_o_b`, `address`, `mobile`, `email`, `password`, `dept_id`, `category_id`, `avatar`, `country`, `state`, `city`, `package_type`, `package_expiry`, `last_login_date`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(1, '2242453@gma', 'ashish ashish', 'sharmaji', 'male', '2020-12-04', 'erhxrtj', '3435746347', ' vmfcmx', 'acefe0559129f56c04d8828bf0debae2', 'b 1', 'j b1', '1_logo.jpg', 'n hm', 'bv nf', 'nvbn', 'ashish ashish', '2020-12-15 15:01:02', '2020-12-17 04:39:44', 'vnvbn', 'ashish ashish', '2020-12-03 19:31:42', '2020-12-17 10:09:44', 'n'),
(12, '653404@gmai', 'ashish ashish', 'Sha', 'male', '2020-12-18', '', '8530941117', '', 'acefe0559129f56c04d8828bf0debae2', NULL, NULL, '12_index.jpg', '', '', '', 'ashish ashish', '2020-12-15 14:58:50', '2020-12-15 14:59:00', '', 'ashish ashish', '2020-12-12 22:12:10', '2020-12-15 20:29:00', 'n'),
(15, 'raju@gmail.', 'Anndscus', 'Shasmdc', 'male', '', '', '', 'raju@gmail.com', '25d55ad283aa400af464c76d713c07ad', NULL, NULL, 'raju@gmail.com_logo.jpg', '', '', '', NULL, NULL, '2020-12-14 16:16:26', 'raju@gmail.com', 'raju@gmail.com', '2020-12-14 21:46:26', '2020-12-14 21:46:26', 'y'),
(16, 'admin@gmail', 'admin', 'admin', 'male', '', '', '', 'admin@gmail.com', '25d55ad283aa400af464c76d713c07ad', NULL, NULL, 'admin@gmail.com_logo.jpg', '', '', '', NULL, NULL, '2020-12-14 16:38:10', 'admin@gmail.com', 'admin@gmail.com', '2020-12-14 22:08:10', '2020-12-14 22:08:10', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `category_id` varchar(11) DEFAULT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_id`, `category_name`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(5, '456789', 'mathematics1', 'ashish', 'ashish', '2020-12-17 21:58:59', '2020-12-17 21:58:59', 'n'),
(6, '179642 ', 'history1212', '', '', '2020-12-20 09:22:57', '2020-12-20 09:22:57', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_logo`
--

CREATE TABLE `tbl_client_logo` (
  `id` int(11) NOT NULL,
  `client_id` varchar(11) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_logo` varchar(500) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `currentStatus` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_client_logo`
--

INSERT INTO `tbl_client_logo` (`id`, `client_id`, `client_name`, `client_logo`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(47, '799194', 'Natasha Bisen', '799194_Madhavi Photo.png', '', '', '2020-12-14 13:33:38', '2020-12-14 13:33:38', 'Y'),
(56, '197968', 'Gayatri Vaidya', '197968_signature9.2017.jpg', '', '', '2020-12-14 18:55:09', '2020-12-14 18:55:09', 'Y'),
(68, '867054', 'Madhavi Bisen', '68_Madhavi photo.jpg', '', '', '2020-12-16 20:39:49', '2020-12-16 20:39:49', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_package`
--

CREATE TABLE `tbl_client_package` (
  `id` int(11) NOT NULL,
  `package_id` varchar(11) DEFAULT NULL,
  `package_name` varchar(100) DEFAULT NULL,
  `package_duration` timestamp NULL DEFAULT NULL,
  `package_price` int(11) DEFAULT NULL,
  `package_description` text DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_registration`
--

CREATE TABLE `tbl_client_registration` (
  `id` int(11) NOT NULL,
  `client_id` varchar(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `d_o_b` varchar(10) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dept_id` varchar(11) DEFAULT NULL,
  `category_id` varchar(11) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `package_type` varchar(100) DEFAULT NULL,
  `package_expiry_date` timestamp NULL DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `director_name` varchar(255) DEFAULT NULL,
  `last_login_date` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n',
  `password` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_client_registration`
--

INSERT INTO `tbl_client_registration` (`id`, `client_id`, `first_name`, `last_name`, `gender`, `d_o_b`, `address`, `mobile`, `email`, `dept_id`, `category_id`, `logo`, `country`, `state`, `city`, `package_type`, `package_expiry_date`, `role`, `position`, `director_name`, `last_login_date`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`, `password`) VALUES
(1, '123456', 'fsdgsx', 'sharma', 'female', '5345353', 'fgtnhgfh', '3435746347', 'dgthndcfhvf@gmailcom', 'b 1', 'j b1', 'fbxdbd', 'n hm', 'bv nf', 'nvbn', 'gncfgbfn ', NULL, 'fcgn', 'gcfn c', 'gfnc f', '0000-00-00 00:00:00', 'fgcn gcf', 'dscb ', '2020-12-17 09:49:29', '2020-12-17 09:49:29', 'n', 'dzbvxfbcf xd'),
(2, '$client_id', '$firstname', '$lastname', '', '$dob', '$address', '$mobile', '$mail', 'dept_id', 'category_id', '$logo', 'country', 'state', '$city', 'package_type', '0000-00-00 00:00:00', '$role', '$position', '$director_name', '2020-12-17 09:50:39', 'created_by', 'modified_by', '2020-12-17 09:50:39', '2020-12-17 09:50:39', 'y', '243e61e9410a9f577d2d662c67025ee9');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `id` int(11) NOT NULL,
  `department_id` varchar(11) DEFAULT NULL,
  `department_name` varchar(50) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `department_id`, `department_name`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(5, '41276', 'ashitosh', '', '', '2020-12-12 20:53:33', '2020-12-12 20:53:33', 'n'),
(6, '799743', 'ashish', 'created_by', 'modified_by', '2020-12-17 20:39:54', '2020-12-17 20:39:54', 'y'),
(8, '306964', 'hello', 'created_by', 'modified_by', '2020-12-20 09:57:04', '2020-12-20 09:57:04', 'n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_new_test`
--

CREATE TABLE `tbl_new_test` (
  `id` int(11) NOT NULL,
  `exam_id` varchar(11) DEFAULT NULL,
  `category_id` varchar(11) DEFAULT NULL,
  `subject_id` varchar(11) DEFAULT NULL,
  `exam_name` varchar(100) DEFAULT NULL,
  `exam_date` datetime DEFAULT NULL,
  `exam_duration` timestamp NULL DEFAULT NULL,
  `exam_mark` int(6) DEFAULT NULL,
  `exam_pass_mark` int(6) DEFAULT NULL,
  `re_exam` tinyint(1) DEFAULT NULL,
  `marking_type` enum('negative','non-negative') DEFAULT NULL,
  `candidate_id` varchar(11) DEFAULT NULL,
  `examiner_id` varchar(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notice`
--

CREATE TABLE `tbl_notice` (
  `id` int(11) NOT NULL,
  `notice_id` varchar(11) NOT NULL,
  `notice_title` varchar(100) NOT NULL,
  `notice_description` text NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_notice`
--

INSERT INTO `tbl_notice` (`id`, `notice_id`, `notice_title`, `notice_description`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(3, '518665', 'dsgv', 'savdsbzh', 'created_by', 'modified_by', '2020-12-21 20:00:30', '2020-12-21 20:03:56', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE `tbl_questions` (
  `id` int(11) NOT NULL,
  `client_id` varchar(64) DEFAULT NULL,
  `subject_id` varchar(64) DEFAULT NULL,
  `question_id` varchar(11) DEFAULT NULL,
  `question_text` varchar(500) DEFAULT NULL,
  `answer1` text DEFAULT NULL,
  `answer2` text DEFAULT NULL,
  `answer3` text DEFAULT NULL,
  `answer4` text DEFAULT NULL,
  `answer5` text DEFAULT NULL,
  `answer6` text DEFAULT NULL,
  `answer7` text DEFAULT NULL,
  `option1` varchar(500) DEFAULT NULL,
  `option2` varchar(500) DEFAULT NULL,
  `option3` varchar(500) DEFAULT NULL,
  `option4` varchar(500) DEFAULT NULL,
  `option5` varchar(500) DEFAULT NULL,
  `option6` varchar(500) DEFAULT NULL,
  `option7` varchar(500) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`id`, `client_id`, `subject_id`, `question_id`, `question_text`, `answer1`, `answer2`, `answer3`, `answer4`, `answer5`, `answer6`, `answer7`, `option1`, `option2`, `option3`, `option4`, `option5`, `option6`, `option7`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(1, '', '', '1', 'fds', 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, 'vb', 'xb', 'h', 'f', 'l', 'ufdg', 'dfg', 'dh', 'fdg', '2020-12-03 17:24:32', '2020-12-02 17:24:32', 'n'),
(2, '', '', '$question_i', '$question_text', '$answer', NULL, NULL, NULL, NULL, NULL, NULL, '$option1', '$option2', '$option3', '$option4', '$option5', '$option6', '$option7', 'created_by', 'modified_by', '2020-12-15 19:23:09', '2020-12-15 19:23:09', 'y'),
(3, '', '', '876281', 'sfdsgfdh', 'fdhfh', NULL, NULL, NULL, NULL, NULL, NULL, 'sgf', 'fdh', '', 'hm', 'zxbg', 'zxv', 'cxn', 'created_by', 'modified_by', '2020-12-15 19:32:54', '2020-12-15 19:32:54', 'y'),
(4, '', '', '746929', 'what is your name?', 'aman', NULL, NULL, NULL, NULL, NULL, NULL, 'aman', 'a', '', 'c', 'd', 'e', 'f', 'created_by', 'modified_by', '2020-12-15 20:00:48', '2020-12-15 20:00:48', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `id` int(11) NOT NULL,
  `subject_id` varchar(11) DEFAULT NULL,
  `department_id` varchar(11) DEFAULT NULL,
  `category_id` varchar(11) DEFAULT NULL,
  `subject_name` varchar(50) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`id`, `subject_id`, `department_id`, `category_id`, `subject_name`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(1, '195876 ', NULL, NULL, 'fSegvzdgz', '', '', '2020-12-03 10:57:28', '2020-12-03 10:57:28', 'n'),
(7, '894082', 'dept', 'cat', 'testing12222', 'name', '', '2020-12-20 09:19:22', '2020-12-20 09:19:22', 'y'),
(8, '135530', 'dept', 'cat', 'ashish1222233333', 'name', '', '2020-12-20 09:19:40', '2020-12-20 09:19:40', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject_info`
--

CREATE TABLE `tbl_subject_info` (
  `id` int(11) NOT NULL,
  `subject_info_id` varchar(11) DEFAULT NULL,
  `subject_id` varchar(11) DEFAULT NULL,
  `subject_info` text DEFAULT NULL,
  `subject_image` varchar(500) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subject_info`
--

INSERT INTO `tbl_subject_info` (`id`, `subject_info_id`, `subject_id`, `subject_info`, `subject_image`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(4, '612580', '466040', 'Aladin', '_hand.jpg', 'GV', 'asis sarma', '2020-12-20 07:55:46', '2020-12-20 07:55:46', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_term_condition`
--

CREATE TABLE `tbl_term_condition` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_permission`
--

CREATE TABLE `tbl_user_permission` (
  `id` int(11) NOT NULL,
  `user_id` varchar(11) DEFAULT NULL,
  `menu_id` varchar(11) DEFAULT NULL,
  `menu_create` tinyint(1) DEFAULT NULL,
  `menu_edit` tinyint(1) DEFAULT NULL,
  `menu_delete` tinyint(1) DEFAULT NULL,
  `menu_view` tinyint(1) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_registration`
--

CREATE TABLE `tbl_user_registration` (
  `id` int(11) NOT NULL,
  `user_id` varchar(11) DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` enum('male','female','others') DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `currentStatus` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user_registration`
--

INSERT INTO `tbl_user_registration` (`id`, `user_id`, `user_type`, `first_name`, `last_name`, `gender`, `address`, `mobile`, `email`, `password`, `image`, `created_by`, `modified_by`, `created_date`, `modified_date`, `currentStatus`) VALUES
(1, '615170', NULL, 'Ashish', 'Sharma', 'male', 'xascascxasdsca', '8530941117', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1_logo.jpg', 'abcd', 'admin@gmail.com', '2020-12-17 20:50:43', '2020-12-21 19:44:39', 'y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin_candidate`
--
ALTER TABLE `tbl_admin_candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_candidate_history`
--
ALTER TABLE `tbl_admin_candidate_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_new_test`
--
ALTER TABLE `tbl_admin_new_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_payment`
--
ALTER TABLE `tbl_admin_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertisement_id` (`advertisement_id`);

--
-- Indexes for table `tbl_candidate_exam`
--
ALTER TABLE `tbl_candidate_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_candidate_history`
--
ALTER TABLE `tbl_candidate_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_candidate_package`
--
ALTER TABLE `tbl_candidate_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_candidate_payment`
--
ALTER TABLE `tbl_candidate_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_candidate_registration`
--
ALTER TABLE `tbl_candidate_registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_id` (`candidate_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tbl_client_logo`
--
ALTER TABLE `tbl_client_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_client_package`
--
ALTER TABLE `tbl_client_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_client_registration`
--
ALTER TABLE `tbl_client_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`department_id`);

--
-- Indexes for table `tbl_new_test`
--
ALTER TABLE `tbl_new_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `tbl_subject_info`
--
ALTER TABLE `tbl_subject_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_info_id` (`subject_info_id`);

--
-- Indexes for table `tbl_term_condition`
--
ALTER TABLE `tbl_term_condition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_permission`
--
ALTER TABLE `tbl_user_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_registration`
--
ALTER TABLE `tbl_user_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin_candidate`
--
ALTER TABLE `tbl_admin_candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin_candidate_history`
--
ALTER TABLE `tbl_admin_candidate_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin_new_test`
--
ALTER TABLE `tbl_admin_new_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_admin_payment`
--
ALTER TABLE `tbl_admin_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_candidate_exam`
--
ALTER TABLE `tbl_candidate_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_candidate_history`
--
ALTER TABLE `tbl_candidate_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_candidate_package`
--
ALTER TABLE `tbl_candidate_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_candidate_payment`
--
ALTER TABLE `tbl_candidate_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_candidate_registration`
--
ALTER TABLE `tbl_candidate_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_client_logo`
--
ALTER TABLE `tbl_client_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tbl_client_package`
--
ALTER TABLE `tbl_client_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_client_registration`
--
ALTER TABLE `tbl_client_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_new_test`
--
ALTER TABLE `tbl_new_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_subject_info`
--
ALTER TABLE `tbl_subject_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_term_condition`
--
ALTER TABLE `tbl_term_condition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_permission`
--
ALTER TABLE `tbl_user_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_registration`
--
ALTER TABLE `tbl_user_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
