-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2021 at 05:00 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5f8fb7861cd9a', '5f8fb7861d3cf'),
('5f8fb7861f005', '5f8fb7861f453'),
('6006d1883bffb', '6006d18854669'),
('6006d1889fa0e', '6006d188ac0b5'),
('600c16b784d1d', '600c16b7e485c'),
('600c16b81db1a', '600c16b821ff4'),
('600c16b8445b3', '600c16b84b49c'),
('600c16b86811b', '600c16b86c55c'),
('600c16b8941d7', '600c16b898604');

-- --------------------------------------------------------

--
-- Table structure for table `captures`
--

CREATE TABLE IF NOT EXISTS `captures` (
  `eid` text CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `src` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('60cad93c25d7d', 'Sanket Girish Chaudhari', 'sanketchaudhari3009@gmail.com', 'Regarding to Feedback of Website', 'very good responsive', '2021-06-17', '10:40:20am');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5f8fb7861cd9a', '1', '5f8fb7861d3cf'),
('5f8fb7861cd9a', '2', '5f8fb7861d3d2'),
('5f8fb7861cd9a', '2', '5f8fb7861d3d3'),
('5f8fb7861cd9a', '2', '5f8fb7861d3d4'),
('5f8fb7861f005', '2', '5f8fb7861f453'),
('5f8fb7861f005', '1', '5f8fb7861f458'),
('5f8fb7861f005', '1', '5f8fb7861f45a'),
('5f8fb7861f005', '1', '5f8fb7861f45b'),
('6006d1883bffb', 'a', '6006d18854669'),
('6006d1883bffb', 'b', '6006d1885466d'),
('6006d1883bffb', 'c', '6006d1885466e'),
('6006d1883bffb', 'd', '6006d1885466f'),
('6006d1889fa0e', 'a', '6006d188ac0b1'),
('6006d1889fa0e', 'b', '6006d188ac0b5'),
('6006d1889fa0e', 'c', '6006d188ac0b6'),
('6006d1889fa0e', 'd', '6006d188ac0b7'),
('600c16b784d1d', 'asd', '600c16b7e485c'),
('600c16b784d1d', 'fgh', '600c16b7e486b'),
('600c16b784d1d', 'hjk', '600c16b7e486e'),
('600c16b784d1d', 'lmn', '600c16b7e4871'),
('600c16b81db1a', 'qwe', '600c16b821fe1'),
('600c16b81db1a', 'rty', '600c16b821ff4'),
('600c16b81db1a', 'uio', '600c16b821ffa'),
('600c16b81db1a', 'plk', '600c16b822000'),
('600c16b8445b3', 'zxc', '600c16b84b492'),
('600c16b8445b3', 'vbn', '600c16b84b49a'),
('600c16b8445b3', 'mlk', '600c16b84b49c'),
('600c16b8445b3', 'jhg', '600c16b84b49e'),
('600c16b86811b', '123', '600c16b86c546'),
('600c16b86811b', '456', '600c16b86c555'),
('600c16b86811b', '789', '600c16b86c55c'),
('600c16b86811b', '654', '600c16b86c564'),
('600c16b8941d7', '!@#', '600c16b898604'),
('600c16b8941d7', '$%^', '600c16b898611'),
('600c16b8941d7', '&*(', '600c16b898614'),
('600c16b8941d7', ')_+', '600c16b898619'),
('60cad99ca7857', 'a', '60cad9a287e07'),
('60cad99ca7857', 'c', '60cad9a287e11'),
('60cad99ca7857', 'b', '60cad9a287e14');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5f8fb766eebed', '5f8fb7861cd9a', '1', 4, 1),
('5f8fb766eebed', '5f8fb7861f005', '2', 4, 2),
('6006d16aef115', '6006d1883bffb', 'A', 4, 1),
('6006d16aef115', '6006d1889fa0e', 'b', 4, 2),
('600c165040809', '600c16b784d1d', 'a1', 4, 1),
('600c165040809', '600c16b81db1a', 'b2', 4, 2),
('600c165040809', '600c16b8445b3', 'c3', 4, 3),
('600c165040809', '600c16b86811b', 'd4', 4, 4),
('600c165040809', '600c16b8941d7', 'e5', 4, 5),
('60cad98072f0d', '60cad99ca7857', 'a', 4, 1),
('60cad98072f0d', '60cad9c946cfb', 'a', 4, 1),
('60cad98072f0d', '60cad9cd97c91', 'a', 4, 1),
('60cad98072f0d', '60cad9d315aae', 'a', 4, 1),
('60cad98072f0d', '60cad9e1c9493', 'a', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE IF NOT EXISTS `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('5f8fb766eebed', 'Choose', 1, 1, 2, 1, '', '', '2020-10-21 04:21:58'),
('6006d16aef115', 'Temp', 2, 1, 2, 2, 'test test test', '#tag', '2021-01-19 12:32:42'),
('600c165040809', 'Checktest', 2, 1, 5, 1, '', '', '2021-01-23 12:28:00'),
('60cad98072f0d', 'Abc', 1, 0, 2, 1, 'a', 'a', '2021-06-17 05:11:28');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE IF NOT EXISTS `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('a@a.com', 28, '2021-01-26 06:01:19'),
('a@b.com', 31, '2021-02-07 05:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
