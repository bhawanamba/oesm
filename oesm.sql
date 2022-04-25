-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2022 at 09:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oesm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `college` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `gender`, `college`) VALUES
(1, 'sunnygkp10@gmail.com', '123456', '', ''),
(2, 'd@d.com', 'asd', 'a', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(1, '55892169bf6a7', '55892169d2efc'),
(2, '5589216a3646e', '5589216a48722'),
(3, '558922117fcef', '5589221195248'),
(4, '55892211e44d5', '55892211f1fa7'),
(5, '558922894c453', '558922895ea0a'),
(6, '558922899ccaa', '55892289aa7cf'),
(7, '558923538f48d', '558923539a46c'),
(8, '55892353f05c4', '55892354051be'),
(9, '607336aa8c987', '607336aa961b5'),
(10, '607336aacedd1', '607336aadc68e'),
(11, '607336ab244aa', '607336ab31664');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id1` int(100) NOT NULL,
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

INSERT INTO `feedback` (`id1`, `id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
(1, '60730932a3d1b', 'Demo Test', 'test@feedback.com', 'Testing Feedbacks', 'This is a demo text for testing purpose', '2021-04-11', '04:35:30pm'),
(2, '607309ab640d8', 'Chris', 'chris@gmail.com', 'Regard System', 'this is a demo text!', '2021-04-11', '04:37:31pm'),
(3, '60730a627e21f', 'Oliver', 'oliver@gmail.com', 'Bug', 'demo demo', '2021-04-11', '04:40:34pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
(1, 'sunnygkp10@gmail.com', '558921841f1ec', 4, 2, 2, 0, '2015-06-23 16:31:26'),
(2, 'sunnygkp10@gmail.com', '558920ff906b8', 4, 2, 2, 0, '2015-06-23 20:32:09'),
(3, 'avantika420@gmail.com', '558921841f1ec', 4, 2, 2, 0, '2015-06-23 21:33:04'),
(4, 'avantika420@gmail.com', '5589222f16b93', 4, 2, 2, 0, '2015-06-23 21:49:39'),
(5, 'mi5@hollywood.com', '5589222f16b93', 4, 2, 2, 0, '2015-06-23 22:12:56'),
(6, 'nik1@gmail.com', '558921841f1ec', 1, 2, 1, 1, '2015-06-23 23:11:50'),
(7, 'clancy@gmail.com', '5589222f16b93', 4, 2, 2, 0, '2021-04-11 20:24:37'),
(8, 'sunnygkp10@gmail.com', '5589222f16b93', 4, 2, 2, 0, '2021-04-11 23:27:21'),
(9, 'doe@gmail.com', '558921841f1ec', 4, 2, 2, 0, '2021-04-12 00:20:17'),
(10, 'james@gmail.com', '558921841f1ec', 4, 2, 2, 0, '2021-04-12 00:26:12'),
(11, 'james@gmail.com', '5589222f16b93', 4, 2, 2, 0, '2021-04-12 00:26:54'),
(12, 'steeve@gmail.com', '558921841f1ec', 4, 2, 2, 0, '2021-04-12 00:44:46'),
(13, 'steeve@gmail.com', '5589222f16b93', 4, 2, 2, 0, '2021-04-12 00:45:20'),
(14, 'steeve@gmail.com', '6073360884420', 6, 3, 3, 0, '2021-04-12 00:50:15'),
(16, 'pankaj12@gmail.com', '558922ec03021', 1, 2, 1, 1, '2022-04-23 05:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(1, '55892169bf6a7', 'usermod', '55892169d2efc'),
(2, '55892169bf6a7', 'useradd', '55892169d2f05'),
(3, '55892169bf6a7', 'useralter', '55892169d2f09'),
(4, '55892169bf6a7', 'groupmod', '55892169d2f0c'),
(5, '5589216a3646e', '751', '5589216a48713'),
(6, '5589216a3646e', '752', '5589216a4871a'),
(7, '5589216a3646e', '754', '5589216a4871f'),
(8, '5589216a3646e', '755', '5589216a48722'),
(9, '558922117fcef', 'echo', '5589221195248'),
(10, '558922117fcef', 'print', '558922119525a'),
(11, '558922117fcef', 'printf', '5589221195265'),
(12, '558922117fcef', 'cout', '5589221195270'),
(13, '55892211e44d5', 'int a', '55892211f1f97'),
(14, '55892211e44d5', '$a', '55892211f1fa7'),
(15, '55892211e44d5', 'long int a', '55892211f1fb4'),
(16, '55892211e44d5', 'int a$', '55892211f1fbd'),
(17, '558922894c453', 'cin>>a;', '558922895ea0a'),
(18, '558922894c453', 'cin<<a;', '558922895ea26'),
(19, '558922894c453', 'cout>>a;', '558922895ea34'),
(20, '558922894c453', 'cout<a;', '558922895ea41'),
(21, '558922899ccaa', 'cout', '55892289aa7cf'),
(22, '558922899ccaa', 'cin', '55892289aa7df'),
(23, '558922899ccaa', 'print', '55892289aa7eb'),
(24, '558922899ccaa', 'printf', '55892289aa7f5'),
(25, '558923538f48d', '255.0.0.0', '558923539a46c'),
(26, '558923538f48d', '255.255.255.0', '558923539a480'),
(27, '558923538f48d', '255.255.0.0', '558923539a48b'),
(28, '558923538f48d', 'none of these', '558923539a495'),
(29, '55892353f05c4', '192.168.1.100', '5589235405192'),
(30, '55892353f05c4', '172.168.16.2', '55892354051a3'),
(31, '55892353f05c4', '10.0.0.0.1', '55892354051b4'),
(32, '55892353f05c4', '11.11.11.11', '55892354051be'),
(33, '607336aa8c987', 'module.expose', '607336aa961a7'),
(34, '607336aa8c987', 'module', '607336aa961b1'),
(35, '607336aa8c987', 'module.exports', '607336aa961b5'),
(36, '607336aa8c987', 'all', '607336aa961b9'),
(37, '607336aacedd1', 'nodejs codeastro.js', '607336aadc686'),
(38, '607336aacedd1', 'node codeastro.js', '607336aadc68e'),
(39, '607336aacedd1', 'codeastro.js', '607336aadc691'),
(40, '607336aacedd1', 'none', '607336aadc694'),
(41, '607336ab244aa', 'npm --version', '607336ab31664'),
(42, '607336ab244aa', 'npm --ver', '607336ab31670'),
(43, '607336ab244aa', 'npm help', '607336ab31672'),
(44, '607336ab244aa', 'none', '607336ab31673');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(1, '558920ff906b8', '55892169bf6a7', 'what is command for changing user information??', 4, 1),
(2, '558920ff906b8', '5589216a3646e', 'what is permission for view only for other??', 4, 2),
(3, '558921841f1ec', '558922117fcef', 'what is command for print in php??', 4, 1),
(4, '558921841f1ec', '55892211e44d5', 'which is a variable of php??', 4, 2),
(5, '5589222f16b93', '558922894c453', 'what is correct statement in c++??', 4, 1),
(6, '5589222f16b93', '558922899ccaa', 'which command is use for print the output in c++?', 4, 2),
(7, '558922ec03021', '558923538f48d', 'what is correct mask for A class IP???', 4, 1),
(8, '558922ec03021', '55892353f05c4', 'which is not a private IP??', 4, 2),
(9, '6073360884420', '607336aa8c987', 'The node.js modules can be exposed using', 4, 1),
(10, '6073360884420', '607336aacedd1', 'Which statement executes the code of codeastro.js file?', 4, 2),
(11, '6073360884420', '607336ab244aa', 'How can we check the current version of NPM?', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
(1, '558920ff906b8', 'Linux : File Managment', 2, 1, 2, 5, '', 'linux', '2015-06-23 16:03:59'),
(2, '558921841f1ec', 'Php Coding', 2, 1, 2, 5, '', 'PHP', '2015-06-23 16:06:12'),
(3, '5589222f16b93', 'C++ Coding', 2, 1, 2, 5, '', 'c++', '2015-06-23 16:09:03'),
(4, '558922ec03021', 'Networking', 2, 1, 2, 5, '', 'networking', '2015-06-23 16:12:12'),
(5, '6073360884420', 'Nodejs Term', 2, 2, 3, 2, 'Basic test for nodejs terms', 'nodejs', '2021-04-12 00:46:48'),
(6, '62639a1d231ae', '', 0, 0, 0, 0, '', '', '2022-04-23 06:18:05'),
(7, '62639a43697b7', 'Aa', 1, 1, 1, 1, 'we', '1', '2022-04-23 06:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `email`, `score`, `time`) VALUES
(1, 'sunnygkp10@gmail.com', 5, '2021-04-11 23:27:17'),
(2, 'avantika420@gmail.com', 8, '2015-06-23 21:49:39'),
(3, 'mi5@hollywood.com', 4, '2015-06-23 22:12:56'),
(4, 'nik1@gmail.com', 1, '2015-06-23 23:11:50'),
(5, 'doe@gmail.com', 4, '2021-04-12 00:20:17'),
(6, 'clancy@gmail.com', 4, '2021-04-11 20:24:37'),
(7, 'james@gmail.com', 14, '2021-04-12 00:32:53'),
(8, 'steeve@gmail.com', 14, '2021-04-12 00:50:15'),
(9, 'pankaj12@gmail.com', 1, '2022-04-23 06:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Asley', 'F', 'Wh Coast College', 'ashley@gmail.com', 3014797869, 'e10adc3949ba59abbe56e057f20f883e'),
('Tom Clancy', 'M', 'Wh Coast College', 'clancy@gmail.com', 1485554569, '5f4dcc3b5aa765d61d8327deb882cf99'),
('John Doe', 'M', 'Demo College', 'doe@gmail.com', 1245788880, '5f4dcc3b5aa765d61d8327deb882cf99'),
('Freda Mack\n', 'F', 'Wh Coast College', 'freda@gmail.com', 2150488880, 'e10adc3949ba59abbe56e057f20f883e'),
('James Rhoades', 'M', 'Westham College', 'james@gmail.com', 245778540, '5f4dcc3b5aa765d61d8327deb882cf99'),
('Johnny', 'M', 'Greenville College', 'johnnys@gmail.com', 3780145870, 'e10adc3949ba59abbe56e057f20f883e'),
('Liam', 'M', 'Liberty College', 'liam@gmail.com', 1753150015, 'e10adc3949ba59abbe56e057f20f883e'),
('Pankaj', 'M', 'KIT', 'pankaj12@gmail.com', 9874563210, '45c7dc500d8244a44ae0b7fd5ed4ddc0'),
('Steeve Moore', 'M', 'Westview College', 'steeve@gmail.com', 2146975696, '5f4dcc3b5aa765d61d8327deb882cf99'),
('William', 'M', 'Riverview College', 'will@gmail.com', 3478540365, 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id1`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id1` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
