-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 12:05 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project024`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc` ()  BEGIN
SELECT * FROM websites;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `procs` ()  BEGIN
SELECT * FROM websites;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminname` varchar(20) NOT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminname`, `pass`) VALUES
('steve rogers', 'icandothisallday'),
('tony stark', 'iamironman');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `C_name` varchar(20) NOT NULL,
  `Subject` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`C_name`, `Subject`) VALUES
('AI Basics', 'AI'),
('Angular JS', 'Web'),
('Bootstrap', 'Web'),
('C programming', 'POP'),
('C++', 'OOC'),
('CSS', 'Web'),
('DataAnalysis with R', 'DataScience'),
('Datascience Basics', 'DataScience'),
('DSArrays', 'DataStructures'),
('DSlinkedlist', 'DataStructures'),
('DSQueue', 'DataStructures'),
('DSStack', 'DataStructures'),
('HTML', 'Web'),
('Java', 'OOC'),
('JavaScript', 'Web'),
('JOuery', 'Web'),
('ML Basics', 'ML'),
('Python Advanced', 'Python'),
('Python Basics', 'Python'),
('Python DataAnalysis', 'DataScience'),
('R Advanced', 'RProgramming'),
('R Basics', 'RProgramming'),
('SQL', 'QueryL');

-- --------------------------------------------------------

--
-- Table structure for table `c_sources`
--

CREATE TABLE `c_sources` (
  `C_name` varchar(20) DEFAULT NULL,
  `channel` varchar(20) DEFAULT NULL,
  `videoplaylists` varchar(60) DEFAULT NULL,
  `host_name` varchar(20) DEFAULT NULL,
  `slnos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_sources`
--

INSERT INTO `c_sources` (`C_name`, `channel`, `videoplaylists`, `host_name`, `slnos`) VALUES
('Datascience Basics', 'freecodecamp.org', 'Learn Data Science Tutorial', 'Barton Poulson', 1),
('Python Basics', 'Derek Bannas', 'Python Tutorail 2019', 'Derek Bannas', 3),
('Java', 'Derek Bannas', 'Java Programming', 'Derek Bannas', 4),
('SQL', 'Derek Bannas', 'SQL Tutorail 2019', 'Derek Bannas', 5),
('JavaScript', 'freecodecamp.org', 'Learn JavaScript-Full course for Beginners', 'Beau carnes', 6),
('JavaScript', 'freecodecamp.org', 'DataStructures And Algorithms in JavaScript', 'Beau carnes', 7),
('Bootstrap', 'freecodecamp.org', 'Learn Bootstrap by creating a custom admin theme', 'Andrew Wilson', 8),
('DSArrays', 'GeeksforGeeks', 'Arrays|Datastructures and Algorithms(PL)', 'Sephiri', 9),
('DSlinkedlist', 'GeeksforGeeks', 'Linked List|Datastructures and Algorithms(PL)', 'Harshit Jain', 10),
('DSStack', 'GeeksforGeeks', 'Stack|Datastructures and Algorithms(PL)', 'Harshit Jain', 11),
('DSQueue', 'GeeksforGeeks', 'Queue|Datastructures and Algorithms(PL)', 'Harshit Jain', 12),
('ML Basics', 'Simplilearn', 'Machine Learning Full Course', 'unknown', 13),
('AI Basics', 'Simplilearn', 'Artificial Intelligence Tutorial', 'Richard Kirchner', 14);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `UserID` varchar(20) DEFAULT NULL,
  `datestime` varchar(20) DEFAULT NULL,
  `datestimes` varchar(20) DEFAULT NULL,
  `slno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`UserID`, `datestime`, `datestimes`, `slno`) VALUES
('shashank H', '2020/12/25 14:10:02', '2020/12/25 14:11:11', 15),
('shashank H', '2020/12/25 14:14:36', '2020/12/25 14:14:59', 16),
('shashank H', '2020/12/26 15:36:52', '2020/12/26 15:36:59', 17),
('shashank H', '2020/12/26 16:30:16', '2020/12/26 16:30:28', 19),
('harsha', '2020/12/26 16:32:06', '2020/12/26 16:32:15', 20);

-- --------------------------------------------------------

--
-- Table structure for table `signout`
--

CREATE TABLE `signout` (
  `UserID` varchar(20) NOT NULL,
  `slnos` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `signout`
--

INSERT INTO `signout` (`UserID`, `slnos`) VALUES
('gowri', 1),
('gowriShankar', 2),
('gurudatta', 3),
('KNsubhodh', 4),
('lakshmi', 5),
('vani H v', 6),
('veena H A', 7);

-- --------------------------------------------------------

--
-- Table structure for table `signoutt`
--

CREATE TABLE `signoutt` (
  `UserID` varchar(20) DEFAULT NULL,
  `psw` varchar(10) DEFAULT NULL,
  `PhNo` varchar(10) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signoutt`
--

INSERT INTO `signoutt` (`UserID`, `psw`, `PhNo`, `age`, `sex`) VALUES
('gurudatta', 'guru@123', '7822562314', 21, 'Male'),
('gurudatta', 'guru@123', '7878366456', 20, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `UserID` varchar(20) NOT NULL,
  `psw` varchar(10) NOT NULL,
  `PhNo` varchar(10) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`UserID`, `psw`, `PhNo`, `age`, `sex`) VALUES
('harsha', 'hrs@123', '9898767656', 20, 'Male'),
('shashank H', 'skd@123', '9889045563', 17, 'Male');

--
-- Triggers `signup`
--
DELIMITER $$
CREATE TRIGGER `signedout` AFTER DELETE ON `signup` FOR EACH ROW INSERT INTO signoutt VALUES(old.UserID,old.psw,old.PhNo,old.age,old.sex)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `slno` int(2) NOT NULL,
  `website` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`slno`, `website`) VALUES
(2, 'www.stackoverflow.com'),
(3, 'www.geeksforgeeks.org'),
(4, 'www.freeCodeCamp.org'),
(5, 'www.w3schools.com'),
(6, 'www.nptel.ac.in.com'),
(7, 'data-flair.training'),
(8, 'www.udemy.com'),
(9, 'www.webdevtricks.com'),
(10, 'www.studentstutorial.com'),
(11, 'www.tutorialspoint.com'),
(12, 'www.javatpoint.com'),
(13, 'www.codeacademy.com'),
(14, 'www.coursera.org'),
(15, 'www.edX.org'),
(16, 'www.github.com'),
(17, 'www.codeavengers.com'),
(18, 'www.webdevtricks.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminname`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`C_name`) USING BTREE;

--
-- Indexes for table `c_sources`
--
ALTER TABLE `c_sources`
  ADD PRIMARY KEY (`slnos`),
  ADD KEY `C_name` (`C_name`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`slno`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `signout`
--
ALTER TABLE `signout`
  ADD PRIMARY KEY (`slnos`) USING BTREE;

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `PhNo` (`PhNo`) USING BTREE,
  ADD KEY `age` (`age`) USING BTREE;

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`slno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c_sources`
--
ALTER TABLE `c_sources`
  MODIFY `slnos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `signout`
--
ALTER TABLE `signout`
  MODIFY `slnos` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `slno` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `c_sources`
--
ALTER TABLE `c_sources`
  ADD CONSTRAINT `c_sources_ibfk_1` FOREIGN KEY (`C_name`) REFERENCES `courses` (`C_name`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `signup` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
