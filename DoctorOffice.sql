-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 26, 2019 at 03:01 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DoctorOffice`
--

DROP DATABASE IF EXISTS `DOCTOROFFICE`;
CREATE DATABASE IF NOT EXISTS `DoctorOffice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `DoctorOffice`;

-- --------------------------------------------------------

--
-- Table structure for table `DOCTOR`
--

DROP TABLE IF EXISTS `DOCTOR`;
CREATE TABLE IF NOT EXISTS `DOCTOR` (
  `DoctorID` varchar(15) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Medical Degree` varchar(225) NOT NULL,
  `PersonID` varchar(15) NOT NULL,
  PRIMARY KEY (`DoctorID`),
  KEY `PersonID` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

INSERT INTO `doctor` (`DoctorID`, `FirstName`, `LastName`,`Medical Degree`, `PersonID`) VALUES ('CA11332', 'Calvin', 'Nguyen', 'Doctor of Clinical Medicine (DCM)', 'PE-11');
INSERT INTO `doctor` (`DoctorID`, `FirstName`, `LastName`,`Medical Degree`, `PersonID`) VALUES ('LO22332', 'Loc', 'Nguyen', 'Doctor of Clinical Surgery (DClinSurg)', 'PE-22');
INSERT INTO `doctor` (`DoctorID`, `FirstName`, `LastName`,`Medical Degree`, `PersonID`) VALUES ('AU33332', 'Austin', 'Hoang', 'Doctor of Surgery (DS, DSurg)', 'PE-33');
INSERT INTO `doctor` (`DoctorID`, `FirstName`, `LastName`,`Medical Degree`, `PersonID`) VALUES ('RO44332', 'Ron', 'Belkin', 'Doctor of Medical Science (DMSc, DMedSc)', 'PE-44');

-- ---------------------------------

--
-- Table structure for table `DOCTORSPECIALTY`
--

DROP TABLE IF EXISTS `DOCTORSPECIALTY`;
CREATE TABLE IF NOT EXISTS `DOCTORSPECIALTY` (
  `DoctorID` varchar(15) NOT NULL,
  `SpecialtyID` varchar(11),
  PRIMARY KEY (`DoctorID`,`SpecialtyID`),
  KEY `SpecialtyID` (`SpecialtyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

INSERT INTO `doctorspecialty` (`DoctorID`, `SpecialtyID`) VALUES ('LO22332', 'SPE-200');
INSERT INTO `doctorspecialty` (`DoctorID`, `SpecialtyID`) VALUES ('LO22332', 'SPE-500');
INSERT INTO `doctorspecialty` (`DoctorID`, `SpecialtyID`) VALUES ('AU33332', 'SPE-100');
INSERT INTO `doctorspecialty` (`DoctorID`, `SpecialtyID`) VALUES ('AU33332', 'SPE-400');
INSERT INTO `doctorspecialty` (`DoctorID`, `SpecialtyID`) VALUES ('RO44332', 'SPE-200');
INSERT INTO `doctorspecialty` (`DoctorID`, `SpecialtyID`) VALUES ('RO44332', 'SPE-300');

-- --------------------------------------------------------

--
-- Table structure for table `specialty_audit`
--

DROP TABLE IF EXISTS `specialtyAudit`;
CREATE TABLE IF NOT EXISTS `specialtyAudit` (
  `FirstName` varchar(20),
  `SpecialtyName` varchar(20),
  `Action` varchar(20),
  `DateModified` date, 
  PRIMARY KEY(FirstName, SpecialtyName)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Table structure for table `PATIENT`
--

DROP TABLE IF EXISTS `PATIENT`;
CREATE TABLE IF NOT EXISTS `PATIENT` (
  `PatientID` varchar(15) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `DOB` date NOT NULL,
  `PersonID` varchar(15) NOT NULL,
  PRIMARY KEY (`PatientID`),
  KEY `PersonID` (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-11', '011-999-9999', '1950-11-11', 'PE-11');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-22', '022-988-8888', '1950-12-12', 'PE-22');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-33', '033-777-7777', '1950-10-10', 'PE-33');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-111', '111-999-8888', '1950-01-01', 'PE-111');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-222', '222-888-9999', '1950-02-02', 'PE-222');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-333', '333-777-6666', '1950-03-03', 'PE-333');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-444', '444-666-6666', '1950-04-04', 'PE-444');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-555', '555-111-2222', '1955-05-05', 'PE-555');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-666', '666-333-4444', '1950-06-06', 'PE-666');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-777', '777-111-3333', '1950-07-07', 'PE-777');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-888', '888-222-4444', '1950-08-08', 'PE-888');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-999', '999-555-1111', '1950-09-09', 'PE-999');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-1122', '112-233-3444', '1950-01-02', 'PE-1122');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-3344', '334-455-5666', '1950-03-04', 'PE-3344');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-5566', '556-699-9000', '1950-05-06', 'PE-5566');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-9900', '990-011-1222', '1950-09-10', 'PE-9900');
