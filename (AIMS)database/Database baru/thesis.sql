-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2019 at 04:54 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thesis`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, 'admin', '2019-09-09 16:22:23', 'Edit system User Syaamil'),
(2, 'admin', '2019-09-10 22:44:51', 'Add Client User Mohd'),
(3, 'admin', '2019-09-10 23:32:49', 'Assign Device id 1&nbspName&nbspmouse to location id 22&nbspName&nbspComlab A'),
(4, 'admin', '2019-09-11 12:44:17', 'Edit device info mouse'),
(5, 'admin', '2019-09-21 16:53:48', 'Edit Device Type keyboard'),
(6, 'admin', '2019-09-21 17:14:45', 'Update Status  to Damage '),
(7, 'admin', '2019-09-21 17:15:57', 'Add device Detail id 4&nbspName&nbspmouse'),
(8, 'admin', '2019-09-21 17:16:26', 'Add device Detail id 2&nbspName&nbspkeyboard'),
(9, 'admin', '2019-09-21 17:16:41', 'Edit device info keyboard'),
(10, 'admin', '2019-09-21 17:52:25', 'Add device Detail id 2&nbspName&nbspkeyboard'),
(11, 'admin', '2019-09-21 17:55:57', 'Assign Device id 4&nbspName&nbspkeyboard to location id 23&nbspName&nbspLab 4'),
(12, 'admin', '2019-09-21 17:56:24', 'Update Status keyboard to Damage '),
(13, 'admin', '2019-09-21 17:56:43', 'Dump Device keyboard Inventory Code:001'),
(14, 'admin', '2019-09-21 18:12:27', 'Assign Device id 5&nbspName&nbspMonitor to location id 22&nbspName&nbspLab 3'),
(15, 'admin', '2019-09-21 18:12:37', 'Update Status Monitor to Used '),
(16, 'admin', '2019-09-21 18:28:55', 'Edit Client User Mohd'),
(17, 'admin', '2019-09-21 18:32:41', 'Add device Detail id 4&nbspName&nbspmouse'),
(18, 'admin', '2019-09-21 19:57:38', 'Assign Device id 6&nbspName&nbspmouse to location id 22&nbspName&nbspLab 3'),
(19, 'admin', '2019-09-21 19:58:08', 'Update Status mouse to Used '),
(20, 'admin', '2019-09-21 20:12:01', 'Edit device info keyboard'),
(21, 'admin', '2019-09-21 21:02:22', 'Add device Detail id 3&nbspName&nbspPower cord'),
(22, 'admin', '2019-09-21 21:02:41', 'Assign Device id 7&nbspName&nbspPower cord to location id 22&nbspName&nbspLab 3'),
(23, 'admin', '2019-09-21 21:02:58', 'Update Status Power cord to Damage '),
(24, 'admin', '2019-09-21 21:03:09', 'Repair Device Power cord Inventory Code:010'),
(25, 'admin', '2019-09-21 21:03:25', 'Update Status Power cord to Used '),
(26, 'admin', '2019-09-24 00:45:12', 'transfer Device  Monitor to location id 28&nbspName&nbspLab 9'),
(27, 'admin', '2019-09-24 00:45:45', 'transfer Device  Monitor to location id 22&nbspName&nbspLab 3'),
(28, 'admin', '2019-09-24 00:46:20', 'transfer Device  Monitor to location id 28&nbspName&nbspLab 9'),
(29, 'admin', '2019-09-24 00:46:27', 'transfer Device  Monitor to location id 22&nbspName&nbspLab 3'),
(30, 'admin', '2019-09-25 15:19:35', 'transfer Device  Monitor to location id 23&nbspName&nbspLab 4'),
(31, 'admin', '2019-09-25 15:20:09', 'transfer Device  Monitor to location id 22&nbspName&nbspLab 3'),
(32, 'admin', '2019-09-25 22:23:47', 'Add device Detail id 4&nbspName&nbspmouse'),
(33, 'admin', '2019-09-25 22:25:46', 'Assign Device id 8&nbspName&nbspmouse to location id 22&nbspName&nbspLab 3'),
(34, 'admin', '2019-09-25 22:26:04', 'Update Status mouse to Used '),
(35, 'admin', '2019-10-08 00:30:44', 'Add device Detail id 8&nbspName&nbspMonitor'),
(36, 'admin', '2019-11-02 14:26:02', 'transfer Device  Monitor to location id 23&nbspName&nbspLab 4');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `adminthumbnails` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `firstname`, `lastname`, `username`, `password`, `adminthumbnails`) VALUES
(5, 'Syaamil', 'Nizar', 'admin', 'admin', 'uploads/Syaamil.png');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `thumbnails` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `username`, `password`, `firstname`, `lastname`, `thumbnails`) VALUES
(13, 'ali', 'ali', 'Mohd', 'Ali', 'uploads/muhammad_ali_photo_by_stanley_weston_archive_photos_getty_482857506.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `device_name`
--

CREATE TABLE `device_name` (
  `dev_id` int(11) NOT NULL,
  `dev_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device_name`
--

INSERT INTO `device_name` (`dev_id`, `dev_name`) VALUES
(2, 'keyboard'),
(3, 'Power cord'),
(4, 'mouse'),
(5, 'Central Processing unit (CPU)'),
(8, 'Monitor');

-- --------------------------------------------------------

--
-- Table structure for table `location_details`
--

CREATE TABLE `location_details` (
  `ld_id` int(11) NOT NULL,
  `stdev_id` int(11) NOT NULL,
  `date_deployment` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_details`
