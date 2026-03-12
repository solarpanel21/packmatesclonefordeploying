-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2026 at 05:13 PM
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
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `tripid` int(16) NOT NULL,
  `tripname` varchar(32) NOT NULL DEFAULT 'New Trip',
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `country` varchar(64) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `creationdate` datetime NOT NULL,
  `iconurl` varchar(255) DEFAULT NULL,
  `userid` int(11) NOT NULL COMMENT 'foreign key, takes user id from users table',
  `weathertags` varchar(255) DEFAULT NULL,
  `activitytags` varchar(255) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `isdeleted` tinyint(4) DEFAULT 0,
  `notified_24h` tinyint(1) NOT NULL DEFAULT 0,
  `notified_7d` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`tripid`, `tripname`, `city`, `country`, `startdate`, `enddate`, `creationdate`, `iconurl`, `userid`, `weathertags`, `activitytags`, `notes`, `latitude`, `longitude`, `isdeleted`, `notified_24h`, `notified_7d`) VALUES
(1, 'July NYC Trip', 'New York', 'United States', '2026-07-10', '2026-07-23', '2026-03-10 16:47:00', NULL, 3, 'cold,rain,snow', 'business', 'notes', 40.714270, -74.005970, 1, 0, 0),
(2, 'NYC July trip 2', 'New York', 'United States', '2026-07-10', '2026-07-23', '2026-03-10 16:58:56', NULL, 3, 'warm,cold,rain', 'business', 'business trip to nyc', 40.714270, -74.005970, 1, 0, 0),
(3, 'Trip to Hell (michigan)', 'Hell', 'United States', '2026-11-26', '2026-12-11', '2026-03-10 17:32:07', NULL, 3, 'cold,rain,snow', 'wintersports', '', 42.434760, -83.984950, 1, 0, 0),
(4, 'Springfield trip', 'Springfield', 'United States', '2026-03-28', '2026-03-30', '2026-03-10 17:37:39', NULL, 1, 'cold,rain', 'hiking,camping,gym', 'homer simpson', 39.924230, -83.808820, 1, 0, 0),
(5, 'Trip with a lot of activities', 'Tokyo', 'Japan', '2026-09-23', '2026-10-15', '2026-03-10 18:59:05', NULL, 3, 'warm,cold,rain,wind', 'beach,hiking,camping,gym,sport,swimming,wintersports,business,nightout,roadtrip,formal', 'i have so many things to do on this trip its honestly a bit worrying', 35.689500, 139.691710, 1, 0, 0),
(6, 'Trip to hell (retribution)', 'Hell', 'United States', '2026-04-19', '2026-04-27', '2026-03-10 21:26:23', 'https://images.pexels.com/photos/31416335/pexels-photo-31416335.jpeg', 3, 'cold,rain,snow', 'hiking,camping,gym', 'I <3 Michigan', 42.434760, -83.984950, 0, 0, 0),
(7, 'Chicago trip', 'Chicago', 'United States', '2026-06-17', '2026-07-02', '2026-03-10 21:28:55', 'https://images.pexels.com/photos/17661149/pexels-photo-17661149.jpeg', 1, 'warm,cold,rain', 'nightout,roadtrip,formal', '', 41.850030, -87.650050, 0, 0, 0),
(8, 'Trip 8 I think', 'Beijing', 'China', '2027-02-10', '2027-03-05', '2026-03-11 15:21:39', 'https://images.pexels.com/photos/16428155/pexels-photo-16428155.jpeg', 1, 'cold,rain,snow', 'formal', '', 39.907500, 116.397230, 1, 0, 0),
(9, 'Trip 8 I think', 'Beijing', 'China', '2027-02-10', '2027-03-05', '2026-03-11 15:21:44', 'https://images.pexels.com/photos/16428155/pexels-photo-16428155.jpeg', 1, 'cold,rain,snow', 'formal', '', 39.907500, 116.397230, 1, 0, 0),
(10, 'Trip 8 I think', 'Beijing', 'China', '2027-02-10', '2027-03-05', '2026-03-11 15:21:50', 'https://images.pexels.com/photos/16428155/pexels-photo-16428155.jpeg', 1, 'cold,rain,snow', 'formal', '', 39.907500, 116.397230, 1, 0, 0),
(11, 'New beijing trip', 'Beijing', 'China', '2026-03-31', '2026-04-21', '2026-03-11 15:26:31', 'https://images.pexels.com/photos/16428155/pexels-photo-16428155.jpeg', 1, 'cold,rain', 'business', '', 39.907500, 116.397230, 1, 0, 0),
(12, 'Is the insert script working pls', 'Paris', 'France', '2026-03-27', '2026-03-31', '2026-03-11 15:38:49', 'https://images.pexels.com/photos/30689741/pexels-photo-30689741.jpeg', 1, 'cold,rain', 'business', '', 48.853410, 2.348800, 1, 0, 0),
(13, 'test insert', 'Paris', 'France', '2026-03-20', '2026-03-17', '2026-03-11 15:39:53', 'https://images.pexels.com/photos/30689741/pexels-photo-30689741.jpeg', 1, '', 'business', '', 48.853410, 2.348800, 1, 0, 0),
(14, 'dublin trip so cool', 'Dublin', 'Ireland', '2026-03-26', '2026-03-31', '2026-03-11 15:42:36', 'https://images.pexels.com/photos/33999754/pexels-photo-33999754.jpeg', 1, '', 'hiking', 'cool', 53.333060, -6.248890, 0, 0, 0),
(15, 'SUPER CLOSE TRIP TOMORROW', 'Belgrade', 'Serbia', '2026-03-12', '2026-03-17', '2026-03-11 19:42:41', 'https://images.pexels.com/photos/34432788/pexels-photo-34432788.jpeg', 2, 'cold,rain', 'gym', '', 44.804010, 20.465130, 0, 1, 0),
(16, 'SUPER CLOSE TRIP TOMORROW', 'Belgrade', 'Serbia', '2026-03-12', '2026-03-17', '2026-03-11 19:45:40', 'https://images.pexels.com/photos/34432788/pexels-photo-34432788.jpeg', 2, 'cold,rain', 'gym', '', 44.804010, 20.465130, 1, 1, 0),
(17, 'SUPER CLOSE TRIP TOMORROW', 'Belgrade', 'Serbia', '2026-03-12', '2026-03-17', '2026-03-11 19:46:47', 'https://images.pexels.com/photos/34432788/pexels-photo-34432788.jpeg', 2, 'cold,rain', 'gym', '', 44.804010, 20.465130, 1, 1, 0),
(18, 'SUPER CLOSE TRIP TOMORROW', 'Belgrade', 'Serbia', '2026-03-12', '2026-03-17', '2026-03-11 19:48:23', 'https://images.pexels.com/photos/34432788/pexels-photo-34432788.jpeg', 2, 'cold,rain', 'gym', '', 44.804010, 20.465130, 1, 1, 0),
(19, 'trip tomorrow', 'Sydney', 'Australia', '2026-03-12', '2026-03-18', '2026-03-11 20:03:03', 'https://images.pexels.com/photos/34689481/pexels-photo-34689481.jpeg', 1, 'cold,rain', 'hiking', '', -33.867850, 151.207320, 0, 1, 0),
(20, 'berlin trip', 'Berlin', 'Germany', '2026-04-17', '2026-05-29', '2026-03-11 20:17:42', 'https://images.pexels.com/photos/34969636/pexels-photo-34969636.jpeg', 3, 'cold,rain', 'camping,formal', '', 52.524370, 13.410530, 0, 0, 0),
(21, 'london', '', '', '0000-00-00', '0000-00-00', '2026-03-11 20:22:48', '', 3, '', '', '', 0.000000, 0.000000, 1, 0, 0),
(22, 'Kuala Lumpur Business Trip', 'Kuala Lumpur', 'Malaysia', '2026-05-26', '2026-07-22', '2026-03-11 20:27:14', 'https://images.pexels.com/photos/35059637/pexels-photo-35059637.jpeg', 3, 'warm,rain', 'business,formal', '', 3.141200, 101.686530, 0, 0, 0),
(23, 'trip for cool seminar', '', '', '0000-00-00', '0000-00-00', '2026-03-11 20:33:05', '', 3, '', '', '', 0.000000, 0.000000, 1, 0, 0),
(24, 'Burlington is such a cool place', 'Burlington', 'United States', '2026-03-12', '2026-03-13', '2026-03-11 21:22:12', 'https://images.pexels.com/photos/18734918/pexels-photo-18734918.jpeg', 3, 'cold,rain', 'camping', '', 44.475880, -73.212070, 1, 1, 0),
(25, 'Burlington is such a cool place', 'Burlington', 'United States', '2026-03-13', '2026-03-17', '2026-03-11 21:22:39', 'https://images.pexels.com/photos/18734918/pexels-photo-18734918.jpeg', 3, 'cold,rain,snow', 'hiking,camping', '', 44.475880, -73.212070, 0, 1, 1),
(26, 'Going to Palembang', 'Palembang', 'Indonesia', '2026-03-12', '2026-03-17', '2026-03-11 21:47:27', 'https://images.pexels.com/photos/18388935/pexels-photo-18388935.jpeg', 1, 'warm', 'formal', '', -2.916730, 104.745800, 0, 1, 0),
(27, 'Tallahassee', 'Tallahassee', 'United States', '2026-07-16', '2026-07-22', '2026-03-12 15:11:26', 'https://images.pexels.com/photos/18734918/pexels-photo-18734918.jpeg', 4, 'warm,rain', 'sport,swimming', 'remember to go to goodwill computer store', 30.438260, -84.280730, 0, 0, 0),
(28, 'London trip', 'London', 'United Kingdom', '2026-08-19', '2026-08-24', '2026-03-12 15:22:26', 'https://images.pexels.com/photos/8150482/pexels-photo-8150482.jpeg', 4, 'cold,rain', 'gym,sport', 'remember to try the tesco sausage roll', 51.508530, -0.125740, 0, 0, 0),
(29, 'London trip', 'London', 'United Kingdom', '2026-08-19', '2026-08-24', '2026-03-12 15:22:34', 'https://images.pexels.com/photos/8150482/pexels-photo-8150482.jpeg', 4, 'cold,rain', 'gym,sport', 'remember to try the tesco sausage roll', 51.508530, -0.125740, 1, 0, 0),
(30, 'London trip', 'London', 'United Kingdom', '2026-08-19', '2026-08-24', '2026-03-12 15:22:41', 'https://images.pexels.com/photos/8150482/pexels-photo-8150482.jpeg', 4, 'cold,rain', 'gym,sport', 'remember to try the tesco sausage roll', 51.508530, -0.125740, 1, 0, 0),
(31, 'London trip', 'London', 'United Kingdom', '2026-08-19', '2026-08-24', '2026-03-12 15:22:49', 'https://images.pexels.com/photos/8150482/pexels-photo-8150482.jpeg', 4, 'cold,rain', 'gym,sport', 'remember to try the tesco sausage roll', 51.508530, -0.125740, 1, 0, 0),
(32, 'asheville', 'Asheville', 'United States', '2026-12-09', '2027-12-15', '2026-03-12 15:30:14', 'https://images.pexels.com/photos/18388935/pexels-photo-18388935.jpeg', 5, 'warm,cold,rain,snow,wind', 'roadtrip', '', 35.600950, -82.554020, 0, 0, 0),
(33, 'Christmas trip to visit parents', 'Vancouver', 'Canada', '2026-12-22', '2026-12-28', '2026-03-12 15:33:00', 'https://images.pexels.com/photos/12533817/pexels-photo-12533817.jpeg', 5, 'cold,rain,snow', 'wintersports', '', 49.249660, -123.119340, 0, 0, 0),
(34, 'China!!!', 'Beijing', 'China', '2027-06-12', '2027-06-24', '2026-03-12 15:36:40', 'https://images.pexels.com/photos/16428155/pexels-photo-16428155.jpeg', 1, 'warm,rain', 'hiking,nightout,roadtrip', '', 39.907500, 116.397230, 0, 0, 0),
(35, 'new york', 'New York', 'United States', '2026-05-14', '2026-05-17', '2026-03-12 15:52:15', 'https://images.pexels.com/photos/36398474/pexels-photo-36398474.jpeg', 3, 'cold,rain', 'business', 'statue a libaty', 40.714270, -74.005970, 1, 0, 0),
(36, 'new york', 'New York', 'United States', '2026-05-14', '2026-05-17', '2026-03-12 15:52:22', 'https://images.pexels.com/photos/36398474/pexels-photo-36398474.jpeg', 3, 'cold,rain', 'business', 'statue a libaty', 40.714270, -74.005970, 1, 0, 0),
(37, 'new york', 'New York', 'United States', '2026-05-14', '2026-05-17', '2026-03-12 15:52:30', 'https://images.pexels.com/photos/36398474/pexels-photo-36398474.jpeg', 3, 'cold,rain', 'business', 'statue a libaty', 40.714270, -74.005970, 1, 0, 0),
(38, 'new york', 'New York', 'United States', '2026-05-14', '2026-05-17', '2026-03-12 15:52:38', 'https://images.pexels.com/photos/36398474/pexels-photo-36398474.jpeg', 3, 'cold,rain', 'business', 'statue a libaty', 40.714270, -74.005970, 1, 0, 0),
(39, 'new york', 'New York', 'United States', '2026-05-14', '2026-05-17', '2026-03-12 15:52:45', 'https://images.pexels.com/photos/36398474/pexels-photo-36398474.jpeg', 3, 'cold,rain', 'business', 'statue a libaty', 40.714270, -74.005970, 1, 0, 0),
(40, 'new york', 'New York', 'United States', '2026-05-14', '2026-05-17', '2026-03-12 15:52:53', 'https://images.pexels.com/photos/36398474/pexels-photo-36398474.jpeg', 3, 'cold,rain', 'business', 'statue a libaty', 40.714270, -74.005970, 1, 0, 0),
(41, 'new york', 'New York', 'United States', '2026-05-14', '2026-05-17', '2026-03-12 15:53:00', 'https://images.pexels.com/photos/36398474/pexels-photo-36398474.jpeg', 3, 'cold,rain', 'business', 'statue a libaty', 40.714270, -74.005970, 1, 0, 0),
(42, 'new york', 'New York', 'United States', '2026-05-14', '2026-05-17', '2026-03-12 15:53:08', 'https://images.pexels.com/photos/36398474/pexels-photo-36398474.jpeg', 3, 'cold,rain', 'business', 'statue a libaty', 40.714270, -74.005970, 0, 0, 0),
(43, 'D.C. superimportant trip', 'Washington', 'United States', '2027-07-14', '2027-07-16', '2026-03-12 15:55:44', 'https://images.pexels.com/photos/18734918/pexels-photo-18734918.jpeg', 3, 'warm,rain', 'business,formal', '', 38.895110, -77.036370, 1, 0, 0),
(44, 'D.C. superimportant trip', 'Washington', 'United States', '2027-07-14', '2027-07-16', '2026-03-12 15:55:52', 'https://images.pexels.com/photos/18734918/pexels-photo-18734918.jpeg', 3, 'warm,rain', 'business,formal', '', 38.895110, -77.036370, 1, 0, 0),
(45, 'D.C. superimportant trip', 'Washington', 'United States', '2027-07-14', '2027-07-16', '2026-03-12 15:55:59', 'https://images.pexels.com/photos/18734918/pexels-photo-18734918.jpeg', 3, 'warm,rain', 'business,formal', '', 38.895110, -77.036370, 1, 0, 0),
(46, 'D.C. superimportant trip', 'Washington', 'United States', '2027-07-14', '2027-07-16', '2026-03-12 15:56:06', 'https://images.pexels.com/photos/18734918/pexels-photo-18734918.jpeg', 3, 'warm,rain', 'business,formal', '', 38.895110, -77.036370, 1, 0, 0),
(47, 'D.C. superimportant trip', 'Washington', 'United States', '2027-07-14', '2027-07-16', '2026-03-12 15:56:14', 'https://images.pexels.com/photos/18734918/pexels-photo-18734918.jpeg', 3, 'warm,rain', 'business,formal', '', 38.895110, -77.036370, 0, 0, 0),
(48, 'barcelona trip', 'Barcelona', 'Spain', '2028-07-12', '2028-07-20', '2026-03-12 16:01:33', 'https://images.pexels.com/photos/7151884/pexels-photo-7151884.jpeg', 3, 'warm,rain', 'formal', '', 41.388790, 2.158990, 1, 0, 0),
(49, 'barcelona trip', 'Barcelona', 'Spain', '2028-07-12', '2028-07-20', '2026-03-12 16:01:42', 'https://images.pexels.com/photos/7151884/pexels-photo-7151884.jpeg', 3, 'warm,rain', 'formal', '', 41.388790, 2.158990, 1, 0, 0),
(50, 'barcelona trip', 'Barcelona', 'Spain', '2028-07-12', '2028-07-20', '2026-03-12 16:01:51', 'https://images.pexels.com/photos/7151884/pexels-photo-7151884.jpeg', 3, 'warm,rain', 'formal', '', 41.388790, 2.158990, 0, 0, 0),
(51, 'barcelona trip', 'Barcelona', 'Spain', '2028-07-12', '2028-07-20', '2026-03-12 16:02:01', 'https://images.pexels.com/photos/7151884/pexels-photo-7151884.jpeg', 3, 'warm,rain', 'formal', '', 41.388790, 2.158990, 1, 0, 0),
(52, 'The syndrome........', 'Stockholm', 'Sweden', '2026-09-20', '2026-09-21', '2026-03-12 16:04:07', 'https://images.pexels.com/photos/10445142/pexels-photo-10445142.jpeg', 3, 'cold,rain', 'business', '', 59.329380, 18.068710, 1, 0, 0),
(53, 'The syndrome........', 'Stockholm', 'Sweden', '2026-09-20', '2026-09-21', '2026-03-12 16:04:15', 'https://images.pexels.com/photos/10445142/pexels-photo-10445142.jpeg', 3, 'cold,rain', 'business', '', 59.329380, 18.068710, 1, 0, 0),
(54, 'The syndrome........', 'Stockholm', 'Sweden', '2026-09-20', '2026-09-21', '2026-03-12 16:04:23', 'https://images.pexels.com/photos/10445142/pexels-photo-10445142.jpeg', 3, 'cold,rain', 'business', '', 59.329380, 18.068710, 0, 0, 0),
(55, 'santiago', 'Santiago', 'Dominican Republic', '2026-04-30', '2026-05-05', '2026-03-12 16:08:34', 'https://images.pexels.com/photos/910564/pexels-photo-910564.png', 3, 'warm,rain', 'beach,hiking,swimming', '', 19.450830, -70.694720, 1, 0, 0),
(56, 'santiago', 'Santiago', 'Dominican Republic', '2026-04-30', '2026-05-05', '2026-03-12 16:08:42', 'https://images.pexels.com/photos/910564/pexels-photo-910564.png', 3, 'warm,rain', 'beach,hiking,swimming', '', 19.450830, -70.694720, 0, 0, 0),
(57, 'test', 'Testa', 'Sweden', '2026-03-13', '2026-03-16', '2026-03-12 16:18:30', 'https://images.pexels.com/photos/18388935/pexels-photo-18388935.jpeg', 3, 'cold,rain', 'camping', '', 59.833330, 17.283330, 1, 1, 0),
(58, 'test', 'Testa', 'Sweden', '2026-03-20', '2026-03-24', '2026-03-12 16:22:56', 'https://images.pexels.com/photos/18388935/pexels-photo-18388935.jpeg', 3, 'cold,rain', 'camping', '', 59.833330, 17.283330, 1, 0, 0),
(59, 'test', 'Pomerode', 'Brazil', '2026-03-20', '2026-03-26', '2026-03-12 16:23:43', 'https://images.pexels.com/photos/29029104/pexels-photo-29029104.jpeg', 3, 'warm,rain', 'camping', '', -26.740560, -49.176940, 1, 0, 0),
(60, 'burger', 'Burger', 'Germany', '2030-03-19', '2030-03-21', '2026-03-12 16:26:17', 'https://images.pexels.com/photos/18580143/pexels-photo-18580143.jpeg', 3, 'cold,rain,snow', 'camping,nightout', 'burger', 47.743690, 11.549640, 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`tripid`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `tripid` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `UseridFromUserstoTrips` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
