-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql9.freemysqlhosting.net
-- Generation Time: Nov 17, 2020 at 04:42 AM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql9374525`
--
CREATE DATABASE IF NOT EXISTS `sql9374525` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sql9374525`;

-- --------------------------------------------------------

--
-- Table structure for table `Fall2020_Comments`
--

CREATE TABLE `Fall2020_Comments` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Text` varchar(4000) DEFAULT NULL,
  `Post_id` int(11) NOT NULL,
  `Owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Fall2020_ContactMethods`
--

CREATE TABLE `Fall2020_ContactMethods` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Type` varchar(45) NOT NULL,
  `Value` varchar(45) NOT NULL,
  `IsPrimary` bit(1) NOT NULL DEFAULT b'0',
  `CanSpam` bit(1) NOT NULL DEFAULT b'0',
  `User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Fall2020_ContactMethods`
--

INSERT INTO `Fall2020_ContactMethods` (`id`, `created_at`, `update_at`, `Type`, `Value`, `IsPrimary`, `CanSpam`, `User_id`) VALUES
(2, '2020-11-16 14:59:35', '2020-11-16 20:00:09', 'Email', 'ronswanson@themustache.com', b'1', b'1', 9);

-- --------------------------------------------------------

--
-- Table structure for table `Fall2020_Emojis`
--

CREATE TABLE `Fall2020_Emojis` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Name` varchar(45) NOT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Code` varchar(2) NOT NULL,
  `Type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Fall2020_Emojis`
--

INSERT INTO `Fall2020_Emojis` (`id`, `created_at`, `update_at`, `Name`, `Description`, `Code`, `Type_id`) VALUES
(1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'red_heart', 'red heart - U+2764', '??', 420);

-- --------------------------------------------------------

--
-- Table structure for table `Fall2020_Posts`
--

CREATE TABLE `Fall2020_Posts` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `URL` varchar(2048) DEFAULT NULL,
  `Text` varchar(4000) DEFAULT NULL,
  `Media_Type` varchar(45) NOT NULL DEFAULT 'none',
  `Privacy_Setting` int(11) DEFAULT NULL COMMENT '0 - hidden\n1 - only me\n2 - only friends\n4 - public',
  `Owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Fall2020_Reactions`
--

CREATE TABLE `Fall2020_Reactions` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Emoji` varchar(2) DEFAULT NULL,
  `Post_id` int(11) NOT NULL,
  `Owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Fall2020_Types`
--

CREATE TABLE `Fall2020_Types` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Name` varchar(45) NOT NULL,
  `Type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Fall2020_Types`
--

INSERT INTO `Fall2020_Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES
(1, '0000-00-00 00:00:00', '2020-11-05 01:18:48', 'Types', 1),
(2, '0000-00-00 00:00:00', '2020-11-05 01:18:49', 'User Types', 1),
(3, '0000-00-00 00:00:00', '2020-11-05 01:18:49', 'Media Types', 1),
(4, '0000-00-00 00:00:00', '2020-11-05 01:18:50', 'Contact Method Types', 1),
(5, '0000-00-00 00:00:00', '2020-11-05 01:18:51', 'Admin', 2),
(6, '0000-00-00 00:00:00', '2020-11-05 01:18:51', 'User', 2),
(20, '0000-00-00 00:00:00', '2020-11-05 01:18:50', 'Emoji Types', 1),
(21, '0000-00-00 00:00:00', '2020-11-05 01:18:52', 'image/gif', 3),
(22, '0000-00-00 00:00:00', '2020-11-05 01:18:52', 'image/jpeg', 3),
(23, '0000-00-00 00:00:00', '2020-11-05 01:18:52', 'image/pngvideo', 3),
(24, '0000-00-00 00:00:00', '2020-11-05 01:18:53', 'video/webm', 3),
(25, '0000-00-00 00:00:00', '2020-11-05 01:18:53', 'video/ogg', 3),
(26, '0000-00-00 00:00:00', '2020-11-05 01:18:54', 'Email', 4),
(27, '0000-00-00 00:00:00', '2020-11-05 01:18:54', 'Cell Phone', 4),
(420, '0000-00-00 00:00:00', '2020-11-05 01:18:55', 'Reactions', 20);

-- --------------------------------------------------------

--
-- Table structure for table `Fall2020_Users`
--

CREATE TABLE `Fall2020_Users` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `DOB` datetime DEFAULT NULL,
  `Password` varchar(500) DEFAULT NULL,
  `User_Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Fall2020_Users`
--

INSERT INTO `Fall2020_Users` (`id`, `created_at`, `update_at`, `FirstName`, `LastName`, `DOB`, `Password`, `User_Type`) VALUES
(1, '2020-11-15 19:20:22', '2020-11-16 00:20:22', 'Alex', 'Carlson', '1991-03-21 00:00:00', 'wow', 5),
(2, '2020-11-15 19:21:35', '2020-11-16 00:21:35', 'Sam', 'Darnold', '1999-07-23 00:00:00', 'jets', 6),
(4, '2020-11-16 14:42:58', '2020-11-16 19:43:32', 'Joe', 'Biden', '1959-06-07 00:00:00', 'New Paltz', 6),
(9, '2020-11-16 14:59:35', '2020-11-16 20:00:09', 'Ron', 'Swanson', '1963-07-04 00:00:00', '$2b$08$inm/PWaJWJ7TkbgYx4Gl6.dyI//15v3pelcicBXDLLCJjNjeMChjK', 6);

-- --------------------------------------------------------

--
-- Table structure for table `_FITNESS_Comments`
--

CREATE TABLE `_FITNESS_Comments` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Text` varchar(4000) DEFAULT NULL,
  `Workout_id` int(11) NOT NULL,
  `Owner_id` int(11) NOT NULL,
  `media_url` varchar(500) NOT NULL,
  `media_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_FITNESS_ContactMethods`
