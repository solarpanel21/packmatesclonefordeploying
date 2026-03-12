-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2026 at 05:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `packmatestest`
--

-- --------------------------------------------------------

--
-- Table structure for table `invites`
--

CREATE TABLE `invites` (
  `inviteid` int(11) NOT NULL,
  `code` varchar(16) NOT NULL COMMENT 'Randomly generated codes go here',
  `uses` int(11) NOT NULL,
  `tripid` int(11) NOT NULL COMMENT 'foreign key from trips',
  `userid` int(11) NOT NULL COMMENT 'foreign key from users'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invites`
--

INSERT INTO `invites` (`inviteid`, `code`, `uses`, `tripid`, `userid`) VALUES
(1, '9236c5bf0016631f', 4, 14, 1),
(2, '4d34d93a5935f400', 1, 22, 3),
(3, '81f4555721b69714', 0, 22, 3),
(4, 'fa82e59eac09a5b3', 1, 27, 4),
(5, '5a0d9bcd6a2686e7', 0, 22, 4),
(6, 'e51fa943498c75f5', 4, 22, 5),
(7, '5ca0fcb539c4d77d', 5, 32, 5),
(8, 'af46681981b024d2', 6, 7, 1),
(9, '49e5828c741004c0', 5, 34, 1),
(10, '223da941167278e7', 1, 20, 3),
(11, '724ebcf4467a92af', 5, 20, 3),
(12, '8af1f99d3314b366', 5, 20, 3),
(13, 'ab0817d09df6aec2', 0, 6, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invites`
--
ALTER TABLE `invites`
  ADD PRIMARY KEY (`inviteid`),
  ADD KEY `tripid` (`tripid`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invites`
--
ALTER TABLE `invites`
  MODIFY `inviteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invites`
--
ALTER TABLE `invites`
  ADD CONSTRAINT `TripidfromTripstoInvites` FOREIGN KEY (`tripid`) REFERENCES `trips` (`tripid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `useridFromUserstoInvites` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
