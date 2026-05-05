-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2026 at 11:32 AM
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
-- Database: `pssms`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `PopulateSlots` ()   BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 500 DO
        INSERT IGNORE INTO ParkingSlot (SlotNumber, SlotStatus) VALUES (i, 'Available');
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `PlateNumber` varchar(20) NOT NULL,
  `DriverName` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`PlateNumber`, `DriverName`, `PhoneNumber`) VALUES
('001a', 'phoibe', '434567876543'),
('10', 'car', '00000'),
('20', 'pp', '56789'),
('200', 'phoibe', '0000'),
('2000', 'doo', ''),
('20a', 'phoibe', '000'),
('21', 'pp', '34'),
('222', 'a', '12'),
('30', 'www', '0000000'),
('400d', 'ggggg', ''),
('45', 'ff', '444'),
('500e', 'dd', ''),
('90', 'kirabo', '0987'),
('A200D', 'ddd', ''),
('a20a', 'pp', '0000'),
('d300', 'dds', ''),
('kk100a', 'kirabo', ''),
('pp001', 'kirabo', '078789000');

-- --------------------------------------------------------

--
-- Table structure for table `parkingrecord`
--

CREATE TABLE `parkingrecord` (
  `RecordID` int(11) NOT NULL,
  `PlateNumber` varchar(20) DEFAULT NULL,
  `SlotNumber` int(11) DEFAULT NULL,
  `EntryTime` datetime DEFAULT NULL,
  `ExitTime` datetime DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parkingrecord`
--

INSERT INTO `parkingrecord` (`RecordID`, `PlateNumber`, `SlotNumber`, `EntryTime`, `ExitTime`, `Duration`) VALUES
(19, '20', 30, '2026-04-15 23:32:44', '2026-04-16 00:30:02', 1),
(22, '200', 2, '2026-04-16 00:05:35', '2026-04-16 01:41:18', 2),
(24, '45', 1, '2026-04-16 00:16:49', '2026-04-16 00:17:04', 1),
(25, '20a', 1, '2026-04-16 00:29:54', '2026-04-16 01:51:18', 2),
(26, '222', 4, '2026-04-16 00:43:03', '2026-04-16 00:43:21', 1),
(27, '2000', 3, '2026-04-16 01:40:42', NULL, NULL),
(28, 'A200D', 4, '2026-04-16 01:48:33', NULL, NULL),
(29, 'kk100a', 5, '2026-04-16 01:50:26', '2026-04-16 02:26:41', 1),
(30, '500e', 1, '2026-04-16 02:20:40', '2026-04-16 02:20:53', 1),
(31, 'd300', 1, '2026-04-16 02:21:43', '2026-04-16 02:22:02', 1),
(32, '400d', 1, '2026-04-16 02:25:44', '2026-04-16 02:26:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parkingslot`
--

CREATE TABLE `parkingslot` (
  `SlotNumber` int(11) NOT NULL,
  `SlotStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parkingslot`
--

INSERT INTO `parkingslot` (`SlotNumber`, `SlotStatus`) VALUES
(1, 'Available'),
(2, 'Available'),
(3, 'Occupied'),
(4, 'Occupied'),
(5, 'Available'),
(6, 'Available'),
(7, 'Available'),
(8, 'Available'),
(9, 'Available'),
(10, 'Available'),
(11, 'Available'),
(12, 'Available'),
(13, 'Available'),
(14, 'Available'),
(15, 'Available'),
(16, 'Available'),
(17, 'Available'),
(18, 'Available'),
(19, 'Available'),
(20, 'Available'),
(21, 'Available'),
(22, 'Available'),
(23, 'Available'),
(24, 'Available'),
(25, 'Available'),
(26, 'Available'),
(27, 'Available'),
(28, 'Available'),
(29, 'Available'),
(30, 'Available'),
(31, 'Available'),
(32, 'Available'),
(33, 'Available'),
(34, 'Available'),
(35, 'Available'),
(36, 'Available'),
(37, 'Available'),
(38, 'Available'),
(39, 'Available'),
(40, 'Available'),
(41, 'Available'),
(42, 'Available'),
(43, 'Available'),
(44, 'Available'),
(45, 'Available'),
(46, 'Available'),
(47, 'Available'),
(48, 'Available'),
(49, 'Available'),
(50, 'Available'),
(51, 'Available'),
(52, 'Available'),
(53, 'Available'),
(54, 'Available'),
(55, 'Available'),
(56, 'Available'),
(57, 'Available'),
(58, 'Available'),
(59, 'Available'),
(60, 'Available'),
(61, 'Available'),
(62, 'Available'),
(63, 'Available'),
(64, 'Available'),
(65, 'Available'),
(66, 'Available'),
(67, 'Available'),
(68, 'Available'),
(69, 'Available'),
(70, 'Available'),
(71, 'Available'),
(72, 'Available'),
(73, 'Available'),
(74, 'Available'),
(75, 'Available'),
(76, 'Available'),
(77, 'Available'),
(78, 'Available'),
(79, 'Available'),
(80, 'Available'),
(81, 'Available'),
(82, 'Available'),
(83, 'Available'),
(84, 'Available'),
(85, 'Available'),
(86, 'Available'),
(87, 'Available'),
(88, 'Available'),
(89, 'Available'),
(90, 'Available'),
(91, 'Available'),
(92, 'Available'),
(93, 'Available'),
(94, 'Available'),
(95, 'Available'),
(96, 'Available'),
(97, 'Available'),
(98, 'Available'),
(99, 'Available'),
(100, 'Available'),
(101, 'Available'),
(102, 'Available'),
(103, 'Available'),
(104, 'Available'),
(105, 'Available'),
(106, 'Available'),
(107, 'Available'),
(108, 'Available'),
(109, 'Available'),
(110, 'Available'),
(111, 'Available'),
(112, 'Available'),
(113, 'Available'),
(114, 'Available'),
(115, 'Available'),
(116, 'Available'),
(117, 'Available'),
(118, 'Available'),
(119, 'Available'),
(120, 'Available'),
(121, 'Available'),
(122, 'Available'),
(123, 'Available'),
(124, 'Available'),
(125, 'Available'),
(126, 'Available'),
(127, 'Available'),
(128, 'Available'),
(129, 'Available'),
(130, 'Available'),
(131, 'Available'),
(132, 'Available'),
(133, 'Available'),
(134, 'Available'),
(135, 'Available'),
(136, 'Available'),
(137, 'Available'),
(138, 'Available'),
(139, 'Available'),
(140, 'Available'),
(141, 'Available'),
(142, 'Available'),
(143, 'Available'),
(144, 'Available'),
(145, 'Available'),
(146, 'Available'),
(147, 'Available'),
(148, 'Available'),
(149, 'Available'),
(150, 'Available'),
(151, 'Available'),
(152, 'Available'),
(153, 'Available'),
(154, 'Available'),
(155, 'Available'),
(156, 'Available'),
(157, 'Available'),
(158, 'Available'),
(159, 'Available'),
(160, 'Available'),
(161, 'Available'),
(162, 'Available'),
(163, 'Available'),
(164, 'Available'),
(165, 'Available'),
(166, 'Available'),
(167, 'Available'),
(168, 'Available'),
(169, 'Available'),
(170, 'Available'),
(171, 'Available'),
(172, 'Available'),
(173, 'Available'),
(174, 'Available'),
(175, 'Available'),
(176, 'Available'),
(177, 'Available'),
(178, 'Available'),
(179, 'Available'),
(180, 'Available'),
(181, 'Available'),
(182, 'Available'),
(183, 'Available'),
(184, 'Available'),
(185, 'Available'),
(186, 'Available'),
(187, 'Available'),
(188, 'Available'),
(189, 'Available'),
(190, 'Available'),
(191, 'Available'),
(192, 'Available'),
(193, 'Available'),
(194, 'Available'),
(195, 'Available'),
(196, 'Available'),
(197, 'Available'),
(198, 'Available'),
(199, 'Available'),
(200, 'Available'),
(201, 'Available'),
(202, 'Available'),
(203, 'Available'),
(204, 'Available'),
(205, 'Available'),
(206, 'Available'),
(207, 'Available'),
(208, 'Available'),
(209, 'Available'),
(210, 'Available'),
(211, 'Available'),
(212, 'Available'),
(213, 'Available'),
(214, 'Available'),
(215, 'Available'),
(216, 'Available'),
(217, 'Available'),
(218, 'Available'),
(219, 'Available'),
(220, 'Available'),
(221, 'Available'),
(222, 'Available'),
(223, 'Available'),
(224, 'Available'),
(225, 'Available'),
(226, 'Available'),
(227, 'Available'),
(228, 'Available'),
(229, 'Available'),
(230, 'Available'),
(231, 'Available'),
(232, 'Available'),
(233, 'Available'),
(234, 'Available'),
(235, 'Available'),
(236, 'Available'),
(237, 'Available'),
(238, 'Available'),
(239, 'Available'),
(240, 'Available'),
(241, 'Available'),
(242, 'Available'),
(243, 'Available'),
(244, 'Available'),
(245, 'Available'),
(246, 'Available'),
(247, 'Available'),
(248, 'Available'),
(249, 'Available'),
(250, 'Available'),
(251, 'Available'),
(252, 'Available'),
(253, 'Available'),
(254, 'Available'),
(255, 'Available'),
(256, 'Available'),
(257, 'Available'),
(258, 'Available'),
(259, 'Available'),
(260, 'Available'),
(261, 'Available'),
(262, 'Available'),
(263, 'Available'),
(264, 'Available'),
(265, 'Available'),
(266, 'Available'),
(267, 'Available'),
(268, 'Available'),
(269, 'Available'),
(270, 'Available'),
(271, 'Available'),
(272, 'Available'),
(273, 'Available'),
(274, 'Available'),
(275, 'Available'),
(276, 'Available'),
(277, 'Available'),
(278, 'Available'),
(279, 'Available'),
(280, 'Available'),
(281, 'Available'),
(282, 'Available'),
(283, 'Available'),
(284, 'Available'),
(285, 'Available'),
(286, 'Available'),
(287, 'Available'),
(288, 'Available'),
(289, 'Available'),
(290, 'Available'),
(291, 'Available'),
(292, 'Available'),
(293, 'Available'),
(294, 'Available'),
(295, 'Available'),
(296, 'Available'),
(297, 'Available'),
(298, 'Available'),
(299, 'Available'),
(300, 'Available'),
(301, 'Available'),
(302, 'Available'),
(303, 'Available'),
(304, 'Available'),
(305, 'Available'),
(306, 'Available'),
(307, 'Available'),
(308, 'Available'),
(309, 'Available'),
(310, 'Available'),
(311, 'Available'),
(312, 'Available'),
(313, 'Available'),
(314, 'Available'),
(315, 'Available'),
(316, 'Available'),
(317, 'Available'),
(318, 'Available'),
(319, 'Available'),
(320, 'Available'),
(321, 'Available'),
(322, 'Available'),
(323, 'Available'),
(324, 'Available'),
(325, 'Available'),
(326, 'Available'),
(327, 'Available'),
(328, 'Available'),
(329, 'Available'),
(330, 'Available'),
(331, 'Available'),
(332, 'Available'),
(333, 'Available'),
(334, 'Available'),
(335, 'Available'),
(336, 'Available'),
(337, 'Available'),
(338, 'Available'),
(339, 'Available'),
(340, 'Available'),
(341, 'Available'),
(342, 'Available'),
(343, 'Available'),
(344, 'Available'),
(345, 'Available'),
(346, 'Available'),
(347, 'Available'),
(348, 'Available'),
(349, 'Available'),
(350, 'Available'),
(351, 'Available'),
(352, 'Available'),
(353, 'Available'),
(354, 'Available'),
(355, 'Available'),
(356, 'Available'),
(357, 'Available'),
(358, 'Available'),
(359, 'Available'),
(360, 'Available'),
(361, 'Available'),
(362, 'Available'),
(363, 'Available'),
(364, 'Available'),
(365, 'Available'),
(366, 'Available'),
(367, 'Available'),
(368, 'Available'),
(369, 'Available'),
(370, 'Available'),
(371, 'Available'),
(372, 'Available'),
(373, 'Available'),
(374, 'Available'),
(375, 'Available'),
(376, 'Available'),
(377, 'Available'),
(378, 'Available'),
(379, 'Available'),
(380, 'Available'),
(381, 'Available'),
(382, 'Available'),
(383, 'Available'),
(384, 'Available'),
(385, 'Available'),
(386, 'Available'),
(387, 'Available'),
(388, 'Available'),
(389, 'Available'),
(390, 'Available'),
(391, 'Available'),
(392, 'Available'),
(393, 'Available'),
(394, 'Available'),
(395, 'Available'),
(396, 'Available'),
(397, 'Available'),
(398, 'Available'),
(399, 'Available'),
(400, 'Available'),
(401, 'Available'),
(402, 'Available'),
(403, 'Available'),
(404, 'Available'),
(405, 'Available'),
(406, 'Available'),
(407, 'Available'),
(408, 'Available'),
(409, 'Available'),
(410, 'Available'),
(411, 'Available'),
(412, 'Available'),
(413, 'Available'),
(414, 'Available'),
(415, 'Available'),
(416, 'Available'),
(417, 'Available'),
(418, 'Available'),
(419, 'Available'),
(420, 'Available'),
(421, 'Available'),
(422, 'Available'),
(423, 'Available'),
(424, 'Available'),
(425, 'Available'),
(426, 'Available'),
(427, 'Available'),
(428, 'Available'),
(429, 'Available'),
(430, 'Available'),
(431, 'Available'),
(432, 'Available'),
(433, 'Available'),
(434, 'Available'),
(435, 'Available'),
(436, 'Available'),
(437, 'Available'),
(438, 'Available'),
(439, 'Available'),
(440, 'Available'),
(441, 'Available'),
(442, 'Available'),
(443, 'Available'),
(444, 'Available'),
(445, 'Available'),
(446, 'Available'),
(447, 'Available'),
(448, 'Available'),
(449, 'Available'),
(450, 'Available'),
(451, 'Available'),
(452, 'Available'),
(453, 'Available'),
(454, 'Available'),
(455, 'Available'),
(456, 'Available'),
(457, 'Available'),
(458, 'Available'),
(459, 'Available'),
(460, 'Available'),
(461, 'Available'),
(462, 'Available'),
(463, 'Available'),
(464, 'Available'),
(465, 'Available'),
(466, 'Available'),
(467, 'Available'),
(468, 'Available'),
(469, 'Available'),
(470, 'Available'),
(471, 'Available'),
(472, 'Available'),
(473, 'Available'),
(474, 'Available'),
(475, 'Available'),
(476, 'Available'),
(477, 'Available'),
(478, 'Available'),
(479, 'Available'),
(480, 'Available'),
(481, 'Available'),
(482, 'Available'),
(483, 'Available'),
(484, 'Available'),
(485, 'Available'),
(486, 'Available'),
(487, 'Available'),
(488, 'Available'),
(489, 'Available'),
(490, 'Available'),
(491, 'Available'),
(492, 'Available'),
(493, 'Available'),
(494, 'Available'),
(495, 'Available'),
(496, 'Available'),
(497, 'Available'),
(498, 'Available'),
(499, 'Available'),
(500, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(11) NOT NULL,
  `RecordID` int(11) DEFAULT NULL,
  `AmountPaid` decimal(10,2) DEFAULT NULL,
  `PaymentDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentID`, `RecordID`, `AmountPaid`, `PaymentDate`) VALUES
(4, 19, 500.00, '2026-04-15 23:32:44'),
(5, 24, 500.00, '2026-04-16 00:17:04'),
(6, 19, 500.00, '2026-04-16 00:30:02'),
(7, 26, 500.00, '2026-04-16 00:43:21'),
(8, 22, 1000.00, '2026-04-16 01:41:18'),
(9, 25, 1000.00, '2026-04-16 01:51:18'),
(10, 30, 500.00, '2026-04-16 02:20:53'),
(11, 31, 500.00, '2026-04-16 02:22:02'),
(12, 32, 500.00, '2026-04-16 02:26:10'),
(13, 29, 500.00, '2026-04-16 02:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Email`, `Password`, `CreatedAt`) VALUES
(1, 'dfghjkl', 'sdfghjik@gmail.com', '$2b$10$Uema9Jui.s/CV.Gv4DubEOYLHcc/ptQTHlVlsCyqr1JSjbXFsXF1K', '2026-04-15 08:47:06'),
(3, 'phoibe', 'phoibe@gmail.com', '$2b$10$CRahY9VtXdgF//DiQctqJOjfQaQAzq.ZhQDbEWWADGd58zjW2D706', '2026-04-15 08:54:09'),
(5, 'phoib', 'phoib@gmail.com', '$2b$10$8BPLKj57.8rwsnKJqengROr5AMF36.7pGWDOpyANfv8Ia5G0fBEaK', '2026-04-15 08:56:40'),
(7, 'phoibez', 'phoibez@gmail.com', '$2b$10$DwLJ/BN8pvfTTabbxHR31.t8BPPy6fNOcnT50W5V.eLZuFIr61D6q', '2026-04-15 08:57:35'),
(8, 'zawadi', 'zawadi@gmail.com', '$2b$10$lYDF2F0kYO4fs7BcmxWXGeqwMCe9llymcPU1cGeMyGNbnYX8YhS.2', '2026-04-15 09:19:44'),
(10, 'zawad', 'zawad@gmail.com', '$2b$10$MuYNgzud96NHyP75CQUL9.jEpHxz4dSTVjsqLJrNmZ75HCdRrwFsu', '2026-04-15 09:20:12'),
(11, 'p', 'p@gmail.com', '$2b$10$r68A69ZMsSX5RBeQgWlpKukeoLsjInS57a5F57OSsNGUpX67hZqma', '2026-04-15 09:23:17'),
(12, 'az', 'az@gmail.com', '$2b$10$OqWFIuqR0dk3YqgqxeOVKObfkxREuvpvi91XT9gcxkHTPU5GRI6qW', '2026-04-15 09:25:12'),
(13, 'ph', 'ph@gmail.com', '$2b$10$sfKbG4qfajsR5CzOMJtbUu9bzC/wG5Q1l7X/WK.QF.7L6i1ATAl7e', '2026-04-15 09:48:03'),
(14, 'carine', 'carine@gmail.com', '$2b$10$SjzFn82eP5VkHIdRH5YaC.ByZ4czd636IEYoKlPLQcrjFn2NZ2qoe', '2026-04-15 10:10:50'),
(15, 'ggg', 'ggg@gmail.com', '$2b$10$1vFZduk5aZy5ytEyjij.K.VWxUsvMi8PS5QIQWhnshmoAsAJS6d/i', '2026-04-15 10:14:46'),
(16, 'a', 'a@gmail.com', '$2b$10$/VfLhL0saFDkI6A4fNvfieNOPZoFw/iY7xSpEwBEM2qGXPXgF/Azq', '2026-04-15 10:40:50'),
(17, 'bb', 'bb@gmail.com', '$2b$10$gVRXF3tXqxwlffxUfvx.H.pYZs.8uMM22ZbhX8XDDykcWiMWjRkXW', '2026-04-15 11:36:04'),
(18, 'b', 'b@gmail', '$2b$10$cg.67Pm7XLUNvSCNOaaSO.yFZrO8zNSI0GHPhnobSKcvXVJPGDJl.', '2026-04-15 11:49:42'),
(19, 'fanny', 'fanny@gmail.com', '$2b$10$7ILujMmbKgTXIXS4oXX28.rzz8Fb6sa7d8rxpahy0EO0C8jrjJEJm', '2026-04-16 06:21:35'),
(20, 'd', 'd@gmail.com', '$2b$10$B8dTaZY5IswvGlJ4Evtj7uabzs/SD91oZeB4QDf7uydPhIWCJyHWa', '2026-04-16 07:03:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`PlateNumber`);

--
-- Indexes for table `parkingrecord`
--
ALTER TABLE `parkingrecord`
  ADD PRIMARY KEY (`RecordID`),
  ADD KEY `PlateNumber` (`PlateNumber`),
  ADD KEY `SlotNumber` (`SlotNumber`);

--
-- Indexes for table `parkingslot`
--
ALTER TABLE `parkingslot`
  ADD PRIMARY KEY (`SlotNumber`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `RecordID` (`RecordID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parkingrecord`
--
ALTER TABLE `parkingrecord`
  MODIFY `RecordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `parkingrecord`
--
ALTER TABLE `parkingrecord`
  ADD CONSTRAINT `parkingrecord_ibfk_1` FOREIGN KEY (`PlateNumber`) REFERENCES `car` (`PlateNumber`),
  ADD CONSTRAINT `parkingrecord_ibfk_2` FOREIGN KEY (`SlotNumber`) REFERENCES `parkingslot` (`SlotNumber`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`RecordID`) REFERENCES `parkingrecord` (`RecordID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
