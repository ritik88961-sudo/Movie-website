-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2024 at 10:15 AM
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
-- Database: `moviedatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `actorid` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `birthYear` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`actorid`, `name`, `birthYear`) VALUES
(50, 'Yash', 1986),
(51, 'Sanjay Dutt', 1959),
(52, 'Benedict Cumberbatch', 1976),
(53, 'Elizabeth Olsen', 1989),
(54, 'Chris Hemsworth', 1983),
(55, 'Natalie Portman', 1981),
(56, 'Tom Hiddleston', 1981),
(57, 'Amitabh Bachchan', 1942),
(58, 'Jaya Bachchan', 1948),
(59, 'Shah Rukh Khan', 1965),
(60, 'Kajol', 1974),
(61, 'Aamir Khan', 1965),
(62, 'R. Madhavan', 1970),
(63, 'Sharman Joshi', 1979),
(64, 'Hrithik Roshan', 1974),
(65, 'Ranveer Singh', 1985),
(66, 'Deepika Padukone', 1986),
(67, 'Tim Robbins', 1958),
(68, 'Morgan Freeman', 1937),
(69, 'Leonardo DiCaprio', 1974),
(70, 'Ken Watanabe', 1959),
(71, 'Matthew McConaughey', 1969),
(72, 'Anne Hathaway', 1982),
(73, 'John David Washington', 1984),
(74, 'Robert Pattinson', 1986),
(75, 'Will Smith', 1968),
(76, 'Thandiwe Newton', 1972),
(77, 'Russell Crowe', 1964),
(78, 'Joaquin Phoenix', 1974),
(79, 'Kate Winslet', 1975),
(80, 'James Stewart', 1908),
(81, 'Donna Reed', 1921),
(82, 'Sam Worthington', 1976),
(83, 'Zoe Saldana', 1978),
(84, 'Marlon Brando', 1924),
(85, 'Al Pacino', 1940),
(86, 'Christian Bale', 1974),
(87, 'Heath Ledger', 1979),
(88, 'Liam Neeson', 1952),
(89, 'Ben Kingsley', 1943),
(90, 'Sam Neill', 1947),
(91, 'Laura Dern', 1967),
(92, 'Song Kang-ho', 1967),
(93, 'Lee Sun-kyun', 1975),
(94, 'Robert Downey Jr.', 1965),
(95, 'Chris Evans', 1981),
(150, 'Kanu Banerjee', 1905),
(151, 'Karuna Banerjee', 1919),
(152, 'Darsheel Safary', 1997),
(153, 'Sunil Dutt', 1929),
(154, 'Anushka Sharma', 1988),
(155, 'Ranbir Kapoor', 1982),
(156, 'Allu Arjun', 1982),
(157, 'Fahadh Faasil', 1982),
(158, 'N. T. Rama Rao Jr.', 1983),
(159, 'Ram Charan', 1985),
(160, 'Prabhas', 1979),
(161, 'Rana Daggubati', 1984),
(162, 'Mithun Chakraborty', 1950),
(163, 'Anupam Kher', 1955),
(164, 'Salman Khan', 1965),
(165, 'Nawazuddin Siddiqui', 1967),
(166, 'Tommy Lee Jones', 1946),
(167, 'Sebastian Stan', 1982),
(168, 'Anil Kapoor', 1956),
(169, 'Sidharth Malhotra', 1985),
(170, 'Kiara Advani', 1991);

-- --------------------------------------------------------

--
-- Table structure for table `financial`
--

CREATE TABLE `financial` (
  `movieid` int(11) NOT NULL,
  `budget` varchar(50) DEFAULT NULL,
  `revenue` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languageid` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languageid`, `name`) VALUES
(1, 'Hindi'),
(2, 'Telugu'),
(3, 'Kannada'),
(4, 'Tamil'),
(5, 'English'),
(6, 'French'),
(7, 'Bengali'),
(8, 'Gujarati'),
(9, 'Punjabi');

-- --------------------------------------------------------

--
-- Table structure for table `movieactor`
--

CREATE TABLE `movieactor` (
  `movieid` int(11) DEFAULT NULL,
  `actorid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movieactor`
--

INSERT INTO `movieactor` (`movieid`, `actorid`) VALUES
(101, 50),
(101, 51),
(102, 52),
(103, 54),
(103, 55),
(103, 56),
(104, 54),
(104, 56),
(105, 54),
(105, 55),
(106, 57),
(106, 58),
(107, 59),
(107, 60),
(108, 61),
(108, 62),
(108, 63),
(109, 59),
(109, 57),
(109, 64),
(110, 65),
(110, 66),
(111, 67),
(111, 68),
(112, 69),
(112, 70),
(118, 81),
(119, 82),
(119, 83),
(120, 84),
(120, 85),
(121, 86),
(121, 87),
(122, 88),
(122, 89),
(123, 90),
(123, 91),
(124, 92),
(124, 93),
(125, 94),
(125, 95),
(125, 54),
(126, 94),
(126, 95),
(126, 54),
(127, 150),
(127, 151),
(128, 61),
(128, 152),
(129, 51),
(129, 153),
(130, 61),
(130, 154),
(131, 155),
(131, 154),
(132, 156),
(132, 157),
(133, 158),
(133, 159),
(134, 160),
(134, 161),
(135, 162),
(135, 163),
(136, 164),
(136, 165),
(137, 95),
(137, 166),
(138, 95),
(138, 167),
(139, 164),
(139, 168),
(140, 169),
(140, 170),
(116, 78),
(117, 69),
(117, 79),
(118, 80),
(113, 71),
(113, 72),
(115, 75),
(115, 76),
(116, 77);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieid` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `release_year` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `language` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieid`, `title`, `industry`, `release_year`, `rating`, `language`) VALUES
(101, 'K.G.F: Chapter 2', 'Bollywood', 2022, 8.4, 3),
(102, 'Doctor Strange in the Multiverse of Madness', 'Hollywood', 2022, 7, 5),
(103, 'Thor: The Dark World', 'Hollywood', 2013, 6.8, 5),
(104, 'Thor: Ragnarok', 'Hollywood', 2017, 7.9, 5),
(105, 'Thor: Love and Thunder', 'Hollywood', 2022, 6.8, 5),
(106, 'Sholay', 'Bollywood', 1975, 8.1, 1),
(107, 'Dilwale Dulhania Le Jayenge', 'Bollywood', 1995, 8, 1),
(108, '3 Idiots', 'Bollywood', 2009, 8.4, 1),
(109, 'Kabhi Khushi Kabhie Gham', 'Bollywood', 2001, 7.4, 1),
(110, 'Bajirao Mastani', 'Bollywood', 2015, 7.2, 1),
(111, 'The Shawshank Redemption', 'Hollywood', 1994, 9.3, 5),
(112, 'Inception', 'Hollywood', 2010, 8.8, 5),
(113, 'Interstellar', 'Hollywood', 2014, 8.6, 5),
(115, 'The Pursuit of Happyness', 'Hollywood', 2006, 8, 5),
(116, 'Gladiator', 'Hollywood', 2000, 8.5, 5),
(117, 'Titanic', 'Hollywood', 1997, 7.9, 5),
(118, 'It\'s a Wonderful Life', 'Hollywood', 1946, 8.6, 5),
(119, 'Avatar', 'Hollywood', 2009, 7.8, 5),
(120, 'The Godfather', 'Hollywood', 1972, 9.2, 5),
(121, 'The Dark Knight', 'Hollywood', 2008, 9, 5),
(122, 'Schindler\'s List', 'Hollywood', 1993, 9, 5),
(123, 'Jurassic Park', 'Hollywood', 1993, 8.2, 5),
(124, 'Parasite', 'Hollywood', 2019, 8.5, 5),
(125, 'Avengers: Endgame', 'Hollywood', 2019, 8.4, 5),
(126, 'Avengers: Infinity War', 'Hollywood', 2018, 8.4, 5),
(127, 'Pather Panchali', 'Bollywood', 1955, 8.3, 7),
(128, 'Taare Zameen Par', 'Bollywood', 2007, 8.3, 1),
(129, 'Munna Bhai M.B.B.S.', 'Bollywood', 2003, 8.1, 1),
(130, 'PK', 'Bollywood', 2014, 8.1, 1),
(131, 'Sanju', 'Bollywood', 2018, NULL, 1),
(132, 'Pushpa: The Rise - Part 1', 'Bollywood', 2021, 7.6, 2),
(133, 'RRR', 'Bollywood', 2022, 8, 2),
(134, 'Baahubali: The Beginning', 'Bollywood', 2015, 8, 2),
(135, 'The Kashmir Files', 'Bollywood', 2022, 8.3, 1),
(136, 'Bajrangi Bhaijaan', 'Bollywood', 2015, 8.1, 1),
(137, 'Captain America: The First Avenger', 'Hollywood', 2011, 6.9, 5),
(138, 'Captain America: The Winter Soldier', 'Hollywood', 2014, 7.8, 5),
(139, 'Race 3', 'Bollywood', 2018, 1.9, 1),
(140, 'Shershaah', 'Bollywood', 2021, 8.4, 1),
(141, 'Shinda Shinda No Papa', 'Bollywood', 2024, 8.8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actorid`);

--
-- Indexes for table `financial`
--
ALTER TABLE `financial`
  ADD PRIMARY KEY (`movieid`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languageid`);

--
-- Indexes for table `movieactor`
--
ALTER TABLE `movieactor`
  ADD KEY `movieid` (`movieid`),
  ADD KEY `actorid` (`actorid`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieid`),
  ADD KEY `fk_language` (`language`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `actorid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movieid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movieactor`
--
ALTER TABLE `movieactor`
  ADD CONSTRAINT `movieactor_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `movieactor_ibfk_2` FOREIGN KEY (`actorid`) REFERENCES `actors` (`actorid`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `fk_language` FOREIGN KEY (`language`) REFERENCES `languages` (`languageid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
