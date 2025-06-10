-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2025 at 07:03 AM
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
-- Database: `weather2`
--

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `City` varchar(100) NOT NULL,
  `Humidity` float NOT NULL,
  `Wind` float NOT NULL,
  `Pressure` float NOT NULL,
  `Temperature` float NOT NULL,
  `Icon` varchar(10) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`City`, `Humidity`, `Wind`, `Pressure`, `Temperature`, `Icon`, `timestamp`) VALUES
('Tuscumbia', 59, 7.15, 1030, 2.07, '01d', '2025-01-24 17:20:28'),
('kathmandu', 66, 1.54, 1015, 10.12, '02n', '2025-01-24 17:20:59'),
('dubai', 37, 4.12, 1018, 21.96, '01n', '2025-01-24 17:35:26'),
('dhulikhel', 63, 1, 1015, 7.75, '01n', '2025-01-24 17:35:33'),
('Tuscumbia', 66, 0, 1031, -3.35, '01n', '2025-01-25 03:24:19'),
('kathmandu', 66, 1.03, 1015, 10.12, '50d', '2025-01-25 03:24:45'),
('lalitpur', 66, 1.03, 1015, 10.21, '50d', '2025-01-25 03:25:58'),
('russia', 94, 4.7, 1046, -22.91, '04d', '2025-01-25 03:26:11'),
('australia', 12, 3.72, 1008, 36.16, '01d', '2025-01-25 03:26:23'),
('america', 44, 2.19, 1014, 13.67, '03n', '2025-01-25 03:26:26'),
('india', 80, 1.54, 1026, -5, '02n', '2025-01-25 03:26:30'),
('delhi', 76, 2.57, 1016, 10.05, '50d', '2025-01-25 03:26:37'),
('mumbai', 53, 2.06, 1011, 25.99, '50d', '2025-01-25 03:26:42'),
('humla', 19, 1.93, 1012, 19.44, '02n', '2025-01-25 03:26:45'),
('jumla', 7, 0.52, 1016, 7.65, '01d', '2025-01-25 03:26:49'),
('mustang', 31, 7.2, 1019, 6.27, '01n', '2025-01-25 03:26:53'),
('Tuscumbia', 72, 0, 1030, -4.57, '01n', '2025-01-25 05:38:32'),
('rome', 69, 1.54, 1031, -3.91, '01n', '2025-01-25 05:38:42'),
('romania', 90, 0.22, 1025, -0.94, '02n', '2025-01-25 05:38:47'),
('spain', 81, 4.79, 1017, 9.35, '04n', '2025-01-25 05:38:49'),
('kathmandu', 41, 1.03, 1013, 16.12, '50d', '2025-01-25 05:49:30'),
('london', 87, 4.12, 1001, 5.36, '04n', '2025-01-25 05:49:50'),
('wolverhampton', 86, 0.45, 1001, 1.03, '04n', '2025-01-25 05:49:55'),
('crompton', 70, 3.09, 1024, -7.82, '02n', '2025-01-25 05:50:33');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