INSERT INTO `patient` (`PatientID`, `PhoneNumber`, `DOB`, `PersonID`) VALUES ('PA-7788', '778-801-0101', '1950-07-08', 'PE-7788');

-- --------------------------------------------------------

--
-- Table structure for table `PATIENTVISIT`
--

DROP TABLE IF EXISTS `PATIENTVISIT`;
CREATE TABLE IF NOT EXISTS `PATIENTVISIT` (
  `VisitID` varchar(15) NOT NULL,
  `PatientID` varchar(15) NOT NULL,
  `DoctorID` varchar(15) NOT NULL,
  `VisitDate` date NOT NULL,
  PRIMARY KEY (`VisitID`),
  KEY `DoctorID` (`DoctorID`),
  KEY `PatientID` (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-100', 'PA-9900', 'CA11332', '2019-12-01');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-101', 'PA-555', 'CA11332', '2019-12-01');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-102', 'PA-666', 'CA11332', '2019-12-01');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-103', 'PA-777', 'CA11332', '2019-12-01');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-104', 'PA-888', 'CA11332', '2019-12-01');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-105', 'PA-999', 'CA11332', '2019-12-01');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-106', 'PA-1122', 'CA11332', '2019-12-01');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-107', 'PA-3344', 'CA11332', '2019-12-01');

INSERT INTO `patientvisit` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-200', 'PA-444', 'LO22332', '2019-12-01');
INSERT INTO `patientvisit` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-201', 'PA-222', 'LO22332', '2019-12-01');
INSERT INTO `patientvisit` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-202', 'PA-666', 'LO22332', '2019-12-01');
INSERT INTO `patientvisit` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-203', 'PA-777', 'LO22332', '2019-12-01');
INSERT INTO `patientvisit` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-204', 'PA-888', 'LO22332', '2019-12-01');
INSERT INTO `patientvisit` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-205', 'PA-999', 'LO22332', '2019-12-01');
INSERT INTO `patientvisit` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-206', 'PA-11', 'LO22332', '2019-12-01');

INSERT INTO `patientvisit` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-300', 'PA-1122', 'AU33332', '2019-12-04');
INSERT INTO `patientvisit` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-301', 'PA-3344', 'AU33332', '2019-12-04');
INSERT INTO `patientvisit` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-302', 'PA-333', 'AU33332', '2019-12-04');
INSERT INTO `patientvisit` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-304', 'PA-9900', 'AU33332', '2019-12-04');
INSERT INTO `patientvisit` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-305', 'PA-22', 'AU33332', '2019-12-04');

INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-400', 'PA-11', 'RO44332', '2019-12-01');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-401', 'PA-111', 'RO44332', '2019-12-01');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-402', 'PA-222', 'RO44332', '2019-12-02');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-403', 'PA-333', 'RO44332', '2019-12-03');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-404', 'PA-444', 'RO44332', '2019-12-03');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-405', 'PA-555', 'RO44332', '2019-12-04');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-406', 'PA-666', 'RO44332', '2019-12-04');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-407', 'PA-777', 'RO44332', '2019-12-05');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-408', 'PA-888', 'RO44332', '2019-12-05');
INSERT INTO `PATIENTVISIT` (`VisitID`, `PatientID`, `DoctorID`, `VisitDate`) VALUES ('VI-409', 'PA-999', 'RO44332', '2019-12-06');


-- --------------------------------------------------------

--
-- Table structure for table `PERSON`
--

