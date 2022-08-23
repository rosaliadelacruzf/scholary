-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 23-08-2022 a las 23:46:24
-- Versión del servidor: 5.7.33
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `scholary`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creditos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asignaturas`
--

INSERT INTO `asignaturas` (`id`, `nombre`, `codigo`, `creditos`) VALUES
(1, 'Medical Transcriptionist', 'YGM', '1'),
(2, 'Cement Mason and Concrete Finisher', 'DFZ', '3'),
(3, 'Teller', 'RAG', '4'),
(4, 'Electronics Engineering Technician', 'ATC', '1'),
(5, 'Pipelaying Fitter', 'TEU', '2'),
(6, 'Nursing Aide', 'XOP', '2'),
(7, 'Hunter and Trapper', 'RJZ', '2'),
(8, 'Rolling Machine Setter', 'TTH', '2'),
(9, 'Heaters', 'QKE', '1'),
(10, 'Legal Support Worker', 'RGE', '5'),
(11, 'Tax Examiner', 'ZXH', '4'),
(12, 'Funeral Director', 'LWG', '3'),
(13, 'Brickmason', 'EGH', '4'),
(14, 'ccc', 'MYW', '5'),
(15, 'Artist', 'CGD', '5'),
(16, 'Marine Architect', 'RUP', '2'),
(17, 'Freight Agent', 'WKF', '2'),
(18, 'Adjustment Clerk', 'LXZ', '4'),
(19, 'Gauger', 'EYC', '2'),
(20, 'Trainer', 'ARV', '5'),
(21, 'Engineering Teacher', 'IVX', '1'),
(22, 'Law Teacher', 'NTI', '5'),
(23, 'Physician', 'DJC', '1'),
(24, 'Producer', 'EYO', '4'),
(25, 'Computer', 'DSL', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura_secciones`
--

CREATE TABLE `asignatura_secciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `maestro_id` bigint(20) UNSIGNED NOT NULL,
  `seccion_id` bigint(20) UNSIGNED NOT NULL,
  `asignatura_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asignatura_secciones`
--

INSERT INTO `asignatura_secciones` (`id`, `maestro_id`, `seccion_id`, `asignatura_id`) VALUES
(1, 8, 15, 6),
(2, 5, 33, 25),
(3, 4, 16, 8),
(4, 10, 5, 23),
(5, 4, 14, 21),
(6, 2, 1, 5),
(7, 10, 8, 7),
(8, 10, 18, 5),
(9, 8, 20, 18),
(10, 9, 28, 16),
(11, 1, 1, 10),
(12, 2, 4, 24),
(13, 2, 7, 25),
(14, 8, 30, 1),
(15, 10, 30, 25),
(16, 10, 25, 2),
(17, 7, 7, 2),
(18, 10, 22, 20),
(19, 5, 26, 10),
(20, 8, 5, 1),
(21, 4, 9, 9),
(22, 9, 25, 21),
(23, 3, 13, 19),
(24, 9, 2, 19),
(25, 6, 28, 20),
(26, 5, 14, 8),
(27, 1, 15, 20),
(28, 1, 31, 15),
(29, 4, 28, 14),
(30, 8, 19, 14),
(31, 6, 2, 12),
(32, 6, 11, 16),
(33, 8, 30, 10),
(34, 2, 32, 25),
(35, 2, 18, 5),
(36, 10, 22, 12),
(37, 4, 13, 9),
(38, 4, 33, 20),
(39, 5, 30, 2),
(40, 5, 14, 6),
(41, 7, 34, 25),
(42, 2, 35, 22),
(43, 4, 29, 13),
(44, 9, 32, 11),
(45, 3, 23, 12),
(46, 4, 31, 24),
(47, 1, 12, 20),
(48, 3, 11, 5),
(49, 9, 13, 18),
(50, 9, 24, 17),
(51, 7, 33, 13),
(52, 1, 25, 8),
(53, 1, 7, 23),
(54, 3, 22, 19),
(55, 7, 10, 3),
(56, 5, 10, 15),
(57, 8, 25, 8),
(58, 7, 16, 14),
(59, 6, 13, 20),
(60, 9, 7, 21),
(61, 2, 15, 10),
(62, 6, 11, 2),
(63, 9, 20, 11),
(64, 10, 6, 12),
(65, 2, 13, 11),
(66, 9, 8, 20),
(67, 9, 14, 16),
(68, 8, 10, 1),
(69, 8, 14, 12),
(70, 5, 23, 13),
(71, 7, 28, 24),
(72, 3, 20, 18),
(73, 6, 20, 16),
(74, 10, 34, 14),
(75, 8, 1, 16),
(76, 4, 28, 9),
(77, 6, 18, 2),
(78, 3, 21, 4),
(79, 7, 17, 2),
(80, 5, 32, 4),
(81, 5, 22, 4),
(82, 8, 3, 25),
(83, 1, 4, 25),
(84, 5, 10, 3),
(85, 10, 21, 25),
(86, 10, 7, 7),
(87, 5, 5, 1),
(88, 5, 8, 6),
(89, 10, 23, 7),
(90, 3, 32, 18),
(91, 1, 32, 7),
(92, 2, 9, 11),
(93, 6, 19, 3),
(94, 1, 8, 17),
(95, 8, 36, 15),
(96, 9, 32, 8),
(97, 10, 3, 6),
(98, 2, 34, 19),
(99, 6, 22, 7),
(100, 10, 29, 7),
(101, 8, 23, 7),
(102, 6, 31, 8),
(103, 9, 7, 3),
(104, 7, 14, 25),
(105, 5, 36, 24),
(106, 1, 19, 17),
(107, 10, 8, 13),
(108, 6, 32, 21),
(109, 1, 22, 23),
(110, 3, 15, 20),
(111, 7, 28, 7),
(112, 1, 18, 2),
(113, 4, 13, 3),
(114, 5, 20, 9),
(115, 9, 15, 21),
(116, 1, 22, 1),
(117, 9, 9, 5),
(118, 7, 20, 19),
(119, 10, 31, 25),
(120, 6, 25, 11),
(121, 3, 32, 3),
(122, 6, 27, 18),
(123, 3, 6, 12),
(124, 1, 13, 23),
(125, 3, 15, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grado` int(11) NOT NULL,
  `nivel` enum('Pri','Sec') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `grado`, `nivel`) VALUES