--

CREATE TABLE `_FITNESS_ContactMethods` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Type` varchar(45) NOT NULL,
  `Value` varchar(45) NOT NULL,
  `IsPrimary` bit(1) NOT NULL DEFAULT b'0',
  `CanSpam` bit(1) NOT NULL DEFAULT b'0',
  `User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_FITNESS_ContactMethods`
--

INSERT INTO `_FITNESS_ContactMethods` (`id`, `created_at`, `update_at`, `Type`, `Value`, `IsPrimary`, `CanSpam`, `User_id`) VALUES
(3, '2020-11-16 15:42:11', '2020-11-16 20:42:45', 'Email', 'alex@fuelburner.com', b'1', b'1', 5);

-- --------------------------------------------------------

--
-- Table structure for table `_FITNESS_Emojis`
--

CREATE TABLE `_FITNESS_Emojis` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Name` varchar(45) CHARACTER SET latin1 NOT NULL,
  `Description` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  `Code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_FITNESS_Emojis`
--

INSERT INTO `_FITNESS_Emojis` (`id`, `created_at`, `update_at`, `Name`, `Description`, `Code`, `Type_id`) VALUES
(3, '2020-11-16 22:14:38', '2020-11-17 03:14:38', 'Red Heart', 'U+2764', '❤️', 20),
(4, '2020-11-16 22:16:36', '2020-11-17 03:16:36', 'Fist Bump', 'U+270A', '✊', 20),
(5, '2020-11-16 22:16:36', '2020-11-17 03:16:36', 'Thumbs Up', 'U+1F44D', '👍', 20);

-- --------------------------------------------------------

--
-- Table structure for table `_FITNESS_Exercise_Types`
--

CREATE TABLE `_FITNESS_Exercise_Types` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Name` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Muscle_Group` varchar(45) NOT NULL,
  `Video_Url` varchar(500) NOT NULL,
  `Relative_Dificulty` float NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_FITNESS_Exercise_Types`
--

INSERT INTO `_FITNESS_Exercise_Types` (`id`, `created_at`, `update_at`, `Name`, `Type`, `Muscle_Group`, `Video_Url`, `Relative_Dificulty`) VALUES
(1, '0000-00-00 00:00:00', '2020-11-17 00:23:53', 'Run', 'Exercise Types', 'Full Body', '', 9.8),
(2, '0000-00-00 00:00:00', '2020-11-17 00:25:17', 'Jog', 'Exercise Types', 'Full Body', '', 6.8),
(3, '0000-00-00 00:00:00', '2020-11-17 00:23:48', 'Walk', 'Exercise Types', 'Full Body', '', 3.8),
(4, '0000-00-00 00:00:00', '2020-11-17 00:24:30', 'Bike', 'Exercise Types', 'Lower Body', '', 9.5),
(5, '0000-00-00 00:00:00', '2020-11-17 00:24:13', 'Swim', 'Exercise Types', 'Full Body', '', 8),
(6, '0000-00-00 00:00:00', '2020-11-17 00:25:00', 'Hike', 'Exercise Types', 'Full Body', '', 6);

-- --------------------------------------------------------

--
-- Table structure for table `_FITNESS_Followers`
--

CREATE TABLE `_FITNESS_Followers` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Following_id` int(11) NOT NULL,
  `Follower_id` int(11) NOT NULL,
  `IsAccepted` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_FITNESS_Reactions`
--

CREATE TABLE `_FITNESS_Reactions` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Emoji` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Workout_id` int(11) NOT NULL,
  `Owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_FITNESS_Types`
--

CREATE TABLE `_FITNESS_Types` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Name` varchar(45) NOT NULL,
  `Type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_FITNESS_Types`
