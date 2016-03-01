-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2016 at 03:19 PM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `online_class_record_system_for_ce`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE IF NOT EXISTS `assignment` (
`Id` int(11) NOT NULL,
  `StudGradeId` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Sem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
`Id` int(11) NOT NULL,
  `StudGradeId` int(11) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Sem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
`Id` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `ClassBlock` varchar(50) NOT NULL,
  `ModuleType` varchar(50) NOT NULL,
  `NumOfStudents` int(11) NOT NULL,
  `Passers` int(11) DEFAULT NULL,
  `YrSem` varchar(100) NOT NULL,
  `Schedule` varchar(100) NOT NULL,
  `Filename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Id`, `SubjectId`, `ClassBlock`, `ModuleType`, `NumOfStudents`, `Passers`, `YrSem`, `Schedule`, `Filename`) VALUES
(1, 1, 'BSCOE 2-3', 'Lec', 45, NULL, 'Second Semester 2015-16', 'S/S 07:30AM-10:30AM/10:30AM-01:30PM', ''),
(2, 2, 'BSCOE 3-5', 'Lab', 50, NULL, 'Second Semester 2015-16', 'T/F 02:00PM-05:00PM/02:00PM-05:00PM', ''),
(3, 3, 'BSCOE 5-1', 'Lec', 36, NULL, 'Second Semester 2015-16', 'W 07:30AM-10:30AM', '');

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE IF NOT EXISTS `exercises` (
`Id` int(11) NOT NULL,
  `StudGradeId` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Sem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `UserId` int(11) NOT NULL,
  `Background` text NOT NULL,
  `FName` varchar(100) NOT NULL,
  `MName` varchar(100) NOT NULL,
  `LName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`UserId`, `Background`, `FName`, `MName`, `LName`) VALUES
(2, 'qweqwe', 'qweqweas', 'asdsad', 'qweqe'),
(4, 'asdsad', 'asdas', 'qwewqe', 'asdsad');

-- --------------------------------------------------------

--
-- Table structure for table `final_exam`
--

CREATE TABLE IF NOT EXISTS `final_exam` (
`Id` int(11) NOT NULL,
  `StudGradeId` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `Rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
`Id` int(11) NOT NULL,
  `StudGradeId` int(11) NOT NULL,
  `MidTermGrade` int(11) NOT NULL,
  `FinalGrade` int(11) NOT NULL,
  `TotalGrade` int(11) NOT NULL,
  `GradeRemarks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grading_system`
--

CREATE TABLE IF NOT EXISTS `grading_system` (
`Id` int(11) NOT NULL,
  `1_00` varchar(10) NOT NULL,
  `1_25` varchar(10) NOT NULL,
  `1_50` varchar(10) NOT NULL,
  `1_75` varchar(10) NOT NULL,
  `2_00` varchar(10) NOT NULL,
  `2_25` varchar(10) NOT NULL,
  `2_50` varchar(10) NOT NULL,
  `2_75` varchar(10) NOT NULL,
  `3_00` varchar(10) NOT NULL,
  `5_00` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grading_system`
--

INSERT INTO `grading_system` (`Id`, `1_00`, `1_25`, `1_50`, `1_75`, `2_00`, `2_25`, `2_50`, `2_75`, `3_00`, `5_00`) VALUES
(1, '97-100', '94-96', '91-93', '88-90', '85-87', '82-84', '79-81', '76-78', '75-75', '0-74');

-- --------------------------------------------------------

--
-- Table structure for table `labmodperc`
--

CREATE TABLE IF NOT EXISTS `labmodperc` (
`Id` tinyint(4) NOT NULL,
  `PracExam` tinyint(4) NOT NULL,
  `Project` tinyint(4) NOT NULL,
  `Lab_MachineEx` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labmodperc`
--

INSERT INTO `labmodperc` (`Id`, `PracExam`, `Project`, `Lab_MachineEx`) VALUES
(1, 25, 30, 45);

-- --------------------------------------------------------

--
-- Table structure for table `lab_act`
--

CREATE TABLE IF NOT EXISTS `lab_act` (
`Id` int(11) NOT NULL,
  `StudGradeId` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Sem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lectmodperc`
--

CREATE TABLE IF NOT EXISTS `lectmodperc` (
`Id` tinyint(4) NOT NULL,
  `Attendance` tinyint(4) NOT NULL,
  `ClassStanding` tinyint(4) NOT NULL,
  `QuizzesLExam` tinyint(4) NOT NULL,
  `MajorExam` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lectmodperc`
--

INSERT INTO `lectmodperc` (`Id`, `Attendance`, `ClassStanding`, `QuizzesLExam`, `MajorExam`) VALUES
(1, 10, 20, 30, 40);

-- --------------------------------------------------------

--
-- Table structure for table `long_exam`
--

CREATE TABLE IF NOT EXISTS `long_exam` (
`Id` int(11) NOT NULL,
  `StudGradeId` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Sem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `midterm_exam`
--

CREATE TABLE IF NOT EXISTS `midterm_exam` (
`Id` int(11) NOT NULL,
  `StudGradeId` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `Rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `moduleitems`
--

CREATE TABLE IF NOT EXISTS `moduleitems` (
`Id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `AttDate` date NOT NULL,
  `AssignNum` smallint(6) NOT NULL,
  `AssignItems` smallint(6) NOT NULL,
  `SeatworkNum` smallint(6) NOT NULL,
  `SeatworkItems` smallint(6) NOT NULL,
  `ExNum` smallint(6) NOT NULL,
  `ExItems` smallint(6) NOT NULL,
  `LabNum` smallint(6) NOT NULL,
  `LabItems` smallint(6) NOT NULL,
  `QuizNum` smallint(6) NOT NULL,
  `QuizItems` smallint(6) NOT NULL,
  `LExamNum` smallint(6) NOT NULL,
  `LExamItems` smallint(6) NOT NULL,
  `PracExamNum` smallint(6) NOT NULL,
  `PracExamItems` int(11) NOT NULL,
  `MExamItems` smallint(6) NOT NULL,
  `FExamItems` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prac_exam`
--

CREATE TABLE IF NOT EXISTS `prac_exam` (
`Id` int(11) NOT NULL,
  `StudGradeId` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Sem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE IF NOT EXISTS `quizzes` (
`Id` int(11) NOT NULL,
  `StudGradeId` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Sem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seatwork`
--

CREATE TABLE IF NOT EXISTS `seatwork` (
`Id` int(11) NOT NULL,
  `StudGradeId` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Sem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
`Id` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `FName` varchar(100) NOT NULL,
  `MName` varchar(100) NOT NULL,
  `LName` varchar(100) NOT NULL,
  `StudentNumber` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Id`, `ClassId`, `FName`, `MName`, `LName`, `StudentNumber`) VALUES
(1, 1, 'marrynel ', 'maglasang', 'abonalla', '2014-02145-MN-0'),
(2, 1, 'john paul ', 'flores', 'avila', '2014-00767-MN-0'),
(3, 1, 'mitzi ', 'pascual', 'balbaboco', '2014-07793-MN-0'),
(4, 1, 'jasmine jaya ', 'sesbreÑo', 'belo', '2014-00681-MN-0'),
(5, 1, 'jonnel ', 'exclamado', 'bernal', '2014-01498-MN-0'),
(6, 1, 'rexc paul ', 'delmoro', 'bordeos', '2014-01916-MN-0'),
(7, 1, 'roma bethany ', 'cantila', 'callora', '2014-02750-MN-0'),
(8, 1, 'venmar ', 'cayangyang', 'cantilado', '2014-03737-MN-0'),
(9, 1, 'john lawrence ', 'aguilar', 'cernal', '2014-02285-MN-0'),
(10, 1, 'christine joyce ', 'beltran', 'cillo', '2014-03594-MN-0'),
(11, 1, 'jerome ', 'cerbito', 'colapo', '2014-03201-MN-0'),
(12, 1, 'james rowel ', 'bautista', 'corpuz', '2014-01339-MN-0'),
(13, 1, 'chelsea kaitlyn ', 'cruz', 'cruz', '2014-03263-MN-0'),
(14, 1, 'ma. aubrey ', 'alvaran', 'danga', '2014-02196-MN-0'),
(15, 1, 'niÑo ', 'pineda', 'diaz', '2014-00570-MN-0'),
(16, 1, 'james angelo ', 'suarez', 'ergina', '2014-06233-MN-0'),
(17, 1, 'christian alvin ', 'fontarum', 'fadera', '2014-07577-MN-0'),
(18, 1, 'mark julius ', 'fernando', 'galauran', '2014-00572-MN-0'),
(19, 1, 'stephanie lorraine ', 'torres', 'garcia', '2014-04513-MN-0'),
(20, 1, 'ernest philip ', 'aguilar', 'guevara', '2014-03951-MN-0'),
(21, 1, 'vicheartzel rose ', 'linguis', 'jayson', '2014-02878-MN-0'),
(22, 1, 'jonathan ', 'ente', 'jimenez', '2014-00637-MN-0'),
(23, 1, 'justine lloyd ', 'salva', 'jose', '2014-02838-MN-0'),
(24, 1, 'patrick ', 'bueno', 'lara', '2014-01836-MN-0'),
(25, 1, 'bryan keith ', 'parreÑo', 'layderos', '2014-03628-MN-0'),
(26, 1, 'maria geneda ', 'lascano', 'layno', '2014-03116-MN-0'),
(27, 1, 'angelo joshua ', 'nibut', 'lomboy', '2014-03979-MN-0'),
(28, 1, 'john benedict ', 'aguirre', 'maculada', '2014-00640-MN-0'),
(29, 1, 'trixie shane ', 'gabriel', 'maningding', '2014-00396-MN-0'),
(30, 1, 'rex cedric ', 'sagat', 'manuel', '2014-06525-MN-0'),
(31, 1, 'joshua ', 'reyes', 'medina', '2014-03877-MN-0'),
(32, 1, 'james ', 'soliva', 'mendoza', '2014-06111-MN-0'),
(33, 1, 'jared ', 'barrameda', 'ochoa', '2014-00232-MN-0'),
(34, 1, 'marco ', 'realuyo', 'orencia', '2013-05811-MN-0'),
(35, 1, 'elaiza mae ', 'diaz', 'ortega', '2014-01909-MN-0'),
(36, 1, 'al rey ', 'gutierrez', 'panilagao', '2014-00380-MN-0'),
(37, 1, 'christian ', 'nesta', 'paralejas', '2014-02728-MN-0'),
(38, 1, 'aldwin ', 'cadusale', 'pelayo', '2014-00842-MN-0'),
(39, 1, 'ernest nicole ', 'villaro', 'penales', '2014-07591-MN-0'),
(40, 1, 'halen dave ', 'untalan', 'perez', '2014-05798-MN-0'),
(41, 1, 'rusell jane ', 'sacdalan', 'quitain', '2014-01701-MN-0'),
(42, 1, 'steven joe ', 'lomeda', 'rebullido', '2014-01078-MN-0'),
(43, 1, 'clarisse ann ', 'sending', 'temporosa', '2014-02062-MN-0'),
(44, 1, 'ryan jasper ', 'villapando', 'tupaz', '2014-01306-MN-0'),
(45, 1, 'philip nathan ', 'paler', 'yaun', '2014-03599-MN-0'),
(46, 2, 'eleazar ', 'rueda', 'aÑo', '2013-06388-MN-0'),
(47, 2, 'rafael christian sto. ', 'domingo', 'aguilar', '2013-07302-MN-0'),
(48, 2, 'jazz joel de ', 'guzman', 'alvarez', '2013-00782-MN-0'),
(49, 2, 'jon vincent ', 'austria', 'angat', '2013-01169-MN-0'),
(50, 2, 'daryl don ', 'armenion', 'arce', '2013-03923-MN-0'),
(51, 2, 'michael eugene ', 'maquiÑana', 'asinas', '2013-05973-MN-0'),
(52, 2, 'kimberly ', 'medina', 'azul', '2013-01565-MN-0'),
(53, 2, 'princess nicole ', '', 'bacay', '2013-06954-MN-0'),
(54, 2, 'ryan ', 'ginez', 'baronia', '2013-00912-MN-0'),
(55, 2, 'john jerald ', 'gutierrez', 'bautista', '2013-06258-MN-0'),
(56, 2, 'jason edward ', 'vergara', 'bio', '2013-04376-MN-0'),
(57, 2, 'vince orvhict ', 'villena', 'blando', '2013-07806-MN-0'),
(58, 2, 'reynell ', 'cortiguierra', 'bobihis', '2013-05528-MN-0'),
(59, 2, 'francess marie ', 'amis', 'busalpa', '2013-06206-MN-0'),
(60, 2, 'humphrey ', 'buan', 'calalin jr.', '2013-03512-MN-0'),
(61, 2, 'ephraim joel ', 'martinez', 'capistrano', '2013-03669-MN-0'),
(62, 2, 'jon rhozze ', 'panlaqui', 'de jesus', '2013-03756-MN-0'),
(63, 2, 'aldrin ', 'nadres', 'de ramos', '2013-02290-MN-0'),
(64, 2, 'neil carlo ', 'baluyot', 'del mundo', '2013-00900-MN-0'),
(65, 2, 'jessieca ', 'baldonado', 'diano', '2013-01442-MN-0'),
(66, 2, 'maria aubrey ', 'almiï¿½e', 'eleria', '2013-02476-MN-0'),
(67, 2, 'jerwin russell ', '', 'esmalla', '2013-03169-MN-0'),
(68, 2, 'prince deozel ', 'mercado', 'espiritu', '2013-03132-MN-0'),
(69, 2, 'mark joshua ', 'olegario', 'francisco', '2013-02256-MN-0'),
(70, 2, 'judylene ', 'umali', 'gabia', '2013-06070-MN-0'),
(71, 2, 'lloyd ', 'gomez', 'gabriel', '2013-01450-MN-0'),
(72, 2, 'clarisse ', 'ibasco', 'ibasco', '2013-03193-MN-0'),
(73, 2, 'reynaldo ', 'acilo', 'ilagan', '2013-01364-MN-0'),
(74, 2, 'sonny boy de ', 'luna', 'italio', '2013-06398-MN-0'),
(75, 2, 'joseph ', 'rojas', 'lat', '2013-07452-MN-0'),
(76, 2, 'christine  joyce ', 'pastrana', 'llanes', '2013-03144-MN-0'),
(77, 2, 'kenneth ', 'marin', 'lobaton', '2013-03563-MN-0'),
(78, 2, 'florevi dela ', 'cruz', 'lopez', '2013-02641-MN-0'),
(79, 2, 'merynelle ', 'dichoso', 'lopez', '2013-03358-MN-0'),
(80, 2, 'abigail dela ', 'torre', 'macasinag', '2013-01451-MN-0'),
(81, 2, 'john karl ', 'labiste', 'malabanan', '2013-00817-MN-0'),
(82, 2, 'john peter ', 'falculan', 'mendoza', '2013-06330-MN-0'),
(83, 2, 'dale ivan ', 'mora', 'merza', '2013-01445-MN-0'),
(84, 2, 'john israel ', 'mellendrez', 'mesajon', '2013-03008-MN-0'),
(85, 2, 'miguelito ', 'labrador', 'mullion', '2013-05440-MN-0'),
(86, 2, 'rollen joy ', 'sarmiento', 'nabia', '2013-03336-MN-0'),
(87, 2, 'jennilene ', 'ausa', 'pol', '2013-01726-MN-0'),
(88, 2, 'rick anthony ', 'espino', 'policarpio', '2013-07420-MN-0'),
(89, 2, 'kevin red ', 'bersamina', 'salamat', '2013-05800-MN-0'),
(90, 2, 'rofherson ', 'canones', 'suzon', '2013-00785-MN-0'),
(91, 2, 'mary mariel ', 'martinez', 'teodoro', '2013-02176-MN-0'),
(92, 2, 'miguel san ', 'buenaventura', 'turqueza', '2013-04658-MN-0'),
(93, 2, 'rovien ', 'palmes', 'vargas', '2013-03581-MN-0'),
(94, 2, 'nica chloie ', 'garcia', 'yecla', '2013-04190-MN-0'),
(95, 2, 'hanah mae ', 'pilapil', 'zamora', '2013-00734-MN-0'),
(96, 3, 'marcelo ', 'ragay', 'anzano', '2011-00255-MN-0'),
(97, 3, 'lorenzo ', 'sabadlan', 'arcinue', '2011-03709-MN-0'),
(98, 3, 'joeden ', 'gonzales', 'asuncion', '2011-03478-MN-0'),
(99, 3, 'julius ', 'parnay', 'balais', '2011-02830-MN-0'),
(100, 3, 'angelica mae ', 'aquino', 'banaag', '2011-03161-MN-0'),
(101, 3, 'mark oliver ', 'esteban', 'cahinde', '2011-00064-MN-0'),
(102, 3, 'noel ', 'almaden', 'cambel jr.', '2011-00616-MN-0'),
(103, 3, 'jess ', 'jonilas', 'canaway', '2011-00245-MN-0'),
(104, 3, 'claire ', 'tumbaga', 'capio', '2011-01989-MN-0'),
(105, 3, 'jherick ', 'bacagan', 'daso', '2011-06816-MN-0'),
(106, 3, 'rhia joyce ', 'ortiz', 'eden', '2011-03796-MN-0'),
(107, 3, 'lara mae ', 'domingo', 'edles', '2011-01918-MN-0'),
(108, 3, 'joanna marie ', 'abule', 'ellarina', '2011-01858-MN-0'),
(109, 3, 'carol shanti ', 'garcia', 'estolas', '2011-02357-MN-0'),
(110, 3, 'justin ', 'cornelio', 'flores', '2011-00090-MN-0'),
(111, 3, 'micah mariel ', 'visto', 'garcia', '2011-04453-MN-0'),
(112, 3, 'athanasios ', 'sabado', 'go', '2008-00242-MN-0'),
(113, 3, 'romulo ', 'baltazar', 'jaravata jr.', '2011-01709-MN-0'),
(114, 3, 'genesis yeshua ', 'carreon', 'lim', '2011-02165-MN-0'),
(115, 3, 'ralph ', 'tadia', 'llaguno', '2011-03127-MN-0'),
(116, 3, 'romelia ', 'agustin', 'lutrania', '2012-11229-MN-1'),
(117, 3, 'jose mari ', 'cruz', 'manio', '2011-05187-MN-0'),
(118, 3, 'christine ', 'rubante', 'manrique', '2011-00049-MN-0'),
(119, 3, 'karolyn ', 'amaya', 'maquilan', '2011-04515-MN-0'),
(120, 3, 'john paul ', 'veral', 'mayo', '2011-03256-MN-0'),
(121, 3, 'arian ', 'sario', 'nolasco', '2011-01115-MN-0'),
(122, 3, 'john michael ', 'gonzales', 'nolasco', '2011-00043-MN-0'),
(123, 3, 'jerome ', 'laserna', 'olavario', '2011-05554-MN-0'),
(124, 3, 'gellie ', 'tiburcio', 'quiatchon', '2011-01241-MN-0'),
(125, 3, 'beatrice nicole ', 'ramos', 'quindoyos', '2011-03262-MN-0'),
(126, 3, 'lee arvi ', 'banaag', 'real', '2011-00045-MN-0'),
(127, 3, 'john paul ', 'cruz', 'resuello', '2011-00046-MN-0'),
(128, 3, 'rafael john ', 'boltron', 'surnet', '2011-05609-MN-0'),
(129, 3, 'luisito jr. ', 'nebab', 'tamone', '2011-04053-MN-0'),
(130, 3, 'ramil ', 'lucot', 'villanueva', '2011-02005-MN-0'),
(131, 3, 'wilfredo ', 'panis', 'villanueva iii', '2011-01971-MN-0');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
`Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `SubjectTitle` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`Id`, `UserId`, `SubjectTitle`) VALUES
(1, 4, 'COEN 3054 Data Structures And Algorithm Analysis'),
(2, 4, 'COEN 3134 Logic Circuits And Switching Theory'),
(3, 4, 'BSCOE Elec4 Bscoe Elective 4');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`Id` int(11) NOT NULL,
  `Username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UserType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `UserDept` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LoginHist` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `Username`, `Password`, `UserType`, `UserDept`, `LoginHist`) VALUES
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'CpE', '0000-00-00 00:00:00'),
(4, 'faculty', 'd561c7c03c1f2831904823a95835ff5f', 'Faculty', 'CpE', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
 ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `final_exam`
--
ALTER TABLE `final_exam`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `grading_system`
--
ALTER TABLE `grading_system`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `labmodperc`
--
ALTER TABLE `labmodperc`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `lab_act`
--
ALTER TABLE `lab_act`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `lectmodperc`
--
ALTER TABLE `lectmodperc`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `long_exam`
--
ALTER TABLE `long_exam`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `midterm_exam`
--
ALTER TABLE `midterm_exam`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `moduleitems`
--
ALTER TABLE `moduleitems`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `prac_exam`
--
ALTER TABLE `prac_exam`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `seatwork`
--
ALTER TABLE `seatwork`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
 ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`Id`), ADD KEY `Id` (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `final_exam`
--
ALTER TABLE `final_exam`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grading_system`
--
ALTER TABLE `grading_system`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `labmodperc`
--
ALTER TABLE `labmodperc`
MODIFY `Id` tinyint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lab_act`
--
ALTER TABLE `lab_act`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lectmodperc`
--
ALTER TABLE `lectmodperc`
MODIFY `Id` tinyint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `long_exam`
--
ALTER TABLE `long_exam`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `midterm_exam`
--
ALTER TABLE `midterm_exam`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `moduleitems`
--
ALTER TABLE `moduleitems`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prac_exam`
--
ALTER TABLE `prac_exam`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `seatwork`
--
ALTER TABLE `seatwork`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