(1, 1, 'Pri'),
(2, 2, 'Pri'),
(3, 3, 'Pri'),
(4, 4, 'Pri'),
(5, 5, 'Pri'),
(6, 6, 'Pri'),
(7, 1, 'Sec'),
(8, 2, 'Sec'),
(9, 3, 'Sec'),
(10, 4, 'Sec'),
(11, 5, 'Sec'),
(12, 6, 'Sec');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matricula` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `matricula`, `edad`, `direccion`) VALUES
(1, 'Ima Mann', '653488754', 15, '328 Reynolds Cliffs\nLake Javonfurt, CO 34646'),
(2, 'Icie Sawayn', '407473477', 17, '41637 Ida Lodge Apt. 133\nNorth Vernaville, RI 98622-5356'),
(3, 'Lucienne Maggio MD', '455707113', 11, '92768 Broderick Points\nPort Carroll, MO 54257'),
(4, 'Maximillia Gleichner', '319439886', 15, '40567 Kailee Villages Apt. 602\nMadelineville, TN 86603'),
(5, 'Remington Schulist', '139538236', 11, '27681 Shakira Parkways Suite 350\nNew Clovischester, WY 76955'),
(6, 'Norris Vandervort', '182280056', 11, '16662 Shaun Corner Suite 857\nHaleytown, VT 12597'),
(7, 'Noble Kreiger', '359049816', 13, '56976 Oberbrunner Track Suite 335\nSouth Melba, CO 45543-2920'),
(8, 'Ramon Mertz', '612302263', 17, '12669 Becker Garden\nPort Jade, TN 17572-3095'),
(9, 'Dayna Friesen', '642710961', 16, '7329 Stanton Forest Apt. 617\nNew Giovanna, NM 94198'),
(10, 'Chadd Nikolaus', '903425541', 13, '47169 Harold Loop Apt. 851\nWest Casandraberg, OK 52048-5633'),
(11, 'Prof. Antwan Bogan Jr.', '474502271', 15, '112 Kemmer Neck Apt. 712\nRosenbaumberg, SC 99641'),
(12, 'Dr. Hermann Windler V', '166182118', 14, '6176 Timothy Streets Suite 248\nJacobsburgh, TX 05919'),
(13, 'Kailyn Armstrong', '124375482', 18, '681 Donna Cliffs\nKuhictown, CT 56500'),
(14, 'Dr. Joelle Toy MD', '178994780', 13, '853 Quentin Course\nNew Maurinefurt, OK 40913-1509'),
(15, 'Giovanna Schmitt', '509031259', 12, '8733 Cruz Drive\nRichmondside, NE 21026'),
(16, 'Lauriane Jaskolski Jr.', '478736114', 17, '855 Dulce Circles\nPort Georgiannaport, OH 20703'),
(17, 'Dr. Arielle Kihn II', '290044702', 16, '4857 Hilma Fall Suite 412\nAndrebury, GA 88440-6298'),
(18, 'Tremaine Dare', '238291401', 14, '396 Shirley Junction Suite 501\nSouth Kattietown, NE 95306-6466'),
(19, 'Jammie Feil', '122500401', 12, '80677 Lazaro Locks\nFlatleyfort, MA 26602-8335'),
(20, 'Prof. Sigmund Nitzsche III', '655478921', 14, '45539 Streich Course\nPort Scotmouth, WA 25157'),
(21, 'Ms. Emmie Mraz', '547781082', 18, '2738 Gislason Loaf\nLake Rosieport, NH 68307-3799'),
(22, 'Floy Rodriguez', '585710126', 16, '268 Emmerich Views Suite 085\nWest Norene, FL 31761-0061'),
(23, 'Columbus Ratke', '291335972', 12, '245 Roob Ports Suite 833\nWeissnatmouth, CT 11625-4869'),
(24, 'Kennedy Gutkowski', '210550435', 15, '9425 Hauck Camp Suite 206\nLake Angelburgh, GA 47393-2575'),
(25, 'Ms. Lou Gleichner', '588869424', 13, '18401 Rau Row\nMarlenemouth, NJ 82572'),
(26, 'Prof. Nicole Schuppe Jr.', '974262877', 11, '29614 Kohler Estate Suite 008\nNorth Brycen, IA 33897'),
(27, 'Ila Crona', '479136173', 13, '5580 Arnaldo Brooks\nNew Doyle, VA 10572'),
(28, 'Dr. Casimer Hansen', '868968682', 16, '450 Sipes Islands Suite 123\nLake Eddieborough, RI 97371-0607'),
(29, 'Ms. Ruthie Botsford IV', '260055921', 17, '223 Parker Causeway\nGibsonfurt, KS 85682-7938'),
(30, 'Hiram Kassulke II', '992472094', 13, '2817 Hackett Haven\nPort Zackery, SD 79460-8669');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cedula` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `cedula`, `telefono`, `correo`) VALUES
(1, 'Mr. Hobart Conroy', '611162943', '989.950.4591', 'kilback.deron@hotmail.com'),
(2, 'America O\'Hara', '565568572', '1-704-897-3544', 'ondricka.willy@gmail.com'),
(3, 'Lucious Grant', '636012544', '(253) 635-5562', 'douglas.eliezer@marquardt.com'),
(4, 'Mckenzie Stokes', '841038745', '+1.786.931.4587', 'rosa66@heller.biz'),
(5, 'Garett Oberbrunner', '678772665', '+1-559-916-2641', 'daren71@rice.com'),
(6, 'Ashleigh Hickle Jr.', '507472999', '(320) 705-8075', 'domenica.monahan@hotmail.com'),
(7, 'Myron Leuschke', '222899248', '210-628-1278', 'rozella.schamberger@yahoo.com'),
(8, 'Mr. Norbert Leannon', '636395850', '+18704666692', 'chadrick64@yahoo.com'),
(9, 'Dr. Dewitt Hermann', '235098686', '(320) 769-9849', 'haylie.mckenzie@nolan.com'),
(10, 'Prof. Gonzalo McCullough DDS', '819369961', '(743) 607-6520', 'elmo26@kreiger.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacidad` int(11) NOT NULL,
  `curso_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id`, `nombre`, `capacidad`, `curso_id`) VALUES
