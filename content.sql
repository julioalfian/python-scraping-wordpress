-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2018 at 01:25 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sebangsa2`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` int(10) NOT NULL,
  `url` text NOT NULL,
  `title` text NOT NULL,
  `snippet` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `url`, `title`, `snippet`) VALUES
(17, 'https://en.wikipedia.org/wiki/Clock', 'Clock - Wikipedia', 'For other uses, see Clock (disambiguation).\\n\"Timepiece\" redirects here. For the Kenny Rogers album, see Timepiece (album). For the 1965 short film by Jim Henson, see Time Piece.\\n\\n\\n  The Swiss railway clock.\\n  The Shepherd Gate Clock at the Royal Observatory, Greenwich.\\nA clock is an instrument used to measure, keep, and indicate time. The clock is one of the oldest human inventions, meeting the need to measure intervals of time shorter than the natural units: the day, the lunar month, and '),
(18, 'https://id.wikipedia.org/wiki/Sepeda', 'Sepeda - Wikipedia bahasa Indonesia, ensiklopedia bebas', '  Ojek sepeda di Indonesia\\n  Sepeda gunung\\n  Sepeda dilengkapi lampu depan, dengan berbagai tas dan alat penyimpanan\\n  Rancangan sepeda Drais, 1817\\nSepeda (atau kereta angin) adalah kendaraan beroda dua atau tiga yang mempunyai setang, tempat duduk, dan sepasang pengayuh yang digerakkan kaki untuk menjalankannya.&#91;1&#93;\\n\\nDaftar isi\\n\\n1 Sejarah\\n2 Gir Tetap (Fixed Gear)\\n3 Roda Bebas (Freewheel)\\n4 Jenis-jenis sepeda\\n5 Lihat pula\\n6 Referensi\\n\\n\\n\\nSejarah[sunting | sunting sumber]\\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
