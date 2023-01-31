-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 04:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostelmanage`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@mail.com', 'D00F5D5217896FB7FD601412CB890830', '2020-09-08 15:01:45', '2023-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backup`
--

CREATE TABLE `backup` (
  `id` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `backup`
--

INSERT INTO `backup` (`id`, `room_no`, `fees`, `posting_date`) VALUES
(9, 330, 750, '2022-04-03 09:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`) VALUES
(15, 200, 910, 1, '2021-03-07', 12, '11101', 'Mary', 'A.', 'Martin', 'female', 7455558855, 'marym@mail.com', 7412589650, 'James Martin', 'Father', 7896666600, '20 Patterson Street', 'Houston', '', 70067),
(16, 112, 1300, 1, '2022-04-04', 12, 'CA003', 'Richard', 'J.', 'Summers', 'Male', 1325658800, 'richards@mail.com', 4785555500, 'Maren Summers', 'Father', 4125478555, '48 Wilkinson Street', 'Nashville', '', 32701),
(17, 132, 1990, 0, '2022-04-04', 6, 'CA006', 'Jennifer', 'J.', 'Frye', 'Female', 7895555544, 'jennifer@mail.com', 2224445585, 'Beverly Frye', 'Mother', 1478569888, '18 Hanifan Lane', 'Stone Mountain', '', 38803),
(18, 269, 910, 1, '2022-05-03', 12, 'CA002', 'Bruce', 'E.', 'Murphy', 'Male', 1346565650, 'bruce@mail.com', 7850001450, 'Ellen Murphy', 'Mother', 7850001010, '25 Yorkie Lane', 'Savannah', '', 34001),
(19, 100, 1990, 0, '2022-04-17', 8, 'CA009', 'Nancy', 'W.', 'Vasquez', 'Female', 3547777770, 'nancy@mail.com', 4445554470, 'Jude Vasquez', 'Father', 4785698555, '109 Prudence Street', 'Dearborn', '', 44550),
(20, 310, 750, 0, '2022-04-10', 12, 'CA014', 'Liam', 'K.', 'Moore', 'Male', 7854441014, 'liamoore@mail.com', 7412585500, 'Christine L. Moore', 'Mother', 7458888888, '77 Test Address', 'Democity', '', 70001),
(21, 9, 2123, 0, '2023-01-13', 3, '124', 'xyz', '-', '-', 'male', 123456789, 'xyz@gmail.com', 123456789, 'sdaf', 'sdf', 1234567891, 'fdsdsfaf', 'Bangalore', '', 1324),
(28, 99, 1650, 0, '2022-12-28', 6, '999', 'pqr', '-', '-', 'female', 123456789, 'pqr@gmail.com', 1234567891, 'ewsfes', 'dgrsgs', 1234567891, 'esgrsg', 'dfhrt', '', 214),
(29, 512, 124, 0, '2023-01-17', 7, '33', 'dsgr', 'fd', 'vdf', 'male', 123456789, 'a@gmail.com', 1234567891, 'sdc', 'vfegrev', 1234567891, 'fdsdsfaf', 'dsg', '', 584101),
(30, 101, 10000, 0, '2023-01-05', 7, '1', 'abc', '-', '-', 'Male', 123456789, 'abc@gmail.com', 9182736451, 'Mark', 'Father', 9182435671, 'RR nagar ', 'Bangalore', '', 81726);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_no`, `fees`, `posting_date`) VALUES
(1, 100, 1990, '2020-09-19 22:54:06'),
(2, 201, 1650, '2020-09-19 22:54:06'),
(3, 200, 910, '2020-09-19 23:03:06'),
(4, 112, 1300, '2020-09-19 23:03:30'),
(5, 132, 1990, '2020-09-19 22:58:52'),
(7, 269, 910, '2022-04-03 09:09:22'),
(8, 310, 750, '2022-04-03 09:11:36');

--
-- Triggers `rooms`
--
DELIMITER $$
CREATE TRIGGER `t5` BEFORE DELETE ON `rooms` FOR EACH ROW BEGIN
insert into backup(id,room_no,fees,posting_date)
VALUES(OLD.id,OLD.room_no,OLD.fees,OLD.posting_date);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `loginTime`) VALUES
(1, 0, 'abc@gmail.com', 0x3a3a31, '2023-01-20 14:14:00'),
(2, 10, 'terry@mail.com', 0x3a3a31, '2021-03-04 22:42:00'),
(3, 10, 'terry@mail.com', 0x3a3a31, '2021-03-04 22:44:44'),
(4, 21, 'ross@mail.com', 0x3a3a31, '2021-03-04 22:49:52'),
(5, 21, 'ross@mail.com', 0x3a3a31, '2021-03-05 03:23:33'),
(6, 21, 'ross@mail.com', 0x3a3a31, '2021-03-05 12:05:34'),
(7, 21, 'ross@mail.com', 0x3a3a31, '2021-03-05 21:13:01'),
(8, 21, 'ross@mail.com', 0x3a3a31, '2021-03-06 09:48:49'),
(9, 21, 'ross@mail.com', 0x3a3a31, '2021-03-07 04:05:23'),
(10, 21, 'ross@mail.com', 0x3a3a31, '2021-03-07 04:29:55'),
(11, 22, 'colin@gmail.com', 0x3a3a31, '2021-06-16 09:21:24'),
(12, 22, 'colin@gmail.com', 0x3a3a31, '2021-12-12 10:01:50'),
(13, 22, 'colin@gmail.com', 0x3a3a31, '2022-04-02 10:31:31'),
(14, 21, 'ross@mail.com', 0x3a3a31, '2022-04-02 11:22:47'),
(15, 20, 'richards@mail.com', 0x3a3a31, '2022-04-03 07:45:00'),
(16, 24, 'jennifer@mail.com', 0x3a3a31, '2022-04-03 09:02:09'),
(17, 24, 'jennifer@mail.com', 0x3a3a31, '2022-04-03 09:04:17'),
(18, 19, 'bruce@mail.com', 0x3a3a31, '2022-04-03 09:14:31'),
(19, 27, 'nancy@mail.com', 0x3a3a31, '2022-04-03 09:30:46'),
(20, 32, 'liamoore@mail.com', 0x3a3a31, '2022-04-03 10:18:35'),
(21, 32, 'liamoore@mail.com', 0x3a3a31, '2022-04-03 10:21:34'),
(22, 0, 'abc@gmail.com', 0x3a3a31, '2023-01-20 14:34:15'),
(23, 0, 'abc@gmail.com', 0x3a3a31, '2023-01-20 15:03:43'),
(24, 34, 'abc@gmail.com', 0x3a3a31, '2023-01-20 18:11:07'),
(25, 34, 'abc@gmail.com', 0x3a3a31, '2023-01-21 04:09:09'),
(26, 34, 'abc@gmail.com', 0x3a3a31, '2023-01-21 04:13:16'),
(27, 34, 'abc@gmail.com', 0x3a3a31, '2023-01-21 04:29:13'),
(28, 34, 'abc@gmail.com', 0x3a3a31, '2023-01-21 05:32:34'),
(29, 34, 'abc@gmail.com', 0x3a3a31, '2023-01-28 07:02:39'),
(30, 34, 'abc@gmail.com', 0x3a3a31, '2023-01-31 05:28:24'),
(31, 34, 'abc@gmail.com', 0x3a3a31, '2023-01-31 05:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(10, 'CA001', 'Terry', 'K.', 'Rodriquez', 'Male', 1325458888, 'terry@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-01-20 15:19:52', '', ''),
(19, 'CA002', 'Bruce', 'E.', 'Murphy', 'Male', 1346565650, 'bruce@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-01-20 15:19:52', '', ''),
(20, 'CA003', 'Richard', 'J.', 'Summers', 'Male', 1325658800, 'richards@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-01-20 15:19:52', '', ''),
(21, 'CA004', 'Ross', 'S.', 'Daniels', 'Male', 6958545850, 'ross@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-01-20 15:19:52', '', ''),
(22, 'CA005', 'Colin', 'B', 'Greenwood', 'Male', 7541112050, 'colin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-01-20 15:19:52', '', ''),
(24, 'CA006', 'Jennifer', 'J.', 'Frye', 'Female', 7895555544, 'jennifer@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-01-20 15:19:52', '', ''),
(25, 'CA007', 'Bonnie', 'J.', 'Lamar', 'Female', 4580001014, 'bonnie@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-01-20 15:19:52', '', ''),
(27, 'CA009', 'Nancy', 'W.', 'Vasquez', 'Female', 3547777770, 'nancy@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-01-20 15:19:52', '', ''),
(28, 'CA010', 'Jerry', 'A.', 'Burdine', 'Male', 8520001450, 'jerry@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-01-20 15:19:52', '', ''),
(29, 'CA011', 'James', 'K.', 'Fischer', 'Male', 4785470014, 'jamesf@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-01-20 15:19:52', '', ''),
(30, 'CA012', 'Darlene', 'D.', 'Kenyon', 'Female', 3547896580, 'darlene@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-01-20 15:19:52', '', ''),
(31, 'CA013', 'Joseph', 'H.', 'Peterson', 'Male', 4587450010, 'joseph@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-01-20 15:19:52', '', ''),
(32, 'CA014', 'Liam', 'K.', 'Moore', 'Male', 7854441014, 'liamoore@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2023-01-20 15:19:52', '', ''),
(33, '123', 'xyz', '-', '-', 'Male', 123456789, 'xyz@gmail.com', 'd16fb36f0911f878998c136191af705e', '2023-01-20 15:20:33', '', ''),
(34, '1', 'abc', '-', '-', 'Male', 123456789, 'abc@gmail.com', '900150983cd24fb0d6963f7d28e17f72', '2023-01-20 18:10:49', '31-01-2023 11:29:43', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
