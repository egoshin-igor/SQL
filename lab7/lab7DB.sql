-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 19, 2018 at 12:37 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab7`
--

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `print_debtors`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `print_debtors` (IN `group_name` VARCHAR(255))  BEGIN
	DROP TABLE IF EXISTS group_students;
	CREATE TEMPORARY TABLE group_students AS (
		SELECT student.id_student as id_student, student.last_name as name, subject.name as subject, lesson.id_lesson as id_lesson FROM lesson
		LEFT JOIN study_group ON study_group.id_group = lesson.id_group
		LEFT JOIN subject ON subject.id_subject = lesson.id_subject
        LEFT JOIN student ON study_group.id_group = student.id_group
		WHERE
			study_group.group_name = group_name
	);
    SELECT DISTINCT group_students.name, group_students.subject  FROM group_students
	LEFT JOIN evaluation ON evaluation.id_student = group_students.id_student AND evaluation.id_lesson = group_students.id_lesson
	WHERE
		evaluation.id_student IS  NULL;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `average_evaluations`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `average_evaluations`;
CREATE TABLE IF NOT EXISTS `average_evaluations` (
`average_evaluation` decimal(11,4)
,`id_student` int(11) unsigned
,`id_lesson` int(11) unsigned
);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
CREATE TABLE IF NOT EXISTS `evaluation` (
  `id_evaluation` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_student` int(11) UNSIGNED NOT NULL,
  `id_lesson` int(11) UNSIGNED NOT NULL,
  `student_evaluation` tinyint(2) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_evaluation`),
  KEY `id_lesson` (`id_lesson`),
  KEY `id_student` (`id_student`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`id_evaluation`, `id_student`, `id_lesson`, `student_evaluation`) VALUES
(1, 3, 2, 5),
(2, 4, 3, 5),
(3, 5, 1, 5),
(4, 5, 1, 5),
(5, 5, 1, 5),
(6, 5, 1, 5),
(7, 5, 1, 5),
(8, 5, 1, 4),
(9, 3, 2, 5),
(10, 3, 2, 5),
(11, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
CREATE TABLE IF NOT EXISTS `lesson` (
  `id_lesson` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_teacher` int(11) UNSIGNED NOT NULL,
  `id_subject` int(11) UNSIGNED NOT NULL,
  `id_group` int(11) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id_lesson`),
  UNIQUE KEY `id_group_date` (`id_group`,`date`) USING BTREE,
  UNIQUE KEY `id_teacher_date` (`id_teacher`,`date`) USING BTREE,
  KEY `id_subject` (`id_subject`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id_lesson`, `id_teacher`, `id_subject`, `id_group`, `date`) VALUES
(1, 1, 1, 1, '2018-04-08'),
(2, 1, 1, 2, '2018-04-01'),
(3, 2, 1, 3, '2018-04-01'),
(4, 4, 5, 2, '2018-04-02');

-- --------------------------------------------------------