--

INSERT INTO `_FITNESS_Types` (`id`, `created_at`, `update_at`, `Name`, `Type_id`) VALUES
(1, '0000-00-00 00:00:00', '2020-11-16 20:11:20', 'Types', 1),
(2, '0000-00-00 00:00:00', '2020-11-16 20:11:21', 'User Types', 1),
(3, '0000-00-00 00:00:00', '2020-11-16 20:11:21', 'Media Types', 1),
(4, '0000-00-00 00:00:00', '2020-11-16 20:11:22', 'Contact Method Types', 1),
(5, '0000-00-00 00:00:00', '2020-11-16 21:51:27', 'Exercise Types', 1),
(6, '0000-00-00 00:00:00', '2020-11-16 22:20:00', 'Muscle Groups', 1),
(7, '0000-00-00 00:00:00', '2020-11-16 21:51:08', 'Admin', 2),
(8, '0000-00-00 00:00:00', '2020-11-16 22:17:26', 'User', 2),
(20, '0000-00-00 00:00:00', '2020-11-16 20:11:22', 'Emoji Types', 1),
(21, '0000-00-00 00:00:00', '2020-11-16 20:11:23', 'image/gif', 3),
(22, '0000-00-00 00:00:00', '2020-11-16 20:11:24', 'image/jpeg', 3),
(23, '0000-00-00 00:00:00', '2020-11-16 20:11:24', 'image/pngvideo', 3),
(24, '0000-00-00 00:00:00', '2020-11-16 20:11:25', 'video/webm', 3),
(25, '0000-00-00 00:00:00', '2020-11-16 20:11:25', 'video/ogg', 3),
(26, '0000-00-00 00:00:00', '2020-11-16 20:11:25', 'Email', 4),
(27, '0000-00-00 00:00:00', '2020-11-16 20:11:26', 'Cell Phone', 4),
(420, '0000-00-00 00:00:00', '2020-11-16 20:11:26', 'Reactions', 20),
(447, '0000-00-00 00:00:00', '2020-11-16 22:26:39', 'Full Body', 6),
(448, '0000-00-00 00:00:00', '2020-11-16 22:26:39', 'Upper Body', 6),
(449, '0000-00-00 00:00:00', '2020-11-16 22:26:39', 'Lower Body', 6),
(450, '0000-00-00 00:00:00', '2020-11-16 22:26:39', 'Arms', 6),
(451, '0000-00-00 00:00:00', '2020-11-16 22:26:39', 'Legs', 6),
(452, '0000-00-00 00:00:00', '2020-11-16 22:26:39', 'Back', 6),
(453, '0000-00-00 00:00:00', '2020-11-16 22:26:39', 'Chest', 6);

-- --------------------------------------------------------

--
-- Table structure for table `_FITNESS_Users`
--

