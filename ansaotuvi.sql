-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 04:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ansaotuvi`
--

-- --------------------------------------------------------

--
-- Table structure for table `an1619`
--

CREATE TABLE `an1619` (
  `row` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `col` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `an1619`
--

INSERT INTO `an1619` (`row`, `col`, `val`) VALUES
('Ất', 'Hóa Khoa', 'Tử Vi'),
('Ất', 'Hóa Kị', 'Thái Âm'),
('Ất', 'Hóa Lộc', 'Thiên Cơ'),
('Ất', 'Hóa Quyền', 'Thiên Lương'),
('Bính', 'Hóa Khoa', 'Văn Xương'),
('Bính', 'Hóa Kị', 'Liêm Trinh'),
('Bính', 'Hóa Lộc', 'Thiên Đồng'),
('Bính', 'Hóa Quyền', 'Thiên Cơ'),
('Canh', 'Hóa Khoa', 'Thái Âm'),
('Canh', 'Hóa Kị', 'Thiên Đồng'),
('Canh', 'Hóa Lộc', 'Thái Dương'),
('Canh', 'Hóa Quyền', 'Vũ Khúc'),
('Đinh', 'Hóa Khoa', 'Thiên Cơ'),
('Đinh', 'Hóa Kị', 'Cự Môn'),
('Đinh', 'Hóa Lộc', 'Thái Âm'),
('Đinh', 'Hóa Quyền', 'Thiên Đồng'),
('Giáp', 'Hóa Khoa', 'Vũ Khúc'),
('Giáp', 'Hóa Kị', 'Thái Dương'),
('Giáp', 'Hóa Lộc', 'Liêm Trinh'),
('Giáp', 'Hóa Quyền', 'Phá Quân'),
('Kỷ', 'Hóa Khoa', 'Thiên Lương'),
('Kỷ', 'Hóa Kị', 'Văn Khúc'),
('Kỷ', 'Hóa Lộc', 'Vũ Khúc'),
('Kỷ', 'Hóa Quyền', 'Tham Lang'),
('Mậu', 'Hóa Khoa', 'Hữu Bật'),
('Mậu', 'Hóa Kị', 'Thiên Cơ'),
('Mậu', 'Hóa Lộc', 'Tham Lang'),
('Mậu', 'Hóa Quyền', 'Thái Âm'),
('Nhâm', 'Hóa Khoa', 'Tả Phù'),
('Nhâm', 'Hóa Kị', 'Vũ Khúc'),
('Nhâm', 'Hóa Lộc', 'Thiên Lương'),
('Nhâm', 'Hóa Quyền', 'Tử Vi'),
('Quý', 'Hóa Khoa', 'Thái Âm'),
('Quý', 'Hóa Kị', 'Tham Lang'),
('Quý', 'Hóa Lộc', 'Phá Quân'),
('Quý', 'Hóa Quyền', 'Cự Môn'),
('Tân', 'Hóa Khoa', 'Văn Khúc'),
('Tân', 'Hóa Kị', 'Văn Xương'),
('Tân', 'Hóa Lộc', 'Cự Môn'),
('Tân', 'Hóa Quyền', 'Thiên Lương');

-- --------------------------------------------------------

--
-- Table structure for table `bangcuc`
--

CREATE TABLE `bangcuc` (
  `yearid` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuc` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bangcuc`
--

INSERT INTO `bangcuc` (`yearid`, `cuc`) VALUES
('Ất Dậu', 'Thủy'),
('Ất hợi', 'Hỏa'),
('Ất Mão', 'Thủy'),
('Ất Mùi', 'Kim'),
('Ất Sửu', 'Kim'),
('Ất Tị', 'Hỏa'),
('Bính Dần', 'Hỏa'),
('Bính Ngọ', 'Thủy'),
('Bính Thân', 'Hỏa'),
('Bính Thìn', 'Thổ'),
('Bính Tí', 'Thủy'),
('Bính Tuất', 'Thổ'),
('Canh Dần', 'Mộc'),
('Canh Ngọ', 'Thổ'),
('Canh Thân', 'Mộc'),
('Canh Thìn', 'Kim'),
('Canh Tí', 'Thổ'),
('Canh Tuất', 'Kim'),
('Đinh Dậu', 'Hỏa'),
('Đinh Hợi', 'Thổ'),
('Đinh Mão', 'Hỏa'),
('Đinh Mùi', 'Thủy'),
('Đinh Sửu', 'Thủy'),
('Đinh Tị', 'Thổ'),
('Giáp Dần', 'Thủy'),
('Giáp Ngọ', 'Kim'),
('Giáp Thân', 'Thủy'),
('Giáp Thìn', 'Hỏa'),
('Giáp Tí', 'Kim'),
('Giáp Tuất', 'Hỏa'),
('Kỉ Dậu', 'Thổ'),
('Kỉ Hợi', 'Mộc'),
('Kỉ Mão', 'Thổ'),
('Kỉ Mùi', 'Hỏa'),
('Kỉ Sửu', 'Hỏa'),
('Kỉ Tị', 'Mộc'),
('Mậu Dần', 'Thổ'),
('Mậu Ngọ', 'Hỏa'),
('Mậu Thân', 'Thổ'),
('Mậu Thìn', 'Mộc'),
('Mậu Tí', 'Hỏa'),
('Mậu Tuất', 'Mộc'),
('Nhâm Dần', 'Kim'),
('Nhâm Ngọ', 'Mộc'),
('Nhâm Thân', 'Kim'),
('Nhâm Thìn', 'Thủy'),
('Nhâm Tí', 'Mộc'),
('Nhâm Tuất', 'Thủy'),
('Quý Dậu', 'Kim'),
('Quý Hợi', 'Thủy'),
('Quý Mão', 'Kim'),
('Quý Mùi', 'Mộc'),
('Quý Sửu', 'Mộc'),
('Quý Tị', 'Thủy'),
('Tâm Mão', 'Mộc'),
('Tân Dậu', 'Mộc'),
('Tân Hợi', 'Kim'),
('Tân Mùi', 'Thổ'),
('Tân Sửu', 'Thổ'),
('Tân Tị', 'Kim');

-- --------------------------------------------------------

--
-- Table structure for table `bangmenh`
--

CREATE TABLE `bangmenh` (
  `id` int(11) NOT NULL,
  `destinyName` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destinyDescription` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Ko ai dùng cột này'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bangmenh`