DROP TABLE IF EXISTS `PERSON`;
CREATE TABLE IF NOT EXISTS `PERSON` (
  `personID` varchar(15) NOT NULL,
  `FirstName` varchar(225) DEFAULT NULL,
  `LastName` varchar(225) NOT NULL,
  `StreetAddress` varchar(225) NOT NULL,
  `City` varchar(225) NOT NULL,
  `State` varchar(225) NOT NULL,
  `PhoneNumber` varchar(225) NOT NULL,
  `SSN` int(9) NOT NULL,
  `InsuranceID` int(30) NOT NULL,
  PRIMARY KEY (`personID`,`SSN`,`InsuranceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PERSON`
--

INSERT INTO `PERSON` (`personID`, `FirstName`, `LastName`, `StreetAddress`, `City`, `State`, `SSN`, `InsuranceID`) VALUES
('PE-11', 'CALVIN', 'NGUYEN', '11 STREET ST', 'ANAHEIM', 'CALIFORNIA', '0115554444', '90909011'),
('PE-22', 'LOC', 'NGUYEN', '22 BOULEVAR BLV', 'GARDEN GROVE', 'CALIFORNIA', '0227776666', '90909022'),
('PE-33', 'AUSTIN', 'HOANG', '333 LANE LN', 'ORANGE', 'CALIFORNIA', '0339998888', '90909033'),
('PE-44', 'ROB', 'BELKIN', '444 ', 'FULLERTON', 'CALIFORNIA', '0445556666', '90909044'),
('PE-111', 'JOHN', 'SMITH', '3333 BRISTOL ST', 'SANTA ANA', 'CALIFORNIA', '11111111', '12345111'),
('PE-222', 'MARIA', 'LOPEZ', '1321 11TH ST', 'SANTA ANA', 'CALIFORNIA', '222222222', '12345222'),
('PE-333', 'ALLISON', 'NGUYEN', '14152 TRASK AVE', 'GARDEN GROVE', 'CALIFORNIA', '33333333', '12345333'),
('PE-444', 'CHARLES', 'TUNSTON', '2999 SIMMON ST', 'BUENA PARK', 'CALIFORNIA', '444444444', '12345444'),
('PE-555', 'TIM', 'DAGETTO', '9889 WESTMINSTER LANE', 'CULVER ', 'CALIFORNIA', '55555555', '12345555'),
('PE-666', 'LINH', 'NGUYEN', '84223 HOOVER ST', 'WESTMINSTER', 'CALIFORNIA', '666666666', '12345666'),
('PE-777', 'STEVE', 'WILSON', '2001 FLOWER ST', 'ANAHEIM', 'CALIFORNIA', '777777777', '12345777'),
('PE-888', 'SUE', 'SAN', '9882 HIGHWAY', 'LOS ANGELES', 'CALIFORNIA', '888888888', '12345888'),
('PE-999', 'MARY', 'JOHNSON', '2319 BACKALLEY', 'SANTA ANA', 'CALIFORNIA', '999999999', '12345999'),
('PE-123', 'LILY', 'NGUYEN', '4991 DISNEY LANE', 'ANAHEIM', 'CALIFORNIA', '123123123', '12345123'),
('PE-456', 'CHELSEY', 'HO', '8799 11TH ST', 'SANTA ANA', 'CALIFORNIA', '456456456', '12345456'),
('PE-789', 'JOHN', 'SON', '2144 5TH ST', 'FULLERTON', 'CALIFORNIA', '789789789', '12345789'),
('PE-987', 'JESSICA', 'BIEL', '9 RODEO DR', 'HOLLYWOOD', 'CALIFORNIA', '987987987', '12345987'),
('PE-654', 'VINCENT', 'HWANG', '69595 KING ST', 'FULLERTON', 'CALIFORNIA', '654654654', '12345654'),
('PE-321', 'KARTIK', 'PATEL', '3829 HELLO WAY', 'TUSTIN', 'CALIFORNIA', '321321321', '12345321'),
('PE-1122', 'TOM', 'VO', '2839 BEACH BLVD', 'IRVINE', 'CALIFORNIA', '112211222', '90901122'),
('PE-3344', 'ANNE', 'HILL', '21228 JEFFERY RD', 'FULLERTON', 'CALIFORNIA', '334433444', '90903344'),
('PE-5566', 'KEVIN', 'NGUYEN', '1244 RUSSELL ST', 'GARDEN GROVE', 'CALIFORNIA', '556655666', '90905566'),
('PE-7788', 'JESSICA', 'SONG', '2599 JAMESTONE BLVD', 'IRVINE', 'CALIFORNIA', '778877888', '90907788'),
('PE-9900', 'JOHN', 'WAYNE', '5511 AIR PORT', 'IRVINE', 'CALIFORNIA', '990099000', '90909900');

-- --------------------------------------------------------

--
-- Table structure for table `PRESCRIPTION`
--

DROP TABLE IF EXISTS `PRESCRIPTION`;
CREATE TABLE IF NOT EXISTS `PRESCRIPTION` (
  `PrescriptionID` varchar(15) NOT NULL,
  `PrescriptionName` varchar(15) NOT NULL,
  PRIMARY KEY (`PrescriptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

INSERT INTO `prescription` (`PrescriptionID`, `PrescriptionName`) VALUES ('PR-111332', 'Panadol');
INSERT INTO `prescription` (`PrescriptionID`, `PrescriptionName`) VALUES ('PR-222332', 'Abilify');
INSERT INTO `prescription` (`PrescriptionID`, `PrescriptionName`) VALUES ('PR-333332', 'Celexa');
INSERT INTO `prescription` (`PrescriptionID`, `PrescriptionName`) VALUES ('PR-444332', 'Fentanyl');
INSERT INTO `prescription` (`PrescriptionID`, `PrescriptionName`) VALUES ('PR-555332', 'Ibuprofen');
INSERT INTO `prescription` (`PrescriptionID`, `PrescriptionName`) VALUES ('PR-666332', 'Melatonin');
INSERT INTO `prescription` (`PrescriptionID`, `PrescriptionName`) VALUES ('PR-777332', 'Prozac');
INSERT INTO `prescription` (`PrescriptionID`, `PrescriptionName`) VALUES ('PR-888332', 'Tylenol');
INSERT INTO `prescription` (`PrescriptionID`, `PrescriptionName`) VALUES ('PR-999332', 'Zoloft');

-- --------------------------------------------------------

--
-- Table structure for table `PVISITPRESCRIPTION`
--

DROP TABLE IF EXISTS `PVISITPRESCRIPTION`;
CREATE TABLE IF NOT EXISTS `PVISITPRESCRIPTION` (
  `VisitID` varchar(15) NOT NULL,
  `PrescriptionID` varchar(15) NOT NULL,
  PRIMARY KEY (`VisitID`,`PrescriptionID`),
  KEY `PrescriptionID` (`PrescriptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

INSERT INTO `pvisitprescription` (`VisitID`, `PrescriptionID`) VALUES ('VI-101', 'PR-111332');
INSERT INTO `pvisitprescription` (`VisitID`, `PrescriptionID`) VALUES ('VI-404', 'PR-111332');
INSERT INTO `pvisitprescription` (`VisitID`, `PrescriptionID`) VALUES ('VI-104', 'PR-111332');
INSERT INTO `pvisitprescription` (`VisitID`, `PrescriptionID`) VALUES ('VI-301', 'PR-111332');
INSERT INTO `pvisitprescription` (`VisitID`, `PrescriptionID`) VALUES ('VI-401', 'PR-111332');
INSERT INTO `pvisitprescription` (`VisitID`, `PrescriptionID`) VALUES ('VI-405', 'PR-111332');
INSERT INTO `pvisitprescription` (`VisitID`, `PrescriptionID`) VALUES ('VI-105', 'PR-111332');

-- -----------------------------------------------

--
-- Table structure for table `PVISITTEST`
--

DROP TABLE IF EXISTS `PVISITTEST`;
CREATE TABLE IF NOT EXISTS `PVISITTEST` (
  `VisitID` varchar(15) NOT NULL,
  `TestID` varchar(15) NOT NULL,
  PRIMARY KEY (`VisitID`,`TestID`),
  KEY `TestID` (`TestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

INSERT INTO `pvisittest` (`VisitID`, `TestID`) VALUES ('VI-101', '332777');
INSERT INTO `pvisittest` (`VisitID`, `TestID`) VALUES ('VI-106', '332555');
INSERT INTO `pvisittest` (`VisitID`, `TestID`) VALUES ('VI-104', '332555');
INSERT INTO `pvisittest` (`VisitID`, `TestID`) VALUES ('VI-201', '332555');
INSERT INTO `pvisittest` (`VisitID`, `TestID`) VALUES ('VI-407', '332666');
INSERT INTO `pvisittest` (`VisitID`, `TestID`) VALUES ('VI-202', '332666');
INSERT INTO `pvisittest` (`VisitID`, `TestID`) VALUES ('VI-408', '332555');

-- --------------------------------------------------------

--
-- Table structure for table `SPECIALTY`
--

DROP TABLE IF EXISTS `SPECIALTY`;
CREATE TABLE IF NOT EXISTS `SPECIALTY` (
  `SpecialtyID` varchar(15),
  `SpecialtyName` varchar(225),
  PRIMARY KEY (`SpecialtyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

INSERT INTO `specialty` (`SpecialtyID`, `SpecialtyName`) VALUES ('SPE-100', 'Anesthesiology');
INSERT INTO `specialty` (`SpecialtyID`, `SpecialtyName`) VALUES ('SPE-200', 'Family medicine');
INSERT INTO `specialty` (`SpecialtyID`, `SpecialtyName`) VALUES ('SPE-300', 'Internal medicine');
INSERT INTO `specialty` (`SpecialtyID`, `SpecialtyName`) VALUES ('SPE-400', 'Neurology');
INSERT INTO `specialty` (`SpecialtyID`, `SpecialtyName`) VALUES ('SPE-500', 'Pediatrics');

-- --------------------------------------------------------

--
-- Table structure for table `TEST`
--

DROP TABLE IF EXISTS `TEST`;
CREATE TABLE IF NOT EXISTS `TEST` (
  `TestID` varchar(15) NOT NULL,
  `TestName` varchar(225) NOT NULL,
  PRIMARY KEY (`TestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ---------------------------------------------------------

INSERT INTO `test` (`TestID`, `TestName`) VALUES ('332111', 'Medical Test');
INSERT INTO `test` (`TestID`, `TestName`) VALUES ('332222', 'Blood Test');
INSERT INTO `test` (`TestID`, `TestName`) VALUES ('332333', 'Autopsy');
INSERT INTO `test` (`TestID`, `TestName`) VALUES ('332444', 'Biopsy');
INSERT INTO `test` (`TestID`, `TestName`) VALUES ('332555', 'X-ray');
INSERT INTO `test` (`TestID`, `TestName`) VALUES ('332666', 'Ultrasonography');
INSERT INTO `test` (`TestID`, `TestName`) VALUES ('332777', 'Physical Examination');

-- ---------------------------------------------------------

--
-- Constraints for dumped tables
--

--
-- Constraints for table `DOCTOR`
--
ALTER TABLE `DOCTOR`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `PERSON` (`personID`);

--
-- Constraints for table `DOCTORSPECIALTY`
--
ALTER TABLE `DOCTORSPECIALTY`
  ADD CONSTRAINT `doctorspecialty_ibfk_1` FOREIGN KEY (`SpecialtyID`) REFERENCES `SPECIALTY` (`SpecialtyID`),
  ADD CONSTRAINT `doctorspecialty_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `DOCTOR` (`DoctorID`);

--
-- Constraints for table `PATIENT`
--
ALTER TABLE `PATIENT`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `PERSON` (`personID`);

--
-- Constraints for table `PATIENTVISIT`
--
ALTER TABLE `PATIENTVISIT`
  ADD CONSTRAINT `patientvisit_ibfk_1` FOREIGN KEY (`DoctorID`) REFERENCES `DOCTOR` (`DoctorID`),
  ADD CONSTRAINT `patientvisit_ibfk_2` FOREIGN KEY (`PatientID`) REFERENCES `PATIENT` (`PatientID`);

--
-- Constraints for table `PVISITPRESCRIPTION`
--
ALTER TABLE `PVISITPRESCRIPTION`
  ADD CONSTRAINT `pvisitprescription_ibfk_1` FOREIGN KEY (`VisitID`) REFERENCES `PATIENTVISIT` (`VisitID`),
  ADD CONSTRAINT `pvisitprescription_ibfk_2` FOREIGN KEY (`PrescriptionID`) REFERENCES `PRESCRIPTION` (`PrescriptionID`);

--
-- Constraints for table `PVISITTEST`
--
ALTER TABLE `PVISITTEST`
  ADD CONSTRAINT `pvisittest_ibfk_1` FOREIGN KEY (`TestID`) REFERENCES `TEST` (`TestID`),
  ADD CONSTRAINT `pvisittest_ibfk_2` FOREIGN KEY (`VisitID`) REFERENCES `PATIENTVISIT` (`VisitID`);
  
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SHOW TABLES;

/*
Number2- DOCTOR BELKINS PATIENT LIST
SELECT PERSON.FirstName, PERSON.LastName, PATIENT.PhoneNumber
FROM DOCTOR
INNER JOIN PATIENTVISIT ON PATIENTVISIT.DoctorID = DOCTOR.DoctorID
INNER JOIN PATIENT ON PATIENT.PatientID = PATIENTVISIT.PatientID
INNER JOIN PERSON ON PERSON.PersonID = PATIENT.PersonID
WHERE DOCTOR.FirstName = 'Ron' AND DOCTOR.LastName = 'Belkin';

Number3- DOCTORS WHO GAVE OUT PANADOL
SELECT DISTINCT A.FirstName, A.LastName 
FROM PERSON A
INNER JOIN DOCTOR D ON A.personID = D.personID
INNER JOIN PATIENTVISIT V ON D.DoctorID = V.DoctorID 
INNER JOIN PVISITPRESCRIPTION P ON V.VisitID = P.VisitID
INNER JOIN PRESCRIPTION R ON P.PrescriptionID = R.PrescriptionID
WHERE R.PrescriptionName = 'Panadol';

Number4- DOCTORS AND THEIR SPECIALTY
SELECT DISTINCT P.FirstName, P.LastName, S.SpecialtyName
FROM PERSON P
INNER JOIN DOCTOR D ON P.personID = D.PersonID
INNER JOIN DOCTORSPECIALTY H ON D.DoctorID = H.DoctorID 
INNER JOIN SPECIALTY S ON H.SpecialtyID = S.SpecialtyID;

Number5-MODIFIED TO SHOW NO SPECIALTY
SELECT DISTINCT P.FirstName, P.LastName, S.SpecialtyName
FROM PERSON P
INNER JOIN DOCTOR D ON P.personID = D.PersonID
LEFT OUTER JOIN DOCTORSPECIALTY H ON D.DoctorID = H.DoctorID 
LEFT OUTER JOIN SPECIALTY S ON H.SpecialtyID = S.SpecialtyID;

Number6-CREATING TRIGGER ON DOCTORSPECIALTY
DROP TRIGGER IF EXISTS insert_specialty;
DELIMITER $$
CREATE TRIGGER insert_specialty
AFTER INSERT ON DoctorSpecialty
FOR EACH ROW
BEGIN
	INSERT INTO `specialtyAudit` (`FirstName`, `Action`, `SpecialtyName`, `DateModified`)
    VALUES ((SELECT FirstName FROM PERSON
			WHERE PersonID in (SELECT PersonID FROM DOCTOR
							WHERE DoctorID = NEW.DoctorID)), "Added",
			(SELECT SpecialtyName FROM SPECIALTY
            WHERE SpecialtyID in (SELECT SpecialtyID FROM DOCTORSPECIALTY
								WHERE SpecialtyID = NEW.SpecialtyID)), current_timestamp());
END $$
DELIMITER ;

DROP TRIGGER IF EXISTS update_specialty;
DELIMITER $$
CREATE TRIGGER update_specialty
AFTER UPDATE ON DoctorSpecialty
FOR EACH ROW
BEGIN
	INSERT INTO `specialtyAudit` (`FirstName`, `Action`, `SpecialtyName`, `DateModified`)
    VALUES ((SELECT FirstName FROM PERSON
			WHERE PersonID in (SELECT PersonID FROM DOCTOR
							WHERE DoctorID = NEW.DoctorID)), "Update",
			(SELECT SpecialtyName FROM SPECIALTY 
			 WHERE SpecialtyID in (SELECT SpecialtyID FROM DOCTORSPECIALTY
									WHERE SpecialtyID = NEW.SpecialtyID)), current_timestamp());
END $$
DELIMITER ;
SHOW TRIGGERS;
*/