--
-- Stand-in structure for view `math_lessons`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `math_lessons`;
CREATE TABLE IF NOT EXISTS `math_lessons` (
`id_lesson` int(11) unsigned
,`begining_date` date
,`min_ending_date` bigint(10)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `popular_lessons`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `popular_lessons`;
CREATE TABLE IF NOT EXISTS `popular_lessons` (
`id_lesson` int(11) unsigned
,`subject` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `popular_subjects`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `popular_subjects`;
CREATE TABLE IF NOT EXISTS `popular_subjects` (
`id_subject` int(11) unsigned
,`subject` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id_student` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) NOT NULL,
  `id_group` int(11) UNSIGNED NOT NULL,
  `year_of_birth` year(4) NOT NULL,
  PRIMARY KEY (`id_student`),
  KEY `id_group` (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id_student`, `last_name`, `id_group`, `year_of_birth`) VALUES
(1, 'Петров', 1, 1996),
(2, 'Петрова', 1, 1997),
(3, 'Корпатов', 2, 1997),
(4, 'Корпатова', 3, 1965),
(5, 'Муромец', 1, 1999),
(6, 'Попович', 2, 2005),
(7, 'Иванов', 1, 1998),
(8, 'Козлов', 3, 1996),
(9, 'Козлова', 3, 1999),
(10, 'Миронов', 3, 1994),
(11, 'Миронова', 3, 1995);

-- --------------------------------------------------------

--
-- Table structure for table `study_group`
--

DROP TABLE IF EXISTS `study_group`;
CREATE TABLE IF NOT EXISTS `study_group` (
  `id_group` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL,
  `specialty_name` varchar(255) NOT NULL,
  `id_captain` int(11) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id_group`),
  UNIQUE KEY `group_speciality_name` (`group_name`,`specialty_name`) USING BTREE,
  UNIQUE KEY `group_name_captain` (`group_name`,`id_captain`) USING BTREE,
  KEY `id_captain` (`id_captain`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `study_group`
--

INSERT INTO `study_group` (`id_group`, `group_name`, `specialty_name`, `id_captain`) VALUES
(1, 'ВМ-21', 'ВМ', 2),
(2, 'ВМ-22', 'ВМ', 3),
(3, 'ВМ-23', 'ВМ', 4);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `id_subject` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `number_of_hours` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_subject`),
  UNIQUE KEY `subject_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id_subject`, `name`, `number_of_hours`) VALUES
(1, 'Математика', 200),
(2, 'Русский язык', 240),
(3, 'База данных', 280),
(4, 'Вычислительная математика', 206),
(5, 'Математический анализ', 300),
(6, 'Теория вероятности', 270);

-- --------------------------------------------------------

--
-- Stand-in structure for view `subjects_with_at_least_ten_students`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `subjects_with_at_least_ten_students`;
CREATE TABLE IF NOT EXISTS `subjects_with_at_least_ten_students` (
`id_subject` int(11) unsigned
,`student_amount` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `id_teacher` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  PRIMARY KEY (`id_teacher`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id_teacher`, `last_name`, `position`) VALUES
(1, 'Карасев', 'Должность 1'),
(2, 'Карасева', 'Должность 2'),
(3, 'Окунев', 'Должность 1'),
(4, 'Окунева', 'Должность 4');

-- --------------------------------------------------------

--
-- Structure for view `average_evaluations`
--
DROP TABLE IF EXISTS `average_evaluations`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `average_evaluations`  AS  select (ceiling((avg(`evaluation`.`student_evaluation`) * 10)) / 10) AS `average_evaluation`,`evaluation`.`id_student` AS `id_student`,`evaluation`.`id_lesson` AS `id_lesson` from ((`popular_lessons` left join `evaluation` on((`popular_lessons`.`id_lesson` = `evaluation`.`id_lesson`))) left join `student` on((`student`.`id_student` = `evaluation`.`id_student`))) group by `evaluation`.`id_student`,`evaluation`.`id_lesson` ;

-- --------------------------------------------------------

--
-- Structure for view `math_lessons`
--
DROP TABLE IF EXISTS `math_lessons`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `math_lessons`  AS  select `lesson`.`id_lesson` AS `id_lesson`,`lesson`.`date` AS `begining_date`,(`lesson`.`date` + dayofmonth((`subject`.`number_of_hours` / 2))) AS `min_ending_date` from (`lesson` left join `subject` on((`subject`.`id_subject` = `lesson`.`id_subject`))) where (`subject`.`name` = 'Математика') ;

-- --------------------------------------------------------

--
-- Structure for view `popular_lessons`
--
DROP TABLE IF EXISTS `popular_lessons`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `popular_lessons`  AS  select `lesson`.`id_lesson` AS `id_lesson`,`popular_subjects`.`subject` AS `subject` from (`popular_subjects` left join `lesson` on((`popular_subjects`.`id_subject` = `lesson`.`id_subject`))) where (`popular_subjects`.`id_subject` = `lesson`.`id_subject`) ;

-- --------------------------------------------------------

--
-- Structure for view `popular_subjects`
--
DROP TABLE IF EXISTS `popular_subjects`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `popular_subjects`  AS  select `subject`.`id_subject` AS `id_subject`,`subject`.`name` AS `subject` from (((`lesson` left join `study_group` on((`study_group`.`id_group` = `lesson`.`id_group`))) left join `student` on((`study_group`.`id_group` = `student`.`id_group`))) left join `subject` on((`subject`.`id_subject` = `lesson`.`id_subject`))) group by `subject`.`id_subject` having (count(`student`.`id_student`) >= 10) ;

-- --------------------------------------------------------

--
-- Structure for view `subjects_with_at_least_ten_students`
--
DROP TABLE IF EXISTS `subjects_with_at_least_ten_students`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `subjects_with_at_least_ten_students`  AS  select `subject`.`id_subject` AS `id_subject`,count(`student`.`id_student`) AS `student_amount` from (((`lesson` left join `study_group` on((`study_group`.`id_group` = `lesson`.`id_group`))) left join `student` on((`study_group`.`id_group` = `student`.`id_group`))) left join `subject` on((`subject`.`id_subject` = `lesson`.`id_subject`))) group by `subject`.`id_subject` having (`student_amount` >= 10) ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`id_lesson`) REFERENCES `lesson` (`id_lesson`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evaluation_ibfk_2` FOREIGN KEY (`id_student`) REFERENCES `student` (`id_student`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `study_group` (`id_group`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lesson_ibfk_2` FOREIGN KEY (`id_subject`) REFERENCES `subject` (`id_subject`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lesson_ibfk_3` FOREIGN KEY (`id_teacher`) REFERENCES `teacher` (`id_teacher`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`id_group`) REFERENCES `study_group` (`id_group`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `study_group`
--
ALTER TABLE `study_group`
  ADD CONSTRAINT `study_group_ibfk_1` FOREIGN KEY (`id_captain`) REFERENCES `student` (`id_student`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
