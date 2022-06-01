-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 28, 2019 at 11:28 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `e_voting`
--
CREATE DATABASE IF NOT EXISTS `e_voting` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `e_voting`;

-- --------------------------------------------------------

--
-- Table structure for table `constituencies`
--

CREATE TABLE IF NOT EXISTS `constituencies` (
  `State` varchar(50) NOT NULL,
  `Constituency` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `constituencies`
--

INSERT INTO `constituencies` (`State`, `Constituency`) VALUES
('Tamilnadu', 'Madurai'),
('Tamilnadu', 'Theni'),
('Tamilnadu', 'Dindigul'),
('Tamilnadu', 'Chennai'),
('Tamilnadu', 'Trichy'),
('Tamilnadu', 'Sivagangai'),
('Tamilnadu', 'Ramnad'),
('Tamilnadu', 'Salem'),
('Andhra Pradesh', 'Hyderabad'),
('Andhra Pradesh', 'Nellur'),
('Andhra Pradesh', 'Kundur'),
('Andhra Pradesh', 'KaakkiNada'),
('Kerala', 'Kochin'),
('Kerala', 'Trivandrum'),
('Kerala', 'Vayanadu'),
('Kerala', 'Pambai');

-- --------------------------------------------------------

--
-- Table structure for table `electiondate`
--

CREATE TABLE IF NOT EXISTS `electiondate` (
  `State` varchar(50) NOT NULL,
  `ElectionDate` date NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `electiondate`
--

INSERT INTO `electiondate` (`State`, `ElectionDate`, `StartTime`, `EndTime`) VALUES
('Tamilnadu', '2019-10-28', '07:00:00', '18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `electionresult`
--

CREATE TABLE IF NOT EXISTS `electionresult` (
  `SNo` int(11) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Constituency` varchar(50) NOT NULL,
  `Nominee_Id` varchar(18) NOT NULL,
  `Nominee_Name` varchar(50) NOT NULL,
  `PartyName` varchar(50) NOT NULL,
  `Total_Vote` int(11) NOT NULL,
  PRIMARY KEY (`SNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `electionresult`
--

INSERT INTO `electionresult` (`SNo`, `State`, `Constituency`, `Nominee_Id`, `Nominee_Name`, `PartyName`, `Total_Vote`) VALUES
(1, 'Tamilnadu', 'Madurai', '1', 'Manickam.M', 'ADMK', 1),
(2, 'Tamilnadu', 'Madurai', '2', 'Moorthi.P', 'DMK', 2),
(3, 'Tamilnadu', 'Madurai', '3', 'Murugan.V', 'BJP', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fieldofficer`
--

CREATE TABLE IF NOT EXISTS `fieldofficer` (
  `fo_id` int(11) NOT NULL,
  `fo_name` varchar(25) NOT NULL,
  `userid` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `state` varchar(50) NOT NULL,
  `Constituency` varchar(50) NOT NULL,
  PRIMARY KEY (`fo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fieldofficer`
--

INSERT INTO `fieldofficer` (`fo_id`, `fo_name`, `userid`, `Password`, `state`, `Constituency`) VALUES
(101, 'ChellaPandi.P', 'selvam', 'selvam', 'Tamilnadu', 'Madurai'),
(102, 'BalaSubramani.S', 'balu', 'balu', 'Tamilnadu', 'Theni'),
(103, 'NausathKhan', 'nausath', 'nausath', 'Tamilnadu', 'Dindigul');

-- --------------------------------------------------------

--
-- Table structure for table `nomineeregistration`
--

CREATE TABLE IF NOT EXISTS `nomineeregistration` (
  `Nominee_Id` int(11) NOT NULL,
  `Nominee_Name` varchar(35) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `FatherName` varchar(35) NOT NULL,
  `DOB` date NOT NULL,
  `Age` int(11) NOT NULL,
  `Address` varchar(75) NOT NULL,
  `State` varchar(35) NOT NULL,
  `Constituency` varchar(35) NOT NULL,
  `AnnualIncome` float NOT NULL,
  `PropertyAsset` float NOT NULL,
  `NominationFee` float NOT NULL,
  `PhoneNo` varchar(15) NOT NULL,
  `Aadhaar_No` varchar(18) NOT NULL,
  `Photo` varchar(35) NOT NULL,
  `PartyName` varchar(35) NOT NULL,
  `PartySymbol` varchar(35) NOT NULL,
  `NominationDate` date NOT NULL,
  `Status` varchar(15) NOT NULL,
  `Reason` varchar(100) NOT NULL,
  PRIMARY KEY (`Nominee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nomineeregistration`
--

INSERT INTO `nomineeregistration` (`Nominee_Id`, `Nominee_Name`, `Gender`, `Password`, `FatherName`, `DOB`, `Age`, `Address`, `State`, `Constituency`, `AnnualIncome`, `PropertyAsset`, `NominationFee`, `PhoneNo`, `Aadhaar_No`, `Photo`, `PartyName`, `PartySymbol`, `NominationDate`, `Status`, `Reason`) VALUES
(1, 'Manickam.M', 'Male', 'manickam', 'Muniyandi', '1960-09-12', 59, 'Main Road\r\nSholavandhan\r\nMadurai Dt.', 'Tamilnadu', 'Madurai', 1000000, 5000000, 25000, '9994512340', '6756676', 'jim.graham new.jpg', 'ADMK', 'leaf.jpg', '2019-09-24', 'Accepted', 'No Issues'),
(2, 'Moorthi.P', 'Male', 'moorthi', 'Pitchai', '1962-10-06', 47, 'Agraharam\r\nThiruvedagam\r\nMadurai Dt', 'Tamilnadu', 'Madurai', 2000000, 10000000, 25000, '9842167890', '5675667', 'indra.jpg', 'DMK', 'Solar Eclipse.jpg', '2019-09-24', 'Accepted', 'No Issues'),
(3, 'Murugan.V', 'Male', 'murugan', 'Velu', '1970-04-21', 49, 'Middle Street\r\nThiruvedagam\r\nMadurai', 'Tamilnadu', 'Madurai', 500000, 2500000, 25000, '6369567890', '18121314', 'viv2a.jpg', 'BJP', 'flower.jpg', '2019-09-30', 'Accepted', 'No Issues'),
(4, 'Muthu.R', 'Male', 'muthu', 'Ramanathan.M', '1971-06-20', 48, 'Agraharam,\r\nThenkarai,\r\nSholavandhan\r\nMadurai Dt', 'Tamilnadu', 'Madurai', 500000, 1500000, 25000, '9994312350', '7898770', 'an5.jpg', 'PMK', 'ant.jpg', '2019-09-30', 'Pending', '');

-- --------------------------------------------------------

--
-- Table structure for table `votedstatus`
--

CREATE TABLE IF NOT EXISTS `votedstatus` (
  `VoterId` int(11) NOT NULL,
  `VotingStatus` int(11) NOT NULL,
  `TransactionId` int(11) NOT NULL,
  PRIMARY KEY (`VoterId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votedstatus`
--

INSERT INTO `votedstatus` (`VoterId`, `VotingStatus`, `TransactionId`) VALUES
(10001, 1, 1),
(10002, 1, 2),
(10003, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `voterlist`
--

CREATE TABLE IF NOT EXISTS `voterlist` (
  `voter_id` varchar(18) NOT NULL,
  `WalletCode` varchar(18) NOT NULL,
  PRIMARY KEY (`voter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voterlist`
--

INSERT INTO `voterlist` (`voter_id`, `WalletCode`) VALUES
('10001', '84fb9143'),
('10002', '18340c86'),
('10003', '22044ce');

-- --------------------------------------------------------

--
-- Table structure for table `voterregistration`
--

CREATE TABLE IF NOT EXISTS `voterregistration` (
  `voter_id` varchar(18) NOT NULL,
  `voter_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `Password` varchar(35) NOT NULL,
  `FatherName` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `Age` int(11) NOT NULL,
  `Address` varchar(75) NOT NULL,
  `MailId` varchar(75) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Constituency` varchar(50) NOT NULL,
  `AadhaarNo` varchar(18) NOT NULL,
  `Photo` varchar(50) NOT NULL,
  `RegDate` date NOT NULL,
  `Status` varchar(15) NOT NULL,
  `Reason` varchar(100) NOT NULL,
  PRIMARY KEY (`voter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voterregistration`
--

INSERT INTO `voterregistration` (`voter_id`, `voter_name`, `gender`, `Password`, `FatherName`, `DOB`, `Age`, `Address`, `MailId`, `State`, `Constituency`, `AadhaarNo`, `Photo`, `RegDate`, `Status`, `Reason`) VALUES
('10001', 'Ayyappan.S', 'Male', 'ayyappan', 'Siva.S', '2001-06-18', 18, 'Main Road\r\nWest Masi Street\r\nMadurai', 'amsasi78@gmail.com', 'Tamilnadu', 'Madurai', '18051800', 'ayyappanimg.jpg', '2019-09-26', 'Accepted', 'No Issues'),
('10002', 'SuryaKumar.C', 'Male', 'surya', 'ChellaPandi.P', '2000-06-26', 19, '46, Mudhaliar Street\r\nThiruvedagam\r\nMadurai Dt', 'amsasi78@gmail.com', 'Tamilnadu', 'Madurai', '26006185', 'surya.jpg', '2019-09-30', 'Accepted', 'No Issues'),
('10003', 'SasiKumar.A.M', 'Male', 'sasirani', 'MuthuPalani.A', '1978-06-22', 41, '46,Mudhaliar Street\r\nThiruvedagam\r\nMadurai dt.', 'amsasi78@gmail.com', 'Tamilnadu', 'Madurai', '64347580', 'sasi2.jpg', '2019-09-30', 'Accepted', 'No Issues');

-- --------------------------------------------------------

--
-- Table structure for table `voting`
--

CREATE TABLE IF NOT EXISTS `voting` (
  `TransactionId` int(11) NOT NULL,
  `NomineeId` varchar(18) NOT NULL,
  `NomineeName` varchar(50) NOT NULL,
  `PartyName` varchar(50) NOT NULL,
  `Constituency` varchar(50) NOT NULL,
  `State` varchar(50) NOT NULL,
  `Polling` int(11) NOT NULL,
  `PollingDate` date NOT NULL,
  PRIMARY KEY (`TransactionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voting`
--

INSERT INTO `voting` (`TransactionId`, `NomineeId`, `NomineeName`, `PartyName`, `Constituency`, `State`, `Polling`, `PollingDate`) VALUES
(1, '1', 'Manickam.M', 'ADMK', 'Madurai', 'Tamilnadu', 1, '2019-10-28'),
(2, '2', 'Moorthi.P', 'DMK', 'Madurai', 'Tamilnadu', 1, '2019-10-28'),
(3, '2', 'Moorthi.P', 'DMK', 'Madurai', 'Tamilnadu', 1, '2019-10-28');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
