-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 09:39 AM
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
-- Database: `virtual_conflict_resolution_training_platform`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE `assessment` (
  `assessment_id` int(10) NOT NULL,
  `score` int(50) NOT NULL,
  `timestamp` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `completion_status` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assessment`
--

INSERT INTO `assessment` (`assessment_id`, `score`, `timestamp`, `completion_status`, `user_id`) VALUES
(2, 50, '0000-00-00 00:00:00.000000', 'comp', 3),
(5, 1900, '2024-05-09 15:15:33.434790', 'not completed', 3),
(6, 5000, '2024-05-09 11:02:04.557324', 'not completed', 3),
(7, 5000, '2024-05-09 12:29:28.079650', 'not completed', 3),
(8, 100, '2024-05-22 18:24:42.123856', 'GREAT', 2),
(9, 50, '2024-05-22 18:24:59.328503', 'GREAT', 2),
(10, 30, '2024-05-22 18:25:18.811359', 'GREAT', 2),
(11, 59, '2024-05-22 18:26:02.453891', 'excellenty', 2),
(12, 60, '2024-05-22 18:27:17.003122', 'well  completed', 2);

-- --------------------------------------------------------

--
-- Table structure for table `attendees`
--

CREATE TABLE `attendees` (
  `attendee_id` int(10) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(11) NOT NULL,
  `email` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `user_id` int(10) NOT NULL,
  `organisation` varchar(100) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `registration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendees`
--

INSERT INTO `attendees` (`attendee_id`, `fname`, `lname`, `email`, `phone`, `user_id`, `organisation`, `job_title`, `registration_date`) VALUES
(2, 'mbarushimana', 'frederick', 'mbarushima', '0783456782', 4, 'Rica', 'lecturer', '2024-05-08'),
(4, 'mbarushimana', 'Amina', 'mbarushima', '0783456782', 4, 'RBA', 'lecturer', '2024-05-08'),
(5, 'eric', 'nsengimana', 'ericnsengi', '0737317171', 3, 'Rica', 'lecturer', '2024-05-22'),
(6, 'MBARAGA', 'JEA PHIDEL', 'MBARAGA01@', '+234567890', 3, 'Rica', 'LEARNER', '2024-05-18'),
(7, 'INYOGOYEE', 'JEAN', 'INYOGOYE1@', '+277777767890', 3, 'Rica', 'LEARNER', '2024-05-18'),
(8, 'nkunzi', 'fideline', 'nkunzifide', '0789993456', 3, 'wordvision', 'LEARNER', '2024-05-25'),
(9, 'ishimwe', 'fidelite', 'ishimwefid', '+7859549949', 3, 'wordvision', 'LEARNER', '2024-11-29'),
(10, 'ngabonziza', 'ettiene', 'mugaboetti', '+785950000', 3, 'minaroc', 'student', '2024-11-29'),
(11, 'nshimiyimana', 'charles', 'nshimiyima', '+078994563', 4, 'UNIVERSITY OF RWANDA', 'vise grid', '2024-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `caurse`
--

CREATE TABLE `caurse` (
  `caurse_id` int(10) NOT NULL,
  `caurse_name` varchar(250) NOT NULL,
  `description` varchar(200) NOT NULL,
  `duration` date NOT NULL,
  `category` varchar(100) NOT NULL,
  `instructor_id` int(10) NOT NULL,
  `workshop_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `caurse`
--

INSERT INTO `caurse` (`caurse_id`, `caurse_name`, `description`, `duration`, `category`, `instructor_id`, `workshop_id`) VALUES
(3, 'building module', 'waerxctvybun', '2024-05-22', 'wszdxfgghghhhj', 2, 2),
(5, 'hhhh6666mmmm', 'uuuuuuuuuuuuu', '2024-05-22', '1', 3, 9),
(6, 'hhhh6666mmmm', 'ehhhhhhhhhhhhhhhh00000000000000000000', '2024-05-22', '1', 3, 9),
(9, 'hhhh6666mmmm', 'learner would know how to negociate with who the disagree', '2024-05-22', '1', 3, 15),
(11, ' Introduction t', 'This lesson provides an overview of conflict resolution, its importance, and the basic principles involved', '2024-05-22', 'Reading: An article on the history and importance of conflict resolution.', 5, 2),
(12, 'Understanding C', ' This lesson explores the nature of conflict, including types of conflict and common sources.', '2024-05-22', 'Reading: An article on the history and importance of conflict resolution.', 5, 2),
(13, 'Understanding C', ' This lesson explores the nature of conflict, including types of conflict and common sources.', '2024-05-22', 'Reading: An article on the history and importance of conflict resolution.', 5, 2),
(14, 'Understanding C', ' This lesson explores the nature of conflict, including types of conflict and common sources.', '2024-05-22', 'Reading: An article on the history and importance of conflict resolution. Quiz: A short quiz with 5 ', 5, 2),
(15, 'Communication S', 'This lesson focuses on the role of communication in resolving conflicts, including active listening and effective speaking techniques.', '2024-05-22', 'Reading: An article on the history and importance of conflict resolution. Quiz: A short quiz with 5 ', 5, 2),
(16, 'Negotiation Tec', 'This lesson introduces key negotiation techniques that can be used to resolve conflicts amicably.', '2024-05-22', 'Reading: A research paper on effective negotiation techniques. Simulation: An online simulation wher', 5, 2),
(17, ' Mediation and ', 'This lesson covers the processes of mediation and arbitration, and how they differ from other conflict resolution methods', '2024-05-22', 'Reading: An article comparing mediation, arbitration, and litigation. Interactive Chart: A compariso', 5, 2),
(18, 'Developing a Co', ' This lesson guides students through the steps of creating a structured conflict resolution plan.', '0000-00-00', ' Developing a Conflict Resolution Plan', 5, 2),
(19, 'Conflict Resolu', 'This lesson focuses on resolving conflicts within teams and groups.', '0000-00-00', ' DevelopingConflict Resolution in Teamsa Conflict Resolution Plan', 5, 2),
(22, 'Communication S', 'Focuses on communication in conflict resolution, including active listening and effective speaking.', '0000-00-00', 'Reading, Interactive Activity, Quiz', 6, 2),
(26, ' Communication Skills for Conflict Resolution', 'Focuses on communication in conflict resolution, including active listening and effective speaking.', '0000-00-00', 'Reading, Interactive Activity, Quiz', 6, 2),
(27, ' Developing a Conflict Resolution Plan', 'This lesson provides an overview of conflict resolution, its importance, and the basic principles involved', '0000-00-00', 'Reading: An article on the history and importance of conflict resolution. Quiz: A short quiz with 5 ', 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `cert_id` int(10) NOT NULL,
  `user_id` int(20) NOT NULL,
  `issued_date` date NOT NULL,
  `instructor_id` int(20) NOT NULL,
  `is_verified` varchar(50) NOT NULL,
  `completion_caurse` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`cert_id`, `user_id`, `issued_date`, `instructor_id`, `is_verified`, `completion_caurse`) VALUES
(1, 4, '2024-05-10', 5, 'y', '0'),
(2, 4, '2024-05-10', 5, 'n', '0'),
(4, 4, '2024-05-21', 3, 'n', '0'),
(5, 4, '2024-04-28', 3, 'not yet', 'the true negoci'),
(6, 2, '2024-05-24', 3, 'yes of caurse', 'mbatataaaaa'),
(7, 4, '2024-04-28', 3, 'still in process', 'governance and heritage'),
(8, 4, '2024-05-10', 3, 'still in process', 'governance and heritage'),
(9, 4, '2024-05-10', 3, 'still in process', 'governance and heritage'),
(10, 3, '2024-05-22', 5, 'well verified', 'Emotional Intelligence in Conflict Resolution'),
(11, 3, '2024-05-17', 7, ' verified', ' Conflict Resolution in the Workplace'),
(12, 3, '2024-05-20', 7, ' verified', 'Advanced Mediation Techniques');

-- --------------------------------------------------------

--
-- Table structure for table `conflict_resolution_resources`
--

CREATE TABLE `conflict_resolution_resources` (
  `resource_id` int(10) NOT NULL,
  `resource_name` varchar(250) NOT NULL,
  `type` varchar(200) NOT NULL,
  `ratings` varchar(250) NOT NULL,
  `aploaded_by_instructor_id` varchar(30) NOT NULL,
  `uploaded_date` varchar(100) NOT NULL,
  `language` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conflict_resolution_resources`
--

INSERT INTO `conflict_resolution_resources` (`resource_id`, `resource_name`, `type`, `ratings`, `aploaded_by_instructor_id`, `uploaded_date`, `language`) VALUES
(3, 'real an intrepr', '2', 'its good', '3', '2024-05-09', 'swahili'),
(4, 'book of busines', '1', 'not good', '3', '2024-05-09', 'english'),
(5, 'book of busines', '3', 'this book is very important', '3', '2024-05-09', 'english'),
(6, '\"The Importance', 'Article', 'satisfied', '5', '2024-05-21 12:34:56', 'english'),
(7, ' \"Techniques fo', 'Article', 'disagree', '6', '2024-05-22 14:20:10', 'english'),
(8, '\"Mediation Best', 'Article', 'satisfied', '6', '2024-05-22 14:20:10', 'english'),
(9, ' \"Conflict Reso', 'Article', 'satisfied', '6', '2024-05-22 14:20:10', 'kiswahil'),
(10, ' - \"Building Tr', 'Article', 'satisfied', '6', '2024-05-22 14:20:10', 'kiswahil'),
(11, 'Conflict Resolution in the Workplace', 'Article', 'satisfied', '6', '2024-05-22 14:20:10', 'french');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `bio` varchar(250) NOT NULL,
  `expertise` varchar(250) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `fname`, `lname`, `email`, `bio`, `expertise`, `username`, `password`, `phone`) VALUES
(2, 'eric', 'nsengimana', 'ericngenga@gmail.com', 'love yourself', 'DR in conlict resolution', 'eric3', '', ''),
(3, 'eric', 'nsengimana', NULL, 'my life is not yours', 'DR in biology', 'eric1', '9999', '0783443926'),
(4, 'eric', 'nsengimana', NULL, 'my life is not yours', 'DR in biology', 'eric1', '9999', '0783443926'),
(5, 'eric', 'nsengimana', NULL, 'my life is not yours', 'DR in biology', 'eric1', '9999', '0783443926'),
(6, 'eric', 'nsengimana', NULL, 'my life is not yours', 'DR in biology', 'eric1', '9999', '0783443926'),
(7, 'eric', 'nsengimana', NULL, 'my life is not yours', 'DR in biology', 'eric1', '$2y$10$bIYA8lzB', '0783443926'),
(8, 'eric', 'nsengimana', NULL, 'my life is not yours', 'DR in biology', 'eric1', '$2y$10$QGhdWjRu', '0783443926'),
(9, 'eric', 'nsengimana', NULL, 'my life is not yours', 'DR in biology', 'eric1', '$2y$10$3SvDpSeo', '0783443926'),
(10, 'eric', 'nsengimana', NULL, 'my life is not yours', 'DR in biology', 'eric1', '9999', '0783443926'),
(11, 'eric', 'nsengimana', NULL, 'my life is not yours', 'DR in biology', 'eric1', '9999', '0783443926'),
(12, 'eric', 'nsengimana', 'ericnsengimana01@gma', 'my life is not yours', 'DR in biology', 'eric', '9999', '0784567897'),
(13, 'INYOGOYE', 'EEEEE', 'INYOGOYEE@GMAIL', 'STUDIED AT UNIVERSITY OF OXFORD', 'DR in biology', 'EEE12222', '8888', '3456789');

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `caurse_id` int(10) NOT NULL,
  `duration` date NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `title`, `caurse_id`, `duration`, `user_id`) VALUES
(1, 'love for love w', 3, '2024-05-10', 3),
(3, 'papa wa mbuzi genyero', 3, '2024-05-10', 4),
(4, 'papa wa mbuzi genyero', 3, '2024-05-10', 4),
(5, 'Understanding Conflict', 3, '2024-05-22', 4),
(6, 'Introduction to Conflict Resolution', 3, '2024-05-11', 4),
(7, 'Communication Skills for Conflict Resolution', 3, '2024-05-11', 4),
(8, 'Negotiation Techniques', 3, '2024-05-11', 5),
(9, ' Developing a Conflict Resolution Plan', 3, '2024-05-11', 5),
(10, 'Conflict Resolution in Teams', 3, '2024-05-11', 5),
(11, 'Cultural Sensitivity in Conflict Resolution', 3, '2024-05-11', 5),
(12, ' Conflict Resolution in Teams', 3, '2024-05-22', 5),
(13, ' Cultural Sensitivity in Conflict Resolution', 3, '2024-05-09', 5),
(14, ': Mediation and Arbitration', 3, '2024-05-20', 1),
(15, ': Mediation and Arbitration', 3, '2024-05-20', 1),
(16, 'Communication Skills for Conflict Resolution', 6, '2024-05-10', 2);

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `progress_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `score` double NOT NULL,
  `lesson_id` int(15) NOT NULL,
  `completion_date` date NOT NULL,
  `completion_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `progress`
--

INSERT INTO `progress` (`progress_id`, `user_id`, `score`, `lesson_id`, `completion_date`, `completion_status`) VALUES
(5, 3, 0, 3, '2024-05-10', ''),
(6, 3, 10000000, 1, '2024-05-10', 'c'),
(7, 3, 5567900, 1, '2024-05-21', '0'),
(8, 5, 27, 3, '2024-05-08', 'y'),
(9, 5, 58, 3, '2024-05-08', 'y'),
(10, 5, 98, 6, '2024-05-08', 'e'),
(11, 5, 99, 4, '2024-05-08', 'excellenty'),
(12, 7, 74, 4, '2024-05-31', 'excellenty'),
(13, 9, 64, 6, '2024-05-31', 'completed well'),
(14, 10, 49, 6, '2024-05-31', 'GREAT');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(15) NOT NULL,
  `district` varchar(20) NOT NULL,
  `sector` varchar(20) NOT NULL,
  `village` varchar(15) NOT NULL,
  `role` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `fname`, `lname`, `email`, `password`, `district`, `sector`, `village`, `role`) VALUES
(1, 'eric', 'nsengimana', 'ericnsengimana01@gmail.com', '9999', '', '', '', ''),
(2, 'HARERIMANA', 'ALPHONSE', 'harimanaalphonse02@gmail.com', '8888', '', '', '', ''),
(3, 'Niyitunga', 'francois', 'niyitungafrancois01@gmail.com', '7777', '', '', '', ''),
(4, 'mbarushimana', 'frederick', 'mbarushimanafrederick3@gmail.com', '6666', '', '', '', ''),
(5, 'ishimwejean', 'hugues', 'ishimwejeanhugues3@gmail.com', '1234', '', '', '', ''),
(6, 'ishimwe', 'emmy', 'ishimweemmy@03gmail.com', '1234', '', '', '', ''),
(7, 'mukamurenzi', 'annocent', 'mukamurenziannocent@gmail.com', '7777', 'gicumbi', 'gisiza', 'mukono', 'trainer'),
(8, 'niyonzima ', 'jeanfelix', 'niyonzimajeanfelixt@gmail.com', '6666', 'gicumbi', 'gisiza', 'mukono', 'trainer'),
(9, 'nkunzi', 'fideline', 'nkunzifideline@gmail.com', '6666', 'nyanza', 'gakoma', 'mukono', 'student'),
(10, 'maxmille', 'ennock', 'maximilleenock@gmail.com', '6666', 'ruhango', 'rukomo', 'rukomo', 'student'),
(11, 'ishimwe', 'fidelite', 'ishimwefidelite@gmail.com', '2222', 'ruhango', 'rukomo', 'rukomo', 'student'),
(12, 'mugabo', 'etienne', 'ettiene@gmail.com', 'erty5555', 'ruhango', 'rukomo', 'rukomo', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `workshop_id` int(10) NOT NULL,
  `workshop_name` varchar(200) NOT NULL,
  `description` varchar(300) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `instruction` varchar(300) NOT NULL,
  `registration_deadline` date NOT NULL,
  `caurse_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workshops`
--

INSERT INTO `workshops` (`workshop_id`, `workshop_name`, `description`, `instructor_id`, `location`, `instruction`, `registration_deadline`, `caurse_id`) VALUES
(2, 'conflict resolu', '\\zrxtcfugihogjvhxfgd', 3, 'huye', 'p8or7ieutysragzfxgh', '2024-05-10', 0),
(9, 'conflict resolu', 'the ways we can solve conflict', 2, 'huye', 'focus on methodologies given', '2024-05-08', 3),
(10, 'conflict resolu', 'the ways we can solve conflict', 2, 'huye', 'focus on methodologies given', '2024-05-08', 3),
(11, 'conflict resolu', 'the ways we can solve conflict', 2, 'huye', 'focus on methodologies given', '2024-05-08', 3),
(12, 'conflict resolu', 'the ways we can solve conflict', 2, 'giscumbi', '', '2024-05-08', 0),
(13, 'partnership', 'the ways solve conflict', 2, 'giscumbi', '', '2024-05-08', 0),
(15, 'conflict resolu', 'the ways we can solve conflict', 2, 'huye', 'focus on methodologies given', '2024-05-08', 3),
(20, 'conflict resolu', 'the ways we can solve conflict', 3, '', 'focus on methodologies given', '2024-05-09', 3),
(21, 'ttttuuuu', 'uuuuuuuuuuuuu', 3, '', 'focus on methodologies given', '2024-05-09', 3),
(22, 'partnership', 'the ways solve conflict', 2, 'huye', 'focusgiven', '2024-05-09', 3),
(23, 'Cultural Sensitivity', ' This workshop addresses the importance of cultural awareness in mediation processes.', 5, 'Virtual (Microsoft Teams link provided upon regist', 'attendees with notebook and books', '2024-05-02', 0),
(24, 'Negotiation Strategi', 'An interactive workshop focusing on advanced negotiation tactics.', 4, 'Room 204, Main Building', 'attendees with pen and books', '2024-05-17', 6),
(25, 'Conflict Resolution ', ' Participants engage in role-playing exercises to practice conflict resolution techniques.', 7, 'Room 204, Main Building', 'attendees with pen and books', '2024-05-17', 6),
(26, ' Conflict Resolution in the Workplace', 'This workshop focuses on techniques and strategies for resolving conflicts in professional settings. It includes case studies and role-playing scenarios specific to workplace conflicts.', 7, ' Virtual (Google Meet link provided upon registration)', 'attendees with pen and books', '2024-05-17', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessment`
--
ALTER TABLE `assessment`
  ADD PRIMARY KEY (`assessment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `attendees`
--
ALTER TABLE `attendees`
  ADD PRIMARY KEY (`attendee_id`),
  ADD KEY `useri_d` (`user_id`);

--
-- Indexes for table `caurse`
--
ALTER TABLE `caurse`
  ADD PRIMARY KEY (`caurse_id`),
  ADD KEY `instructor_id` (`instructor_id`,`workshop_id`),
  ADD KEY `workshop_id` (`workshop_id`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`cert_id`),
  ADD KEY `user_id` (`user_id`,`instructor_id`);

--
-- Indexes for table `conflict_resolution_resources`
--
ALTER TABLE `conflict_resolution_resources`
  ADD PRIMARY KEY (`resource_id`),
  ADD KEY `aploaded_by_instructor_id` (`aploaded_by_instructor_id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`),
  ADD KEY `caurse_id` (`caurse_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `user_id` (`user_id`,`lesson_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`workshop_id`),
  ADD KEY `instructor_id` (`instructor_id`,`caurse_id`),
  ADD KEY `caurse_id` (`caurse_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessment`
--
ALTER TABLE `assessment`
  MODIFY `assessment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `attendees`
--
ALTER TABLE `attendees`
  MODIFY `attendee_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `caurse`
--
ALTER TABLE `caurse`
  MODIFY `caurse_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `cert_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `conflict_resolution_resources`
--
ALTER TABLE `conflict_resolution_resources`
  MODIFY `resource_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `progress_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `workshop_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assessment`
--
ALTER TABLE `assessment`
  ADD CONSTRAINT `assessment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `attendees`
--
ALTER TABLE `attendees`
  ADD CONSTRAINT `attendees_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `caurse`
--
ALTER TABLE `caurse`
  ADD CONSTRAINT `caurse_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`),
  ADD CONSTRAINT `caurse_ibfk_2` FOREIGN KEY (`workshop_id`) REFERENCES `workshops` (`workshop_id`);

--
-- Constraints for table `certificate`
--
ALTER TABLE `certificate`
  ADD CONSTRAINT `certificate_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `lesson_ibfk_2` FOREIGN KEY (`caurse_id`) REFERENCES `caurse` (`caurse_id`);

--
-- Constraints for table `progress`
--
ALTER TABLE `progress`
  ADD CONSTRAINT `progress_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`lesson_id`),
  ADD CONSTRAINT `progress_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