--

INSERT INTO `location_details` (`ld_id`, `stdev_id`, `date_deployment`, `id`) VALUES
(3, 23, '2019-11-02', 5),
(4, 22, '2019-09-21', 6),
(5, 22, '2019-09-21', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `fullname` varchar(128) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `fullname`, `notification`, `date_of_notification`, `link`) VALUES
(1, 'Mohd Ali', 'Add device id 4&nbspName&nbspmouse, Serial Number: 001', '2019-09-10 23:30:42', 'device_stocks.php'),
(2, 'Mohd Ali', 'Edit device mouse, Serial Number: 001', '2019-09-10 23:31:57', 'device_stocks.php'),
(3, 'Mohd Ali', 'Update Status mouse, Serial Number:&nbsp;&nbsp;001', '2019-09-21 16:49:59', 'damage.php'),
(4, 'Mohd Ali', 'Update Status mouse, Serial Number:&nbsp;&nbsp;001', '2019-09-21 16:50:57', 'damage.php'),
(5, 'Mohd Ali', 'Repair mouse, Serial Number: 001', '2019-09-21 16:51:09', 'device_stocks.php'),
(6, 'Mohd Ali', 'Update Status mouse, Serial Number:&nbsp;&nbsp;001', '2019-09-21 16:51:22', 'damage.php'),
(7, 'Mohd Ali', 'Dump mouse, Serial Number: 001', '2019-09-21 16:51:41', 'dump_device.php'),
(8, 'Mohd Ali', 'Add device id 8&nbspName&nbspMonitor, Serial Number: 003', '2019-09-21 18:11:06', 'device_stocks.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_read`
--

INSERT INTO `notification_read` (`notification_read_id`, `admin_id`, `admin_read`, `notification_id`) VALUES
(1, 5, 'yes', 7),
(2, 5, 'yes', 6),
(3, 5, 'yes', 5),
(4, 5, 'yes', 4),
(5, 5, 'yes', 3),
(6, 5, 'yes', 2),
(7, 5, 'yes', 1),
(8, 5, 'yes', 8);

-- --------------------------------------------------------

--
-- Table structure for table `stdevice`
--

CREATE TABLE `stdevice` (
  `id` int(11) NOT NULL,
  `dev_id` int(11) NOT NULL,
  `dev_serial` varchar(128) NOT NULL,
  `dev_brand` varchar(128) NOT NULL,
  `dev_model` varchar(128) NOT NULL,
  `dev_status` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stdevice`
--

INSERT INTO `stdevice` (`id`, `dev_id`, `dev_serial`, `dev_brand`, `dev_model`, `dev_status`) VALUES
(5, 8, '003', 'ViewSonic', 'VA2419SH', 'Used'),
(6, 4, '004', 'Logitech', 'g303', 'Used'),
(7, 3, '010', 'Corsair', 'Strix', 'Used');

-- --------------------------------------------------------

--
-- Table structure for table `stlocation`
--

CREATE TABLE `stlocation` (
  `stdev_id` int(11) NOT NULL,
  `stdev_location_name` varchar(128) NOT NULL,
  `thumbnails` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stlocation`
--

INSERT INTO `stlocation` (`stdev_id`, `stdev_location_name`, `thumbnails`) VALUES
(22, 'Lab 3', 'images/thumbnails.jpg'),
(23, 'Lab 4', 'images/thumbnails.jpg'),
(24, 'Lab 5', 'images/thumbnails.jpg'),
(25, 'Lab 6', 'images/thumbnails.jpg'),
(26, 'Lab 7', 'images/thumbnails.jpg'),
(27, 'Lab 8', 'images/thumbnails.jpg'),
(28, 'Lab 9', 'images/thumbnails.jpg'),
(29, 'Lab 10', 'images/thumbnails.jpg'),
(30, 'Lab 11', 'images/thumbnails.jpg'),
(31, 'Lab 12', 'images/thumbnails.jpg'),
(34, 'Lab 13', 'images/thumbnails.jpg'),
(35, 'Lab 14', 'images/thumbnails.jpg'),
(36, 'Lab 15', 'images/thumbnails.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(128) NOT NULL,
  `admin_id` int(128) NOT NULL,
  `client_id` int(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `admin_id`, `client_id`) VALUES
(190, 'admin', '2019-08-30 00:08:19', '2019-11-04', 5, 0),
(191, 'admin', '2019-08-31 23:13:01', '2019-11-04', 5, 0),
(192, 'admin', '2019-08-31 23:15:12', '2019-11-04', 5, 0),
(193, 'admin', '2019-08-31 23:38:23', '2019-11-04', 5, 0),
(195, 'admin', '2019-08-31 23:40:30', '2019-11-04', 5, 0),
(198, 'admin', '2019-08-31 23:41:50', '2019-11-04', 5, 0),
(199, 'admin', '2019-08-31 23:42:46', '2019-11-04', 5, 0),
(201, 'admin', '2019-08-31 23:47:06', '2019-11-04', 5, 0),
(203, 'admin', '2019-09-09 16:21:53', '2019-11-04', 5, 0),
(206, 'admin', '2019-09-10 22:43:35', '2019-11-04', 5, 0),
(207, 'admin', '2019-09-10 22:44:15', '2019-11-04', 5, 0),
(208, 'ali', '2019-09-10 22:44:59', '2019-11-04', 0, 13),
(209, 'admin', '2019-09-10 22:46:38', '2019-11-04', 5, 0),
(210, 'admin', '2019-09-10 23:22:10', '2019-11-04', 5, 0),
(211, 'ali', '2019-09-10 23:22:43', '2019-11-04', 0, 13),
(212, 'admin', '2019-09-10 23:24:01', '2019-11-04', 5, 0),
(213, 'ali', '2019-09-10 23:25:39', '2019-11-04', 0, 13),
(214, 'admin', '2019-09-10 23:28:43', '2019-11-04', 5, 0),
(215, 'ali', '2019-09-10 23:28:51', '2019-11-04', 0, 13),
(216, 'ali', '2019-09-10 23:28:51', '2019-11-04', 0, 13),
(217, 'admin', '2019-09-10 23:32:23', '2019-11-04', 5, 0),
(218, 'admin', '2019-09-10 23:54:01', '2019-11-04', 5, 0),
(219, 'admin', '2019-09-11 12:41:48', '2019-11-04', 5, 0),
(220, 'admin', '2019-09-19 23:37:26', '2019-11-04', 5, 0),
(221, 'ali', '2019-09-21 16:47:20', '2019-11-04', 0, 13),
(222, 'admin', '2019-09-21 16:47:56', '2019-11-04', 5, 0),
(223, 'ali', '2019-09-21 16:49:26', '2019-11-04', 0, 13),
(224, 'admin', '2019-09-21 16:53:00', '2019-11-04', 5, 0),
(225, 'admin', '2019-09-21 17:51:30', '2019-11-04', 5, 0),
(226, 'ali', '2019-09-21 18:07:43', '2019-11-04', 0, 13),
(227, 'admin', '2019-09-21 18:11:55', '2019-11-04', 5, 0),
(228, 'ali', '2019-09-21 18:34:18', '2019-11-04', 0, 13),
(229, 'ali', '2019-09-21 19:33:04', '2019-11-04', 0, 13),
(230, 'admin', '2019-09-21 19:56:48', '2019-11-04', 5, 0),
(231, 'ali', '2019-09-21 21:05:10', '2019-11-04', 0, 13),
(232, 'admin', '2019-09-21 22:04:41', '2019-11-04', 5, 0),
(233, 'ali', '2019-09-21 22:07:08', '2019-11-04', 0, 13),
(234, 'admin', '2019-09-21 22:08:05', '2019-11-04', 5, 0),
(235, 'admin', '2019-09-22 17:04:41', '2019-11-04', 5, 0),
(236, 'admin', '2019-09-24 00:04:36', '2019-11-04', 5, 0),
(237, 'admin', '2019-09-25 15:17:40', '2019-11-04', 5, 0),
(238, 'admin', '2019-09-25 17:14:24', '2019-11-04', 5, 0),
(239, 'admin', '2019-09-25 21:27:09', '2019-11-04', 5, 0),
(240, 'ali', '2019-09-25 21:27:20', '2019-11-04', 0, 13),
(241, 'admin', '2019-09-25 21:54:10', '2019-11-04', 5, 0),
(242, 'admin', '2019-09-25 21:55:34', '2019-11-04', 5, 0),
(243, 'ali', '2019-09-25 21:56:11', '2019-11-04', 0, 13),
(244, 'admin', '2019-09-25 22:04:01', '2019-11-04', 5, 0),
(245, 'admin', '2019-09-25 22:25:27', '2019-11-04', 5, 0),
(246, 'admin', '2019-09-25 22:53:44', '2019-11-04', 5, 0),
(247, 'admin', '2019-09-26 22:55:41', '2019-11-04', 5, 0),
(248, 'admin', '2019-09-26 23:15:15', '2019-11-04', 5, 0),
(249, 'admin', '2019-09-26 23:15:15', '2019-11-04', 5, 0),
(250, 'ali', '2019-09-26 23:15:31', '2019-11-04', 0, 13),
(251, 'admin', '2019-09-27 00:17:06', '2019-11-04', 5, 0),
(252, 'admin', '2019-09-27 10:50:36', '2019-11-04', 5, 0),
(253, 'admin', '2019-10-02 14:56:02', '2019-11-04', 5, 0),
(254, 'admin', '2019-10-08 00:00:31', '2019-11-04', 5, 0),
(255, 'admin', '2019-10-08 00:27:53', '2019-11-04', 5, 0),
(256, 'admin', '2019-10-08 00:29:02', '2019-11-04', 5, 0),
(257, 'admin', '2019-10-08 00:35:03', '2019-11-04', 5, 0),
(258, 'admin', '2019-10-08 13:46:44', '2019-11-04', 5, 0),
(259, 'admin', '2019-10-23 00:36:15', '2019-11-04', 5, 0),
(260, 'admin', '2019-11-02 13:54:51', '2019-11-04', 5, 0),
(261, 'admin', '2019-11-02 16:18:14', '2019-11-04', 5, 0),
(262, 'admin', '2019-11-02 17:39:10', '2019-11-04', 5, 0),
(263, 'admin', '2019-11-02 22:14:01', '2019-11-04', 5, 0),
(264, 'admin', '2019-11-04 08:08:39', '2019-11-04', 5, 0),
(265, 'admin', '2019-11-04 08:24:05', '2019-11-04', 5, 0),
(266, 'ali', '2019-11-04 08:24:17', '2019-11-04', 0, 13),
(267, 'admin', '2019-11-04 08:28:49', '2019-11-04', 5, 0),
(268, 'ali', '2019-11-04 08:31:55', '2019-11-04', 0, 13),
(269, 'admin', '2019-11-04 08:36:37', '2019-11-04', 5, 0),
(270, 'admin', '2019-11-04 08:38:41', '2019-11-04', 5, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `device_name`
--
ALTER TABLE `device_name`
  ADD PRIMARY KEY (`dev_id`);

--
-- Indexes for table `location_details`
--
ALTER TABLE `location_details`
  ADD PRIMARY KEY (`ld_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `stdevice`
--
ALTER TABLE `stdevice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stlocation`
--
ALTER TABLE `stlocation`
  ADD PRIMARY KEY (`stdev_id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `device_name`
--
ALTER TABLE `device_name`
  MODIFY `dev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `location_details`
--
ALTER TABLE `location_details`
  MODIFY `ld_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stdevice`
--
ALTER TABLE `stdevice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stlocation`
--
ALTER TABLE `stlocation`
  MODIFY `stdev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
