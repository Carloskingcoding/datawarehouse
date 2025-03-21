-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2024 at 12:53 PM
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
-- Database: `pt auto maju`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars_dimension`
--

CREATE TABLE `cars_dimension` (
  `ModelID` varchar(63) DEFAULT NULL,
  `ModelName` varchar(63) DEFAULT NULL,
  `ManufacturerID` varchar(63) DEFAULT NULL,
  `Category` varchar(63) DEFAULT NULL,
  `LaunchYear` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `Stock` double DEFAULT NULL,
  `ManufacturerName` varchar(63) DEFAULT NULL,
  `Country` varchar(63) DEFAULT NULL,
  `SK_Cars` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars_dimension`
--

INSERT INTO `cars_dimension` (`ModelID`, `ModelName`, `ManufacturerID`, `Category`, `LaunchYear`, `price`, `Stock`, `ManufacturerName`, `Country`, `SK_Cars`) VALUES
('MDL001', 'Roadster', 'M001', 'Sedan', 2004, 300000000, 100, 'PT. Auto Maju', 'Indonesia', 1),
('MDL002', 'Speedster', 'M001', 'SUV', 2001, 500000000, 100, 'PT. Auto Maju', 'Indonesia', 2),
('MDL003', 'EcoDrive', 'M001', 'Hatchback', 2002, 230000000, 100, 'PT. Auto Maju', 'Indonesia', 3),
('MDL004', 'LuxuryLine', 'M001', 'Sedan', 2015, 800000000, 100, 'PT. Auto Maju', 'Indonesia', 4),
('MDL005', 'SportX', 'M001', 'Sport', 2001, 600000000, 100, 'PT. Auto Maju', 'Indonesia', 5),
('MDL006', 'FamilyPlus', 'M001', 'SUV', 2018, 350000000, 100, 'PT. Auto Maju', 'Indonesia', 6),
('MDL007', 'HybridOne', 'M001', 'Hybrid', 2004, 400000000, 100, 'PT. Auto Maju', 'Indonesia', 7),
('MDL008', 'ElectricFly', 'M001', 'Electric', 2010, 450000000, 100, 'PT. Auto Maju', 'Indonesia', 8),
('MDL009', 'UrbanMove', 'M001', 'Hatchback', 2012, 180000000, 100, 'PT. Auto Maju', 'Indonesia', 9),
('MDL010', 'Xplorer', 'M001', 'Off-Road', 2002, 660000000, 100, 'PT. Auto Maju', 'Indonesia', 10);

-- --------------------------------------------------------

--
-- Table structure for table `cars _table`
--

