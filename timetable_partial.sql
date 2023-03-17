-- Adminer 4.7.7 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';


DROP TABLE IF EXISTS department;
CREATE TABLE department (
  deptCode varchar(2) NOT NULL PRIMARY KEY,
  deptName varchar(50)
);

DROP TABLE IF EXISTS venue;
CREATE TABLE venue (
  buildingCode      ,
  buildingName      ,
  venueName         ,
  vCode         varchar(50) NOT NULL PRIMARY KEY,
  capacity          ,
  1mCapacity    int(11) 
);


DROP TABLE IF EXISTS module;
CREATE TABLE module (
  code varchar(6) NOT NULL PRIMARY KEY,




);


DROP TABLE IF EXISTS student;
CREATE TABLE student (
  id bigint(20) NOT NULL PRIMARY KEY,




);

DROP TABLE IF EXISTS studentReg;
CREATE TABLE studentReg (



);


DROP TABLE IF EXISTS timetable;
CREATE TABLE timetable (
  sessionID int(11) NOT NULL AUTO_INCREMENT,




);
