-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2021 at 11:37 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inter_internship_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Computer Science'),
(13, 'Electronics'),
(15, 'Teacher - Ingles');

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `company_id` int(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_department` varchar(255) NOT NULL,
  `company_address` varchar(255) NOT NULL,
  `company_mail_add_1` varchar(255) NOT NULL,
  `company_mail_add_2` varchar(255) NOT NULL,
  `company_phone` varchar(255) NOT NULL,
  `company_website` varchar(255) NOT NULL,
  `company_CEO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`company_id`, `company_name`, `company_department`, `company_address`, `company_mail_add_1`, `company_mail_add_2`, `company_phone`, `company_website`, `company_CEO`) VALUES
(1, 'Universidad Interamericana de Puerto Rico Recinto de San German', 'Intern', 'interamericanfaculty@intersg.edu', 'San German, PR', '00683, United States', '(787)-892-3090', 'https://www.inter.edu', 'R'),
(2, 'Cotton Candy Land', '', '', 'Calle Fomento #101(15,11 km)', '00682 Mayaguez, Puerto Rico', '(787)-358-8235', '', 'Michelle Cortes Agostini');

-- --------------------------------------------------------

--
-- Table structure for table `professor_info`
--

CREATE TABLE `professor_info` (
  `professor_id` int(11) NOT NULL,
  `campus` varchar(255) NOT NULL,
  `direccion_1` varchar(255) NOT NULL,
  `direccion_2` varchar(255) NOT NULL,
  `name_of_professor` varchar(255) NOT NULL,
  `professor_title` varchar(255) NOT NULL,
  `college_term` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `semester_term`
--

CREATE TABLE `semester_term` (
  `college_term_ID` int(11) NOT NULL,
  `college_term` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester_term`
--

INSERT INTO `semester_term` (`college_term_ID`, `college_term`) VALUES
(1, '2022-10'),
(6, '2022-11');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `stdnt_id` int(255) NOT NULL,
  `stdnt_name` varchar(255) NOT NULL,
  `stdnt_category_id` varchar(255) NOT NULL,
  `stdnt_image` varchar(255) NOT NULL,
  `stdnt_number` varchar(255) NOT NULL,
  `stdnt_address` varchar(255) NOT NULL,
  `stdnt_phone` varchar(255) NOT NULL,
  `stdnt_c_email` varchar(255) NOT NULL,
  `stdnt_p_email` varchar(255) NOT NULL,
  `stdnt_company_department` varchar(255) NOT NULL,
  `term_id` int(3) NOT NULL,
  `company_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`stdnt_id`, `stdnt_name`, `stdnt_category_id`, `stdnt_image`, `stdnt_number`, `stdnt_address`, `stdnt_phone`, `stdnt_c_email`, `stdnt_p_email`, `stdnt_company_department`, `term_id`, `company_id`) VALUES
(1, 'Gregor A. Rodriguez', '1', 'Gregor_Rodriguez_Santana.png', 'E00547214', 'hc box 03 17362', '(787)-673-1768', 'grodriguez7214@intersg.edu', 'gregor.gr20@gmail.com', '', 1, 1),
(2, 'Fernando Aponte Aponte', '1', 'Fernando_Aponte_Aponte.png', 'E00552354', 'Urb Buenaventura Calle Begonia 7021 Mayaguez', '(939)-280-8824', 'Faponte2354@intersg.edu', 'Fernandoaponte0609@gmail.com', '', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `system_cell`
--

CREATE TABLE `system_cell` (
  `nombre_de_recinto` varchar(255) NOT NULL,
  `direccion_1` varchar(255) NOT NULL,
  `direccion_2` varchar(255) NOT NULL,
  `nombre_profesor` varchar(255) NOT NULL,
  `rango_profesor` varchar(255) NOT NULL,
  `titulo_profesor` varchar(255) NOT NULL,
  `termino_academico` varchar(7) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_cell`
--

INSERT INTO `system_cell` (`nombre_de_recinto`, `direccion_1`, `direccion_2`, `nombre_profesor`, `rango_profesor`, `titulo_profesor`, `termino_academico`, `logo`) VALUES
('Recinto de San German', '1', '1', 'Rafael Munoz', 'Professor - rango', 'Professor - titulo', '2022-10', 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/Interamerican_University_%28emblem%29.gif/220px-Interamerican_University_%28emblem%29.gif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `user_photo`) VALUES
(1, 'admin', 'gregor.gr20@gmail.com', 'admin', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`company_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `professor_info`
--
ALTER TABLE `professor_info`
  ADD PRIMARY KEY (`professor_id`);

--
-- Indexes for table `semester_term`
--
ALTER TABLE `semester_term`
  ADD PRIMARY KEY (`college_term_ID`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`stdnt_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `company_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `professor_info`
--
ALTER TABLE `professor_info`
  MODIFY `professor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semester_term`
--
ALTER TABLE `semester_term`
  MODIFY `college_term_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `stdnt_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