CREATE TABLE `_FITNESS_Users` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `DOB` datetime DEFAULT NULL,
  `Password` varchar(500) DEFAULT NULL,
  `User_Type` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_FITNESS_Users`
--

INSERT INTO `_FITNESS_Users` (`id`, `created_at`, `update_at`, `FirstName`, `LastName`, `DOB`, `Password`, `User_Type`, `height`, `weight`) VALUES
(4, '2020-11-16 15:40:03', '2020-11-17 00:33:12', 'Ron', 'Swanson', '1963-07-04 00:00:00', '$2b$08$5H0Zg74D2SsFohqQ6kuVqepS0YVu6.gtwbjtBqVN.Rm4fdbLsdVSG', 6, 70, 230),
(5, '2020-11-16 15:42:11', '2020-11-17 00:32:54', 'Alex', 'Carlson', '1991-03-21 00:00:00', '$2b$08$V7JgATRKVYYT3xlvMpUwxuXLpedOaa8skNDXq09f7H9K3KWz3W3uy', 6, 75, 200);

-- --------------------------------------------------------

--
-- Table structure for table `_FITNESS_Workouts`
--

CREATE TABLE `_FITNESS_Workouts` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Owner_id` int(11) NOT NULL,
  `Privacy_Setting` int(11) DEFAULT NULL COMMENT '0 - hidden\n1 - only me\n2 - only friends\n4 - public',
  `Start_Time` datetime NOT NULL,
  `End_Time` datetime NOT NULL,
  `Exercise_Type` varchar(45) NOT NULL,
  `Note` varchar(4000) DEFAULT NULL,
  `Distance` float DEFAULT NULL,
  `Sets` int(11) DEFAULT NULL,
  `Reps_Per_Set` int(11) DEFAULT NULL,
  `Weight` float DEFAULT NULL,
  `calories` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_FITNESS_Workouts`
--

INSERT INTO `_FITNESS_Workouts` (`id`, `created_at`, `update_at`, `Owner_id`, `Privacy_Setting`, `Start_Time`, `End_Time`, `Exercise_Type`, `Note`, `Distance`, `Sets`, `Reps_Per_Set`, `Weight`, `calories`) VALUES
(3, '2020-11-16 17:35:02', '2020-11-16 22:35:02', 5, NULL, '2020-11-16 05:00:00', '2020-11-16 17:35:02', 'Bike', NULL, 10.8, NULL, NULL, NULL, NULL),
(4, '2020-11-16 18:40:07', '2020-11-17 00:17:44', 5, NULL, '2020-11-16 05:02:00', '2020-11-16 05:47:00', 'Bike', 'Awesome Ride! KILLER DAY to be on the bike', 20, NULL, NULL, NULL, NULL),
(5, '2020-11-16 19:58:41', '2020-11-17 00:59:15', 5, 2, '2020-11-14 05:02:00', '2020-11-14 05:47:00', 'Bike', 'Great Ride', 25, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Fall2020_Comments`
--
ALTER TABLE `Fall2020_Comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Comments_Posts1_idx` (`Post_id`),
  ADD KEY `fk_Comments_Users1_idx` (`Owner_id`);

--
-- Indexes for table `Fall2020_ContactMethods`
--
ALTER TABLE `Fall2020_ContactMethods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ContactMethods_Users_idx` (`User_id`),
  ADD KEY `fk_ContactMethod_Type_idx` (`Type`);

--
-- Indexes for table `Fall2020_Emojis`
--
ALTER TABLE `Fall2020_Emojis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Name_UNIQUE` (`Name`),
  ADD UNIQUE KEY `Code_UNIQUE` (`Code`),
  ADD KEY `fk_Emojis_Types1_idx` (`Type_id`);

--
-- Indexes for table `Fall2020_Posts`
--
ALTER TABLE `Fall2020_Posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Posts_Users1_idx` (`Owner_id`);

--
-- Indexes for table `Fall2020_Reactions`
--
ALTER TABLE `Fall2020_Reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Comments_Posts1_idx` (`Post_id`),
  ADD KEY `fk_Comments_Users1_idx` (`Owner_id`);

--
-- Indexes for table `Fall2020_Types`
--
ALTER TABLE `Fall2020_Types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Name_UNIQUE` (`Name`),
  ADD KEY `fk_Types_Types1_idx` (`Type_id`);

--
-- Indexes for table `Fall2020_Users`
--
ALTER TABLE `Fall2020_Users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Users_Types1_idx` (`User_Type`);

--
-- Indexes for table `_FITNESS_Comments`
--
ALTER TABLE `_FITNESS_Comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_EX_Fall_2020_Comments_Workouts1_idx` (`Workout_id`),
  ADD KEY `fk_EX_Fall_2020_Comments_Users1_idx` (`Owner_id`),
  ADD KEY `fk_mediaTypes` (`media_type`);

--
-- Indexes for table `_FITNESS_ContactMethods`
--
ALTER TABLE `_FITNESS_ContactMethods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_EX_Fall_2020_ContactMethods_Users_idx` (`User_id`),
  ADD KEY `fk_EX_Fall_2020_ContactMethod_Type_idx` (`Type`);

--
-- Indexes for table `_FITNESS_Emojis`
--
ALTER TABLE `_FITNESS_Emojis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EX_Fall_2020_Name_UNIQUE` (`Name`),
  ADD UNIQUE KEY `EX_Fall_2020_Code_UNIQUE` (`Code`),
  ADD KEY `fk_Emojis_Types1_idx` (`Type_id`);

