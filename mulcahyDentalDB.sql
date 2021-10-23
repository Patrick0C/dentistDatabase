-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 10:23 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mulcahydental`
--

-- -------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `apptNumber` int(11) NOT NULL COMMENT 'Appointment row identifier',
  `apptDate` date NOT NULL DEFAULT current_timestamp() COMMENT 'Date of appointment',
  `apptTime` time DEFAULT NULL COMMENT 'Time of appointment',
  `patientNumber` int(11) NOT NULL COMMENT 'Patient identifier',
  `apptCancelDate` date DEFAULT NULL COMMENT 'If appointment is cancelled enter the cancellation date, otherwise NULL',
  `lateCancel` varchar(3) DEFAULT NULL COMMENT 'If the appointment is cancelled enter YES if it was a late cancellation, else type NO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`apptNumber`, `apptDate`, `apptTime`, `patientNumber`, `apptCancelDate`, `lateCancel`) VALUES
(1559, '2020-11-04', '10:00:00', 1004, NULL, NULL),
(1560, '2020-11-04', '12:30:00', 1006, NULL, NULL),
(1561, '2020-11-06', '11:00:00', 1001, '2020-11-05', 'YES'),
(1562, '2020-11-06', '14:00:00', 1010, NULL, NULL),
(1563, '2020-11-15', '15:45:00', 1001, '2020-11-15', 'YES'),
(1564, '2020-11-20', '09:30:00', 1001, '2020-11-19', 'YES'),
(1565, '2020-11-20', '12:45:00', 1002, NULL, NULL),
(1566, '2020-12-02', '11:00:00', 1017, NULL, NULL),
(1567, '2020-12-02', '16:00:00', 1012, NULL, NULL),
(1568, '2020-12-07', '10:30:00', 1015, NULL, NULL),
(1569, '2020-12-07', '15:00:00', 1013, NULL, NULL),
(1570, '2021-01-25', '14:00:00', 1014, NULL, NULL),
(1571, '2021-02-01', '11:00:00', 1015, '2021-01-31', 'YES'),
(1572, '2021-03-06', '09:00:00', 1016, NULL, NULL),
(1573, '2021-03-15', '11:45:00', 1020, NULL, NULL),
(1574, '2021-03-25', '11:00:00', 1020, NULL, NULL),
(1575, '2021-04-22', '09:30:00', 1007, NULL, NULL),
(1576, '2021-04-22', '11:00:00', 1010, NULL, NULL),
(1577, '2021-04-22', '15:00:00', 1001, '2021-04-22', 'YES'),
(1578, '2021-04-23', '09:30:00', 1009, NULL, NULL),
(1579, '2021-04-23', '11:00:00', 1005, NULL, NULL),
(1580, '2021-04-23', '14:00:00', 1002, NULL, NULL),
(1581, '2021-04-23', '15:00:00', 1006, '2021-04-10', 'NO'),
(1582, '2021-04-23', '16:30:00', 1003, NULL, NULL),
(1583, '2021-04-26', '09:30:00', 1004, NULL, NULL),
(1584, '2021-05-01', '11:00:00', 1001, NULL, NULL),
(1585, '2021-05-03', '09:30:00', 1006, NULL, NULL),
(1586, '2021-05-03', '11:30:00', 1017, NULL, NULL),
(1587, '2021-05-03', '13:30:00', 1011, NULL, NULL),
(1588, '2021-05-03', '15:00:00', 1004, NULL, NULL),
(1589, '2021-05-04', '09:30:00', 1009, NULL, NULL),
(1590, '2021-05-04', '10:30:00', 1014, '2021-04-25', 'NO'),
(1591, '2021-05-04', '10:30:00', 1003, NULL, NULL),
(1592, '2021-05-04', '12:30:00', 1013, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `billNumber` int(11) NOT NULL COMMENT 'Bill row identifier ',
  `billDate` date DEFAULT current_timestamp() COMMENT 'Date bill was issued',
  `patientNumber` int(11) NOT NULL COMMENT 'Patient identifier',
  `apptNumber` int(11) DEFAULT NULL COMMENT 'Appointment identifier',
  `treatmentName` varchar(255) DEFAULT NULL COMMENT 'Name of treatment received.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`billNumber`, `billDate`, `patientNumber`, `apptNumber`, `treatmentName`) VALUES
(1359, '2020-11-04', 1004, 1559, 'Crown'),
(1360, '2020-11-04', 1006, 1560, 'Fillings'),
(1361, '2020-11-06', 1001, 1561, 'Cancellation'),
(1362, '2020-11-06', 1003, 1562, 'Examination'),
(1363, '2020-11-15', 1001, 1563, 'Cancellation'),
(1364, '2020-11-20', 1001, 1564, 'Cancellation'),
(1365, '2020-11-20', 1002, 1565, 'Examination'),
(1366, '2020-12-02', 1002, 1566, 'Examination'),
(1367, '2020-12-02', 1012, 1567, 'Cleaning'),
(1368, '2020-12-07', 1015, 1568, 'X-ray'),
(1369, '2020-12-07', 1013, 1569, 'Examination'),
(1370, '2021-01-25', 1014, 1570, 'X-ray'),
(1371, '2021-02-01', 1015, 1571, 'Cancellation'),
(1372, '2021-03-06', 1016, 1572, 'Extraction'),
(1373, '2021-03-15', 1020, 1573, 'Extraction'),
(1374, '2021-03-25', 1020, 1574, 'X-ray'),
(1375, '2021-04-22', 1007, 1575, 'Dentures'),
(1376, '2021-04-22', 1010, 1576, 'Examination'),
(1377, '2021-04-22', 1001, 1577, 'Cancellation'),
(1378, '2021-04-23', 1009, 1578, 'Examination'),
(1379, '2021-04-23', 1005, 1579, 'Crown'),
(1380, '2021-04-23', 1002, 1580, 'Cleaning'),
(1381, '2021-04-23', 1003, 1582, 'Examination');

-- --------------------------------------------------------

--
-- Stand-in structure for view `highrepayment`
-- (See below for the actual view)
--
CREATE TABLE `highrepayment` (
`patientNumber` int(11)
,`patientFirstName` varchar(255)
,`patientLastName` varchar(255)
,`patientBalance` decimal(10,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `latecancel`
-- (See below for the actual view)
--
CREATE TABLE `latecancel` (
`patientFirstName` varchar(255)
,`patientLastName` varchar(255)
,`apptDate` date
,`apptTime` time
,`apptCancelDate` date
,`lateCancel` varchar(3)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `laterepayment`
-- (See below for the actual view)
--
CREATE TABLE `laterepayment` (
`patientNumber` int(11)
,`patientFirstName` varchar(255)
,`patientLastName` varchar(255)
,`billDate` date
,`patientBalance` decimal(10,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patientNumber` int(11) NOT NULL COMMENT 'Patient row identifier',
  `patientFirstName` varchar(255) DEFAULT NULL COMMENT 'First name of patient',
  `patientLastName` varchar(255) DEFAULT NULL COMMENT 'Last name of patient',
  `patientDOB` date DEFAULT NULL COMMENT 'Patient''s date of birth (yyyy-mm-dd)',
  `patientPhone` int(10) DEFAULT NULL COMMENT 'Patient''s phone number, mobile or landline',
  `patientEircode` varchar(7) DEFAULT NULL COMMENT 'Patient''s eircode',
  `patientEmail` varchar(255) DEFAULT NULL COMMENT 'Patient''s email address',
  `patientBalance` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientNumber`, `patientFirstName`, `patientLastName`, `patientDOB`, `patientPhone`, `patientEircode`, `patientEmail`, `patientBalance`) VALUES
(1001, 'George', 'Foreman', '1949-01-10', 867466217, 'T12CX89', 'gfmann@gmail.com', '40'),
(1002, 'Billie', 'Eilish', '2001-12-18', 898652117, 'T02CK80', 'badguy@gmail.com', '0'),
(1003, 'Leeroy', 'Jenkins', '2005-05-12', 893117501, 'T23DC84', 'ljenkins@wow.com', '50'),
(1004, 'Greg', 'Jonkins', '1980-09-22', 893117501, 'T23DC84', 'gjenkins@wow.com', '100'),
(1005, 'Maeve', 'Jenkins', '1979-01-02', 893117501, 'T23DC84', 'mjenkins@wow.com', '0'),
(1006, 'Clare', 'Jenkins', '2012-06-07', 893117501, 'T23DC84', 'mjenkins@wow.com', '0'),
(1007, 'Barbara', 'Streisand', '1942-04-24', 837821947, 'T01EW90', 'bstreisand@yahoo.com', '0'),
(1008, 'Barbara', 'McClintock', '1992-09-02', 837826667, 'T07XKV4', 'bmcclintock@gmail.com', '0'),
(1009, 'Miles', 'Davis', '1991-09-28', 832460169, 'T02CC99', 'mdavis@tcd.ie', '0'),
(1010, 'Naomi', 'Novik', '1973-04-30', 898896247, 'T09K4P6', 'nnovik@gmail.com', '0'),
(1011, 'Aoife', 'Smeaton', '1991-06-12', 855566321, 'T04LW69', 'aoifesmeaton@dcu.ie', '0'),
(1012, 'Daire', 'OSullivan', '1990-07-01', 899966912, 'T04LW69', 'dosullivan@gmail.com', '0'),
(1013, 'Ruairí', 'OSullivan', '1985-09-02', 877652469, 'T04LW69', 'rosullivan@gmail.com', '0'),
(1014, 'Darragh', 'Walsh', '1970-12-25', 899962458, 'T09XX14', 'dzizzle@hotmail.com', '30'),
(1015, 'Megan', 'Hayes', '1987-01-30', 833336412, 'TT2AB34', 'meghayes@yahoo.com', '10'),
(1016, 'Jean', 'Valjean', '1962-04-16', 872460111, 'T68CY63', 'valjean24601@gmail.com', '15'),
(1017, 'Hilda', 'Vontrapp', '1943-05-11', 875892147, 'T01PQ47', 'thesoundofmusic@gmail.com', '0'),
(1018, 'Ellen', 'Rose', '1990-02-18', 21486645, 'T97BG22', 'elrose@gmail.com', '0'),
(1019, 'Andy', 'Douglas', '1985-07-22', 855421477, 'T04LP23', 'andy.d.douglas@gmail.com', '0'),
(1020, 'Joeseph', 'Bidiggidy', '1942-11-20', 861239872, 'T04TP03', 'potus@gmail.com', '75');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentDate` date DEFAULT NULL COMMENT 'Date the payment was received ',
  `paymentNumber` int(11) NOT NULL COMMENT 'Payment row identifier',
  `patientNumber` int(11) NOT NULL COMMENT 'Patient identifier',
  `paymentMethod` varchar(255) DEFAULT NULL COMMENT 'Method of payment: Credit card,\r\nCash or\r\nCheque ',
  `paymentAmount` int(11) DEFAULT NULL COMMENT 'The amount paid in this transaction',
  `billNumber` int(11) DEFAULT NULL COMMENT 'Bill identifier',
  `billBalance` decimal(10,0) DEFAULT NULL COMMENT 'The amount still owed for this specific bill'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentDate`, `paymentNumber`, `patientNumber`, `paymentMethod`, `paymentAmount`, `billNumber`, `billBalance`) VALUES
('2020-11-04', 2400, 1006, 'Cash', 20, 1360, '40'),
('2020-11-05', 2401, 1006, 'Credit card', 40, 1360, '0'),
('2020-11-06', 2402, 1003, 'Cash', 50, 1362, '0'),
('2020-11-20', 2403, 1002, 'Cash', 30, 1365, '30'),
('2020-12-02', 2404, 1012, 'Cheque', 50, 1367, '0'),
('2020-12-02', 2405, 1002, 'Cash', 20, 1365, '0'),
('2020-12-02', 2406, 1002, 'Cash', 50, 1366, '0'),
('2020-12-07', 2407, 1015, 'Cash', 20, 1368, '10'),
('2020-12-07', 2408, 1013, 'Cash', 10, 1369, '40'),
('2020-12-07', 2409, 1015, 'Cash', 10, 1368, '0'),
('2020-12-15', 2410, 1013, 'Cheque', 40, 1369, '0'),
('2021-03-06', 2411, 1016, 'Cash', 65, 1372, '15'),
('2021-03-15', 2412, 1020, 'Credit card', NULL, 1373, '45'),
('2021-04-22', 2413, 1007, 'Cash', 10, 1375, '30'),
('2021-04-22', 2414, 1010, 'Cheque', 50, 1376, '0'),
('2021-04-22', 2415, 1009, 'Cash', 5, 1378, '45'),
('2021-04-23', 2416, 1007, 'Cash', 10, 1375, '20'),
('2021-04-24', 2417, 1007, 'Cash', 10, 1375, '10'),
('2021-04-24', 2418, 1007, 'Cash', 10, 1375, '0'),
('2021-04-24', 2419, 1009, 'Credit card', 45, 1378, '0'),
('2021-04-24', 2420, 1005, 'Credit card', 100, 1379, '0'),
('2021-04-24', 2421, 1002, 'Credit card', 50, 1380, '0');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `referralNumber` int(11) NOT NULL COMMENT 'Referral row identifier',
  `patientNumber` int(11) DEFAULT NULL COMMENT 'Patient identifier',
  `specialistNumber` int(11) DEFAULT NULL COMMENT 'Specialist identifier',
  `apptNumber` int(11) DEFAULT NULL COMMENT 'Appointment identifier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`referralNumber`, `patientNumber`, `specialistNumber`, `apptNumber`) VALUES
(1061, 1003, 1003, 1562),
(1062, 1002, 1007, 1566),
(1063, 1015, 1002, 1568),
(1064, 1014, 1002, 1570),
(1065, 1010, 1005, 1576),
(1066, 1009, 1001, 1578),
(1067, 1003, 1004, 1582);

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `specialistNumber` int(11) NOT NULL COMMENT 'Specialist row identifier ',
  `specialistFirstName` varchar(255) DEFAULT NULL COMMENT 'Specialist''s first name ',
  `specialistLastName` varchar(255) DEFAULT NULL COMMENT 'Specialist''s last name',
  `specialistRole` varchar(255) DEFAULT NULL COMMENT 'Specialist''s primary role/ speciality ',
  `specialistPhone` int(10) DEFAULT NULL COMMENT 'Specialist''s contact phone number',
  `specialistAddress` varchar(255) DEFAULT NULL COMMENT 'Specialist''s clinic address',
  `specialistEmail` varchar(255) DEFAULT NULL COMMENT 'Specialist''s work email address'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`specialistNumber`, `specialistFirstName`, `specialistLastName`, `specialistRole`, `specialistPhone`, `specialistAddress`, `specialistEmail`) VALUES
(1001, 'Ludvig', 'Oetker', 'Endonontist', 21196781, 'Dr.Oetker Dental Shandon', 'loetker@gmail.com'),
(1002, 'Catherine', 'Suess', 'Surgeon', 21876321, 'Dr.Seuss Dental Cork', 'catseuss@gmail.com'),
(1003, 'Ivan', 'Robotnik', 'Orthodontist', 21876543, 'Super Sonic Dental Cork City', 'drrobotnik@gmail.com'),
(1004, 'John', 'Dolittle', 'Paediatrist', 21985464, 'Dr Dolittle Paediatry Dentist Cork', 'johndolittle@gmail.com'),
(1005, 'John', 'Whovian', 'Prosthodontist', 21224987, 'Doctor Who Dental Prosthetics Ballincollig', 'johnwho@gmail.com'),
(1006, 'Deirdre', 'Oetker', 'Periodontist', 21233529, 'Gingiva Convention Consultancy Cork', 'doetker@gmail.com'),
(1007, 'Dennis', 'Tist', 'Orthodontist', 21698246, 'Den Tist Orthodontist Consultancy Cork City', 'dtist@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treatmentName` varchar(255) NOT NULL COMMENT 'Name of treatment',
  `treatmentCost` decimal(10,0) NOT NULL COMMENT 'The cost of the treatment'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatmentName`, `treatmentCost`) VALUES
('Cancellation', '10'),
('Cleaning', '50'),
('Crown', '100'),
('Dentures', '40'),
('Examination', '50'),
('Extraction', '80'),
('Fillings', '60'),
('X-ray', '30');

-- --------------------------------------------------------

--
-- Structure for view `highrepayment`
--
DROP TABLE IF EXISTS `highrepayment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `highrepayment`  AS SELECT `patient`.`patientNumber` AS `patientNumber`, `patient`.`patientFirstName` AS `patientFirstName`, `patient`.`patientLastName` AS `patientLastName`, `patient`.`patientBalance` AS `patientBalance` FROM `patient` WHERE `patient`.`patientBalance` > 50 ;