--

INSERT INTO `bangmenh` (`id`, `destinyName`, `destinyDescription`) VALUES
(1, 'Mệnh', 'Mệnh'),
(12, 'Huynh Đệ', 'Sửu'),
(11, 'Phu Thê', 'Dần'),
(10, 'Tử tức', 'Mão'),
(9, 'Tài bạch', 'Thìn'),
(8, 'Tật ách', 'Tị'),
(7, 'Thiên Di', 'Ngọ'),
(6, 'Nô bộc', 'Mùi'),
(5, 'Quan lộc', 'Thân'),
(4, 'Điền trạch', 'Dậu'),
(3, 'Phúc Đức', 'Tuất'),
(2, 'Phụ Mẫu', 'Hợi');

-- --------------------------------------------------------

--
-- Table structure for table `bangnguhanh`
--

CREATE TABLE `bangnguhanh` (
  `cuc` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sinh` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `khac` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ungvoi` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bangnguhanh`
--

INSERT INTO `bangnguhanh` (`cuc`, `sinh`, `khac`, `ungvoi`) VALUES
('Hỏa', 'Thổ', 'Kim', 6),
('Kim', 'Thủy', 'Mộc', 4),
('Mộc', 'Hỏa', 'Thổ', 3),
('Thổ', 'Kim', 'Thủy', 5),
('Thủy', 'Mộc', 'Hỏa', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cns`
--

CREATE TABLE `cns` (
  `year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ymap` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cns`
--

INSERT INTO `cns` (`year`, `ymap`) VALUES
('Ất', 'Mậu'),
('Bính', 'Canh'),
('Canh', 'Mậu'),
('Đinh', 'Nhâm'),
('Giáp', 'Bính'),
('Kỉ', 'Bính'),
('Mậu', 'Giáp'),
('Nhâm', 'Nhâm'),
('Quý', 'Giáp'),
('Tân', 'Canh');

-- --------------------------------------------------------

--
-- Table structure for table `cungthan`
--

CREATE TABLE `cungthan` (
  `gio` int(3) NOT NULL,
  `thancu` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cungthan`
--

INSERT INTO `cungthan` (`gio`, `thancu`) VALUES
(0, 4),
(1, 6),
(2, 8),
(3, 10),
(5, 2),
(6, 4),
(7, 6),
(8, 8),
(9, 10),
(11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `duongam`
--

CREATE TABLE `duongam` (
  `id` tinyint(4) NOT NULL COMMENT 'lol it''s always the id that dominates the database',
  `cung` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `laam` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `duongam`
--

INSERT INTO `duongam` (`id`, `cung`, `laam`) VALUES
(1, 'Tí', 0),
(2, 'Sửu', 1),
(3, 'Dần', 0),
(4, 'Mão', 1),
(5, 'Thìn', 0),
(6, 'Tị', 1),
(7, 'Ngọ', 0),
(8, 'Mùi', 1),
(9, 'Thân', 0),
(10, 'Dậu', 1),
(11, 'Tuất', 0),
(12, 'Hợi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `htlt`
--

CREATE TABLE `htlt` (
  `id` int(2) NOT NULL,
  `name` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p1` int(2) NOT NULL,
  `p2` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `htlt`
--

INSERT INTO `htlt` (`id`, `name`, `p1`, `p2`) VALUES
(0, 'Dần', 11, 1),
(1, 'Mão', 7, 8),
(2, 'Thìn', 0, 8),
(3, 'Tị', 1, 8),
(4, 'Ngọ', 11, 1),
(5, 'Mùi', 7, 8),
(6, 'Thân', 0, 8),
(7, 'Dậu', 1, 8),
(8, 'Tuất', 11, 1),
(9, 'Hợi', 7, 8),
(10, 'Tí', 0, 8),
(11, 'Sửu', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `pcns`
--

CREATE TABLE `pcns` (
  `getchar` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pcns`
--

INSERT INTO `pcns` (`getchar`, `year`) VALUES
('g', 'Giáp'),
('k', 'Kỉ'),
('a', 'Ất'),
('c', 'Canh'),
('b', 'Bính'),
('t', 'Tân'),
('m', 'Mậu'),
('q', 'Quý'),
('d', 'Đinh'),
('n', 'Nhâm');

-- --------------------------------------------------------

--
-- Table structure for table `pymap`
--

CREATE TABLE `pymap` (
  `id` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pymap`
--

INSERT INTO `pymap` (`id`, `year`) VALUES
('d', 'Dần'),
('m', 'Mão'),
('t', 'Thìn'),
('i', 'Tị'),
('n', 'Ngọ'),
('u', 'Mùi'),
('j', 'Thân'),
('z', 'Dậu'),
('x', 'Tuất'),
('h', 'Hợi'),
('y', 'Tí'),
('w', 'Sửu');

-- --------------------------------------------------------

--
-- Table structure for table `symap`
--

CREATE TABLE `symap` (
  `id` tinyint(3) NOT NULL,
  `year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `symap`
--

INSERT INTO `symap` (`id`, `year`) VALUES
(0, 'Canh'),
(1, 'Tân'),
(2, 'Nhâm'),
(3, 'Quý'),
(4, 'Giáp'),
(5, 'Ất'),
(6, 'Bính'),
(7, 'Đinh'),
(8, 'Mậu'),
(9, 'Kỉ');

-- --------------------------------------------------------

--
-- Table structure for table `tamhop`
--

CREATE TABLE `tamhop` (
  `id` int(11) NOT NULL,
  `name` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pos` int(2) NOT NULL,
  `colpos` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tamhop`
--

INSERT INTO `tamhop` (`id`, `name`, `pos`, `colpos`) VALUES
(0, 'Dần', 0, 2),
(1, 'Mão', 1, 3),
(2, 'Thìn', 2, 0),
(3, 'Tị', 0, 1),
(4, 'Ngọ', 1, 2),
(5, 'Mùi', 2, 3),
(6, 'Thân', 0, 0),
(7, 'Dậu', 1, 1),
(8, 'Tuất', 2, 2),
(9, 'Hợi', 0, 3),
(10, 'Tí', 1, 0),
(11, 'Sửu', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `thiencan`
--

CREATE TABLE `thiencan` (
  `id` int(11) NOT NULL,
  `tcan` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `laam` tinyint(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thiencan`
--

INSERT INTO `thiencan` (`id`, `tcan`, `laam`) VALUES
(1, 'Canh', 0),
(2, 'Tân', 1),
(3, 'Nhâm', 0),
(4, 'Quý', 1),
(5, 'Giáp', 0),
(6, 'Ất', 1),
(7, 'Bính', 0),
(8, 'Đinh', 1),
(9, 'Mậu', 0),
(10, 'Kỉ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ymap`
--

CREATE TABLE `ymap` (
  `id` tinyint(3) NOT NULL,
  `year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ymap`
--

INSERT INTO `ymap` (`id`, `year`) VALUES
(0, 'Dần'),
(1, 'Mão'),
(2, 'Thìn'),
(3, 'Tị'),
(4, 'Ngọ'),
(5, 'Mùi'),
(6, 'Thân'),
(7, 'Dậu'),
(8, 'Tuất'),
(9, 'Hợi'),
(10, 'Tí'),
(11, 'Sửu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `an1619`
--
ALTER TABLE `an1619`
  ADD PRIMARY KEY (`row`,`col`);

--
-- Indexes for table `bangcuc`
--
ALTER TABLE `bangcuc`
  ADD PRIMARY KEY (`yearid`);

--
-- Indexes for table `bangmenh`
--
ALTER TABLE `bangmenh`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `bangnguhanh`
--
ALTER TABLE `bangnguhanh`
  ADD PRIMARY KEY (`cuc`);

--
-- Indexes for table `cns`
--
ALTER TABLE `cns`
  ADD PRIMARY KEY (`year`,`ymap`);

--
-- Indexes for table `cungthan`
--
ALTER TABLE `cungthan`
  ADD PRIMARY KEY (`gio`);

--
-- Indexes for table `duongam`
--
ALTER TABLE `duongam`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `htlt`
--
ALTER TABLE `htlt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pcns`
--
ALTER TABLE `pcns`
  ADD PRIMARY KEY (`getchar`);

--
-- Indexes for table `pymap`
--
ALTER TABLE `pymap`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `symap`
--
ALTER TABLE `symap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tamhop`
--
ALTER TABLE `tamhop`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `thiencan`
--
ALTER TABLE `thiencan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ymap`
--
ALTER TABLE `ymap`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bangmenh`
--
ALTER TABLE `bangmenh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `duongam`
--
ALTER TABLE `duongam`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'lol it''s always the id that dominates the database', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `thiencan`
--
ALTER TABLE `thiencan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