(1, 'A', 21, 1),
(2, 'A', 24, 2),
(3, 'A', 23, 3),
(4, 'A', 22, 4),
(5, 'A', 24, 5),
(6, 'A', 25, 6),
(7, 'A', 23, 7),
(8, 'A', 20, 8),
(9, 'A', 24, 9),
(10, 'A', 23, 10),
(11, 'A', 25, 11),
(12, 'A', 20, 12),
(13, 'B', 25, 1),
(14, 'B', 20, 2),
(15, 'B', 21, 3),
(16, 'B', 25, 4),
(17, 'B', 25, 5),
(18, 'B', 22, 6),
(19, 'B', 23, 7),
(20, 'B', 25, 8),
(21, 'B', 25, 9),
(22, 'B', 22, 10),
(23, 'B', 21, 11),
(24, 'B', 25, 12),
(25, 'C', 21, 1),
(26, 'C', 23, 2),
(27, 'C', 21, 3),
(28, 'C', 22, 4),
(29, 'C', 22, 5),
(30, 'C', 21, 6),
(31, 'C', 25, 7),
(32, 'C', 21, 8),
(33, 'C', 21, 9),
(34, 'C', 20, 10),
(35, 'C', 22, 11),
(36, 'C', 21, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `selecciones`
--

CREATE TABLE `selecciones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estudiante_id` bigint(20) UNSIGNED NOT NULL,
  `asignatura_seccion_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `selecciones`
--

INSERT INTO `selecciones` (`id`, `estudiante_id`, `asignatura_seccion_id`) VALUES
(1, 6, 2),
(2, 8, 119),
(3, 20, 38),
(4, 21, 32),
(5, 22, 109),
(6, 27, 69),
(7, 3, 23),
(8, 15, 10),
(9, 2, 52),
(10, 23, 50),
(11, 26, 49),
(12, 28, 50),
(13, 28, 45),
(14, 5, 109),
(15, 2, 12),
(16, 13, 81),
(17, 17, 91),
(18, 9, 36),
(19, 18, 90),
(20, 21, 53),
(21, 30, 30),
(22, 7, 115),
(23, 18, 81),
(24, 2, 16),
(25, 23, 41),
(26, 21, 24),
(27, 26, 36),
(28, 27, 19),
(29, 14, 110),
(30, 5, 66),
(31, 12, 120),
(32, 17, 24),
(33, 26, 82),
(34, 22, 47),
(35, 21, 39),
(36, 18, 8),
(37, 20, 33),
(38, 27, 54),
(39, 6, 75),
(40, 10, 56),
(41, 3, 101),
(42, 7, 41),
(43, 28, 52),
(44, 7, 26),
(45, 24, 109),
(46, 19, 20),
(47, 17, 93),
(48, 16, 68),
(49, 15, 46),
(50, 17, 121),
(51, 22, 84),
(52, 13, 26),
(53, 27, 10),
(54, 23, 69),
(55, 2, 7),
(56, 30, 107),
(57, 23, 89),
(58, 24, 43),
(59, 25, 120),
(60, 7, 37),
(61, 20, 22),
(62, 8, 34),
(63, 9, 103),
(64, 3, 54),
(65, 8, 84),
(66, 10, 79),
(67, 3, 72),
(68, 28, 4),
(69, 19, 32),
(70, 28, 21),
(71, 7, 14),
(72, 25, 63),
(73, 1, 74),
(74, 10, 100),
(75, 3, 3),
(76, 6, 55),
(77, 15, 26),
(78, 15, 82),
(79, 15, 67),
(80, 13, 42),
(81, 29, 27),
(82, 1, 93),
(83, 18, 58),
(84, 24, 51),
(85, 17, 66),
(86, 9, 13),
(87, 1, 50),
(88, 22, 11),
(89, 26, 40),
(90, 21, 19),
(91, 29, 107),
(92, 3, 57),
(93, 29, 56),
(94, 19, 32),
(95, 30, 113),
(96, 1, 71),
(97, 8, 101),
(98, 3, 59),
(99, 18, 20),
(100, 1, 98),
(101, 13, 80),
(102, 21, 14),
(103, 9, 38),
(104, 8, 105),
(105, 27, 92),
(106, 5, 90),
(107, 12, 105),
(108, 16, 46),
(109, 26, 96),
(110, 28, 101),
(111, 14, 33),
(112, 26, 38),
(113, 23, 123),
(114, 22, 67),
(115, 7, 11),
(116, 8, 54),
(117, 8, 4),
(118, 15, 117),
(119, 27, 10),
(120, 14, 71),
(121, 21, 12),
(122, 6, 9),
(123, 27, 34),
(124, 11, 9),
(125, 23, 14),
(126, 27, 105),
(127, 18, 30),
(128, 28, 80),
(129, 27, 90),
(130, 10, 119),
(131, 17, 33),
(132, 11, 19),
(133, 27, 125),
(134, 11, 28),
(135, 10, 98),
(136, 3, 77),
(137, 14, 90),
(138, 4, 97),
(139, 10, 93),
(140, 11, 76),
(141, 28, 115),
(142, 5, 54),
(143, 21, 87),
(144, 7, 57),
(145, 29, 4),
(146, 11, 72),
(147, 18, 68),
(148, 16, 9),
(149, 7, 21),
(150, 5, 77),
(151, 29, 97),
(152, 13, 60),
(153, 14, 109),
(154, 10, 64),
(155, 26, 69),
(156, 12, 104),
(157, 15, 32),
(158, 25, 42),
(159, 8, 3),
(160, 4, 64),
(161, 14, 84),
(162, 22, 58),
(163, 8, 51),
(164, 10, 72),
(165, 2, 76),
(166, 30, 90),
(167, 20, 89),
(168, 22, 53),
(169, 9, 61),
(170, 2, 33),
(171, 21, 110),
(172, 6, 45),
(173, 27, 77),
(174, 22, 97),
(175, 11, 67),
(176, 13, 53),
(177, 13, 77),
(178, 1, 102),
(179, 23, 42),
(180, 16, 68),
(181, 3, 117),
(182, 6, 17),
(183, 1, 95),
(184, 13, 125),
(185, 4, 26),
(186, 17, 8),
(187, 3, 29),
(188, 5, 20),
(189, 12, 12),
(190, 16, 59),
(191, 1, 83),
(192, 14, 108),
(193, 6, 50),
(194, 16, 22),
(195, 13, 100),
(196, 16, 84),
(197, 20, 78),
(198, 13, 19),
(199, 29, 98),
(200, 28, 85),
(201, 7, 68),
(202, 16, 120),
(203, 26, 77),
(204, 17, 123),
(205, 7, 11),
(206, 15, 111),
(207, 18, 29),
(208, 21, 73),
(209, 23, 5),
(210, 5, 16),
(211, 26, 22),
(212, 8, 46),
(213, 21, 61),
(214, 16, 55),
(215, 8, 8),
(216, 29, 58),
(217, 21, 32),
(218, 10, 27),
(219, 9, 114),
(220, 17, 107),
(221, 4, 69),
(222, 12, 44),
(223, 9, 42),
(224, 16, 67),
(225, 15, 66),
(226, 13, 82),
(227, 16, 77),
(228, 7, 54),
(229, 14, 33),
(230, 24, 21),
(231, 5, 42),
(232, 9, 46),
(233, 19, 101),
(234, 9, 117),
(235, 16, 6),
(236, 30, 101),
(237, 22, 63),
(238, 11, 71),
(239, 9, 5),
(240, 24, 123),
(241, 24, 82),
(242, 14, 88),
(243, 13, 5),
(244, 9, 46),
(245, 22, 92),
(246, 10, 34),
(247, 13, 75),
(248, 11, 117),
(249, 17, 112),
(250, 22, 37);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `asignatura_secciones`
--
ALTER TABLE `asignatura_secciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asignatura_secciones_maestro_id_foreign` (`maestro_id`),
  ADD KEY `asignatura_secciones_seccion_id_foreign` (`seccion_id`),
  ADD KEY `asignatura_secciones_asignatura_id_foreign` (`asignatura_id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `secciones_curso_id_foreign` (`curso_id`);

--
-- Indices de la tabla `selecciones`
--
ALTER TABLE `selecciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `selecciones_estudiante_id_foreign` (`estudiante_id`),
  ADD KEY `selecciones_asignatura_seccion_id_foreign` (`asignatura_seccion_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `asignatura_secciones`
--
ALTER TABLE `asignatura_secciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `selecciones`
--
ALTER TABLE `selecciones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignatura_secciones`
--
ALTER TABLE `asignatura_secciones`
  ADD CONSTRAINT `asignatura_secciones_asignatura_id_foreign` FOREIGN KEY (`asignatura_id`) REFERENCES `asignaturas` (`id`),
  ADD CONSTRAINT `asignatura_secciones_maestro_id_foreign` FOREIGN KEY (`maestro_id`) REFERENCES `maestros` (`id`),
  ADD CONSTRAINT `asignatura_secciones_seccion_id_foreign` FOREIGN KEY (`seccion_id`) REFERENCES `secciones` (`id`);

--
-- Filtros para la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD CONSTRAINT `secciones_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`);

--
-- Filtros para la tabla `selecciones`
--
ALTER TABLE `selecciones`
  ADD CONSTRAINT `selecciones_asignatura_seccion_id_foreign` FOREIGN KEY (`asignatura_seccion_id`) REFERENCES `asignatura_secciones` (`id`),
  ADD CONSTRAINT `selecciones_estudiante_id_foreign` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
