-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: mysql1.it.nuigalway.ie
-- Generation Time: Sep 18, 2019 at 12:29 PM
-- Server version: 5.7.18-log
-- PHP Version: 5.6.26-pl0-gentoo

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dnumber` int(20) NOT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `mgrssn` bigint(20) DEFAULT NULL,
  `mgrstartdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dnumber`, `dname`, `mgrssn`, `mgrstartdate`) VALUES
(1, 'Headquarters', 888665555, '1981-06-19'),
(4, 'Administration', 987654321, '1995-01-01'),
(5, 'Research', 333445555, '1988-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `dependent`
--

CREATE TABLE `dependent` (
  `essn` bigint(20) NOT NULL,
  `dependent_name` varchar(50) NOT NULL,
  `sex` char(1) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `relationship` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dependent`
--

INSERT INTO `dependent` (`essn`, `dependent_name`, `sex`, `bdate`, `relationship`) VALUES
(123456789, 'Alice', 'F', '1988-12-30', 'Daughter'),
(123456789, 'Elizabeth', 'F', '1967-05-05', 'Spouse'),
(123456789, 'Michael', 'M', '1988-01-04', 'Son'),
(333445555, 'Alice', 'F', '1986-04-05', 'Daughter'),
(333445555, 'Joy', 'F', '1958-05-03', 'Spouse'),
(333445555, 'Theodore', 'M', '1983-10-25', 'Son'),
(987654321, 'Abner', 'M', '1942-02-28', 'Spouse');

-- --------------------------------------------------------

--
-- Table structure for table `dept_locations`
--

CREATE TABLE `dept_locations` (
  `dnumber` int(11) NOT NULL,
  `dlocation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept_locations`
--

INSERT INTO `dept_locations` (`dnumber`, `dlocation`) VALUES
(1, 'Houston'),
(4, 'Stafford'),
(5, 'Bellaire'),
(5, 'Houston'),
(5, 'Sugarland');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `fname` varchar(50) DEFAULT NULL,
  `minit` varchar(1) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `ssn` bigint(20) NOT NULL,
  `bdate` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `superssn` bigint(20) DEFAULT NULL,
  `dno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`fname`, `minit`, `lname`, `ssn`, `bdate`, `address`, `sex`, `salary`, `superssn`, `dno`) VALUES
('John', 'B', 'Smith', 123456789, '1965-01-09', '731 Fondren, Houston, Tx', 'M', 30000, 333445555, 5),
('Franklin', 'T', 'Wong', 333445555, '1955-12-08', '638 Voss, Houston, TX', 'M', 30000, 888665555, 5),
('Joyce', 'A', 'English', 453453453, '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000, 333445555, 5),
('Ramesh', 'K', 'Narayan', 666884444, '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 38000, 333445555, 5),
('James', 'E', 'Borg', 888665555, '1937-11-10', '450 Stone, Houston, TX', 'M', 55000, NULL, 1),
('Jennifer', 'S', 'Wallace', 987654321, '1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000, 888665555, 4),
('Ahmad', 'V', 'Jabbar', 987987987, '1969-03-29', '980 Dallas, Houston, TX', 'M', 25000, 987654321, 4),
('Alicia', 'J', 'Zelaya', 999887777, '1968-07-19', '3321 Castle, Spring, TX', 'F', 25000, 987654321, 4);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pname` varchar(20) DEFAULT NULL,
  `pnumber` int(11) NOT NULL,
  `plocation` varchar(20) DEFAULT NULL,
  `dnum` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pname`, `pnumber`, `plocation`, `dnum`) VALUES
('ProductX', 1, 'Bellaire', 5),
('ProductY', 2, 'Sugarland', 5),
('ProductZ', 3, 'Houston', 5),
('Computerization', 10, 'Stafford', 4),
('Reorganization', 20, 'Houston', 1),
('Newbenefits', 30, 'Stafford', 4);

-- --------------------------------------------------------

--
-- Table structure for table `works_on`
--

CREATE TABLE `works_on` (
  `essn` bigint(20) NOT NULL,
  `pno` int(11) NOT NULL,
  `hours` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works_on`
--

INSERT INTO `works_on` (`essn`, `pno`, `hours`) VALUES
(123456789, 1, 32.5),
(123456789, 2, 7.5),
(333445555, 2, 10),
(333445555, 3, 10),
(333445555, 10, 10),
(333445555, 20, 10),
(453453453, 1, 20),
(453453453, 2, 20),
(666884444, 3, 40),
(888665555, 20, 0),
(987654321, 20, 15),
(987654321, 30, 20),
(987987987, 10, 35),
(987987987, 30, 5),
(999887777, 30, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dnumber`),
  ADD KEY `mgrssn` (`mgrssn`);

--
-- Indexes for table `dependent`
--
ALTER TABLE `dependent`
  ADD PRIMARY KEY (`essn`,`dependent_name`);

--
-- Indexes for table `dept_locations`
--
ALTER TABLE `dept_locations`
  ADD PRIMARY KEY (`dnumber`,`dlocation`),
  ADD KEY `dnumber` (`dnumber`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ssn`),
  ADD KEY `FK_employee_superssn` (`superssn`),
  ADD KEY `FK_employee_department_dno` (`dno`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pnumber`),
  ADD KEY `dnum` (`dnum`);

--
-- Indexes for table `works_on`
--
ALTER TABLE `works_on`
  ADD PRIMARY KEY (`essn`,`pno`),
  ADD KEY `pno` (`pno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_2` FOREIGN KEY (`mgrssn`) REFERENCES `employee` (`ssn`);

--
-- Constraints for table `dependent`
--
ALTER TABLE `dependent`
  ADD CONSTRAINT `dependent_ibfk_1` FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`);

--
-- Constraints for table `dept_locations`
--
ALTER TABLE `dept_locations`
  ADD CONSTRAINT `FK_dept_locations_dnumber` FOREIGN KEY (`dnumber`) REFERENCES `department` (`dnumber`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK_employee_department_dno` FOREIGN KEY (`dno`) REFERENCES `department` (`dnumber`),
  ADD CONSTRAINT `FK_employee_superssn` FOREIGN KEY (`superssn`) REFERENCES `employee` (`ssn`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`dnum`) REFERENCES `department` (`dnumber`);

--
-- Constraints for table `works_on`
--
ALTER TABLE `works_on`
  ADD CONSTRAINT `FK1_works_on_essn` FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`),
  ADD CONSTRAINT `works_on_ibfk_1` FOREIGN KEY (`pno`) REFERENCES `project` (`pnumber`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
