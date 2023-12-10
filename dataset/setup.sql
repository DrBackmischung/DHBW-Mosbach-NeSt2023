-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2023 at 11:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nest2023`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_coach`
--

CREATE TABLE `table_coach` (
  `coachID` int(11) NOT NULL,
  `personalID` int(11) NOT NULL,
  `start_date` date DEFAULT NULL,
  `cost_per_hour` float DEFAULT NULL,
  `company` char(50) DEFAULT NULL,
  `title` char(50) DEFAULT NULL,
  `qualifications` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_coach`
--

INSERT INTO `table_coach` (`coachID`, `personalID`, `start_date`, `cost_per_hour`, `company`, `title`, `qualifications`) VALUES
(812, 34, '2023-09-01', 17, 'SAP SE', 'Software Developer', 'ABAP, SQL, Databases, Java, Webdevelopment'),
(815, 17, '2020-01-01', 15, 'MadeUpCompany GmbH', 'IT-Kaufmann', 'Office, Databases, Network technology'),
(821, 6, '2005-09-15', 13, 'Software Inc.', 'Meister', 'ABAP, SQL, Assembler, IT-Security'),
(833, 26, '2003-08-01', 14, 'Retired', 'Mathematiker', 'JavaScript, TypeScript'),
(834, 2, '2001-01-01', 15, 'Water GmbH', 'Industriekaufmann', 'React');

-- --------------------------------------------------------

--
-- Table structure for table `table_course`
--

CREATE TABLE `table_course` (
  `courseID` char(10) NOT NULL,
  `name` char(50) NOT NULL,
  `topicID` int(11) NOT NULL,
  `actual_duration` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `certificate` char(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `tax` char(1) DEFAULT NULL,
  `coachID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_course`
--

INSERT INTO `table_course` (`courseID`, `name`, `topicID`, `actual_duration`, `start_date`, `end_date`, `certificate`, `price`, `tax`, `coachID`) VALUES
('HE10', 'Heidelberg10-ABAP', 1, 20, '2023-10-10', '2023-11-27', 'eigen', 280, 'J', 812),
('CE20', 'Celle20-Java', 5, 40, '2023-10-10', '2023-11-27', 'eigen', 280, 'J', 834),
('CE23', 'Celle23-Java', 5, 36, '2023-11-10', '2023-11-20', 'eigen', 350, 'N', 812),
('CE24', 'Celle24-ABAP', 4, 40, '2023-12-01', '2023-12-10', 'eigen', 400, 'N', 812),
('H89', 'Hannover89-React', 9, 32, '2024-07-09', '2024-07-13', 'eigen', 350, 'N', 812),
('H90', 'Hannover90-JS', 7, 18, '2024-07-16', '2024-07-18', 'kein', 120, 'J', 834),
('H91', 'Hannover91-TS', 8, 18, '2024-07-23', '2024-07-25', 'kein', 120, 'J', 834);

-- --------------------------------------------------------

--
-- Table structure for table `table_visits`
--

CREATE TABLE `table_visits` (
  `visitID` int(11) NOT NULL,
  `topicID` int(11) NOT NULL,
  `courseID` char(10) NOT NULL,
  `missed_days` tinyint(4) DEFAULT 0,
  `certificate` char(1) DEFAULT 'N',
  `self_payer` char(1) DEFAULT 'J',
  `payment_method` enum('Card','Cash','PayPal') NOT NULL DEFAULT 'Cash',
  `discount` float DEFAULT 0,
  `payed` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_visits`
--

INSERT INTO `table_visits` (`visitID`, `topicID`, `courseID`, `missed_days`, `certificate`, `self_payer`, `payment_method`, `discount`, `payed`) VALUES
(310, 25, 'HE10', 0, 'J', 'J', 'PayPal', 20, 260),
(312, 2, 'CE24', 0, 'N', 'N', 'Card', 100, 250),
(314, 4, 'HE10', 0, 'J', 'N', 'Card', 0, 280),
(315, 5, 'HE10', 0, 'J', 'N', 'Card', 0, 280),
(354, 34, 'H90', 1, 'N', 'J', 'PayPal', 20, 80),
(361, 9, 'H90', 0, 'N', 'N', 'Card', 0, 120),
(412, 4, 'CE23', 2, 'N', 'N', 'Card', 0, 350),
(413, 5, 'CE23', 0, 'N', 'J', 'PayPal', 100, 50),
(415, 15, 'CE23', 5, 'N', 'J', 'Cash', 100, 250),
(416, 10, 'CE23', 0, 'N', 'N', 'Card', 0, 350),
(418, 31, 'CE23', 1, 'N', 'N', 'Card', 0, 350),
(419, 32, 'CE23', 0, 'N', 'J', 'PayPal', 50, 300),
(420, 24, 'CE23', 2, 'N', 'J', 'Cash', 0, 350),
(421, 37, 'CE23', 8, 'N', 'J', 'PayPal', 150, 50),
(423, 10, 'CE24', 0, 'N', 'J', 'Cash', 100, 0),
(432, 15, 'CE24', 0, 'N', 'J', 'Cash', 100, 0),
(438, 11, 'CE24', 0, 'N', 'N', 'Card', 0, 350),
(442, 23, 'CE24', 0, 'N', 'J', 'PayPal', 50, 300);

-- --------------------------------------------------------

--
-- Table structure for table `table_topics`
--

CREATE TABLE `table_topics` (
  `topicID` int(11) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `demo` char(5) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `requirement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_topics`
--

INSERT INTO `table_topics` (`topicID`, `topic`, `description`, `demo`, `duration`, `requirement`) VALUES
(1, 'ABAP I', 'Intro to ABAP. Variables, Loops and Conditions.', '', 20, NULL),
(2, 'ABAP II', 'ABAP Objects. Object orientation using ABAP Classes and Interfaces.', '', 20, 1),
(3, 'ABAP III', 'ABAP SQL. Database functionality and SQL features in ABAP.', '', 20, 2),
(4, 'ABAP IV', 'ABAP Cloud. Coding ABAP in cloud ERP systems', '', 20, 3),
(5, 'Java', 'Java development from variables to swing', '', 40, NULL),
(6, 'JavaScript I', 'JavaScript for HTML websites and introduction', '', 30, NULL),
(7, 'JavaScript II', 'JavaScript for backend development', '', 40, 6),
(8, 'TypeScript', 'How to use types in JavaScript', '', 15, 6),
(9, 'React', 'Using react to make websites pretty', '', 40, 7),
(10, 'PowerPoint', 'Powerpoint for beginners', '', 10, NULL),
(11, 'Excel', 'Using Excel in business context. Use Excel like a pro!', '', 40, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `table_person`
--

CREATE TABLE `table_person` (
  `personalID` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `zipcode` char(5) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT 'Celle',
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_person`
--

INSERT INTO `table_person` (`personalID`, `lastname`, `firstname`, `zipcode`, `street`, `city`, `birthday`) VALUES
(1, 'Weiss', 'Peter', '30529', 'Palmstraße 6', 'Hannover', '1996-11-07'),
(2, 'Bucz', 'Susanne', '30531', 'Heinestraße 23', 'Hannover', '1976-04-06'),
(4, 'Karmann', 'Thomas', '29227', 'Trift 28', 'Celle', '1954-08-04'),
(5, 'Klötzer', 'Juli', '29221', 'Bahnhofstraße 2', 'Celle', '2003-03-13'),
(6, 'Weiss', 'Karin', '69190', 'Dietmar-Hopp-Allee 16', 'Walldorf', '1962-10-05'),
(7, 'Weiss', 'Peter', '38134', 'Glanweg 4', 'Braunschweig', '1974-03-02'),
(8, 'Meier', 'Kathrin', '38154', 'Welfenallee 23', 'Braunschweig', '1981-05-03'),
(9, 'Schmidt', 'Karl', '30529', 'Lavesallee 23', 'Hannover', '2001-06-25'),
(10, 'Müller', 'Claudia', '29596', 'In den Fuhren 12', 'Breitenhees', NULL),
(11, 'Lisewski', 'Bernd', '30890', 'Roggenkamp 10', 'Barsinghausen', '1960-06-06'),
(15, 'Martens', 'Melanie', '29221', 'Horstweg 258', 'Celle', '1911-02-17'),
(17, 'Schlachter', 'Dieter', '29227', 'Mondhagen 43', 'Celle', '1961-02-02'),
(23, 'Peredy', 'Helmut', '29221', 'Mauernstraße 2', 'Celle', '1956-02-23'),
(24, 'Ruppert', 'Nicola', '29301', 'Welfenallee 23', 'Bergen', '1962-02-25'),
(25, 'Sander', NULL, '29223', 'Marxallee 12', 'Celle', '1953-02-05'),
(26, 'Cromberg', 'Jörg', '38152', 'Nordring 13', 'Braunschweig', '1991-06-07'),
(31, 'Schulze', 'Tanja', '29308', 'Berliner Ring 23', 'Winsen', '1992-11-09'),
(32, 'Winter', 'Petra', '29320', 'Immenhoop 51', 'Hermannsburg', '1989-12-30'),
(34, 'Neunzig', 'Mathis', '69115', 'Europaplatz 17', 'Heidelberg', '2000-10-02'),
(37, 'Magerkurth', 'Melissa', '29336', 'Am Tümpel 3', 'Nienhagen', '1951-09-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_coach`
--
ALTER TABLE `table_coach`
  ADD PRIMARY KEY (`coachID`);

--
-- Indexes for table `table_course`
--
ALTER TABLE `table_course`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `table_visits`
--
ALTER TABLE `table_visits`
  ADD PRIMARY KEY (`visitID`);

--
-- Indexes for table `table_topics`
--
ALTER TABLE `table_topics`
  ADD PRIMARY KEY (`topicID`);

--
-- Indexes for table `table_person`
--
ALTER TABLE `table_person`
  ADD PRIMARY KEY (`personalID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
