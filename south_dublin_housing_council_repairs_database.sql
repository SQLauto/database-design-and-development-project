-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2015 at 03:40 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `south_dublin_housing_council_repairs`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `EQUIPMENT_ID` int(10) NOT NULL,
  `TYPE` varchar(20) DEFAULT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `VALUE` decimal(15,2) DEFAULT NULL,
  `INSPECTION_DATE` date DEFAULT NULL,
  `STATE_OF_REPAIR` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`EQUIPMENT_ID`, `TYPE`, `DESCRIPTION`, `VALUE`, `INSPECTION_DATE`, `STATE_OF_REPAIR`) VALUES
(1, 'Drill', 'DEWALT pistol drill kit', '16.00', '2015-09-15', 'Good'),
(2, 'Adjustable wrench', 'Stanley 300mm MaxSteel', '14.00', '2015-10-08', 'Excellent'),
(3, 'Angle Grinder', 'Makita GA4530KD 720W', '52.00', '2015-10-12', 'Poor'),
(4, 'Ladder', 'SKY528 Heavy duty foldable', '120.00', '2015-10-13', 'Good'),
(5, 'Voltmeter', 'Voltmeter', '10.00', '2015-08-25', 'Excellent'),
(6, 'Paint brush and roll', 'Stanley 8 piece decorating set', '25.95', '2015-12-14', 'Excellent'),
(7, 'Pliers', 'Crescent 7" Tongue & Groove Pliers', '17.50', '2015-01-23', 'Poor'),
(8, 'End cut Nippers', 'Channellock 7" End Cut Nippers', '7.55', '2015-11-23', 'Good'),
(9, 'drill', 'Powerhouse 500', '20.00', '0000-00-00', 'Good'),
(10, 'Shovel', 'Fiskars Heavy Duty Shovel', '20.00', '2015-12-01', 'Excellent'),
(11, 'Hammer', 'Stanley claw hammer', '8.49', '2015-12-15', 'Good'),
(12, 'Screwdriver', 'Stanley 10 piece screw driver set', '20.00', '2015-12-02', 'Good'),
(13, 'wrench', 'Huskers 14 inch heavy duty pipe wrench', '12.48', '2015-12-12', 'Excellent'),
(14, 'Saw', 'Stanley Heavy Duty 30 inch saw', '15.50', '2015-11-29', 'Excellent'),
(15, 'Heavy Duty Electric ', '10-1/4" Milwaukee Circular Saw', '30.95', '2015-12-05', 'Excellent'),
(16, 'WATER PUMP', 'DEWALT HEAVY DUTY WATERPUMP', '120.95', '2015-10-28', 'Excellent'),
(17, 'Nail Gun', 'Powergun 5000', '29.99', '2015-12-17', 'Poor'),
(18, 'Measuring Tape', 'Master Tape 4 metres length', '31.50', '2015-12-10', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `POSTCODE` varchar(10) NOT NULL,
  `TENANT_ID` int(20) NOT NULL,
  `ADDRESS` varchar(50) DEFAULT NULL,
  `REPAIR_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`POSTCODE`, `TENANT_ID`, `ADDRESS`, `REPAIR_ID`) VALUES
('A97 NX65', 10, 'ELSINORE 15 COLIEMORE ROAD DALKEY CO. DUBLIN ', 10),
('D04 5N 807', 9, '54 Hazle Grove, Clondalkin', 5),
('D04 KN85', 5, '54 Sandymount Avenue', 3),
('D04 N2E9', 2, '89 Donnybrook Avenue', 5),
('D04 N824', 16, 'THE SOUTH DOCK 18 BRIDGE STREET DUBLIN 4 ', 7),
('D06 P2N5', 3, '85 Rathmines Road Lower', 4),
('D06 W1D7', 1, '22 Belgrave Square South', 1),
('D08 F6W2', 4, '75 Lombard Street East', 2),
('D12 A2B9', 12, '75 RUTLAND GROVE, DUBLIN 12', 6),
('D24 WN33', 21, '32 MAPLEWOOD CLOSE DUBLIN 24 ', 8),
('D24 WN42', 20, '24 MAPLEWOOD LAWN DUBLIN 24 ', 8);

-- --------------------------------------------------------

--
-- Table structure for table `repairs`
--

CREATE TABLE `repairs` (
  `REPAIR_ID` int(10) NOT NULL,
  `TYPE` varchar(30) DEFAULT NULL,
  `URGENCY` varchar(20) DEFAULT NULL,
  `DETAILS` varchar(50) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `TIME` time(6) DEFAULT NULL,
  `TRADESMAN_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repairs`
--

INSERT INTO `repairs` (`REPAIR_ID`, `TYPE`, `URGENCY`, `DETAILS`, `DATE`, `TIME`, `TRADESMAN_ID`) VALUES
(1, 'Plumbing', 'Urgent', 'Leak under sink unit', '2015-11-17', '14:45:00.000000', 3),
(2, 'Electric', 'Emergency', 'Smoking fuse board', '2015-11-18', '15:00:00.000000', 3),
(3, 'carpentry', 'Cyclical', 'Repairs to internal walls', '2015-02-01', '11:00:00.000000', 5),
(4, 'Carpentry', 'Cyclical', 'Replace hall door', '2015-05-05', '10:00:00.000000', 1),
(5, 'Plumbing', 'Routine', 'Replace toilet cistern', '2015-09-10', '12:00:00.000000', 3),
(6, 'Woodwork', 'Cyclical', 'Replace damp skirting board', '2015-12-14', '11:00:00.000000', 7),
(7, 'Painting', 'Cyclical', 'painting inside walls of the house', '2016-10-15', '10:00:00.000000', 8),
(8, 'carpentry', 'Cyclical', 'construction of wooden fence in front garden', '2016-06-05', '10:30:00.000000', 9),
(9, 'Flooded house', 'Emergency', 'HOUSE HAS FLOODED', '2015-12-12', '08:00:00.000000', 10),
(10, 'TILING', 'Routine', 'putting tiles on the kitchen floor', '2016-03-01', '00:00:13.000000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `TENANT_ID` int(20) NOT NULL,
  `REGISTER_NUMBER` int(20) DEFAULT NULL,
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(20) DEFAULT NULL,
  `CONTACT` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`TENANT_ID`, `REGISTER_NUMBER`, `FIRST_NAME`, `LAST_NAME`, `CONTACT`, `EMAIL`) VALUES
(1, 27854, 'DUSTIN', 'DONNELLY', '0896904260', 'ilovedublincoddle@gmail.com'),
(2, 39657, 'GEORGE ', 'WALSH', '0872402093', 'thundercats@yahoo.com'),
(3, 10550, 'MARY', 'FUREY', '0862483815', 'iamlegend@eircom.ie'),
(4, 89386, 'AOIFE', 'DOYLE', '0851278643', 'meow@outlook.com'),
(5, 42893, 'TOM', 'O GARA', '08767672841', 'soundman@Hotmail.com'),
(6, 615865, 'Ann', 'Ward', '08728978421', 'currychips@hotmail.com'),
(7, 61545648, 'Alan', 'Turing', '08735635473', 'enigma@btinternet.com'),
(8, 2147483647, 'BONO', 'VOX', '01234567', 'elevation@vertigo.ie'),
(9, 608488585, 'Michael', 'Walls', '085 2789345', 'm.walls@yahoo.co.uk'),
(10, 9959595, 'Lawrence', 'Mullen', '0879375639', 'arcobat@eircom.ie'),
(11, 5678915, 'george', 'Boole', '08723478', 'george@gmail.com'),
(12, 214748364, 'Mary', 'Murray', '0895487325', 'murray1975@gmail.com'),
(13, 289678, 'PHIL', 'Lynott', '08735635473', 'emerald@eircom.ie'),
(15, 40, 'JEFF', 'BRIDGES', '089583478', 'thedude@gmail.com'),
(16, 2796314, 'Imelda', 'May', '08735635473', 'lovetattoo@eircom.ie'),
(17, 2896314, 'William', 'Fitzmaurice', '08735635473', 'petty@outlook.com'),
(18, 2896315, 'Ronnie', 'Drew', '08556902431', 'raglanroad@inbox.com'),
(19, 667796969, 'STEPHEN', 'FAHY', '0872854939', 'sstephenpfahy@gmail.com'),
(20, 89365636, 'Sarah', 'McCoole', '0892424987', 'iloveart@gmail.com'),
(21, 8936569, 'Nadine', 'Burke', '085456846589', 'bioshock2004@gmail.com'),
(22, 1926374, 'Dannielle', 'Kearns', '0898006564', 'd.kearns@gmail.com'),
(23, 1926424, 'Mark', 'Henry', '0898848585', 'happyhippo@yahoo.co.uk'),
(24, 497424743, 'Gillian', 'Walsh', '0877005966', 'marblehill@yahoo.co.uk'),
(25, 776576, 'Mary', 'Dundon', '087936456', 'iloveredcurry@hotmail.com'),
(26, 89620, 'Maria', 'Cahill', '08682654629', 'tallaghtforever@gmail.com'),
(27, 78522, 'Pat', 'Murray', '08682654629', 'bangersnmash@outlook.com'),
(28, 78666, 'Miriam', 'Walsh', '08578854678', 'bangersnmash@outlook.com'),
(29, 85400, 'James', 'Joyce', '08778854858', 'ullysses1922@outlook.com'),
(30, 85454, 'Adam', 'Clayton', '08778854858', 'lemon1993@yahoo.com'),
(31, NULL, 'Han', 'Solo', '089458765', 'milleniumfalcon@starwars.com'),
(32, 68785858, 'Luke', 'Skywalker', NULL, 'deathstar@starwars.com'),
(33, NULL, 'FRODO', 'BAGGINS', NULL, 'theshire@onering.com'),
(34, 6346354, 'Badger', 'O Malley', '087348967', 'badger@gmail.com'),
(36, 74573, 'Eve', 'Malone', '087773789', 'meowtastic@hotmail.com'),
(38, 16274, 'Jack', 'Hackett', '0893646636', 'drinkfeckarse@feckarseindustri'),
(39, 937, 'JOHNNY', 'LYONS', '08976543', 'ilovegeneaology@gmail.com'),
(40, 743, 'JOHNNY', 'VEGAS', '087773789', 'meowtastic@hotmail.com'),
(50, 2858, 'OBI WAN', 'KENOBI', '089464747', 'theforceawakens@deathstar.com'),
(59, NULL, 'Pat', 'LYONS', NULL, NULL),
(60, NULL, 'Pat', 'LYONS', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tradesman`
--

CREATE TABLE `tradesman` (
  `TRADESMAN_ID` int(20) NOT NULL,
  `FIRST_NAME` varchar(15) DEFAULT NULL,
  `LAST_NAME` varchar(20) DEFAULT NULL,
  `SKILL` varchar(20) DEFAULT NULL,
  `CONTACT` varchar(15) DEFAULT NULL,
  `EQUIPMENT_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tradesman`
--

INSERT INTO `tradesman` (`TRADESMAN_ID`, `FIRST_NAME`, `LAST_NAME`, `SKILL`, `CONTACT`, `EQUIPMENT_ID`) VALUES
(1, 'Ronnie', 'Doyle', 'Carpenter', '0878404260', 1),
(2, 'Ray', 'Dunphy', 'Tiler', '0852878541', 3),
(3, 'Henry', 'Drew', 'Plumber', '0894937393', 2),
(4, 'Stella', 'McGregor', 'Electrician', '0861876459', 5),
(5, 'Henry', 'Dunne', 'Plasterer', '0877362952', 2),
(6, 'HORRID', 'HENRY', 'PLUMBING', '0866153512', 13),
(7, 'Stephen', 'Holt', 'Carpenter', '0898362534', 14),
(8, 'Gregory', 'Issaccs', 'Painter', '0878954217', 6),
(9, 'Larry', 'Quinn', 'Carpenter', '085842846', 15),
(10, 'John', 'MC CANN', 'PLUMBER', '089636464668', 16),
(40, 'JOHN', 'LYONS', 'plumbing', '089575757', 10),
(42, 'JOHN', 'Malone', 'woodwork', '087543653', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`EQUIPMENT_ID`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`POSTCODE`),
  ADD KEY `TENANT` (`TENANT_ID`),
  ADD KEY `REPAIRS_ID` (`REPAIR_ID`);

--
-- Indexes for table `repairs`
--
ALTER TABLE `repairs`
  ADD PRIMARY KEY (`REPAIR_ID`),
  ADD KEY `TRADESMAN_ID` (`TRADESMAN_ID`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`TENANT_ID`),
  ADD UNIQUE KEY `REGISTER_NUMBER` (`REGISTER_NUMBER`);

--
-- Indexes for table `tradesman`
--
ALTER TABLE `tradesman`
  ADD PRIMARY KEY (`TRADESMAN_ID`),
  ADD KEY `EQUIPMENT` (`EQUIPMENT_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`TENANT_ID`) REFERENCES `tenant` (`TENANT_ID`),
  ADD CONSTRAINT `property_ibfk_2` FOREIGN KEY (`REPAIR_ID`) REFERENCES `repairs` (`REPAIR_ID`);

--
-- Constraints for table `repairs`
--
ALTER TABLE `repairs`
  ADD CONSTRAINT `repairs_ibfk_1` FOREIGN KEY (`TRADESMAN_ID`) REFERENCES `tradesman` (`TRADESMAN_ID`);

--
-- Constraints for table `tradesman`
--
ALTER TABLE `tradesman`
  ADD CONSTRAINT `tradesman_ibfk_1` FOREIGN KEY (`EQUIPMENT_ID`) REFERENCES `equipment` (`EQUIPMENT_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
