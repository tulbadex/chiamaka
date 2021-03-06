-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 20, 2021 at 03:08 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `energyco`
--

-- --------------------------------------------------------

--
-- Table structure for table `lgas`
--

CREATE TABLE `lgas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lga_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lga_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lgas`
--

INSERT INTO `lgas` (`id`, `lga_name`, `lga_code`, `state_name`, `state_code`, `state_id`) VALUES
(1, 'ABA NORTH', '01', 'ABIA', 'AB', 1),
(2, 'ABA SOUTH', '02', 'ABIA', 'AB', 1),
(3, 'ABADAM', '01', 'BORNO', 'BO', 8),
(4, 'ABAJI', '01', 'FCT', 'FCT', 15),
(5, 'ABAK', '01', 'AKWA IBOM', 'AK', 3),
(6, 'ABAKALIKI', '01', 'EBONYI', 'EB', 11),
(7, 'ABEOKUTA NORTH', '01', 'OGUN', 'OG', 28),
(8, 'ABEOKUTA SOUTH', '02', 'OGUN', 'OG', 28),
(9, 'ABI', '01', 'CROSS RIVER', 'CR', 9),
(10, 'ABOH MBAISE', '01', 'IMO', 'IM', 17),
(11, 'ABUA-ODUAL', '01', 'RIVERS', 'RV', 33),
(12, 'ADAVI', '01', 'KOGI', 'KG', 23),
(13, 'ADO', '01', 'BENUE', 'BN', 7),
(14, 'ADO EKITI', '01', 'EKITI', 'EK', 13),
(15, 'ADO ODO-OTA', '03', 'OGUN', 'OG', 28),
(16, 'AFIJIO', '01', 'OYO', 'OY', 31),
(17, 'AFIKPO  SOUTH', '03', 'EBONYI', 'EB', 11),
(18, 'AFIKPO NORTH', '02', 'EBONYI', 'EB', 11),
(19, 'AGAIE', '01', 'NIGER', 'NG', 27),
(20, 'AGATU', '02', 'BENUE', 'BN', 7),
(21, 'AGEGE', '01', 'LAGOS', 'LA', 25),
(22, 'AGUATA', '01', 'ANAMBRA', 'AN', 4),
(23, 'AGWARA', '02', 'NIGER', 'NG', 27),
(24, 'AHIAZU MBAISE', '02', 'IMO', 'IM', 17),
(25, 'AHOADA EAST', '02', 'RIVERS', 'RV', 33),
(26, 'AHOADA WEST', '03', 'RIVERS', 'RV', 33),
(27, 'AJAOKUTA', '02', 'KOGI', 'KG', 23),
(28, 'AJEROMI/IFELODUN', '02', 'LAGOS', 'LA', 25),
(29, 'AJINGI', '01', 'KANO', 'KN', 20),
(30, 'AKAMKPA', '02', 'CROSS RIVER', 'CR', 9),
(31, 'AKINYELE', '02', 'OYO', 'OY', 31),
(32, 'AKKO', '01', 'GOMBE', 'GM', 16),
(33, 'AKOKO EDO', '01', 'EDO', 'ED', 12),
(34, 'AKOKO NORTH EAST', '01', 'ONDO', 'OD', 29),
(35, 'AKOKO NORTH WEST', '02', 'ONDO', 'OD', 29),
(36, 'AKOKO SOUTH EAST', '03', 'ONDO', 'OD', 29),
(37, 'AKOKO SOUTH WEST', '04', 'ONDO', 'OD', 29),
(38, 'AKPABUYO', '03', 'CROSS RIVER', 'CR', 9),
(39, 'AKUKU TORU', '04', 'RIVERS', 'RV', 33),
(40, 'AKURE NORTH', '05', 'ONDO', 'OD', 29),
(41, 'AKURE SOUTH', '06', 'ONDO', 'OD', 29),
(42, 'AKWANGA', '01', 'NASARAWA', 'NW', 26),
(43, 'ALBASU', '02', 'KANO', 'KN', 20),
(44, 'ALIERO', '01', 'KEBBI', 'KB', 22),
(45, 'ALIMOSHO', '03', 'LAGOS', 'LA', 25),
(46, 'ALKALERI', '01', 'BAUCHI', 'BA', 5),
(47, 'AMUWO-ODOFIN', '04', 'LAGOS', 'LA', 25),
(48, 'ANAMBRA EAST', '03', 'ANAMBRA', 'AN', 4),
(49, 'ANAMBRA WEST', '04', 'ANAMBRA', 'AN', 4),
(50, 'ANAOCHA', '05', 'ANAMBRA', 'AN', 4),
(51, 'ANDONI', '05', 'RIVERS', 'RV', 33),
(52, 'ANINRI', '01', 'ENUGU', 'EN', 14),
(53, 'ANIOCHA - SOUTH', '02', 'DELTA', 'DT', 10),
(54, 'ANIOCHA NORTH', '01', 'DELTA', 'DT', 10),
(55, 'ANKA', '01', 'ZAMFARA', 'ZF', 37),
(56, 'ANKPA', '03', 'KOGI', 'KG', 23),
(57, 'APA', '03', 'BENUE', 'BN', 7),
(58, 'APAPA', '05', 'LAGOS', 'LA', 25),
(59, 'ARDO - KOLA', '01', 'TARABA', 'TR', 35),
(60, 'AREWA', '02', 'KEBBI', 'KB', 22),
(61, 'ARGUNGU', '03', 'KEBBI', 'KB', 22),
(62, 'AROCHUKWU', '03', 'ABIA', 'AB', 1),
(63, 'ASA', '01', 'KWARA', 'KW', 24),
(64, 'ASARI-TORU', '06', 'RIVERS', 'RV', 33),
(65, 'ASKIRA / UBA', '02', 'BORNO', 'BO', 8),
(66, 'ATAKUMOSA EAST', '01', 'OSUN', 'OS', 30),
(67, 'ATAKUMOSA WEST', '02', 'OSUN', 'OS', 30),
(68, 'ATIBA', '03', 'OYO', 'OY', 31),
(69, 'ATISBO', '04', 'OYO', 'OY', 31),
(70, 'AUGIE', '04', 'KEBBI', 'KB', 22),
(71, 'AUYO', '01', 'JIGAWA', 'JG', 18),
(72, 'AWE', '02', 'NASARAWA', 'NW', 26),
(73, 'AWGU', '02', 'ENUGU', 'EN', 14),
(74, 'AWKA NORTH', '06', 'ANAMBRA', 'AN', 4),
(75, 'AWKA SOUTH', '07', 'ANAMBRA', 'AN', 4),
(76, 'AYAMELUM', '02', 'ANAMBRA', 'AN', 4),
(77, 'AYEDAADE', '03', 'OSUN', 'OS', 30),
(78, 'AYEDIRE', '04', 'OSUN', 'OS', 30),
(79, 'BABURA', '02', 'JIGAWA', 'JG', 18),
(80, 'BADAGRY', '06', 'LAGOS', 'LA', 25),
(81, 'BADE', '01', 'YOBE', 'YB', 36),
(82, 'BAGUDO', '05', 'KEBBI', 'KB', 22),
(83, 'BAGWAI', '03', 'KANO', 'KN', 20),
(84, 'BAKASSI', '04', 'CROSS RIVER', 'CR', 9),
(85, 'BAKORI', '01', 'KATSINA', 'KT', 21),
(86, 'BAKURA', '02', 'ZAMFARA', 'ZF', 37),
(87, 'BALANGA', '02', 'GOMBE', 'GM', 16),
(88, 'BALI', '02', 'TARABA', 'TR', 35),
(89, 'BAMA', '03', 'BORNO', 'BO', 8),
(90, 'BARIKIN LADI', '01', 'PLATEAU', 'PL', 32),
(91, 'BARUTEN', '02', 'KWARA', 'KW', 24),
(92, 'BASSA', '02', 'PLATEAU', 'PL', 32),
(93, 'BASSA', '04', 'KOGI', 'KG', 23),
(94, 'BATAGARAWA', '02', 'KATSINA', 'KT', 21),
(95, 'BATSARI', '03', 'KATSINA', 'KT', 21),
(96, 'BAUCHI', '02', 'BAUCHI', 'BA', 5),
(97, 'BAURE', '04', 'KATSINA', 'KT', 21),
(98, 'BAYO', '04', 'BORNO', 'BO', 8),
(99, 'BEBEJI', '04', 'KANO', 'KN', 20),
(100, 'BEKWARRA', '05', 'CROSS RIVER', 'CR', 9),
(101, 'BENDE', '04', 'ABIA', 'AB', 1),
(102, 'BIASE', '06', 'CROSS RIVER', 'CR', 9),
(103, 'BICHI', '05', 'KANO', 'KN', 20),
(104, 'BIDA', '03', 'NIGER', 'NG', 27),
(105, 'BILLIRI', '03', 'GOMBE', 'GM', 16),
(106, 'BINDAWA', '05', 'KATSINA', 'KT', 21),
(107, 'BINJI', '01', 'SOKOTO', 'SO', 34),
(108, 'BIRNIN GWARI', '01', 'KADUNA', 'KD', 19),
(109, 'BIRNIN KEBBI', '06', 'KEBBI', 'KB', 22),
(110, 'BIRNIN KUDU', '03', 'JIGAWA', 'JG', 18),
(111, 'BIRNIN MAGAJI', '03', 'ZAMFARA', 'ZF', 37),
(112, 'BIRNIWA', '04', 'JIGAWA', 'JG', 18),
(113, 'BIU', '05', 'BORNO', 'BO', 8),
(114, 'BODINGA', '02', 'SOKOTO', 'SO', 34),
(115, 'BOGORO', '03', 'BAUCHI', 'BA', 5),
(116, 'BOKI', '07', 'CROSS RIVER', 'CR', 9),
(117, 'BOKKOS', '03', 'PLATEAU', 'PL', 32),
(118, 'BOLUWADURO', '05', 'OSUN', 'OS', 30),
(119, 'BOMADI', '03', 'DELTA', 'DT', 10),
(120, 'BONNY', '07', 'RIVERS', 'RV', 33),
(121, 'BORGU', '04', 'NIGER', 'NG', 27),
(122, 'BORIPE', '06', 'OSUN', 'OS', 30),
(123, 'BOSSO', '05', 'NIGER', 'NG', 27),
(124, 'BRASS', '01', 'BAYELSA', 'BY', 6),
(125, 'BUJI', '05', 'JIGAWA', 'JG', 18),
(126, 'BUKKUYUM', '04', 'ZAMFARA', 'ZF', 37),
(127, 'BUNGUDU', '05', 'ZAMFARA', 'ZF', 37),
(128, 'BUNKURE', '06', 'KANO', 'KN', 20),
(129, 'BUNZA', '07', 'KEBBI', 'KB', 22),
(130, 'BURSARI', '02', 'YOBE', 'YB', 36),
(131, 'BURUKU', '04', 'BENUE', 'BN', 7),
(132, 'BURUTU', '04', 'DELTA', 'DT', 10),
(133, 'BWARI', '02', 'FCT', 'FCT', 15),
(134, 'CALABAR MUNICIPALITY', '08', 'CROSS RIVER', 'CR', 9),
(135, 'CALABAR SOUTH', '09', 'CROSS RIVER', 'CR', 9),
(136, 'CHANCHAGA', '06', 'NIGER', 'NG', 27),
(137, 'CHARANCHI', '06', 'KATSINA', 'KT', 21),
(138, 'CHIBOK', '06', 'BORNO', 'BO', 8),
(139, 'CHIKUN', '02', 'KADUNA', 'KD', 19),
(140, 'DALA', '07', 'KANO', 'KN', 20),
(141, 'DAMATURU', '03', 'YOBE', 'YB', 36),
(142, 'DAMBAM', '04', 'BAUCHI', 'BA', 5),
(143, 'DAMBOA', '07', 'BORNO', 'BO', 8),
(144, 'DAN MUSA', '09', 'KATSINA', 'KT', 21),
(145, 'DANBATA', '08', 'KANO', 'KN', 20),
(146, 'DANDI', '08', 'KEBBI', 'KB', 22),
(147, 'DANDUME', '07', 'KATSINA', 'KT', 21),
(148, 'DANGE/SHUNI', '03', 'SOKOTO', 'SO', 34),
(149, 'DANJA', '08', 'KATSINA', 'KT', 21),
(150, 'DARAZO', '05', 'BAUCHI', 'BA', 5),
(151, 'DASS', '06', 'BAUCHI', 'BA', 5),
(152, 'DAURA', '10', 'KATSINA', 'KT', 21),
(153, 'DAWAKI KUDU', '09', 'KANO', 'KN', 20),
(154, 'DAWAKI TOFA', '10', 'KANO', 'KN', 20),
(155, 'DEGEMA', '08', 'RIVERS', 'RV', 33),
(156, 'DEKINA', '05', 'KOGI', 'KG', 23),
(157, 'DEMSA', '01', 'ADAMAWA', 'AD', 2),
(158, 'DIKWA', '08', 'BORNO', 'BO', 8),
(159, 'DOGUWA', '11', 'KANO', 'KN', 20),
(160, 'DOMA', '03', 'NASARAWA', 'NW', 26),
(161, 'DONGA', '03', 'TARABA', 'TR', 35),
(162, 'DUKKU', '04', 'GOMBE', 'GM', 16),
(163, 'DUNUKOFIA', '08', 'ANAMBRA', 'AN', 4),
(164, 'DUTSE', '06', 'JIGAWA', 'JG', 18),
(165, 'DUTSI', '11', 'KATSINA', 'KT', 21),
(166, 'DUTSIN-MA', '12', 'KATSINA', 'KT', 21),
(167, 'EASTERN OBOLO', '02', 'AKWA IBOM', 'AK', 3),
(168, 'EBONYI', '04', 'EBONYI', 'EB', 11),
(169, 'EDATTI', '07', 'NIGER', 'NG', 27),
(170, 'EDE NORTH', '07', 'OSUN', 'OS', 30),
(171, 'EDE SOUTH', '08', 'OSUN', 'OS', 30),
(172, 'EDU', '03', 'KWARA', 'KW', 24),
(173, 'EFON', '02', 'EKITI', 'EK', 13),
(174, 'EGBADO NORTH', '04', 'OGUN', 'OG', 28),
(175, 'EGBADO SOUTH', '05', 'OGUN', 'OG', 28),
(176, 'EGBEDA', '05', 'OYO', 'OY', 31),
(177, 'EGBEDORE', '09', 'OSUN', 'OS', 30),
(178, 'EGOR', '02', 'EDO', 'ED', 12),
(179, 'EHIME MBANO', '03', 'IMO', 'IM', 17),
(180, 'EJIGBO', '10', 'OSUN', 'OS', 30),
(181, 'EKEREMOR', '02', 'BAYELSA', 'BY', 6),
(182, 'EKET', '03', 'AKWA IBOM', 'AK', 3),
(183, 'EKITI', '04', 'KWARA', 'KW', 24),
(184, 'EKITI EAST', '03', 'EKITI', 'EK', 13),
(185, 'EKITI SOUTH WEST', '05', 'EKITI', 'EK', 13),
(186, 'EKITI WEST', '04', 'EKITI', 'EK', 13),
(187, 'EKWUSIGO', '09', 'ANAMBRA', 'AN', 4),
(188, 'ELEME', '09', 'RIVERS', 'RV', 33),
(189, 'EMOHUA', '10', 'RIVERS', 'RV', 33),
(190, 'EMURE', '06', 'EKITI', 'EK', 13),
(191, 'ENUGU EAST', '03', 'ENUGU', 'EN', 14),
(192, 'ENUGU NORTH', '04', 'ENUGU', 'EN', 14),
(193, 'ENUGU SOUTH', '05', 'ENUGU', 'EN', 14),
(194, 'EPE', '07', 'LAGOS', 'LA', 25),
(195, 'ESAN CENTRAL', '03', 'EDO', 'ED', 12),
(196, 'ESAN NORTH EAST', '04', 'EDO', 'ED', 12),
(197, 'ESAN SOUTH EAST', '05', 'EDO', 'ED', 12),
(198, 'ESAN WEST', '06', 'EDO', 'ED', 12),
(199, 'ESE-ODO', '07', 'ONDO', 'OD', 29),
(200, 'ESIT EKET (UQUO)', '04', 'AKWA IBOM', 'AK', 3),
(201, 'ESSIEN UDIM', '05', 'AKWA IBOM', 'AK', 3),
(202, 'ETCHE', '11', 'RIVERS', 'RV', 33),
(203, 'ETHIOPE  EAST', '05', 'DELTA', 'DT', 10),
(204, 'ETHIOPE  WEST', '06', 'DELTA', 'DT', 10),
(205, 'ETI-OSA', '08', 'LAGOS', 'LA', 25),
(206, 'ETIM EKPO', '06', 'AKWA IBOM', 'AK', 3),
(207, 'ETINAN', '07', 'AKWA IBOM', 'AK', 3),
(208, 'ETSAKO  WEST', '09', 'EDO', 'ED', 12),
(209, 'ETSAKO CENTRAL', '07', 'EDO', 'ED', 12),
(210, 'ETSAKO EAST', '08', 'EDO', 'ED', 12),
(211, 'ETUNG', '10', 'CROSS RIVER', 'CR', 9),
(212, 'EWEKORO', '06', 'OGUN', 'OG', 28),
(213, 'EZEAGU', '06', 'ENUGU', 'EN', 14),
(214, 'EZINIHITTE MBAISE', '04', 'IMO', 'IM', 17),
(215, 'EZZA NORTH', '05', 'EBONYI', 'EB', 11),
(216, 'EZZA SOUTH', '06', 'EBONYI', 'EB', 11),
(217, 'FAGGE', '12', 'KANO', 'KN', 20),
(218, 'FAKAI', '09', 'KEBBI', 'KB', 22),
(219, 'FASKARI', '13', 'KATSINA', 'KT', 21),
(220, 'FIKA', '04', 'YOBE', 'YB', 36),
(221, 'FUFORE', '02', 'ADAMAWA', 'AD', 2),
(222, 'FUNAKAYE', '05', 'GOMBE', 'GM', 16),
(223, 'FUNE', '05', 'YOBE', 'YB', 36),
(224, 'FUNTUA', '14', 'KATSINA', 'KT', 21),
(225, 'GABASAWA', '13', 'KANO', 'KN', 20),
(226, 'GADA', '04', 'SOKOTO', 'SO', 34),
(227, 'GAGARAWA', '08', 'JIGAWA', 'JG', 18),
(228, 'GAMAWA', '07', 'BAUCHI', 'BA', 5),
(229, 'GANJUWA', '08', 'BAUCHI', 'BA', 5),
(230, 'GANYE', '03', 'ADAMAWA', 'AD', 2),
(231, 'GARKI', '07', 'JIGAWA', 'JG', 18),
(232, 'GARKO', '14', 'KANO', 'KN', 20),
(233, 'GARUN MALAM', '15', 'KANO', 'KN', 20),
(234, 'GASHAKA', '04', 'TARABA', 'TR', 35),
(235, 'GASSOL', '05', 'TARABA', 'TR', 35),
(236, 'GAYA', '16', 'KANO', 'KN', 20),
(237, 'GBAKO', '08', 'NIGER', 'NG', 27),
(238, 'GBOKO', '05', 'BENUE', 'BN', 7),
(239, 'GBONYIN', '07', 'EKITI', 'EK', 13),
(240, 'GEIDAM', '06', 'YOBE', 'YB', 36),
(241, 'GEZAWA', '17', 'KANO', 'KN', 20),
(242, 'GIADE', '09', 'BAUCHI', 'BA', 5),
(243, 'GIRE 1', '04', 'ADAMAWA', 'AD', 2),
(244, 'GIWA', '03', 'KADUNA', 'KD', 19),
(245, 'GOKANA', '12', 'RIVERS', 'RV', 33),
(246, 'GOMBE', '06', 'GOMBE', 'GM', 16),
(247, 'GOMBI', '05', 'ADAMAWA', 'AD', 2),
(248, 'GORONYO', '05', 'SOKOTO', 'SO', 34),
(249, 'GUBIO', '09', 'BORNO', 'BO', 8),
(250, 'GUDU', '06', 'SOKOTO', 'SO', 34),
(251, 'GUJBA', '07', 'YOBE', 'YB', 36),
(252, 'GULANI', '08', 'YOBE', 'YB', 36),
(253, 'GUMA', '06', 'BENUE', 'BN', 7),
(254, 'GUMEL', '09', 'JIGAWA', 'JG', 18),
(255, 'GUMMI', '06', 'ZAMFARA', 'ZF', 37),
(256, 'GURARA', '09', 'NIGER', 'NG', 27),
(257, 'GURI', '10', 'JIGAWA', 'JG', 18),
(258, 'GUSAU', '07', 'ZAMFARA', 'ZF', 37),
(259, 'GUYUK', '06', 'ADAMAWA', 'AD', 2),
(260, 'GUZAMALA', '10', 'BORNO', 'BO', 8),
(261, 'GWADABAWA', '07', 'SOKOTO', 'SO', 34),
(262, 'GWAGWALADA', '03', 'FCT', 'FCT', 15),
(263, 'GWALE', '18', 'KANO', 'KN', 20),
(264, 'GWANDU', '10', 'KEBBI', 'KB', 22),
(265, 'GWARAM', '11', 'JIGAWA', 'JG', 18),
(266, 'GWARZO', '19', 'KANO', 'KN', 20),
(267, 'GWER EAST', '07', 'BENUE', 'BN', 7),
(268, 'GWER WEST', '08', 'BENUE', 'BN', 7),
(269, 'GWIWA', '12', 'JIGAWA', 'JG', 18),
(270, 'GWOZA', '11', 'BORNO', 'BO', 8),
(271, 'HADEJIA', '13', 'JIGAWA', 'JG', 18),
(272, 'HAWUL', '12', 'BORNO', 'BO', 8),
(273, 'HONG', '07', 'ADAMAWA', 'AD', 2),
(274, 'IBADAN NORTH', '06', 'OYO', 'OY', 31),
(275, 'IBADAN NORTH EAST', '07', 'OYO', 'OY', 31),
(276, 'IBADAN NORTH WEST', '08', 'OYO', 'OY', 31),
(277, 'IBADAN SOUTH WEST', '10', 'OYO', 'OY', 31),
(278, 'IBADAN SOUTH-EAST', '09', 'OYO', 'OY', 31),
(279, 'IBAJI', '06', 'KOGI', 'KG', 23),
(280, 'IBARAPA CENTRAL', '11', 'OYO', 'OY', 31),
(281, 'IBARAPA EAST', '12', 'OYO', 'OY', 31),
(282, 'IBARAPA NORTH', '13', 'OYO', 'OY', 31),
(283, 'IBEJU/LEKKI', '09', 'LAGOS', 'LA', 25),
(284, 'IBENO', '08', 'AKWA IBOM', 'AK', 3),
(285, 'IBESIKPO ASUTAN', '09', 'AKWA IBOM', 'AK', 3),
(286, 'IBI', '06', 'TARABA', 'TR', 35),
(287, 'IBIONO IBOM', '10', 'AKWA IBOM', 'AK', 3),
(288, 'IDAH', '07', 'KOGI', 'KG', 23),
(289, 'IDANRE', '08', 'ONDO', 'OD', 29),
(290, 'IDEATO NORTH', '05', 'IMO', 'IM', 17),
(291, 'IDEATO SOUTH', '06', 'IMO', 'IM', 17),
(292, 'IDEMILI NORTH', '10', 'ANAMBRA', 'AN', 4),
(293, 'IDEMILI-SOUTH', '11', 'ANAMBRA', 'AN', 4),
(294, 'IDO', '14', 'OYO', 'OY', 31),
(295, 'IDO / OSI', '08', 'EKITI', 'EK', 13),
(296, 'IFAKO-IJAYE', '10', 'LAGOS', 'LA', 25),
(297, 'IFE CENTRAL', '11', 'OSUN', 'OS', 30),
(298, 'IFE EAST', '13', 'OSUN', 'OS', 30),
(299, 'IFE NORTH', '15', 'OSUN', 'OS', 30),
(300, 'IFE SOUTH', '16', 'OSUN', 'OS', 30),
(301, 'IFEDAYO', '12', 'OSUN', 'OS', 30),
(302, 'IFEDORE', '09', 'ONDO', 'OD', 29),
(303, 'IFELODUN', '05', 'KWARA', 'KW', 24),
(304, 'IFELODUN', '14', 'OSUN', 'OS', 30),
(305, 'IFO', '07', 'OGUN', 'OG', 28),
(306, 'IGABI', '04', 'KADUNA', 'KD', 19),
(307, 'IGALAMELA/ODOLU', '08', 'KOGI', 'KG', 23),
(308, 'IGBO ETITI', '07', 'ENUGU', 'EN', 14),
(309, 'IGBO EZE NORTH', '08', 'ENUGU', 'EN', 14),
(310, 'IGBO EZE SOUTH', '09', 'ENUGU', 'EN', 14),
(311, 'IGUEBEN', '10', 'EDO', 'ED', 12),
(312, 'IHALA', '12', 'ANAMBRA', 'AN', 4),
(313, 'IHITTE/UBOMA (ISINWEKE)', '07', 'IMO', 'IM', 17),
(314, 'IJEBU EAST', '08', 'OGUN', 'OG', 28),
(315, 'IJEBU NORTH', '09', 'OGUN', 'OG', 28),
(316, 'IJEBU NORTH EAST', '10', 'OGUN', 'OG', 28),
(317, 'IJEBU ODE', '11', 'OGUN', 'OG', 28),
(318, 'IJERO', '09', 'EKITI', 'EK', 13),
(319, 'IJUMU', '09', 'KOGI', 'KG', 23),
(320, 'IKA', '11', 'AKWA IBOM', 'AK', 3),
(321, 'IKA - SOUTH', '08', 'DELTA', 'DT', 10),
(322, 'IKA NORTH- EAST', '07', 'DELTA', 'DT', 10),
(323, 'IKARA', '05', 'KADUNA', 'KD', 19),
(324, 'IKEDURU (IHO)', '08', 'IMO', 'IM', 17),
(325, 'IKEJA', '11', 'LAGOS', 'LA', 25),
(326, 'IKENNE', '12', 'OGUN', 'OG', 28),
(327, 'IKERE', '10', 'EKITI', 'EK', 13),
(328, 'IKOLE', '11', 'EKITI', 'EK', 13),
(329, 'IKOM', '11', 'CROSS RIVER', 'CR', 9),
(330, 'IKONO', '12', 'AKWA IBOM', 'AK', 3),
(331, 'IKORODU', '12', 'LAGOS', 'LA', 25),
(332, 'IKOT ABASI', '13', 'AKWA IBOM', 'AK', 3),
(333, 'IKOT EKPENE', '14', 'AKWA IBOM', 'AK', 3),
(334, 'IKPOBA/OKHA', '11', 'EDO', 'ED', 12),
(335, 'IKWERRE', '13', 'RIVERS', 'RV', 33),
(336, 'IKWO', '07', 'EBONYI', 'EB', 11),
(337, 'IKWUANO', '05', 'ABIA', 'AB', 1),
(338, 'ILA', '17', 'OSUN', 'OS', 30),
(339, 'ILAJE', '10', 'ONDO', 'OD', 29),
(340, 'ILEJEMEJE', '12', 'EKITI', 'EK', 13),
(341, 'ILEOLUJI/OKEIGBO', '11', 'ONDO', 'OD', 29),
(342, 'ILESA EAST', '18', 'OSUN', 'OS', 30),
(343, 'ILESA WEST', '19', 'OSUN', 'OS', 30),
(344, 'ILLELA', '08', 'SOKOTO', 'SO', 34),
(345, 'ILORIN EAST', '06', 'KWARA', 'KW', 24),
(346, 'ILORIN-SOUTH', '07', 'KWARA', 'KW', 24),
(347, 'ILORIN-WEST', '08', 'KWARA', 'KW', 24),
(348, 'IMEKO/AFON', '13', 'OGUN', 'OG', 28),
(349, 'INGAWA', '15', 'KATSINA', 'KT', 21),
(350, 'INI', '15', 'AKWA IBOM', 'AK', 3),
(351, 'IPOKIA', '14', 'OGUN', 'OG', 28),
(352, 'IRELE', '12', 'ONDO', 'OD', 29),
(353, 'IREPO', '15', 'OYO', 'OY', 31),
(354, 'IREPODUN', '09', 'KWARA', 'KW', 24),
(355, 'IREPODUN', '20', 'OSUN', 'OS', 30),
(356, 'IREPODUN / IFELODUN', '13', 'EKITI', 'EK', 13),
(357, 'IREWOLE', '21', 'OSUN', 'OS', 30),
(358, 'ISA', '09', 'SOKOTO', 'SO', 34),
(359, 'ISE / ORUN', '14', 'EKITI', 'EK', 13),
(360, 'ISEYIN', '16', 'OYO', 'OY', 31),
(361, 'ISHIELU', '08', 'EBONYI', 'EB', 11),
(362, 'ISI UZO', '10', 'ENUGU', 'EN', 14),
(363, 'ISIALA MBANO (UMUELEMAI)', '09', 'IMO', 'IM', 17),
(364, 'ISIALA NGWA NORTH', '06', 'ABIA', 'AB', 1),
(365, 'ISIALA NGWA SOUTH', '07', 'ABIA', 'AB', 1),
(366, 'ISIN', '10', 'KWARA', 'KW', 24),
(367, 'ISOKAN', '22', 'OSUN', 'OS', 30),
(368, 'ISOKO NORTH', '09', 'DELTA', 'DT', 10),
(369, 'ISOKO SOUTH', '10', 'DELTA', 'DT', 10),
(370, 'ISU (UMUNDUGBA)', '10', 'IMO', 'IM', 17),
(371, 'ISUIKWUATO', '08', 'ABIA', 'AB', 1),
(372, 'ITAS/GADAU', '10', 'BAUCHI', 'BA', 5),
(373, 'ITESIWAJU', '17', 'OYO', 'OY', 31),
(374, 'ITU', '16', 'AKWA IBOM', 'AK', 3),
(375, 'IVO', '09', 'EBONYI', 'EB', 11),
(376, 'IWAJOWA', '18', 'OYO', 'OY', 31),
(377, 'IWO', '23', 'OSUN', 'OS', 30),
(378, 'IZZI', '10', 'EBONYI', 'EB', 11),
(379, 'JABA', '06', 'KADUNA', 'KD', 19),
(380, 'JADA', '08', 'ADAMAWA', 'AD', 2),
(381, 'JAHUN', '14', 'JIGAWA', 'JG', 18),
(382, 'JAKUSKO', '09', 'YOBE', 'YB', 36),
(383, 'JALINGO', '07', 'TARABA', 'TR', 35),
(384, 'JAMA ARE', '11', 'BAUCHI', 'BA', 5),
(385, 'JEGA', '11', 'KEBBI', 'KB', 22),
(386, 'JEMA A', '07', 'KADUNA', 'KD', 19),
(387, 'JERE', '13', 'BORNO', 'BO', 8),
(388, 'JIBIA', '16', 'KATSINA', 'KT', 21),
(389, 'JOS EAST', '04', 'PLATEAU', 'PL', 32),
(390, 'JOS NORTH', '05', 'PLATEAU', 'PL', 32),
(391, 'JOS SOUTH', '06', 'PLATEAU', 'PL', 32),
(392, 'KABBA/BUNU', '10', 'KOGI', 'KG', 23),
(393, 'KABO', '20', 'KANO', 'KN', 20),
(394, 'KACHIA', '08', 'KADUNA', 'KD', 19),
(395, 'KADUNA NORTH', '09', 'KADUNA', 'KD', 19),
(396, 'KADUNA SOUTH', '10', 'KADUNA', 'KD', 19),
(397, 'KAFIN HAUSA', '15', 'JIGAWA', 'JG', 18),
(398, 'KAFUR', '17', 'KATSINA', 'KT', 21),
(399, 'KAGA', '14', 'BORNO', 'BO', 8),
(400, 'KAGARKO', '11', 'KADUNA', 'KD', 19),
(401, 'KAIAMA', '11', 'KWARA', 'KW', 24),
(402, 'KAITA', '18', 'KATSINA', 'KT', 21),
(403, 'KAJOLA', '19', 'OYO', 'OY', 31),
(404, 'KAJURU', '12', 'KADUNA', 'KD', 19),
(405, 'KALA BALGE', '15', 'BORNO', 'BO', 8),
(406, 'KALGO', '12', 'KEBBI', 'KB', 22),
(407, 'KALTUNGO', '07', 'GOMBE', 'GM', 16),
(408, 'KANAM', '07', 'PLATEAU', 'PL', 32),
(409, 'KANKARA', '19', 'KATSINA', 'KT', 21),
(410, 'KANKE', '08', 'PLATEAU', 'PL', 32),
(411, 'KANKIA', '20', 'KATSINA', 'KT', 21),
(412, 'KANO MUNICIPAL', '21', 'KANO', 'KN', 20),
(413, 'KARASAWA', '10', 'YOBE', 'YB', 36),
(414, 'KARAYE', '22', 'KANO', 'KN', 20),
(415, 'KARIM-LAMIDO', '08', 'TARABA', 'TR', 35),
(416, 'KARU', '04', 'NASARAWA', 'NW', 26),
(417, 'KATAGUM', '12', 'BAUCHI', 'BA', 5),
(418, 'KATCHA', '10', 'NIGER', 'NG', 27),
(419, 'KATSINA', '21', 'KATSINA', 'KT', 21),
(420, 'KATSINA-ALA', '09', 'BENUE', 'BN', 7),
(421, 'KAUGAMA', '16', 'JIGAWA', 'JG', 18),
(422, 'KAURA', '13', 'KADUNA', 'KD', 19),
(423, 'KAURA NAMODA', '08', 'ZAMFARA', 'ZF', 37),
(424, 'KAURU', '14', 'KADUNA', 'KD', 19),
(425, 'KAZAURE', '17', 'JIGAWA', 'JG', 18),
(426, 'KEANA', '05', 'NASARAWA', 'NW', 26),
(427, 'KEBBE', '11', 'SOKOTO', 'SO', 34),
(428, 'KEFFI', '06', 'NASARAWA', 'NW', 26),
(429, 'KHANA', '14', 'RIVERS', 'RV', 33),
(430, 'KIBIYA', '23', 'KANO', 'KN', 20),
(431, 'KIRFI', '13', 'BAUCHI', 'BA', 5),
(432, 'KIRIKA SAMMA', '18', 'JIGAWA', 'JG', 18),
(433, 'KIRU', '24', 'KANO', 'KN', 20),
(434, 'KIYAWA', '19', 'JIGAWA', 'JG', 18),
(435, 'KOGI . K. K.', '11', 'KOGI', 'KG', 23),
(436, 'KOKO/BESSE', '13', 'KEBBI', 'KB', 22),
(437, 'KOKONA', '07', 'NASARAWA', 'NW', 26),
(438, 'KOLOKUMA/OPOKUMA', '03', 'BAYELSA', 'BY', 6),
(439, 'KONDUGA', '16', 'BORNO', 'BO', 8),
(440, 'KONSHISHA', '10', 'BENUE', 'BN', 7),
(441, 'KONTAGORA', '11', 'NIGER', 'NG', 27),
(442, 'KOSOFE', '13', 'LAGOS', 'LA', 25),
(443, 'KUBAU', '15', 'KADUNA', 'KD', 19),
(444, 'KUDAN', '16', 'KADUNA', 'KD', 19),
(445, 'KUJE', '04', 'FCT', 'FCT', 15),
(446, 'KUKAWA', '17', 'BORNO', 'BO', 8),
(447, 'KUMBOTSO', '25', 'KANO', 'KN', 20),
(448, 'KUNCHI', '26', 'KANO', 'KN', 20),
(449, 'KURA', '27', 'KANO', 'KN', 20),
(450, 'KURFI', '22', 'KATSINA', 'KT', 21),
(451, 'KURMI', '09', 'TARABA', 'TR', 35),
(452, 'KUSADA', '23', 'KATSINA', 'KT', 21),
(453, 'KWALI', '05', 'FCT', 'FCT', 15),
(454, 'KWAMI', '08', 'GOMBE', 'GM', 16),
(455, 'KWANDE', '11', 'BENUE', 'BN', 7),
(456, 'KWARE', '10', 'SOKOTO', 'SO', 34),
(457, 'KWAYA / KUSAR', '18', 'BORNO', 'BO', 8),
(458, 'LAFIA', '08', 'NASARAWA', 'NW', 26),
(459, 'LAGELU', '20', 'OYO', 'OY', 31),
(460, 'LAGOS ISLAND', '14', 'LAGOS', 'LA', 25),
(461, 'LAGOS MAINLAND', '15', 'LAGOS', 'LA', 25),
(462, 'LAMURDE', '09', 'ADAMAWA', 'AD', 2),
(463, 'LANGTANG NORTH', '09', 'PLATEAU', 'PL', 32),
(464, 'LANGTANG SOUTH', '10', 'PLATEAU', 'PL', 32),
(465, 'LAPAI', '12', 'NIGER', 'NG', 27),
(466, 'LAU', '10', 'TARABA', 'TR', 35),
(467, 'LAVUN', '13', 'NIGER', 'NG', 27),
(468, 'LERE', '17', 'KADUNA', 'KD', 19),
(469, 'LOGO', '12', 'BENUE', 'BN', 7),
(470, 'LOKOJA', '12', 'KOGI', 'KG', 23),
(471, 'MACHINA', '11', 'YOBE', 'YB', 36),
(472, 'MADAGALI', '10', 'ADAMAWA', 'AD', 2),
(473, 'MADOBI', '28', 'KANO', 'KN', 20),
(474, 'MAFA', '19', 'BORNO', 'BO', 8),
(475, 'MAGAMA', '14', 'NIGER', 'NG', 27),
(476, 'MAGUMERI', '20', 'BORNO', 'BO', 8),
(477, 'MAI ADUA', '24', 'KATSINA', 'KT', 21),
(478, 'MAIDUGURI M. C.', '21', 'BORNO', 'BO', 8),
(479, 'MAIGATARI', '20', 'JIGAWA', 'JG', 18),
(480, 'MAIHA', '11', 'ADAMAWA', 'AD', 2),
(481, 'MAIYAMA', '14', 'KEBBI', 'KB', 22),
(482, 'MAKARFI', '18', 'KADUNA', 'KD', 19),
(483, 'MAKODA', '29', 'KANO', 'KN', 20),
(484, 'MAKURDI', '13', 'BENUE', 'BN', 7),
(485, 'MALAM MADORI', '21', 'JIGAWA', 'JG', 18),
(486, 'MALUFASHI', '25', 'KATSINA', 'KT', 21),
(487, 'MANGU', '11', 'PLATEAU', 'PL', 32),
(488, 'MANI', '26', 'KATSINA', 'KT', 21),
(489, 'MARADUN', '09', 'ZAMFARA', 'ZF', 37),
(490, 'MARIGA', '15', 'NIGER', 'NG', 27),
(491, 'MARTE', '22', 'BORNO', 'BO', 8),
(492, 'MARU', '10', 'ZAMFARA', 'ZF', 37),
(493, 'MASHEGU', '16', 'NIGER', 'NG', 27),
(494, 'MASHI', '27', 'KATSINA', 'KT', 21),
(495, 'MATAZU', '28', 'KATSINA', 'KT', 21),
(496, 'MAYO - BELWA', '12', 'ADAMAWA', 'AD', 2),
(497, 'MBAITOLI (NWAORIEUBI)', '11', 'IMO', 'IM', 17),
(498, 'MBO', '17', 'AKWA IBOM', 'AK', 3),
(499, 'MICHIKA', '13', 'ADAMAWA', 'AD', 2),
(500, 'MIGA', '22', 'JIGAWA', 'JG', 18),
(501, 'MIKANG', '12', 'PLATEAU', 'PL', 32),
(502, 'MINJIBIR', '30', 'KANO', 'KN', 20),
(503, 'MISAU', '14', 'BAUCHI', 'BA', 5),
(504, 'MKPAT ENIN', '18', 'AKWA IBOM', 'AK', 3),
(505, 'MOBA', '15', 'EKITI', 'EK', 13),
(506, 'MOBBAR', '23', 'BORNO', 'BO', 8),
(507, 'MOKWA', '17', 'NIGER', 'NG', 27),
(508, 'MONGUNO', '24', 'BORNO', 'BO', 8),
(509, 'MOPA MORO', '13', 'KOGI', 'KG', 23),
(510, 'MORO', '12', 'KWARA', 'KW', 24),
(511, 'MUBI NORTH', '14', 'ADAMAWA', 'AD', 2),
(512, 'MUBI SOUTH', '15', 'ADAMAWA', 'AD', 2),
(513, 'MUNICIPAL', '06', 'FCT', 'FCT', 15),
(514, 'MUNYA', '18', 'NIGER', 'NG', 27),
(515, 'MUSAWA', '29', 'KATSINA', 'KT', 21),
(516, 'MUSHIN', '16', 'LAGOS', 'LA', 25),
(517, 'NAFADA', '09', 'GOMBE', 'GM', 16),
(518, 'NANGERE', '12', 'YOBE', 'YB', 36),
(519, 'NASARAWA', '09', 'NASARAWA', 'NW', 26),
(520, 'NASARAWA', '31', 'KANO', 'KN', 20),
(521, 'NASARAWA EGGON', '10', 'NASARAWA', 'NW', 26),
(522, 'NDOKWA EAST', '11', 'DELTA', 'DT', 10),
(523, 'NDOKWA WEST', '12', 'DELTA', 'DT', 10),
(524, 'NEMBE', '04', 'BAYELSA', 'BY', 6),
(525, 'NGALA', '25', 'BORNO', 'BO', 8),
(526, 'NGANZAI', '26', 'BORNO', 'BO', 8),
(527, 'NGASKI', '15', 'KEBBI', 'KB', 22),
(528, 'NGOR OKPALA (UMUNEKE)', '12', 'IMO', 'IM', 17),
(529, 'NGURU', '13', 'YOBE', 'YB', 36),
(530, 'NINGI', '15', 'BAUCHI', 'BA', 5),
(531, 'NJABA (NNENASA)', '13', 'IMO', 'IM', 17),
(532, 'NJIKOKA', '13', 'ANAMBRA', 'AN', 4),
(533, 'NKANU EAST', '11', 'ENUGU', 'EN', 14),
(534, 'NKANU WEST', '12', 'ENUGU', 'EN', 14),
(535, 'NKWERRE', '15', 'IMO', 'IM', 17),
(536, 'NNEWI NORTH', '14', 'ANAMBRA', 'AN', 4),
(537, 'NNEWI SOUTH', '15', 'ANAMBRA', 'AN', 4),
(538, 'NSIT ATAI', '19', 'AKWA IBOM', 'AK', 3),
(539, 'NSIT IBOM', '20', 'AKWA IBOM', 'AK', 3),
(540, 'NSIT UBIUM', '21', 'AKWA IBOM', 'AK', 3),
(541, 'NSUKKA', '13', 'ENUGU', 'EN', 14),
(542, 'NUMAN', '16', 'ADAMAWA', 'AD', 2),
(543, 'NWANGELE (ONU-NWANGELE AMAIGBO)', '14', 'IMO', 'IM', 17),
(544, 'OBAFEMI/OWODE', '15', 'OGUN', 'OG', 28),
(545, 'OBANLIKU', '12', 'CROSS RIVER', 'CR', 9),
(546, 'OBI', '11', 'NASARAWA', 'NW', 26),
(547, 'OBI', '14', 'BENUE', 'BN', 7),
(548, 'OBINGWA', '09', 'ABIA', 'AB', 1),
(549, 'OBIO/AKPOR', '15', 'RIVERS', 'RV', 33),
(550, 'OBOKUN', '24', 'OSUN', 'OS', 30),
(551, 'OBOT AKARA', '22', 'AKWA IBOM', 'AK', 3),
(552, 'OBOWO (OTOKO)', '16', 'IMO', 'IM', 17),
(553, 'OBUBRA', '13', 'CROSS RIVER', 'CR', 9),
(554, 'OBUDU', '14', 'CROSS RIVER', 'CR', 9),
(555, 'ODEDA', '16', 'OGUN', 'OG', 28),
(556, 'ODIGBO', '13', 'ONDO', 'OD', 29),
(557, 'ODO-OTIN', '25', 'OSUN', 'OS', 30),
(558, 'ODOGBOLU', '17', 'OGUN', 'OG', 28),
(559, 'ODUKPANI', '15', 'CROSS RIVER', 'CR', 9),
(560, 'OFFA', '13', 'KWARA', 'KW', 24),
(561, 'OFU', '14', 'KOGI', 'KG', 23),
(562, 'OGBA/EGBEMA/NDONI', '16', 'RIVERS', 'RV', 33),
(563, 'OGBADIBO', '15', 'BENUE', 'BN', 7),
(564, 'OGBARU', '16', 'ANAMBRA', 'AN', 4),
(565, 'OGBIA', '05', 'BAYELSA', 'BY', 6),
(566, 'OGBOMOSO NORTH', '21', 'OYO', 'OY', 31),
(567, 'OGBOMOSO SOUTH', '22', 'OYO', 'OY', 31),
(568, 'OGO-OLUWA', '23', 'OYO', 'OY', 31),
(569, 'OGOJA', '16', 'CROSS RIVER', 'CR', 9),
(570, 'OGORI MANGOGO', '15', 'KOGI', 'KG', 23),
(571, 'OGU/BOLO', '17', 'RIVERS', 'RV', 33),
(572, 'OGUN WATER SIDE', '18', 'OGUN', 'OG', 28),
(573, 'OGUTA (OGUTA)', '17', 'IMO', 'IM', 17),
(574, 'OHAFIA', '10', 'ABIA', 'AB', 1),
(575, 'OHAJI/EGBEMA (MMAHU-EGBEMA)', '18', 'IMO', 'IM', 17),
(576, 'OHAOZARA', '11', 'EBONYI', 'EB', 11),
(577, 'OHAUKWU', '12', 'EBONYI', 'EB', 11),
(578, 'OHIMINI', '17', 'BENUE', 'BN', 7),
(579, 'OJI-RIVER', '14', 'ENUGU', 'EN', 14),
(580, 'OJO', '17', 'LAGOS', 'LA', 25),
(581, 'OJU', '16', 'BENUE', 'BN', 7),
(582, 'OKE - ERO', '14', 'KWARA', 'KW', 24),
(583, 'OKEHI', '16', 'KOGI', 'KG', 23),
(584, 'OKENE', '17', 'KOGI', 'KG', 23),
(585, 'OKIGWE  (OKIGWE)', '19', 'IMO', 'IM', 17),
(586, 'OKITIPUPA', '14', 'ONDO', 'OD', 29),
(587, 'OKOBO', '23', 'AKWA IBOM', 'AK', 3),
(588, 'OKPE', '13', 'DELTA', 'DT', 10),
(589, 'OKPOKWU', '18', 'BENUE', 'BN', 7),
(590, 'OKRIKA', '18', 'RIVERS', 'RV', 33),
(591, 'OLA-OLUWA', '26', 'OSUN', 'OS', 30),
(592, 'OLAMABORO', '18', 'KOGI', 'KG', 23),
(593, 'OLORUNDA', '27', 'OSUN', 'OS', 30),
(594, 'OLORUNSOGO', '24', 'OYO', 'OY', 31),
(595, 'OLUYOLE', '25', 'OYO', 'OY', 31),
(596, 'OMALA', '19', 'KOGI', 'KG', 23),
(597, 'OMUMA', '19', 'RIVERS', 'RV', 33),
(598, 'ONA-ARA', '26', 'OYO', 'OY', 31),
(599, 'ONDO EAST', '15', 'ONDO', 'OD', 29),
(600, 'ONDO WEST', '16', 'ONDO', 'OD', 29),
(601, 'ONICHA', '13', 'EBONYI', 'EB', 11),
(602, 'ONITSHA -SOUTH', '18', 'ANAMBRA', 'AN', 4),
(603, 'ONITSHA-NORTH', '17', 'ANAMBRA', 'AN', 4),
(604, 'ONNA', '24', 'AKWA IBOM', 'AK', 3),
(605, 'ONUIMO (OKWE)', '20', 'IMO', 'IM', 17),
(606, 'OORELOPE', '27', 'OYO', 'OY', 31),
(607, 'OPOBO/NEKORO', '20', 'RIVERS', 'RV', 33),
(608, 'OREDO', '12', 'EDO', 'ED', 12),
(609, 'ORHIONMWON', '13', 'EDO', 'ED', 12),
(610, 'ORI IRE', '28', 'OYO', 'OY', 31),
(611, 'ORIADE', '28', 'OSUN', 'OS', 30),
(612, 'ORLU', '21', 'IMO', 'IM', 17),
(613, 'OROLU', '29', 'OSUN', 'OS', 30),
(614, 'ORON', '25', 'AKWA IBOM', 'AK', 3),
(615, 'ORSU (AWO IDEMILI)', '22', 'IMO', 'IM', 17),
(616, 'ORU WEST (MGBIDI)', '24', 'IMO', 'IM', 17),
(617, 'ORU-EAST', '23', 'IMO', 'IM', 17),
(618, 'ORUK ANAM', '26', 'AKWA IBOM', 'AK', 3),
(619, 'ORUMBA  SOUTH', '20', 'ANAMBRA', 'AN', 4),
(620, 'ORUMBA NORTH', '19', 'ANAMBRA', 'AN', 4),
(621, 'OSE', '17', 'ONDO', 'OD', 29),
(622, 'OSHIMILI - NORTH', '14', 'DELTA', 'DT', 10),
(623, 'OSHIMILI - SOUTH', '15', 'DELTA', 'DT', 10),
(624, 'OSHODI/ISOLO', '18', 'LAGOS', 'LA', 25),
(625, 'OSISIOMA', '11', 'ABIA', 'AB', 1),
(626, 'OSOGBO', '30', 'OSUN', 'OS', 30),
(627, 'OTUKPO', '19', 'BENUE', 'BN', 7),
(628, 'OVIA NORTH EAST', '14', 'EDO', 'ED', 12),
(629, 'OVIA SOUTH WEST', '15', 'EDO', 'ED', 12),
(630, 'OWAN EAST', '16', 'EDO', 'ED', 12),
(631, 'OWAN WEST', '17', 'EDO', 'ED', 12),
(632, 'OWERRI NORTH (ORIE URATTA)', '26', 'IMO', 'IM', 17),
(633, 'OWERRI URBAN (OWERRI)', '25', 'IMO', 'IM', 17),
(634, 'OWERRI WEST (UMUGUMA)', '27', 'IMO', 'IM', 17),
(635, 'OWO', '18', 'ONDO', 'OD', 29),
(636, 'OYE', '16', 'EKITI', 'EK', 13),
(637, 'OYI', '21', 'ANAMBRA', 'AN', 4),
(638, 'OYIGBO', '21', 'RIVERS', 'RV', 33),
(639, 'OYO EAST', '29', 'OYO', 'OY', 31),
(640, 'OYO WEST', '30', 'OYO', 'OY', 31),
(641, 'OYUN', '15', 'KWARA', 'KW', 24),
(642, 'PAIKORO', '19', 'NIGER', 'NG', 27),
(643, 'PANKSHIN', '13', 'PLATEAU', 'PL', 32),
(644, 'PATANI', '16', 'DELTA', 'DT', 10),
(645, 'PATIGI', '16', 'KWARA', 'KW', 24),
(646, 'PORT HARCOURT', '22', 'RIVERS', 'RV', 33),
(647, 'POTISKUM', '14', 'YOBE', 'YB', 36),
(648, 'QUA AN PAN', '14', 'PLATEAU', 'PL', 32),
(649, 'RABAH', '12', 'SOKOTO', 'SO', 34),
(650, 'RAFI', '20', 'NIGER', 'NG', 27),
(651, 'RANO', '32', 'KANO', 'KN', 20),
(652, 'REMO NORTH', '19', 'OGUN', 'OG', 28),
(653, 'RIJAU', '21', 'NIGER', 'NG', 27),
(654, 'RIMI', '30', 'KATSINA', 'KT', 21),
(655, 'RIMIN GADO', '33', 'KANO', 'KN', 20),
(656, 'RINGIM', '23', 'JIGAWA', 'JG', 18),
(657, 'RIYOM', '15', 'PLATEAU', 'PL', 32),
(658, 'ROGO', '34', 'KANO', 'KN', 20),
(659, 'RONI', '24', 'JIGAWA', 'JG', 18),
(660, 'S/BIRNI', '13', 'SOKOTO', 'SO', 34),
(661, 'SABON GARI', '19', 'KADUNA', 'KD', 19),
(662, 'SABUWA', '31', 'KATSINA', 'KT', 21),
(663, 'SAFANA', '32', 'KATSINA', 'KT', 21),
(664, 'SAGAMU', '20', 'OGUN', 'OG', 28),
(665, 'SAGBAMA', '06', 'BAYELSA', 'BY', 6),
(666, 'SAKABA', '16', 'KEBBI', 'KB', 22),
(667, 'SAKI EAST', '31', 'OYO', 'OY', 31),
(668, 'SAKI WEST', '32', 'OYO', 'OY', 31),
(669, 'SANDAMU', '33', 'KATSINA', 'KT', 21),
(670, 'SANGA', '20', 'KADUNA', 'KD', 19),
(671, 'SAPELE', '17', 'DELTA', 'DT', 10),
(672, 'SARDAUNA', '11', 'TARABA', 'TR', 35),
(673, 'SHAGARI', '14', 'SOKOTO', 'SO', 34),
(674, 'SHANGA', '17', 'KEBBI', 'KB', 22),
(675, 'SHANI', '27', 'BORNO', 'BO', 8),
(676, 'SHANONO', '35', 'KANO', 'KN', 20),
(677, 'SHELLENG', '17', 'ADAMAWA', 'AD', 2),
(678, 'SHENDAM', '16', 'PLATEAU', 'PL', 32),
(679, 'SHINKAFI', '11', 'ZAMFARA', 'ZF', 37),
(680, 'SHIRA', '16', 'BAUCHI', 'BA', 5),
(681, 'SHIRORO', '22', 'NIGER', 'NG', 27),
(682, 'SHONGOM', '10', 'GOMBE', 'GM', 16),
(683, 'SILAME', '15', 'SOKOTO', 'SO', 34),
(684, 'SOBA', '21', 'KADUNA', 'KD', 19),
(685, 'SOKOTO NORTH', '16', 'SOKOTO', 'SO', 34),
(686, 'SOKOTO SOUTH', '17', 'SOKOTO', 'SO', 34),
(687, 'SOMOLU', '19', 'LAGOS', 'LA', 25),
(688, 'SONG', '18', 'ADAMAWA', 'AD', 2),
(689, 'SOUTHERN IJAW', '07', 'BAYELSA', 'BY', 6),
(690, 'SULE-TANKARKAR', '25', 'JIGAWA', 'JG', 18),
(691, 'SULEJA', '23', 'NIGER', 'NG', 27),
(692, 'SUMAILA', '36', 'KANO', 'KN', 20),
(693, 'SURU', '18', 'KEBBI', 'KB', 22),
(694, 'SURULERE', '20', 'LAGOS', 'LA', 25),
(695, 'SURULERE', '33', 'OYO', 'OY', 31),
(696, 'TAFA', '24', 'NIGER', 'NG', 27),
(697, 'TAFAWA BALEWA', '17', 'BAUCHI', 'BA', 5),
(698, 'TAI', '23', 'RIVERS', 'RV', 33),
(699, 'TAKAI', '37', 'KANO', 'KN', 20),
(700, 'TAKUM', '12', 'TARABA', 'TR', 35),
(701, 'TALATA MAFARA', '12', 'ZAMFARA', 'ZF', 37),
(702, 'TAMBUWAL', '18', 'SOKOTO', 'SO', 34),
(703, 'TANGAZA', '19', 'SOKOTO', 'SO', 34),
(704, 'TARAUNI', '38', 'KANO', 'KN', 20),
(705, 'TARKA', '20', 'BENUE', 'BN', 7),
(706, 'TARMUWA', '15', 'YOBE', 'YB', 36),
(707, 'TAURA', '26', 'JIGAWA', 'JG', 18),
(708, 'TOFA', '39', 'KANO', 'KN', 20),
(709, 'TORO', '18', 'BAUCHI', 'BA', 5),
(710, 'TOTO', '12', 'NASARAWA', 'NW', 26),
(711, 'TOUNGO', '19', 'ADAMAWA', 'AD', 2),
(712, 'TSAFE', '13', 'ZAMFARA', 'ZF', 37),
(713, 'TSANYAWA', '40', 'KANO', 'KN', 20),
(714, 'TUDUN WADA', '41', 'KANO', 'KN', 20),
(715, 'TURETA', '20', 'SOKOTO', 'SO', 34),
(716, 'UDENU', '15', 'ENUGU', 'EN', 14),
(717, 'UDI', '16', 'ENUGU', 'EN', 14),
(718, 'UDU', '18', 'DELTA', 'DT', 10),
(719, 'UDUNG UKO', '27', 'AKWA IBOM', 'AK', 3),
(720, 'UGHELLI NORTH', '19', 'DELTA', 'DT', 10),
(721, 'UGHELLI SOUTH', '20', 'DELTA', 'DT', 10),
(722, 'UGWUNAGBO', '12', 'ABIA', 'AB', 1),
(723, 'UHUNMWODE', '18', 'EDO', 'ED', 12),
(724, 'UKANAFUN', '28', 'AKWA IBOM', 'AK', 3),
(725, 'UKUM', '21', 'BENUE', 'BN', 7),
(726, 'UKWA  WEST', '14', 'ABIA', 'AB', 1),
(727, 'UKWA EAST', '13', 'ABIA', 'AB', 1),
(728, 'UKWUANI', '21', 'DELTA', 'DT', 10),
(729, 'UMU - NNEOCHI', '17', 'ABIA', 'AB', 1),
(730, 'UMUAHIA  SOUTH', '16', 'ABIA', 'AB', 1),
(731, 'UMUAHIA NORTH', '15', 'ABIA', 'AB', 1),
(732, 'UNGOGO', '42', 'KANO', 'KN', 20),
(733, 'URUAN', '29', 'AKWA IBOM', 'AK', 3),
(734, 'URUE OFFONG ORUKO', '30', 'AKWA IBOM', 'AK', 3),
(735, 'USHONGO', '22', 'BENUE', 'BN', 7),
(736, 'USSA', '13', 'TARABA', 'TR', 35),
(737, 'UVWIE', '22', 'DELTA', 'DT', 10),
(738, 'UYO', '31', 'AKWA IBOM', 'AK', 3),
(739, 'UZO-UWANI', '17', 'ENUGU', 'EN', 14),
(740, 'VANDEIKYA', '23', 'BENUE', 'BN', 7),
(741, 'WAMAKKO', '21', 'SOKOTO', 'SO', 34),
(742, 'WAMBA', '13', 'NASARAWA', 'NW', 26),
(743, 'WARAWA', '43', 'KANO', 'KN', 20),
(744, 'WARJI', '19', 'BAUCHI', 'BA', 5),
(745, 'WARRI  NORTH', '23', 'DELTA', 'DT', 10),
(746, 'WARRI SOUTH', '24', 'DELTA', 'DT', 10),
(747, 'WARRI SOUTH  WEST', '25', 'DELTA', 'DT', 10),
(748, 'WASAGU/DANKO', '19', 'KEBBI', 'KB', 22),
(749, 'WASE', '17', 'PLATEAU', 'PL', 32),
(750, 'WUDIL', '44', 'KANO', 'KN', 20),
(751, 'WUKARI', '14', 'TARABA', 'TR', 35),
(752, 'WURNO', '22', 'SOKOTO', 'SO', 34),
(753, 'WUSHISHI', '25', 'NIGER', 'NG', 27),
(754, 'YABO', '23', 'SOKOTO', 'SO', 34),
(755, 'YAGBA EAST', '20', 'KOGI', 'KG', 23),
(756, 'YAGBA WEST', '21', 'KOGI', 'KG', 23),
(757, 'YAKURR', '17', 'CROSS RIVER', 'CR', 9),
(758, 'YALA', '18', 'CROSS RIVER', 'CR', 9),
(759, 'YALMALTU/ DEBA', '11', 'GOMBE', 'GM', 16),
(760, 'YANKWASHI', '27', 'JIGAWA', 'JG', 18),
(761, 'YAURI', '20', 'KEBBI', 'KB', 22),
(762, 'YENAGOA', '08', 'BAYELSA', 'BY', 6),
(763, 'YOLA NORTH', '20', 'ADAMAWA', 'AD', 2),
(764, 'YOLA SOUTH', '21', 'ADAMAWA', 'AD', 2),
(765, 'YORRO', '15', 'TARABA', 'TR', 35),
(766, 'YUNUSARI', '16', 'YOBE', 'YB', 36),
(767, 'YUSUFARI', '17', 'YOBE', 'YB', 36),
(768, 'ZAKI', '20', 'BAUCHI', 'BA', 5),
(769, 'ZANGO', '34', 'KATSINA', 'KT', 21),
(770, 'ZANGON KATAF', '22', 'KADUNA', 'KD', 19),
(771, 'ZARIA', '23', 'KADUNA', 'KD', 19),
(772, 'ZING', '16', 'TARABA', 'TR', 35),
(773, 'ZURMI', '14', 'ZAMFARA', 'ZF', 37),
(774, 'ZURU', '21', 'KEBBI', 'KB', 22);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `state_code`, `other_name`, `latitude`, `longitude`) VALUES
(1, 'ABIA', 'AB', 'ABIA', '5.4308921', '7.5247243'),
(2, 'ADAMAWA', 'AD', 'ADAMAWA', '9.3250497', '12.4380581'),
(3, 'AKWA IBOM', 'AK', 'AKWA IBOM', '4.9299869', '7.87216'),
(4, 'ANAMBRA', 'AN', 'ANAMBRA', '6.2757656', '7.0068393'),
(5, 'BAUCHI', 'BA', 'BAUCHI', '10.30982', '9.845172'),
(6, 'BAYELSA', 'BY', 'BAYELSA', '4.8677767', '5.8987139'),
(7, 'BENUE', 'BN', 'BENUE', '7.3508259', '8.8362755'),
(8, 'BORNO', 'BO', 'BORNO', '12.1205201', '13.1740348'),
(9, 'CROSS RIVER', 'CR', 'CROSS RIVER', '5.5805318', '8.7481167'),
(10, 'DELTA', 'DT', 'ASABA', '5.5324624', '5.8987139'),
(11, 'EBONYI', 'EB', 'EBONYI', '6.177973', '7.9592863'),
(12, 'EDO', 'ED', 'Benin-City', '6.5438101', '5.8987139'),
(13, 'EKITI', 'EK', 'EKITI', '7.6655813', '5.3102505'),
(14, 'ENUGU', 'EN', 'ENUGU', '6.4526667', '7.5103333'),
(15, 'FCT', 'FCT', 'ABUJA', '8.8556838', '7.179026'),
(16, 'GOMBE', 'GM', 'GOMBE', '10.2824', '11.17479'),
(17, 'IMO', 'IM', 'OWERRI', '5.5214533', '6.9209135'),
(18, 'JIGAWA', 'JG', 'JIGAWA', '12.4460001', '9.7232673'),
(19, 'KADUNA', 'KD', 'KADUNA', '10.5166667', '7.4333333'),
(20, 'KANO', 'KN', 'KANO', '12', '8.516667'),
(21, 'KATSINA', 'KT', 'KATSINA', '12.99302', '7.606163'),
(22, 'KEBBI', 'KB', 'KEBBI', '11.6781241', '4.0695454'),
(23, 'KOGI', 'KG', 'LOKOJA', '7.561891', '6.5783387'),
(24, 'KWARA', 'KW', 'ILORIN', '8.9847995', '4.5624426'),
(25, 'LAGOS', 'LA', 'LAGOS', '6.4530556', '3.3958333'),
(26, 'NASARAWA', 'NW', 'NASARAWA', '8.5474692', '7.7118003'),
(27, 'NIGER', 'NG', 'MINNA', '9.607762', '6.553394'),
(28, 'OGUN', 'OG', 'OGUN', '6.9098333', '3.2583626'),
(29, 'ONDO', 'OD', 'ONDO', '7.088721', '4.838763'),
(30, 'OSUN', 'OS', 'OSOGBO', '7.983333', '5.083333'),
(31, 'OYO', 'OY', 'IBADAN', '7.837154', '3.934652'),
(32, 'PLATEAU', 'PL', 'JOS', '9.2350817', '9.7232673'),
(33, 'RIVERS', 'RI', 'PORT HARCOURT', '4.8580767', '6.9209135'),
(34, 'SOKOTO', 'SO', 'SOKOTO', '13.0666667', '5.2333333'),
(35, 'TARABA', 'TR', 'JALINGO', '7.9868755', '10.9807003'),
(36, 'YOBE', 'YB', 'YOBE', '12.1871412', '11.7068294'),
(37, 'ZAMFARA', 'ZF', 'ZAMFARA', '12.1844159', '6.2375947');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lgas`
--
ALTER TABLE `lgas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lgas_lga_name_index` (`lga_name`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_state_name_index` (`state_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lgas`
--
ALTER TABLE `lgas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=775;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
