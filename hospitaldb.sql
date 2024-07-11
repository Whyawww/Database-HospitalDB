-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2024 at 10:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `specialization` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `name`, `specialization`, `phone`) VALUES
(1, 'Dr. Smith', 'Cardiology', '123-456-7890'),
(2, 'Dr. Johnson', 'Neurology', '234-567-8901'),
(3, 'Dr. Williams', 'Orthopedics', '345-678-9012'),
(4, 'Dr. Brown', 'Pediatrics', '456-789-0123'),
(5, 'Dr. Jones', 'Dermatology', '567-890-1234'),
(6, 'Dr. Taylor', 'General Medicine', '678-901-2345'),
(7, 'Dr. Anderson', 'ENT', '789-012-3456'),
(8, 'Dr. Thomas', 'Ophthalmology', '890-123-4567'),
(9, 'Dr. Jackson', 'Radiology', '901-234-5678'),
(10, 'Dr. White', 'Psychiatry', '012-345-6789');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `name`, `age`, `gender`, `address`, `phone`) VALUES
(1, 'Alice Johnson', 30, 'Female', '123 Maple St, City', '123-456-7890'),
(2, 'Bob Smith', 45, 'Male', '456 Oak St, City', '234-567-8901'),
(3, 'Charlie Brown', 50, 'Male', '789 Pine St, City', '345-678-9012'),
(4, 'Daisy Williams', 25, 'Female', '321 Birch St, City', '456-789-0123'),
(5, 'Eve Davis', 35, 'Female', '654 Cedar St, City', '567-890-1234'),
(6, 'Frank Miller', 40, 'Male', '789 Elm St, City', '678-901-2345'),
(7, 'Grace Wilson', 28, 'Female', '654 Maple St, City', '789-012-3456'),
(8, 'Henry Moore', 65, 'Male', '321 Oak St, City', '890-123-4567'),
(9, 'Irene Taylor', 38, 'Female', '123 Pine St, City', '901-234-5678'),
(10, 'Jack White', 55, 'Male', '987 Cedar St, City', '012-345-6789'),
(11, 'Kelly Green', 22, 'Female', '123 Maple St, City', '321-654-9870'),
(12, 'Michael Scott', 34, 'Male', '456 Oak St, City', '432-765-0981'),
(13, 'Angela Martin', 29, 'Female', '789 Pine St, City', '543-876-1092'),
(14, 'Dwight Schrute', 41, 'Male', '321 Birch St, City', '654-987-2103');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_number` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `availability` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_number`, `type`, `availability`) VALUES
(101, '101', 'Consultation', 'Yes'),
(102, '102', 'Surgery', 'No'),
(103, '103', 'ICU', 'Yes'),
(104, '104', 'Maternity', 'No'),
(105, '105', 'Pediatric', 'Yes'),
(106, '106', 'Consultation', 'No'),
(107, '107', 'Surgery', 'Yes'),
(108, '108', 'ICU', 'No'),
(109, '109', 'Maternity', 'Yes'),
(110, '110', 'Pediatric', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `schedule_id` int(11) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `appointment_date` datetime DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`schedule_id`, `doctor_id`, `patient_id`, `appointment_date`, `room_id`) VALUES
(1, 1, 1, '2024-07-10 09:00:00', 101),
(2, 2, 2, '2024-07-11 10:00:00', 102),
(3, 3, 3, '2024-07-12 11:00:00', 103),
(4, 4, 4, '2024-07-13 14:00:00', 104),
(5, 5, 5, '2024-07-14 15:00:00', 105),
(6, 6, 6, '2024-07-15 10:00:00', 101),
(7, 7, 7, '2024-07-16 11:00:00', 102),
(8, 8, 8, '2024-07-17 12:00:00', 103),
(9, 9, 9, '2024-07-18 13:00:00', 104),
(10, 10, 10, '2024-07-19 14:00:00', 105),
(11, 1, 11, '2024-07-20 09:00:00', 101),
(12, 1, 12, '2024-07-21 10:00:00', 101),
(13, 1, 13, '2024-07-22 11:00:00', 101),
(14, 1, 14, '2024-07-23 12:00:00', 101);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`, `doctor_id`) VALUES
(1, 'user1', 'password1', 'Doctor', 1),
(2, 'user2', 'password2', 'Patient', NULL),
(3, 'user3', 'password3', 'Admin', NULL),
(4, 'user4', 'password4', 'Doctor', 2),
(5, 'user5', 'password5', 'Patient', NULL),
(6, 'user6', 'password6', 'Doctor', 6),
(7, 'user7', 'password7', 'Patient', NULL),
(8, 'user8', 'password8', 'Admin', NULL),
(9, 'user9', 'password9', 'Doctor', 7),
(10, 'user10', 'password10', 'Patient', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`),
  ADD CONSTRAINT `schedules_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  ADD CONSTRAINT `schedules_ibfk_3` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