-- --------------------------------------------------------

--
-- Structure for view `latecancel`
--
DROP TABLE IF EXISTS `latecancel`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `latecancel`  AS SELECT `patient`.`patientFirstName` AS `patientFirstName`, `patient`.`patientLastName` AS `patientLastName`, `appointments`.`apptDate` AS `apptDate`, `appointments`.`apptTime` AS `apptTime`, `appointments`.`apptCancelDate` AS `apptCancelDate`, `appointments`.`lateCancel` AS `lateCancel` FROM (`patient` join `appointments`) WHERE `patient`.`patientNumber` = `appointments`.`patientNumber` AND `appointments`.`lateCancel` = 'YES' ;

-- --------------------------------------------------------

--
-- Structure for view `laterepayment`
--
DROP TABLE IF EXISTS `laterepayment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laterepayment`  AS SELECT `patient`.`patientNumber` AS `patientNumber`, `patient`.`patientFirstName` AS `patientFirstName`, `patient`.`patientLastName` AS `patientLastName`, `bill`.`billDate` AS `billDate`, `patient`.`patientBalance` AS `patientBalance` FROM (`patient` join `bill`) WHERE `patient`.`patientNumber` = `bill`.`patientNumber` AND `patient`.`patientBalance` > 0 AND curdate() - `bill`.`billDate` > 10 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`apptNumber`),
  ADD KEY `patientNumber` (`patientNumber`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`billNumber`),
  ADD KEY `patientNumber` (`patientNumber`),
  ADD KEY `apptNumber` (`apptNumber`),
  ADD KEY `treatmentName` (`treatmentName`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patientNumber`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentNumber`),
  ADD KEY `patientNumber` (`patientNumber`),
  ADD KEY `billNumber` (`billNumber`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`referralNumber`),
  ADD KEY `patientNumber` (`patientNumber`),
  ADD KEY `specialistNumber` (`specialistNumber`),
  ADD KEY `apptNumber` (`apptNumber`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`specialistNumber`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treatmentName`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`patientNumber`) REFERENCES `patient` (`patientNumber`);

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`patientNumber`) REFERENCES `patient` (`patientNumber`),
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`apptNumber`) REFERENCES `appointments` (`apptNumber`),
  ADD CONSTRAINT `bill_ibfk_3` FOREIGN KEY (`treatmentName`) REFERENCES `treatment` (`treatmentName`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`patientNumber`) REFERENCES `patient` (`patientNumber`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`billNumber`) REFERENCES `bill` (`billNumber`);

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `referrals_ibfk_1` FOREIGN KEY (`patientNumber`) REFERENCES `patient` (`patientNumber`),
  ADD CONSTRAINT `referrals_ibfk_2` FOREIGN KEY (`specialistNumber`) REFERENCES `specialist` (`specialistNumber`),
  ADD CONSTRAINT `referrals_ibfk_3` FOREIGN KEY (`apptNumber`) REFERENCES `appointments` (`apptNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