--
-- Indexes for table `_FITNESS_Exercise_Types`
--
ALTER TABLE `_FITNESS_Exercise_Types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ix_EX_Fall_2020_Exercise_Types_Name_UNIQUE` (`Name`),
  ADD KEY `fk_EX_Fall_2020_Exercise_Types_Types1_idx` (`Type`),
  ADD KEY `fk_EX_Fall_2020_Exercise_Types_Muscle_Group_idx` (`Muscle_Group`);

--
-- Indexes for table `_FITNESS_Followers`
--
ALTER TABLE `_FITNESS_Followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_EX_Fall_2020_Followers_Following_idx` (`Following_id`),
  ADD KEY `fk_EX_Fall_2020_Followers_Follower_idx` (`Follower_id`);

--
-- Indexes for table `_FITNESS_Reactions`
--
ALTER TABLE `_FITNESS_Reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_EX_Fall_2020_Comments_Workouts1_idx` (`Workout_id`),
  ADD KEY `fk_EX_Fall_2020_Comments_Users1_idx` (`Owner_id`),
  ADD KEY `fk_emojitype` (`Emoji`) USING BTREE;

--
-- Indexes for table `_FITNESS_Types`
--
ALTER TABLE `_FITNESS_Types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EX_Fall_2020_Name_UNIQUE` (`Name`),
  ADD KEY `fk_EX_Fall_2020_Types_Types1_idx` (`Type_id`);

--
-- Indexes for table `_FITNESS_Users`
--
ALTER TABLE `_FITNESS_Users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_EX_Fall_2020_Users_Types1_idx` (`User_Type`);