CREATE TABLE `cars _table` (
  `ModelID` tinytext DEFAULT NULL,
  `ModelName` tinytext DEFAULT NULL,
  `ManufacturerID` tinytext DEFAULT NULL,
  `Category` tinytext DEFAULT NULL,
  `LaunchYear` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `Stock` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars _table`
--

INSERT INTO `cars _table` (`ModelID`, `ModelName`, `ManufacturerID`, `Category`, `LaunchYear`, `price`, `Stock`) VALUES
('MDL001', 'Roadster', 'M001', 'Sedan', 2004, 300000000, 100),
('MDL002', 'Speedster', 'M001', 'SUV', 2001, 500000000, 100),
('MDL003', 'EcoDrive', 'M001', 'Hatchback', 2002, 230000000, 100),
('MDL004', 'LuxuryLine', 'M001', 'Sedan', 2015, 800000000, 100),
('MDL005', 'SportX', 'M001', 'Sport', 2001, 600000000, 100),
('MDL006', 'FamilyPlus', 'M001', 'SUV', 2018, 350000000, 100),
('MDL007', 'HybridOne', 'M001', 'Hybrid', 2004, 400000000, 100),
('MDL008', 'ElectricFly', 'M001', 'Electric', 2010, 450000000, 100),
('MDL009', 'UrbanMove', 'M001', 'Hatchback', 2012, 180000000, 100),
('MDL010', 'Xplorer', 'M001', 'Off-Road', 2002, 660000000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `customers_dimension`
--

CREATE TABLE `customers_dimension` (
  `CustomerID` varchar(63) DEFAULT NULL,
  `CustomerName` varchar(63) DEFAULT NULL,
  `City` varchar(63) DEFAULT NULL,
  `Phone` varchar(63) DEFAULT NULL,
  `DealerID` varchar(63) DEFAULT NULL,
  `ModelID` varchar(63) DEFAULT NULL,
  `SK_Customers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers_dimension`
--

INSERT INTO `customers_dimension` (`CustomerID`, `CustomerName`, `City`, `Phone`, `DealerID`, `ModelID`, `SK_Customers`) VALUES
('C0001', 'Sophia Wilson', 'Surabaya', '+62 81664290883', 'D001', 'MDL003', 1),
('C0002', 'Emily Davis', 'Bali', '+62 81102087966', 'D001', 'MDL007', 2),
('C0003', 'Kevin Lewis', 'Bali', '+62 81565847969', 'D001', 'MDL007', 3),
('C0004', 'Nancy Rodriguez', 'Bandung', '+62 81564349688', 'D001', 'MDL001', 4),
('C0005', 'Patricia Garcia', 'Bandung', '+62 81866040981', 'D004', 'MDL009', 5),
('C0006', 'Jane Smith', 'Bandung', '+62 81278772150', 'D004', 'MDL010', 6),
('C0007', 'Matthew Clark', 'Surabaya', '+62 81315522466', 'D004', 'MDL005', 7),
('C0008', 'Jessica Williams', 'Bali', '+62 81124646954', 'D004', 'MDL004', 8),
('C0009', 'Kevin Lewis', 'Surabaya', '+62 81219475466', 'D001', 'MDL001', 9),
('C0010', 'Linda Thomas', 'Medan', '+62 81175421648', 'D002', 'MDL005', 10),
('C0011', 'Karen Lee', 'Bali', '+62 81618208883', 'D003', 'MDL004', 11),
('C0012', 'David Moore', 'Surabaya', '+62 81901665118', 'D005', 'MDL004', 12),
('C0013', 'David Moore', 'Bali', '+62 81849716647', 'D002', 'MDL005', 13),
('C0014', 'Sarah Taylor', 'Bali', '+62 81226044387', 'D001', 'MDL002', 14),
('C0015', 'Emily Davis', 'Surabaya', '+62 81904708275', 'D001', 'MDL001', 15),
('C0016', 'Emily Davis', 'Surabaya', '+62 81927250890', 'D003', 'MDL007', 16),
('C0017', 'Emily Davis', 'Bali', '+62 81301428728', 'D004', 'MDL007', 17),
('C0018', 'Robert Martin', 'Medan', '+62 81392201138', 'D002', 'MDL003', 18),
('C0019', 'Robert Martin', 'Bali', '+62 81194567034', 'D004', 'MDL004', 19),
('C0020', 'Albert Johnson', 'Surabaya', '+62 81553177022', 'D001', 'MDL008', 20),
('C0021', 'Jane Smith', 'Bandung', '+62 81385059387', 'D005', 'MDL006', 21),
('C0022', 'Jessica Williams', 'Surabaya', '+62 81239981707', 'D001', 'MDL006', 22),
('C0023', 'Emily Davis', 'Surabaya', '+62 81824477329', 'D001', 'MDL002', 23),
('C0024', 'Daniel Miller', 'Bali', '+62 81833451272', 'D001', 'MDL006', 24),
('C0025', 'Sophia Wilson', 'Surabaya', '+62 81345822693', 'D001', 'MDL006', 25),
('C0026', 'Patricia Garcia', 'Jakarta', '+62 81639601910', 'D004', 'MDL003', 26),
('C0027', 'Jane Smith', 'Surabaya', '+62 81460853100', 'D003', 'MDL002', 27),
('C0028', 'Emma Harris', 'Jakarta', '+62 81111767363', 'D003', 'MDL008', 28),
('C0029', 'Emma Harris', 'Bandung', '+62 81688159491', 'D003', 'MDL007', 29),
('C0030', 'James White', 'Surabaya', '+62 81408224640', 'D002', 'MDL006', 30),
('C0031', 'Jessica Williams', 'Surabaya', '+62 81325948125', 'D001', 'MDL003', 31),
('C0032', 'Linda Thomas', 'Bandung', '+62 81889341326', 'D001', 'MDL005', 32),
('C0033', 'David Moore', 'Surabaya', '+62 81578721136', 'D004', 'MDL006', 33),
('C0034', 'Sophia Wilson', 'Surabaya', '+62 81476490411', 'D005', 'MDL010', 34),
('C0035', 'David Moore', 'Bali', '+62 81289927491', 'D001', 'MDL009', 35),
('C0036', 'John Doe', 'Bali', '+62 81797282503', 'D001', 'MDL006', 36),
('C0037', 'Matthew Clark', 'Medan', '+62 81181659195', 'D001', 'MDL004', 37),
('C0038', 'James White', 'Surabaya', '+62 81746800761', 'D005', 'MDL004', 38),
('C0039', 'Michael Brown', 'Jakarta', '+62 81814269119', 'D003', 'MDL005', 39),
('C0040', 'Jessica Williams', 'Surabaya', '+62 81178691442', 'D003', 'MDL003', 40),
('C0041', 'John Doe', 'Surabaya', '+62 81223530356', 'D001', 'MDL009', 41),
('C0042', 'Daniel Miller', 'Medan', '+62 81453335765', 'D001', 'MDL007', 42),
('C0043', 'Emma Harris', 'Medan', '+62 81153976329', 'D001', 'MDL007', 43),
('C0044', 'Robert Martin', 'Jakarta', '+62 81537501386', 'D002', 'MDL008', 44),
('C0045', 'James White', 'Surabaya', '+62 81995417445', 'D001', 'MDL009', 45),
('C0046', 'Albert Johnson', 'Surabaya', '+62 81623056194', 'D003', 'MDL008', 46),
('C0047', 'John Doe', 'Bandung', '+62 81865752751', 'D005', 'MDL008', 47),
('C0048', 'Karen Lee', 'Surabaya', '+62 81796449802', 'D002', 'MDL007', 48),
('C0049', 'John Doe', 'Jakarta', '+62 81172911189', 'D005', 'MDL009', 49),
('C0050', 'Nancy Rodriguez', 'Bandung', '+62 81765285449', 'D003', 'MDL008', 50),
('C0051', 'Michael Brown', 'Bali', '+62 81474357265', 'D004', 'MDL002', 51),
('C0052', 'John Doe', 'Medan', '+62 81506206555', 'D001', 'MDL009', 52),
('C0053', 'Patricia Garcia', 'Bali', '+62 81516316378', 'D003', 'MDL005', 53),
('C0054', 'Karen Lee', 'Medan', '+62 81983333084', 'D003', 'MDL008', 54),
('C0055', 'Emma Harris', 'Medan', '+62 81760666654', 'D003', 'MDL008', 55),
('C0056', 'Daniel Miller', 'Bandung', '+62 81222563469', 'D002', 'MDL005', 56),
('C0057', 'Jane Smith', 'Medan', '+62 81812926244', 'D001', 'MDL004', 57),
('C0058', 'Chris Anderson', 'Bandung', '+62 81699498011', 'D004', 'MDL003', 58),
('C0059', 'Chris Anderson', 'Bandung', '+62 81982134553', 'D004', 'MDL008', 59),
('C0060', 'Robert Martin', 'Medan', '+62 81238608162', 'D004', 'MDL001', 60),
('C0061', 'Sarah Taylor', 'Medan', '+62 81870290341', 'D003', 'MDL005', 61),
('C0062', 'Chris Anderson', 'Medan', '+62 81781469645', 'D004', 'MDL006', 62),
('C0063', 'Nancy Rodriguez', 'Jakarta', '+62 81133521310', 'D001', 'MDL010', 63),
('C0064', 'Robert Martin', 'Bandung', '+62 81276810631', 'D002', 'MDL004', 64),
('C0065', 'Linda Thomas', 'Bandung', '+62 81539206466', 'D003', 'MDL008', 65),
('C0066', 'Sophia Wilson', 'Bali', '+62 81812438865', 'D004', 'MDL010', 66),
('C0067', 'Matthew Clark', 'Surabaya', '+62 81695360171', 'D001', 'MDL005', 67),
('C0068', 'Daniel Miller', 'Bandung', '+62 81835072304', 'D002', 'MDL002', 68),
('C0069', 'Sarah Taylor', 'Medan', '+62 81409189104', 'D003', 'MDL002', 69),
('C0070', 'Kevin Lewis', 'Surabaya', '+62 81344855121', 'D004', 'MDL005', 70),
('C0071', 'Sarah Taylor', 'Jakarta', '+62 81636820639', 'D003', 'MDL004', 71),
('C0072', 'Chris Anderson', 'Medan', '+62 81744762819', 'D002', 'MDL010', 72),
('C0073', 'Sarah Taylor', 'Medan', '+62 81328308944', 'D003', 'MDL007', 73),
('C0074', 'Michael Brown', 'Jakarta', '+62 81574678348', 'D003', 'MDL006', 74),
('C0075', 'Patricia Garcia', 'Jakarta', '+62 81209720935', 'D004', 'MDL005', 75),
('C0076', 'Matthew Clark', 'Bandung', '+62 81201539343', 'D003', 'MDL008', 76),
('C0077', 'Kevin Lewis', 'Jakarta', '+62 81853969275', 'D004', 'MDL009', 77),
('C0078', 'Daniel Miller', 'Jakarta', '+62 81600205603', 'D004', 'MDL003', 78),
('C0079', 'Michael Brown', 'Jakarta', '+62 81892357754', 'D005', 'MDL010', 79),
('C0080', 'Kevin Lewis', 'Surabaya', '+62 81188649947', 'D001', 'MDL008', 80),
('C0081', 'Jessica Williams', 'Surabaya', '+62 81273937420', 'D005', 'MDL008', 81),
('C0082', 'Matthew Clark', 'Bali', '+62 81184082127', 'D002', 'MDL010', 82),
('C0083', 'Nancy Rodriguez', 'Surabaya', '+62 81568567767', 'D004', 'MDL009', 83),
('C0084', 'Albert Johnson', 'Surabaya', '+62 81471467024', 'D001', 'MDL002', 84),
('C0085', 'James White', 'Bandung', '+62 81631938592', 'D001', 'MDL006', 85),
('C0086', 'Albert Johnson', 'Surabaya', '+62 81118761869', 'D003', 'MDL010', 86),
('C0087', 'Patricia Garcia', 'Surabaya', '+62 81334081517', 'D005', 'MDL007', 87),
('C0088', 'Linda Thomas', 'Medan', '+62 81970967816', 'D001', 'MDL001', 88),
('C0089', 'Karen Lee', 'Medan', '+62 81242592827', 'D005', 'MDL003', 89),
('C0090', 'Jane Smith', 'Jakarta', '+62 81350835702', 'D003', 'MDL003', 90),
('C0091', 'David Moore', 'Bandung', '+62 81516882383', 'D005', 'MDL006', 91),
('C0092', 'Karen Lee', 'Bali', '+62 81475299453', 'D005', 'MDL001', 92),
('C0093', 'Linda Thomas', 'Bali', '+62 81576365515', 'D001', 'MDL009', 93),
('C0094', 'Michael Brown', 'Bandung', '+62 81961086197', 'D005', 'MDL003', 94),
('C0095', 'Albert Johnson', 'Jakarta', '+62 81806634306', 'D004', 'MDL002', 95),
('C0096', 'James White', 'Bali', '+62 81698962206', 'D005', 'MDL003', 96),
('C0097', 'Sophia Wilson', 'Medan', '+62 81822669244', 'D005', 'MDL001', 97),
('C0098', 'Emma Harris', 'Surabaya', '+62 81323541108', 'D005', 'MDL009', 98),
('C0099', 'Chris Anderson', 'Medan', '+62 81891049622', 'D003', 'MDL010', 99),
('C0100', 'Nancy Rodriguez', 'Jakarta', '+62 81485386395', 'D005', 'MDL006', 100);

-- --------------------------------------------------------

--
-- Table structure for table `customers _table`
--

CREATE TABLE `customers _table` (
  `CustomerID` tinytext DEFAULT NULL,
  `CustomerName` tinytext DEFAULT NULL,
  `City` tinytext DEFAULT NULL,
  `Phone` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers _table`
--

INSERT INTO `customers _table` (`CustomerID`, `CustomerName`, `City`, `Phone`) VALUES
('C0001', 'Sophia Wilson', 'Surabaya', '+62 81664290883'),
('C0002', 'Emily Davis', 'Bali', '+62 81102087966'),
('C0003', 'Kevin Lewis', 'Bali', '+62 81565847969'),
('C0004', 'Nancy Rodriguez', 'Bandung', '+62 81564349688'),
('C0005', 'Patricia Garcia', 'Bandung', '+62 81866040981'),
('C0006', 'Jane Smith', 'Bandung', '+62 81278772150'),
('C0007', 'Matthew Clark', 'Surabaya', '+62 81315522466'),
('C0008', 'Jessica Williams', 'Bali', '+62 81124646954'),
('C0009', 'Kevin Lewis', 'Surabaya', '+62 81219475466'),
('C0010', 'Linda Thomas', 'Medan', '+62 81175421648'),
('C0011', 'Karen Lee', 'Bali', '+62 81618208883'),
('C0012', 'David Moore', 'Surabaya', '+62 81901665118'),
('C0013', 'David Moore', 'Bali', '+62 81849716647'),
('C0014', 'Sarah Taylor', 'Bali', '+62 81226044387'),
('C0015', 'Emily Davis', 'Surabaya', '+62 81904708275'),
('C0016', 'Emily Davis', 'Surabaya', '+62 81927250890'),
('C0017', 'Emily Davis', 'Bali', '+62 81301428728'),
('C0018', 'Robert Martin', 'Medan', '+62 81392201138'),
('C0019', 'Robert Martin', 'Bali', '+62 81194567034'),
('C0020', 'Albert Johnson', 'Surabaya', '+62 81553177022'),
('C0021', 'Jane Smith', 'Bandung', '+62 81385059387'),
('C0022', 'Jessica Williams', 'Surabaya', '+62 81239981707'),
('C0023', 'Emily Davis', 'Surabaya', '+62 81824477329'),
('C0024', 'Daniel Miller', 'Bali', '+62 81833451272'),
('C0025', 'Sophia Wilson', 'Surabaya', '+62 81345822693'),
('C0026', 'Patricia Garcia', 'Jakarta', '+62 81639601910'),
('C0027', 'Jane Smith', 'Surabaya', '+62 81460853100'),
('C0028', 'Emma Harris', 'Jakarta', '+62 81111767363'),
('C0029', 'Emma Harris', 'Bandung', '+62 81688159491'),
('C0030', 'James White', 'Surabaya', '+62 81408224640'),
('C0031', 'Jessica Williams', 'Surabaya', '+62 81325948125'),
('C0032', 'Linda Thomas', 'Bandung', '+62 81889341326'),
('C0033', 'David Moore', 'Surabaya', '+62 81578721136'),
('C0034', 'Sophia Wilson', 'Surabaya', '+62 81476490411'),
('C0035', 'David Moore', 'Bali', '+62 81289927491'),
('C0036', 'John Doe', 'Bali', '+62 81797282503'),
('C0037', 'Matthew Clark', 'Medan', '+62 81181659195'),
('C0038', 'James White', 'Surabaya', '+62 81746800761'),
('C0039', 'Michael Brown', 'Jakarta', '+62 81814269119'),
('C0040', 'Jessica Williams', 'Surabaya', '+62 81178691442'),
('C0041', 'John Doe', 'Surabaya', '+62 81223530356'),
('C0042', 'Daniel Miller', 'Medan', '+62 81453335765'),
('C0043', 'Emma Harris', 'Medan', '+62 81153976329'),
('C0044', 'Robert Martin', 'Jakarta', '+62 81537501386'),
('C0045', 'James White', 'Surabaya', '+62 81995417445'),
('C0046', 'Albert Johnson', 'Surabaya', '+62 81623056194'),
('C0047', 'John Doe', 'Bandung', '+62 81865752751'),
('C0048', 'Karen Lee', 'Surabaya', '+62 81796449802'),
('C0049', 'John Doe', 'Jakarta', '+62 81172911189'),
('C0050', 'Nancy Rodriguez', 'Bandung', '+62 81765285449'),
('C0051', 'Michael Brown', 'Bali', '+62 81474357265'),
('C0052', 'John Doe', 'Medan', '+62 81506206555'),
('C0053', 'Patricia Garcia', 'Bali', '+62 81516316378'),
('C0054', 'Karen Lee', 'Medan', '+62 81983333084'),
('C0055', 'Emma Harris', 'Medan', '+62 81760666654'),
('C0056', 'Daniel Miller', 'Bandung', '+62 81222563469'),
('C0057', 'Jane Smith', 'Medan', '+62 81812926244'),
('C0058', 'Chris Anderson', 'Bandung', '+62 81699498011'),
('C0059', 'Chris Anderson', 'Bandung', '+62 81982134553'),
('C0060', 'Robert Martin', 'Medan', '+62 81238608162'),
('C0061', 'Sarah Taylor', 'Medan', '+62 81870290341'),
('C0062', 'Chris Anderson', 'Medan', '+62 81781469645'),
('C0063', 'Nancy Rodriguez', 'Jakarta', '+62 81133521310'),
('C0064', 'Robert Martin', 'Bandung', '+62 81276810631'),
('C0065', 'Linda Thomas', 'Bandung', '+62 81539206466'),
('C0066', 'Sophia Wilson', 'Bali', '+62 81812438865'),
('C0067', 'Matthew Clark', 'Surabaya', '+62 81695360171'),
('C0068', 'Daniel Miller', 'Bandung', '+62 81835072304'),
('C0069', 'Sarah Taylor', 'Medan', '+62 81409189104'),
('C0070', 'Kevin Lewis', 'Surabaya', '+62 81344855121'),
('C0071', 'Sarah Taylor', 'Jakarta', '+62 81636820639'),
('C0072', 'Chris Anderson', 'Medan', '+62 81744762819'),
('C0073', 'Sarah Taylor', 'Medan', '+62 81328308944'),
('C0074', 'Michael Brown', 'Jakarta', '+62 81574678348'),
('C0075', 'Patricia Garcia', 'Jakarta', '+62 81209720935'),
('C0076', 'Matthew Clark', 'Bandung', '+62 81201539343'),
('C0077', 'Kevin Lewis', 'Jakarta', '+62 81853969275'),
('C0078', 'Daniel Miller', 'Jakarta', '+62 81600205603'),
('C0079', 'Michael Brown', 'Jakarta', '+62 81892357754'),
('C0080', 'Kevin Lewis', 'Surabaya', '+62 81188649947'),
('C0081', 'Jessica Williams', 'Surabaya', '+62 81273937420'),
('C0082', 'Matthew Clark', 'Bali', '+62 81184082127'),
('C0083', 'Nancy Rodriguez', 'Surabaya', '+62 81568567767'),
('C0084', 'Albert Johnson', 'Surabaya', '+62 81471467024'),
('C0085', 'James White', 'Bandung', '+62 81631938592'),
('C0086', 'Albert Johnson', 'Surabaya', '+62 81118761869'),
('C0087', 'Patricia Garcia', 'Surabaya', '+62 81334081517'),
('C0088', 'Linda Thomas', 'Medan', '+62 81970967816'),
('C0089', 'Karen Lee', 'Medan', '+62 81242592827'),
('C0090', 'Jane Smith', 'Jakarta', '+62 81350835702'),
('C0091', 'David Moore', 'Bandung', '+62 81516882383'),
('C0092', 'Karen Lee', 'Bali', '+62 81475299453'),
('C0093', 'Linda Thomas', 'Bali', '+62 81576365515'),
('C0094', 'Michael Brown', 'Bandung', '+62 81961086197'),
('C0095', 'Albert Johnson', 'Jakarta', '+62 81806634306'),
('C0096', 'James White', 'Bali', '+62 81698962206'),
('C0097', 'Sophia Wilson', 'Medan', '+62 81822669244'),
('C0098', 'Emma Harris', 'Surabaya', '+62 81323541108'),
('C0099', 'Chris Anderson', 'Medan', '+62 81891049622'),
('C0100', 'Nancy Rodriguez', 'Jakarta', '+62 81485386395');

-- --------------------------------------------------------

--
-- Table structure for table `dealers _table`
--

CREATE TABLE `dealers _table` (
  `DealerID` tinytext DEFAULT NULL,
  `DealerName` tinytext DEFAULT NULL,
  `City` tinytext DEFAULT NULL,
  `Country` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dealers _table`
--

INSERT INTO `dealers _table` (`DealerID`, `DealerName`, `City`, `Country`) VALUES
('D001', 'Jakarta Auto Center', 'Jakarta', 'Indonesia'),
('D002', 'Surabaya Motor Hub', 'Surabaya', 'Indonesia'),
('D003', 'Bali Motor Point', 'Bali', 'Indonesia'),
('D004', 'Bandung Auto World', 'Bandung', 'Indonesia'),
('D005', 'Medan Vehicle Spot', 'Medan', 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `manufacture_table`
--

CREATE TABLE `manufacture_table` (
  `ManufacturerName` tinytext DEFAULT NULL,
  `Country` tinytext DEFAULT NULL,
  `Founded` double DEFAULT NULL,
  `CEO` tinytext DEFAULT NULL,
  `ManufacturerID` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manufacture_table`
--

INSERT INTO `manufacture_table` (`ManufacturerName`, `Country`, `Founded`, `CEO`, `ManufacturerID`) VALUES
('PT. Auto Maju', 'Indonesia', 2010, 'Rizka Putri Arisanti', 'M001');

-- --------------------------------------------------------

--
-- Table structure for table `pendapatan_dimension`
--

CREATE TABLE `pendapatan_dimension` (
  `ModelID` varchar(63) DEFAULT NULL,
  `total_pembelian` double DEFAULT NULL,
  `ModelID_1` varchar(63) DEFAULT NULL,
  `ManufacturerID` varchar(63) DEFAULT NULL,
  `ModelName` varchar(63) DEFAULT NULL,
  `Category` varchar(63) DEFAULT NULL,
  `LaunchYear` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `ManufacturerName` varchar(63) DEFAULT NULL,
  `Country` varchar(63) DEFAULT NULL,
  `SK_Cars` int(11) DEFAULT NULL,
  `Stock` double DEFAULT NULL,
  `Pendapatan` double DEFAULT NULL,
  `SK_Pendapatan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendapatan_dimension`
--

INSERT INTO `pendapatan_dimension` (`ModelID`, `total_pembelian`, `ModelID_1`, `ManufacturerID`, `ModelName`, `Category`, `LaunchYear`, `price`, `ManufacturerName`, `Country`, `SK_Cars`, `Stock`, `Pendapatan`, `SK_Pendapatan`) VALUES
('MDL001', 14, 'MDL001', 'M001', 'Roadster', 'Sedan', 2004, 300000000, 'PT. Auto Maju', 'Indonesia', 1, 100, 4200000000, 1),
('MDL002', 19, 'MDL002', 'M001', 'Speedster', 'SUV', 2001, 500000000, 'PT. Auto Maju', 'Indonesia', 2, 100, 9500000000, 2),
('MDL003', 27, 'MDL003', 'M001', 'EcoDrive', 'Hatchback', 2002, 230000000, 'PT. Auto Maju', 'Indonesia', 3, 100, 6210000000, 3),
('MDL004', 19, 'MDL004', 'M001', 'LuxuryLine', 'Sedan', 2015, 800000000, 'PT. Auto Maju', 'Indonesia', 4, 100, 15200000000, 4),
('MDL005', 29, 'MDL005', 'M001', 'SportX', 'Sport', 2001, 600000000, 'PT. Auto Maju', 'Indonesia', 5, 100, 17400000000, 5),
('MDL006', 26, 'MDL006', 'M001', 'FamilyPlus', 'SUV', 2018, 350000000, 'PT. Auto Maju', 'Indonesia', 6, 100, 9100000000, 6),
('MDL007', 30, 'MDL007', 'M001', 'HybridOne', 'Hybrid', 2004, 400000000, 'PT. Auto Maju', 'Indonesia', 7, 100, 12000000000, 7),
('MDL008', 38, 'MDL008', 'M001', 'ElectricFly', 'Electric', 2010, 450000000, 'PT. Auto Maju', 'Indonesia', 8, 100, 17100000000, 8),
('MDL009', 31, 'MDL009', 'M001', 'UrbanMove', 'Hatchback', 2012, 180000000, 'PT. Auto Maju', 'Indonesia', 9, 100, 5580000000, 9),
('MDL010', 19, 'MDL010', 'M001', 'Xplorer', 'Off-Road', 2002, 660000000, 'PT. Auto Maju', 'Indonesia', 10, 100, 12540000000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pt_auto_maju_fact_table`
--

CREATE TABLE `pt_auto_maju_fact_table` (
  `SaleID` varchar(63) DEFAULT NULL,
  `DealerID` varchar(63) DEFAULT NULL,
  `CustomerID` varchar(63) DEFAULT NULL,
  `ModelID` varchar(63) DEFAULT NULL,
  `SaleDate` datetime DEFAULT NULL,
  `Quantity` double DEFAULT NULL,
  `SK_Cars` int(11) DEFAULT NULL,
  `SK_Customers` int(11) DEFAULT NULL,
  `SK_Pendapatan` int(11) DEFAULT NULL,
  `total_pembelian` double DEFAULT NULL,
  `Pendapatan` double DEFAULT NULL,
  `SK_Remaining_Units` int(11) DEFAULT NULL,
  `Stock` double DEFAULT NULL,
  `Remaining_units` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pt_auto_maju_fact_table`
--

INSERT INTO `pt_auto_maju_fact_table` (`SaleID`, `DealerID`, `CustomerID`, `ModelID`, `SaleDate`, `Quantity`, `SK_Cars`, `SK_Customers`, `SK_Pendapatan`, `total_pembelian`, `Pendapatan`, `SK_Remaining_Units`, `Stock`, `Remaining_units`) VALUES
('S00001', 'D001', 'C0001', 'MDL003', '2023-07-06 19:39:39', 3, 3, 1, 3, 27, 6210000000, 3, 100, 73),
('S00002', 'D001', 'C0002', 'MDL007', '2023-04-01 17:30:34', 4, 7, 2, 7, 30, 12000000000, 7, 100, 70),
('S00003', 'D001', 'C0003', 'MDL007', '2022-11-22 05:20:01', 2, 7, 3, 7, 30, 12000000000, 7, 100, 70),
('S00004', 'D001', 'C0004', 'MDL001', '2020-08-02 00:58:29', 1, 1, 4, 1, 14, 4200000000, 1, 100, 86),
('S00005', 'D004', 'C0005', 'MDL009', '2020-05-06 08:00:03', 2, 9, 5, 9, 31, 5580000000, 9, 100, 69),
('S00006', 'D004', 'C0006', 'MDL010', '2020-10-07 03:35:20', 4, 10, 6, 10, 19, 12540000000, 10, 100, 81),
('S00007', 'D004', 'C0007', 'MDL005', '2021-10-06 07:26:36', 3, 5, 7, 5, 29, 17400000000, 5, 100, 71),
('S00008', 'D004', 'C0008', 'MDL004', '2022-09-18 01:52:11', 1, 4, 8, 4, 19, 15200000000, 4, 100, 81),
('S00009', 'D001', 'C0009', 'MDL001', '2021-08-27 04:55:13', 1, 1, 9, 1, 14, 4200000000, 1, 100, 86),
('S00010', 'D002', 'C0010', 'MDL005', '2023-02-07 22:11:40', 4, 5, 10, 5, 29, 17400000000, 5, 100, 71),
('S00011', 'D003', 'C0011', 'MDL004', '2020-03-18 05:13:01', 2, 4, 11, 4, 19, 15200000000, 4, 100, 81),
('S00012', 'D005', 'C0012', 'MDL004', '2022-04-13 08:52:55', 2, 4, 12, 4, 19, 15200000000, 4, 100, 81),
('S00013', 'D002', 'C0013', 'MDL005', '2023-09-21 08:11:09', 3, 5, 13, 5, 29, 17400000000, 5, 100, 71),
('S00014', 'D001', 'C0014', 'MDL002', '2021-09-21 14:03:32', 1, 2, 14, 2, 19, 9500000000, 2, 100, 81),
('S00015', 'D001', 'C0015', 'MDL001', '2020-11-20 13:50:10', 2, 1, 15, 1, 14, 4200000000, 1, 100, 86),
('S00016', 'D003', 'C0016', 'MDL007', '2020-11-20 22:32:18', 4, 7, 16, 7, 30, 12000000000, 7, 100, 70),
('S00017', 'D004', 'C0017', 'MDL007', '2022-10-08 08:58:12', 4, 7, 17, 7, 30, 12000000000, 7, 100, 70),
('S00018', 'D002', 'C0018', 'MDL003', '2022-09-16 14:40:39', 3, 3, 18, 3, 27, 6210000000, 3, 100, 73),
('S00019', 'D004', 'C0019', 'MDL004', '2023-12-09 08:55:40', 2, 4, 19, 4, 19, 15200000000, 4, 100, 81),
('S00020', 'D001', 'C0020', 'MDL008', '2022-10-06 03:31:52', 2, 8, 20, 8, 38, 17100000000, 8, 100, 62),
('S00021', 'D005', 'C0021', 'MDL006', '2021-12-27 01:17:42', 1, 6, 21, 6, 26, 9100000000, 6, 100, 74),
('S00022', 'D001', 'C0022', 'MDL006', '2021-03-01 02:18:11', 4, 6, 22, 6, 26, 9100000000, 6, 100, 74),
('S00023', 'D001', 'C0023', 'MDL002', '2020-08-04 02:18:54', 4, 2, 23, 2, 19, 9500000000, 2, 100, 81),
('S00024', 'D001', 'C0024', 'MDL006', '2020-09-28 01:32:40', 1, 6, 24, 6, 26, 9100000000, 6, 100, 74),
('S00025', 'D001', 'C0025', 'MDL006', '2023-01-04 06:45:17', 4, 6, 25, 6, 26, 9100000000, 6, 100, 74),
('S00026', 'D004', 'C0026', 'MDL003', '2023-12-01 15:42:08', 1, 3, 26, 3, 27, 6210000000, 3, 100, 73),
('S00027', 'D003', 'C0027', 'MDL002', '2020-04-09 15:18:48', 2, 2, 27, 2, 19, 9500000000, 2, 100, 81),
('S00028', 'D003', 'C0028', 'MDL008', '2020-07-03 15:22:59', 4, 8, 28, 8, 38, 17100000000, 8, 100, 62),
('S00029', 'D003', 'C0029', 'MDL007', '2021-11-17 13:54:31', 4, 7, 29, 7, 30, 12000000000, 7, 100, 70),
('S00030', 'D002', 'C0030', 'MDL006', '2022-12-24 04:53:38', 1, 6, 30, 6, 26, 9100000000, 6, 100, 74),
('S00031', 'D001', 'C0031', 'MDL003', '2023-10-11 08:53:48', 2, 3, 31, 3, 27, 6210000000, 3, 100, 73),
('S00032', 'D001', 'C0032', 'MDL005', '2021-07-20 11:01:49', 1, 5, 32, 5, 29, 17400000000, 5, 100, 71),
('S00033', 'D004', 'C0033', 'MDL006', '2023-05-04 13:04:24', 2, 6, 33, 6, 26, 9100000000, 6, 100, 74),
('S00034', 'D005', 'C0034', 'MDL010', '2022-04-16 08:40:14', 1, 10, 34, 10, 19, 12540000000, 10, 100, 81),
('S00035', 'D001', 'C0035', 'MDL009', '2021-01-20 06:49:27', 4, 9, 35, 9, 31, 5580000000, 9, 100, 69),
('S00036', 'D001', 'C0036', 'MDL006', '2023-06-20 03:32:48', 1, 6, 36, 6, 26, 9100000000, 6, 100, 74),
('S00037', 'D001', 'C0037', 'MDL004', '2021-06-19 03:56:18', 2, 4, 37, 4, 19, 15200000000, 4, 100, 81),
('S00038', 'D005', 'C0038', 'MDL004', '2020-09-19 10:58:56', 2, 4, 38, 4, 19, 15200000000, 4, 100, 81),
('S00039', 'D003', 'C0039', 'MDL005', '2021-04-09 17:56:29', 1, 5, 39, 5, 29, 17400000000, 5, 100, 71),
('S00040', 'D003', 'C0040', 'MDL003', '2022-06-11 23:26:10', 4, 3, 40, 3, 27, 6210000000, 3, 100, 73),
('S00041', 'D001', 'C0041', 'MDL009', '2023-06-29 00:06:46', 4, 9, 41, 9, 31, 5580000000, 9, 100, 69),
('S00042', 'D001', 'C0042', 'MDL007', '2023-09-12 20:36:57', 3, 7, 42, 7, 30, 12000000000, 7, 100, 70),
('S00043', 'D001', 'C0043', 'MDL007', '2023-12-16 10:39:33', 4, 7, 43, 7, 30, 12000000000, 7, 100, 70),
('S00044', 'D002', 'C0044', 'MDL008', '2023-01-10 14:17:59', 4, 8, 44, 8, 38, 17100000000, 8, 100, 62),
('S00045', 'D001', 'C0045', 'MDL009', '2022-03-12 21:01:05', 4, 9, 45, 9, 31, 5580000000, 9, 100, 69),
('S00046', 'D003', 'C0046', 'MDL008', '2022-04-23 17:09:02', 1, 8, 46, 8, 38, 17100000000, 8, 100, 62),
('S00047', 'D005', 'C0047', 'MDL008', '2022-05-13 06:10:18', 1, 8, 47, 8, 38, 17100000000, 8, 100, 62),
('S00048', 'D002', 'C0048', 'MDL007', '2023-08-16 14:51:13', 1, 7, 48, 7, 30, 12000000000, 7, 100, 70),
('S00049', 'D005', 'C0049', 'MDL009', '2023-06-18 04:10:35', 2, 9, 49, 9, 31, 5580000000, 9, 100, 69),
('S00050', 'D003', 'C0050', 'MDL008', '2021-06-13 07:10:10', 1, 8, 50, 8, 38, 17100000000, 8, 100, 62),
('S00051', 'D004', 'C0051', 'MDL002', '2022-07-17 21:00:43', 2, 2, 51, 2, 19, 9500000000, 2, 100, 81),
('S00052', 'D001', 'C0052', 'MDL009', '2023-12-14 05:56:19', 4, 9, 52, 9, 31, 5580000000, 9, 100, 69),
('S00053', 'D003', 'C0053', 'MDL005', '2021-11-27 02:52:10', 3, 5, 53, 5, 29, 17400000000, 5, 100, 71),
('S00054', 'D003', 'C0054', 'MDL008', '2023-11-05 03:05:27', 4, 8, 54, 8, 38, 17100000000, 8, 100, 62),
('S00055', 'D003', 'C0055', 'MDL008', '2022-12-29 17:40:17', 4, 8, 55, 8, 38, 17100000000, 8, 100, 62),
('S00056', 'D002', 'C0056', 'MDL005', '2021-01-10 20:44:41', 2, 5, 56, 5, 29, 17400000000, 5, 100, 71),
('S00057', 'D001', 'C0057', 'MDL004', '2020-12-19 22:01:46', 4, 4, 57, 4, 19, 15200000000, 4, 100, 81),
('S00058', 'D004', 'C0058', 'MDL003', '2023-12-18 06:59:23', 3, 3, 58, 3, 27, 6210000000, 3, 100, 73),
('S00059', 'D004', 'C0059', 'MDL008', '2020-01-02 17:05:32', 3, 8, 59, 8, 38, 17100000000, 8, 100, 62),
('S00060', 'D004', 'C0060', 'MDL001', '2021-05-16 02:14:12', 4, 1, 60, 1, 14, 4200000000, 1, 100, 86),
('S00061', 'D003', 'C0061', 'MDL005', '2023-08-01 15:49:56', 3, 5, 61, 5, 29, 17400000000, 5, 100, 71),
('S00062', 'D004', 'C0062', 'MDL006', '2022-12-13 18:00:00', 1, 6, 62, 6, 26, 9100000000, 6, 100, 74),
('S00063', 'D001', 'C0063', 'MDL010', '2022-09-18 20:01:58', 4, 10, 63, 10, 19, 12540000000, 10, 100, 81),
('S00064', 'D002', 'C0064', 'MDL004', '2021-10-29 16:25:55', 2, 4, 64, 4, 19, 15200000000, 4, 100, 81),
('S00065', 'D003', 'C0065', 'MDL008', '2021-02-24 16:32:40', 3, 8, 65, 8, 38, 17100000000, 8, 100, 62),
('S00066', 'D004', 'C0066', 'MDL010', '2022-01-11 01:10:42', 1, 10, 66, 10, 19, 12540000000, 10, 100, 81),
('S00067', 'D001', 'C0067', 'MDL005', '2022-01-27 21:02:08', 4, 5, 67, 5, 29, 17400000000, 5, 100, 71),
('S00068', 'D002', 'C0068', 'MDL002', '2023-12-10 03:12:37', 1, 2, 68, 2, 19, 9500000000, 2, 100, 81),
('S00069', 'D003', 'C0069', 'MDL002', '2022-06-21 07:46:01', 1, 2, 69, 2, 19, 9500000000, 2, 100, 81),
('S00070', 'D004', 'C0070', 'MDL005', '2020-10-27 23:52:09', 3, 5, 70, 5, 29, 17400000000, 5, 100, 71),
('S00071', 'D003', 'C0071', 'MDL004', '2021-11-14 00:44:04', 2, 4, 71, 4, 19, 15200000000, 4, 100, 81),
('S00072', 'D002', 'C0072', 'MDL010', '2021-06-23 16:32:00', 2, 10, 72, 10, 19, 12540000000, 10, 100, 81),
('S00073', 'D003', 'C0073', 'MDL007', '2021-04-21 21:51:00', 1, 7, 73, 7, 30, 12000000000, 7, 100, 70),
('S00074', 'D003', 'C0074', 'MDL006', '2023-01-31 14:06:50', 4, 6, 74, 6, 26, 9100000000, 6, 100, 74),
('S00075', 'D004', 'C0075', 'MDL005', '2022-10-26 12:45:43', 2, 5, 75, 5, 29, 17400000000, 5, 100, 71),
('S00076', 'D003', 'C0076', 'MDL008', '2020-03-18 17:49:31', 4, 8, 76, 8, 38, 17100000000, 8, 100, 62),
('S00077', 'D004', 'C0077', 'MDL009', '2022-10-11 02:23:43', 3, 9, 77, 9, 31, 5580000000, 9, 100, 69),
('S00078', 'D004', 'C0078', 'MDL003', '2022-06-03 15:13:54', 3, 3, 78, 3, 27, 6210000000, 3, 100, 73),
('S00079', 'D005', 'C0079', 'MDL010', '2023-04-13 10:57:10', 1, 10, 79, 10, 19, 12540000000, 10, 100, 81),
('S00080', 'D001', 'C0080', 'MDL008', '2020-10-01 13:56:07', 4, 8, 80, 8, 38, 17100000000, 8, 100, 62),
('S00081', 'D005', 'C0081', 'MDL008', '2020-06-05 01:37:27', 3, 8, 81, 8, 38, 17100000000, 8, 100, 62),
('S00082', 'D002', 'C0082', 'MDL010', '2021-08-27 22:31:48', 3, 10, 82, 10, 19, 12540000000, 10, 100, 81),
('S00083', 'D004', 'C0083', 'MDL009', '2021-07-18 17:42:42', 4, 9, 83, 9, 31, 5580000000, 9, 100, 69),
('S00084', 'D001', 'C0084', 'MDL002', '2021-07-23 10:31:15', 4, 2, 84, 2, 19, 9500000000, 2, 100, 81),
('S00085', 'D001', 'C0085', 'MDL006', '2021-11-14 06:58:44', 1, 6, 85, 6, 26, 9100000000, 6, 100, 74),
('S00086', 'D003', 'C0086', 'MDL010', '2021-12-23 05:48:55', 2, 10, 86, 10, 19, 12540000000, 10, 100, 81),
('S00087', 'D005', 'C0087', 'MDL007', '2023-03-31 06:01:53', 3, 7, 87, 7, 30, 12000000000, 7, 100, 70),
('S00088', 'D001', 'C0088', 'MDL001', '2023-05-06 15:31:42', 2, 1, 88, 1, 14, 4200000000, 1, 100, 86),
('S00089', 'D005', 'C0089', 'MDL003', '2020-10-23 04:32:58', 1, 3, 89, 3, 27, 6210000000, 3, 100, 73),
('S00090', 'D003', 'C0090', 'MDL003', '2022-01-14 01:04:49', 3, 3, 90, 3, 27, 6210000000, 3, 100, 73),
('S00091', 'D005', 'C0091', 'MDL006', '2021-12-07 17:49:39', 3, 6, 91, 6, 26, 9100000000, 6, 100, 74),
('S00092', 'D005', 'C0092', 'MDL001', '2023-03-16 07:56:56', 1, 1, 92, 1, 14, 4200000000, 1, 100, 86),
('S00093', 'D001', 'C0093', 'MDL009', '2023-01-01 07:52:15', 1, 9, 93, 9, 31, 5580000000, 9, 100, 69),
('S00094', 'D005', 'C0094', 'MDL003', '2021-05-17 20:48:31', 1, 3, 94, 3, 27, 6210000000, 3, 100, 73),
('S00095', 'D004', 'C0095', 'MDL002', '2022-05-02 03:15:46', 4, 2, 95, 2, 19, 9500000000, 2, 100, 81),
('S00096', 'D005', 'C0096', 'MDL003', '2022-11-21 11:45:10', 3, 3, 96, 3, 27, 6210000000, 3, 100, 73),
('S00097', 'D005', 'C0097', 'MDL001', '2021-06-24 06:53:58', 3, 1, 97, 1, 14, 4200000000, 1, 100, 86),
('S00098', 'D005', 'C0098', 'MDL009', '2020-09-26 01:36:57', 3, 9, 98, 9, 31, 5580000000, 9, 100, 69),
('S00099', 'D003', 'C0099', 'MDL010', '2022-03-31 19:46:11', 1, 10, 99, 10, 19, 12540000000, 10, 100, 81),
('S00100', 'D005', 'C0100', 'MDL006', '2022-02-15 08:32:38', 3, 6, 100, 6, 26, 9100000000, 6, 100, 74);

-- --------------------------------------------------------

--
-- Table structure for table `remaining_units_dimension`
--

CREATE TABLE `remaining_units_dimension` (
  `ModelID` varchar(63) DEFAULT NULL,
  `total_pembelian` double DEFAULT NULL,
  `ModelID_1` varchar(63) DEFAULT NULL,
  `ManufacturerID` varchar(63) DEFAULT NULL,
  `ModelName` varchar(63) DEFAULT NULL,
  `Category` varchar(63) DEFAULT NULL,
  `LaunchYear` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `ManufacturerName` varchar(63) DEFAULT NULL,
  `Country` varchar(63) DEFAULT NULL,
  `SK_Cars` int(11) DEFAULT NULL,
  `Stock` double DEFAULT NULL,
  `Pendapatan` double DEFAULT NULL,
  `SK_Pendapatan` int(11) DEFAULT NULL,
  `Remaining_units` double DEFAULT NULL,
  `SK_Remaining_Units` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `remaining_units_dimension`
--

INSERT INTO `remaining_units_dimension` (`ModelID`, `total_pembelian`, `ModelID_1`, `ManufacturerID`, `ModelName`, `Category`, `LaunchYear`, `price`, `ManufacturerName`, `Country`, `SK_Cars`, `Stock`, `Pendapatan`, `SK_Pendapatan`, `Remaining_units`, `SK_Remaining_Units`) VALUES
('MDL001', 14, 'MDL001', 'M001', 'Roadster', 'Sedan', 2004, 300000000, 'PT. Auto Maju', 'Indonesia', 1, 100, 4200000000, 1, 86, 1),
('MDL002', 19, 'MDL002', 'M001', 'Speedster', 'SUV', 2001, 500000000, 'PT. Auto Maju', 'Indonesia', 2, 100, 9500000000, 2, 81, 2),
('MDL003', 27, 'MDL003', 'M001', 'EcoDrive', 'Hatchback', 2002, 230000000, 'PT. Auto Maju', 'Indonesia', 3, 100, 6210000000, 3, 73, 3),
('MDL004', 19, 'MDL004', 'M001', 'LuxuryLine', 'Sedan', 2015, 800000000, 'PT. Auto Maju', 'Indonesia', 4, 100, 15200000000, 4, 81, 4),
('MDL005', 29, 'MDL005', 'M001', 'SportX', 'Sport', 2001, 600000000, 'PT. Auto Maju', 'Indonesia', 5, 100, 17400000000, 5, 71, 5),
('MDL006', 26, 'MDL006', 'M001', 'FamilyPlus', 'SUV', 2018, 350000000, 'PT. Auto Maju', 'Indonesia', 6, 100, 9100000000, 6, 74, 6),
('MDL007', 30, 'MDL007', 'M001', 'HybridOne', 'Hybrid', 2004, 400000000, 'PT. Auto Maju', 'Indonesia', 7, 100, 12000000000, 7, 70, 7),
('MDL008', 38, 'MDL008', 'M001', 'ElectricFly', 'Electric', 2010, 450000000, 'PT. Auto Maju', 'Indonesia', 8, 100, 17100000000, 8, 62, 8),
('MDL009', 31, 'MDL009', 'M001', 'UrbanMove', 'Hatchback', 2012, 180000000, 'PT. Auto Maju', 'Indonesia', 9, 100, 5580000000, 9, 69, 9),
('MDL010', 19, 'MDL010', 'M001', 'Xplorer', 'Off-Road', 2002, 660000000, 'PT. Auto Maju', 'Indonesia', 10, 100, 12540000000, 10, 81, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sales _table`
--

CREATE TABLE `sales _table` (
  `SaleID` tinytext DEFAULT NULL,
  `DealerID` tinytext DEFAULT NULL,
  `CustomerID` tinytext DEFAULT NULL,
  `ModelID` tinytext DEFAULT NULL,
  `SaleDate` datetime DEFAULT NULL,
  `Quantity` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales _table`
--

INSERT INTO `sales _table` (`SaleID`, `DealerID`, `CustomerID`, `ModelID`, `SaleDate`, `Quantity`) VALUES
('S00001', 'D001', 'C0001', 'MDL003', '2023-07-06 19:39:39', 3),
('S00002', 'D001', 'C0002', 'MDL007', '2023-04-01 17:30:34', 4),
('S00003', 'D001', 'C0003', 'MDL007', '2022-11-22 05:20:01', 2),
('S00004', 'D001', 'C0004', 'MDL001', '2020-08-02 00:58:29', 1),
('S00005', 'D004', 'C0005', 'MDL009', '2020-05-06 08:00:03', 2),
('S00006', 'D004', 'C0006', 'MDL010', '2020-10-07 03:35:20', 4),
('S00007', 'D004', 'C0007', 'MDL005', '2021-10-06 07:26:36', 3),
('S00008', 'D004', 'C0008', 'MDL004', '2022-09-18 01:52:11', 1),
('S00009', 'D001', 'C0009', 'MDL001', '2021-08-27 04:55:13', 1),
('S00010', 'D002', 'C0010', 'MDL005', '2023-02-07 22:11:40', 4),
('S00011', 'D003', 'C0011', 'MDL004', '2020-03-18 05:13:01', 2),
('S00012', 'D005', 'C0012', 'MDL004', '2022-04-13 08:52:55', 2),
('S00013', 'D002', 'C0013', 'MDL005', '2023-09-21 08:11:09', 3),
('S00014', 'D001', 'C0014', 'MDL002', '2021-09-21 14:03:32', 1),
('S00015', 'D001', 'C0015', 'MDL001', '2020-11-20 13:50:10', 2),
('S00016', 'D003', 'C0016', 'MDL007', '2020-11-20 22:32:18', 4),
('S00017', 'D004', 'C0017', 'MDL007', '2022-10-08 08:58:12', 4),
('S00018', 'D002', 'C0018', 'MDL003', '2022-09-16 14:40:39', 3),
('S00019', 'D004', 'C0019', 'MDL004', '2023-12-09 08:55:40', 2),
('S00020', 'D001', 'C0020', 'MDL008', '2022-10-06 03:31:52', 2),
('S00021', 'D005', 'C0021', 'MDL006', '2021-12-27 01:17:42', 1),
('S00022', 'D001', 'C0022', 'MDL006', '2021-03-01 02:18:11', 4),
('S00023', 'D001', 'C0023', 'MDL002', '2020-08-04 02:18:54', 4),
('S00024', 'D001', 'C0024', 'MDL006', '2020-09-28 01:32:40', 1),
('S00025', 'D001', 'C0025', 'MDL006', '2023-01-04 06:45:17', 4),
('S00026', 'D004', 'C0026', 'MDL003', '2023-12-01 15:42:08', 1),
('S00027', 'D003', 'C0027', 'MDL002', '2020-04-09 15:18:48', 2),
('S00028', 'D003', 'C0028', 'MDL008', '2020-07-03 15:22:59', 4),
('S00029', 'D003', 'C0029', 'MDL007', '2021-11-17 13:54:31', 4),
('S00030', 'D002', 'C0030', 'MDL006', '2022-12-24 04:53:38', 1),
('S00031', 'D001', 'C0031', 'MDL003', '2023-10-11 08:53:48', 2),
('S00032', 'D001', 'C0032', 'MDL005', '2021-07-20 11:01:49', 1),
('S00033', 'D004', 'C0033', 'MDL006', '2023-05-04 13:04:24', 2),
('S00034', 'D005', 'C0034', 'MDL010', '2022-04-16 08:40:14', 1),
('S00035', 'D001', 'C0035', 'MDL009', '2021-01-20 06:49:27', 4),
('S00036', 'D001', 'C0036', 'MDL006', '2023-06-20 03:32:48', 1),
('S00037', 'D001', 'C0037', 'MDL004', '2021-06-19 03:56:18', 2),
('S00038', 'D005', 'C0038', 'MDL004', '2020-09-19 10:58:56', 2),
('S00039', 'D003', 'C0039', 'MDL005', '2021-04-09 17:56:29', 1),
('S00040', 'D003', 'C0040', 'MDL003', '2022-06-11 23:26:10', 4),
('S00041', 'D001', 'C0041', 'MDL009', '2023-06-29 00:06:46', 4),
('S00042', 'D001', 'C0042', 'MDL007', '2023-09-12 20:36:57', 3),
('S00043', 'D001', 'C0043', 'MDL007', '2023-12-16 10:39:33', 4),
('S00044', 'D002', 'C0044', 'MDL008', '2023-01-10 14:17:59', 4),
('S00045', 'D001', 'C0045', 'MDL009', '2022-03-12 21:01:05', 4),
('S00046', 'D003', 'C0046', 'MDL008', '2022-04-23 17:09:02', 1),
('S00047', 'D005', 'C0047', 'MDL008', '2022-05-13 06:10:18', 1),
('S00048', 'D002', 'C0048', 'MDL007', '2023-08-16 14:51:13', 1),
('S00049', 'D005', 'C0049', 'MDL009', '2023-06-18 04:10:35', 2),
('S00050', 'D003', 'C0050', 'MDL008', '2021-06-13 07:10:10', 1),
('S00051', 'D004', 'C0051', 'MDL002', '2022-07-17 21:00:43', 2),
('S00052', 'D001', 'C0052', 'MDL009', '2023-12-14 05:56:19', 4),
('S00053', 'D003', 'C0053', 'MDL005', '2021-11-27 02:52:10', 3),
('S00054', 'D003', 'C0054', 'MDL008', '2023-11-05 03:05:27', 4),
('S00055', 'D003', 'C0055', 'MDL008', '2022-12-29 17:40:17', 4),
('S00056', 'D002', 'C0056', 'MDL005', '2021-01-10 20:44:41', 2),
('S00057', 'D001', 'C0057', 'MDL004', '2020-12-19 22:01:46', 4),
('S00058', 'D004', 'C0058', 'MDL003', '2023-12-18 06:59:23', 3),
('S00059', 'D004', 'C0059', 'MDL008', '2020-01-02 17:05:32', 3),
('S00060', 'D004', 'C0060', 'MDL001', '2021-05-16 02:14:12', 4),
('S00061', 'D003', 'C0061', 'MDL005', '2023-08-01 15:49:56', 3),
('S00062', 'D004', 'C0062', 'MDL006', '2022-12-13 18:00:00', 1),
('S00063', 'D001', 'C0063', 'MDL010', '2022-09-18 20:01:58', 4),
('S00064', 'D002', 'C0064', 'MDL004', '2021-10-29 16:25:55', 2),
('S00065', 'D003', 'C0065', 'MDL008', '2021-02-24 16:32:40', 3),
('S00066', 'D004', 'C0066', 'MDL010', '2022-01-11 01:10:42', 1),
('S00067', 'D001', 'C0067', 'MDL005', '2022-01-27 21:02:08', 4),
('S00068', 'D002', 'C0068', 'MDL002', '2023-12-10 03:12:37', 1),
('S00069', 'D003', 'C0069', 'MDL002', '2022-06-21 07:46:01', 1),
('S00070', 'D004', 'C0070', 'MDL005', '2020-10-27 23:52:09', 3),
('S00071', 'D003', 'C0071', 'MDL004', '2021-11-14 00:44:04', 2),
('S00072', 'D002', 'C0072', 'MDL010', '2021-06-23 16:32:00', 2),
('S00073', 'D003', 'C0073', 'MDL007', '2021-04-21 21:51:00', 1),
('S00074', 'D003', 'C0074', 'MDL006', '2023-01-31 14:06:50', 4),
('S00075', 'D004', 'C0075', 'MDL005', '2022-10-26 12:45:43', 2),
('S00076', 'D003', 'C0076', 'MDL008', '2020-03-18 17:49:31', 4),
('S00077', 'D004', 'C0077', 'MDL009', '2022-10-11 02:23:43', 3),
('S00078', 'D004', 'C0078', 'MDL003', '2022-06-03 15:13:54', 3),
('S00079', 'D005', 'C0079', 'MDL010', '2023-04-13 10:57:10', 1),
('S00080', 'D001', 'C0080', 'MDL008', '2020-10-01 13:56:07', 4),
('S00081', 'D005', 'C0081', 'MDL008', '2020-06-05 01:37:27', 3),
('S00082', 'D002', 'C0082', 'MDL010', '2021-08-27 22:31:48', 3),
('S00083', 'D004', 'C0083', 'MDL009', '2021-07-18 17:42:42', 4),
('S00084', 'D001', 'C0084', 'MDL002', '2021-07-23 10:31:15', 4),
('S00085', 'D001', 'C0085', 'MDL006', '2021-11-14 06:58:44', 1),
('S00086', 'D003', 'C0086', 'MDL010', '2021-12-23 05:48:55', 2),
('S00087', 'D005', 'C0087', 'MDL007', '2023-03-31 06:01:53', 3),
('S00088', 'D001', 'C0088', 'MDL001', '2023-05-06 15:31:42', 2),
('S00089', 'D005', 'C0089', 'MDL003', '2020-10-23 04:32:58', 1),
('S00090', 'D003', 'C0090', 'MDL003', '2022-01-14 01:04:49', 3),
('S00091', 'D005', 'C0091', 'MDL006', '2021-12-07 17:49:39', 3),
('S00092', 'D005', 'C0092', 'MDL001', '2023-03-16 07:56:56', 1),
('S00093', 'D001', 'C0093', 'MDL009', '2023-01-01 07:52:15', 1),
('S00094', 'D005', 'C0094', 'MDL003', '2021-05-17 20:48:31', 1),
('S00095', 'D004', 'C0095', 'MDL002', '2022-05-02 03:15:46', 4),
('S00096', 'D005', 'C0096', 'MDL003', '2022-11-21 11:45:10', 3),
('S00097', 'D005', 'C0097', 'MDL001', '2021-06-24 06:53:58', 3),
('S00098', 'D005', 'C0098', 'MDL009', '2020-09-26 01:36:57', 3),
('S00099', 'D003', 'C0099', 'MDL010', '2022-03-31 19:46:11', 1),
('S00100', 'D005', 'C0100', 'MDL006', '2022-02-15 08:32:38', 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
