-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2015 at 11:31 AM
-- Server version: 5.5.42-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `firstent_training`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` blob NOT NULL,
  `password_temp` blob NOT NULL,
  `email` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `nickname` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `display_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` enum('Program Executive','Director','Admin','Accountant','Administrative Personnel','Trainer') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Program Executive',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `last_updated` datetime NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=43 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `password_temp`, `email`, `first_name`, `last_name`, `nickname`, `display_name`, `type`, `deleted`, `last_login`, `last_updated`, `created`) VALUES
(1, 'khairul', 0xa8d76647328a72bd5ccb47980c0fabde, '', '', 'Khairul', 'Anwar', 'User', 'User', 'Admin', 0, '2015-05-04 11:28:21', '2015-03-06 19:27:26', '2014-03-23 19:40:37'),
(2, 'rafique', 0x0e5228a9eb68c968a2e47cedaeb62adf, '', 'rafique@technea.net', 'Mohammed', 'Rafique', 'rafique', 'rafique', 'Admin', 0, '2015-02-23 13:13:59', '2014-04-11 14:26:24', '2014-03-23 23:57:14'),
(3, 'priya', 0xa2a7cf0f86b3917802206ba21cee9b73, '', 'priya@firstaidtraining.com.sg', '', '', 'priya', 'priya', 'Admin', 0, '2015-03-25 10:47:29', '2014-08-11 12:15:14', '2014-03-26 10:05:13'),
(4, 'rasheed', 0xe90251f7126c71c80d8e8aebd32f9461, '', 'rasheed@firstaidtraining.com.sg', '', '', 'rasheed', 'rasheed', 'Director', 0, '2015-01-07 12:16:25', '2014-03-26 10:07:49', '2014-03-26 10:07:49'),
(5, 'arikah', 0x8c48c5d5b6dc3a846c3acb11520643e4, '', 'arikah@firstaidtraining.com.sg', '', '', 'arikah', 'arikah', 'Director', 0, '2015-02-25 14:33:03', '2014-08-10 14:19:53', '2014-03-26 10:08:07'),
(6, '', '', '', '', '', '', '', 'Muhamad Sharif Khamsani', 'Trainer', 1, '2014-11-17 16:15:23', '2014-04-10 16:27:03', '2014-03-26 10:09:32'),
(7, '', '', '', '', '', '', '', 'lawrence', 'Admin', 1, '2015-03-14 21:22:28', '2014-08-25 11:44:03', '2014-08-25 11:44:03'),
(8, '', '', '', '', '', '', '', 'pppeee', 'Program Executive', 1, '2015-03-14 21:00:54', '2015-03-14 20:59:56', '2015-03-14 20:59:56'),
(9, '', '', '', '', '', '', '', 'trainer22', 'Trainer', 1, '2015-03-14 21:00:34', '2015-03-14 21:00:18', '2015-03-14 21:00:18'),
(10, '', '', '', '', '', '', '', 'account', 'Accountant', 1, '2015-03-14 21:01:57', '2015-03-14 21:01:50', '2015-03-14 21:01:50'),
(11, 'edwin', 0xdebad466d160c9a9a38a96e0b9f80e6f, '', 'edwin@firstaidtraining.com.sg', '', '', 'edwin', 'edwin', 'Admin', 0, NULL, '2015-03-16 11:38:44', '2015-03-16 11:38:44'),
(12, 'yvonne', 0x64f81bfa1796b860af6dca58ee2af3e6, '', 'yvonne@firstaidtraining.com.sg', '', '', 'yvonne', 'yvonne', 'Admin', 0, '2015-03-19 15:42:10', '2015-03-16 11:40:57', '2015-03-16 11:40:57'),
(13, 'cindy', 0x287da089e35d14ed18f6e8d61cd22fcf, '', 'cindy@firstaidtraining.com.sg', '', '', 'cindy', 'cindy', 'Admin', 0, NULL, '2015-03-16 11:41:17', '2015-03-16 11:41:17'),
(14, 'thamkay', 0xf9f02248e750bb55adfc950f28fb55bc, '', 'kay@firstaidtraining.com.sg', '', '', 'thamkay', 'thamkay', 'Administrative Personnel', 0, '2015-03-17 17:15:43', '2015-03-16 11:42:05', '2015-03-16 11:42:05'),
(15, 'jiliah', 0x199e39919e1083bc9d584e9bb76d39a1, '', '', 'Jiliah', 'Jimahat', 'Jiliah', 'jiliah', 'Administrative Personnel', 0, '2015-03-25 08:49:16', '2015-03-20 12:51:35', '2015-03-16 11:42:22'),
(16, 'fizah', 0xe59e98fd6b0d201892cce21699a86ab3, '', 'accounts@firstaidtraining.com.sg', '', '', 'fizah', 'fizah', 'Accountant', 0, '2015-03-31 16:49:54', '2015-03-16 11:42:41', '2015-03-16 11:42:41'),
(17, 'valerie', 0x72d163d18c7a7a6a2ce22b611a256a77, '', 'media@firstaidtraining.com.sg', '', '', 'valerie', 'valerie', 'Accountant', 0, '2015-03-19 16:49:43', '2015-03-16 16:12:51', '2015-03-16 11:43:03'),
(18, 'likeow', 0xedeb0f795c484f523862ddd4d26d1071, '', 'accountspayable@firstaidtraining.com.sg', '', '', 'likeow', 'likeow', 'Accountant', 0, '2015-03-16 16:24:22', '2015-03-16 11:43:19', '2015-03-16 11:43:19'),
(19, 'michelle', 0xfd69fbe696b9e04ddbf942c3d15c69be, '', 'michelle@firstaidtraining.com.sg', '', '', 'michelle', 'michelle', 'Program Executive', 0, '2015-03-19 15:44:30', '2015-03-16 11:43:36', '2015-03-16 11:43:36'),
(20, 'christine', 0xedf55fa0201e9c120bd05a0d6a0f9163, '', 'christine@firstaidtraining.com.sg', '', '', 'christine', 'christine', 'Program Executive', 0, '2015-03-19 17:18:14', '2015-03-16 11:43:51', '2015-03-16 11:43:51'),
(21, 'peilin', 0x2c0ea82919deb2d707f5f6db6d4ee2c2, '', 'peilin@firstaidtraining.com.sg', '', '', 'peilin', 'peilin', 'Program Executive', 0, '2015-03-18 15:39:31', '2015-03-16 11:44:04', '2015-03-16 11:44:04'),
(22, 'badrul', 0xe7351b0778ad77934a3671bc81bfd3d0, '', 'badrul@firstaidtraining.com.sg', '', '', 'badrul', 'badrul', 'Trainer', 0, NULL, '2015-03-16 11:44:18', '2015-03-16 11:44:18'),
(23, 'jiaxing', 0xff0ff6a980e20f1c1db5e98674dad372, '', 'jiaxing@firstaidtraining.com.sg', '', '', 'jiaxing', 'jiaxing', 'Trainer', 0, NULL, '2015-03-16 11:44:33', '2015-03-16 11:44:33'),
(24, 'junardy', 0x80bd4a0441ea4e7aaf108614bdd38c7b, '', 'junardy@firstaidtraining.com.sg', '', '', 'junardy', 'junardy', 'Trainer', 0, NULL, '2015-03-16 11:44:48', '2015-03-16 11:44:48'),
(25, 'razif', 0x0a703f400f9474885698adf27c87c622, '', 'razif@firstaidtraining.com.sg', '', '', 'razif', 'razif', 'Trainer', 0, NULL, '2015-03-16 11:45:19', '2015-03-16 11:45:19'),
(26, 'rizal', 0xf887ac39bfc0f7d54f426cca42b3e041, '', 'rizal@firstaidtraining.com.sg', '', '', 'rizal', 'rizal', 'Trainer', 0, NULL, '2015-03-16 11:45:33', '2015-03-16 11:45:33'),
(27, 'safar', 0x6cf32b105ecbc18973aeac216a8d3713, '', 'safar@firstaidtraining.com.sg', '', '', 'safar', 'safar', 'Trainer', 0, NULL, '2015-03-16 11:45:47', '2015-03-16 11:45:47'),
(28, 'tristan', 0x656df45d0160eb2b593b120a9ee17890, '', 'tristan@firstaidtraining.com.sg', '', '', 'tristan', 'tristan', 'Trainer', 0, NULL, '2015-03-16 11:46:02', '2015-03-16 11:46:02'),
(29, 'kumar', 0xc68dfa025feaf50871c7e5bf983afec8, '', 'kumar@firstaidtraining.com.sg', '', '', 'kumar', 'kumar', 'Trainer', 0, NULL, '2015-03-16 11:46:17', '2015-03-16 11:46:17'),
(30, 'vincent', 0xd65e67a3c34ecf0c2d2cbeb906f93c95, '', 'vincent@firstaidtraining.com.sg', '', '', 'vincent', 'vincent', 'Trainer', 0, NULL, '2015-03-16 11:46:32', '2015-03-16 11:46:32'),
(31, 'kabiashok', 0xa0ecac4f948fa9daa03ce3a646b56dd3, '', 'kabi@firstaidtraining.com.sg', '', '', 'kabiashok', 'kabiashok', 'Trainer', 0, NULL, '2015-03-16 11:46:55', '2015-03-16 11:46:55'),
(32, 'paulaw', 0x6c0eb629cb4c916b1e0aa130c098bdcb, '', 'paul@firstaidtraining.com.sg', '', '', 'paulaw', 'paulaw', 'Trainer', 0, NULL, '2015-03-16 11:47:19', '2015-03-16 11:47:19'),
(33, 'armimagat', 0x9049441babf997456b6a31ecf09401d9, '', 'armi@firstaidtraining.com.sg', '', '', 'armimagat', 'armimagat', 'Trainer', 0, NULL, '2015-03-16 11:47:40', '2015-03-16 11:47:40'),
(34, 'hazlami', 0x34395071914a00d76a6e324a9e7e6d03, '', 'hazlami@firstaidtraining.com.sg', '', '', 'hazlami', 'hazlami', 'Trainer', 0, NULL, '2015-03-16 11:48:01', '2015-03-16 11:48:01'),
(35, 'salina', 0xff17183772ac79d0b88207213db733d1, '', 'salina@firstaidtraining.com.sg', '', '', 'salina', 'salina', 'Trainer', 0, NULL, '2015-03-16 11:48:14', '2015-03-16 11:48:14'),
(36, 'teohleng', 0x25f7f9550d3d1c349d9c85b15a4fea23, '', 'teoh@firstaidtraining.com.my', '', '', 'teohleng', 'teohleng', 'Trainer', 0, NULL, '2015-03-16 11:48:35', '2015-03-16 11:48:35'),
(37, 'rizwan', 0x9b2e2b94d3f4a2b77ff3fc1ee67ae4e4, '', 'rizwan@firstaidtraining.com.sg', '', '', 'rizwan', 'rizwan', 'Trainer', 0, NULL, '2015-03-16 11:48:49', '2015-03-16 11:48:49'),
(38, 'wanalfyann', 0x3950599015e478153cd6cca02131f0e1, '', 'alfyann@firstaidtraining.com.sg', '', '', 'wanalfyann', 'wanalfyann', 'Trainer', 0, NULL, '2015-03-16 11:49:10', '2015-03-16 11:49:10'),
(39, 'noryanah', 0x501d26cf1210a846b213a634f39cdc0c, '', 'noryanah@firstaidtraining.com.sg', '', '', 'noryanah', 'noryanah', 'Trainer', 0, NULL, '2015-03-16 11:49:24', '2015-03-16 11:49:24'),
(40, 'taufiq', 0x9404193b8efd8d93e9c2521d5b07fac7, '', 'taufiq@firstaidtraining.com.sg', '', '', 'taufiq', 'taufiq', 'Trainer', 0, NULL, '2015-03-16 11:49:36', '2015-03-16 11:49:36'),
(41, 'hongling', 0xdc5e33af795e6c6969af4712bc92c28f, '', 'hongling@testing.com', '', '', 'hongling', 'hongling', 'Trainer', 0, '2015-04-17 12:16:18', '2015-04-17 12:16:08', '2015-04-17 12:16:08'),
(42, 'lawrence', 0xdc5e33af795e6c6969af4712bc92c28f, '', 'kambing@sfatc.com', '', '', 'lawrence', 'lawrence', 'Admin', 0, NULL, '2015-05-04 11:30:07', '2015-05-04 11:29:13');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