--
-- Indexes for table `_FITNESS_Workouts`
--
ALTER TABLE `_FITNESS_Workouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_EX_Fall_2020_Workouts_Users1_idx` (`Owner_id`),
  ADD KEY `fk_EX_Fall_2020_Workout_Type_idx` (`Exercise_Type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Fall2020_Comments`
--
ALTER TABLE `Fall2020_Comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Fall2020_ContactMethods`
--
ALTER TABLE `Fall2020_ContactMethods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Fall2020_Emojis`
--
ALTER TABLE `Fall2020_Emojis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Fall2020_Posts`
--
ALTER TABLE `Fall2020_Posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Fall2020_Reactions`
--
ALTER TABLE `Fall2020_Reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Fall2020_Types`
--
ALTER TABLE `Fall2020_Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;
--
-- AUTO_INCREMENT for table `Fall2020_Users`
--
ALTER TABLE `Fall2020_Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `_FITNESS_Comments`
--
ALTER TABLE `_FITNESS_Comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_FITNESS_ContactMethods`
--
ALTER TABLE `_FITNESS_ContactMethods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `_FITNESS_Emojis`
--
ALTER TABLE `_FITNESS_Emojis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `_FITNESS_Exercise_Types`
--
ALTER TABLE `_FITNESS_Exercise_Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `_FITNESS_Followers`
--
ALTER TABLE `_FITNESS_Followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_FITNESS_Reactions`
--
ALTER TABLE `_FITNESS_Reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_FITNESS_Types`
--
ALTER TABLE `_FITNESS_Types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;
--
-- AUTO_INCREMENT for table `_FITNESS_Users`
--
ALTER TABLE `_FITNESS_Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `_FITNESS_Workouts`
--
ALTER TABLE `_FITNESS_Workouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Fall2020_Comments`
--
ALTER TABLE `Fall2020_Comments`
  ADD CONSTRAINT `fk_Comments_Posts1` FOREIGN KEY (`Post_id`) REFERENCES `Fall2020_Posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Comments_Users1` FOREIGN KEY (`Owner_id`) REFERENCES `Fall2020_Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Fall2020_ContactMethods`
--
ALTER TABLE `Fall2020_ContactMethods`
  ADD CONSTRAINT `fk_ContactMethods_Users` FOREIGN KEY (`User_id`) REFERENCES `Fall2020_Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ContactMethod_Type` FOREIGN KEY (`Type`) REFERENCES `Fall2020_Types` (`Name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Fall2020_Emojis`
--
ALTER TABLE `Fall2020_Emojis`
  ADD CONSTRAINT `fk_Emojis_Types1` FOREIGN KEY (`Type_id`) REFERENCES `Fall2020_Types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Fall2020_Posts`
--
ALTER TABLE `Fall2020_Posts`
  ADD CONSTRAINT `fk_Posts_Users1` FOREIGN KEY (`Owner_id`) REFERENCES `Fall2020_Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Fall2020_Reactions`
--
ALTER TABLE `Fall2020_Reactions`
  ADD CONSTRAINT `fk_Comments_Posts10` FOREIGN KEY (`Post_id`) REFERENCES `Fall2020_Posts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Comments_Users10` FOREIGN KEY (`Owner_id`) REFERENCES `Fall2020_Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Fall2020_Types`
--
ALTER TABLE `Fall2020_Types`
  ADD CONSTRAINT `fk_Types_Types1` FOREIGN KEY (`Type_id`) REFERENCES `Fall2020_Types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Fall2020_Users`
--
ALTER TABLE `Fall2020_Users`
  ADD CONSTRAINT `fk_Users_Types1` FOREIGN KEY (`User_Type`) REFERENCES `Fall2020_Types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_FITNESS_Comments`
--
ALTER TABLE `_FITNESS_Comments`
  ADD CONSTRAINT `_FITNESS_Comments_ibfk_1` FOREIGN KEY (`media_type`) REFERENCES `_FITNESS_Types` (`id`),
  ADD CONSTRAINT `fk_EX_Fall_2020_Comments_Users1` FOREIGN KEY (`Owner_id`) REFERENCES `_FITNESS_Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EX_Fall_2020_Comments_Workouts1` FOREIGN KEY (`Workout_id`) REFERENCES `_FITNESS_Workouts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_FITNESS_ContactMethods`
--
ALTER TABLE `_FITNESS_ContactMethods`
  ADD CONSTRAINT `fk_EX_Fall_2020_ContactMethods_Users` FOREIGN KEY (`User_id`) REFERENCES `_FITNESS_Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EX_Fall_2020_ContactMethod_Type` FOREIGN KEY (`Type`) REFERENCES `_FITNESS_Types` (`Name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_FITNESS_Emojis`
--
ALTER TABLE `_FITNESS_Emojis`
  ADD CONSTRAINT `fk_EX_Fall_2020_Emojis_Types1` FOREIGN KEY (`Type_id`) REFERENCES `_FITNESS_Types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_FITNESS_Exercise_Types`
--
ALTER TABLE `_FITNESS_Exercise_Types`
  ADD CONSTRAINT `fk_EX_Fall_2020_Exercise_Types_Types1_Types1` FOREIGN KEY (`Type`) REFERENCES `_FITNESS_Types` (`Name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EX_Fall_2020_Exercise_Types_Muscle_Group` FOREIGN KEY (`Muscle_Group`) REFERENCES `_FITNESS_Types` (`Name`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_FITNESS_Followers`
--
ALTER TABLE `_FITNESS_Followers`
  ADD CONSTRAINT `fk_EX_Fall_2020_Followers_Following` FOREIGN KEY (`Following_id`) REFERENCES `_FITNESS_Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EX_Fall_2020_Followers_Follower` FOREIGN KEY (`Follower_id`) REFERENCES `_FITNESS_Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_FITNESS_Reactions`
--
ALTER TABLE `_FITNESS_Reactions`
  ADD CONSTRAINT `_FITNESS_Reactions_ibfk_1` FOREIGN KEY (`Emoji`) REFERENCES `_FITNESS_Emojis` (`Code`),
  ADD CONSTRAINT `fk_EX_Fall_2020_Comments_Users10` FOREIGN KEY (`Owner_id`) REFERENCES `_FITNESS_Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EX_Fall_2020_Comments_Workouts10` FOREIGN KEY (`Workout_id`) REFERENCES `_FITNESS_Workouts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_FITNESS_Types`
--
ALTER TABLE `_FITNESS_Types`
  ADD CONSTRAINT `fk_EX_Fall_2020_Types_Types1` FOREIGN KEY (`Type_id`) REFERENCES `_FITNESS_Types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_FITNESS_Users`
--
ALTER TABLE `_FITNESS_Users`
  ADD CONSTRAINT `fk_EX_Fall_2020_Users_Types1` FOREIGN KEY (`User_Type`) REFERENCES `_FITNESS_Types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `_FITNESS_Workouts`
--
ALTER TABLE `_FITNESS_Workouts`
  ADD CONSTRAINT `fk_EX_Fall_2020_Workout_Exercise_Types` FOREIGN KEY (`Exercise_Type`) REFERENCES `_FITNESS_Exercise_Types` (`Name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EX_Fall_2020_Workout_Users1` FOREIGN KEY (`Owner_id`) REFERENCES `_FITNESS_Users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
