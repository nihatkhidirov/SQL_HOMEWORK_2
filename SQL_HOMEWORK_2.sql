CREATE DATABASE Course
USE COURSE
CREATE TABLE Users
(
Id int PRIMARY KEY IDENTITY,
[Name] nvarchar (20),
Surname nvarchar (30),
Age int UNIQUE,
Email nvarchar (30),
IsDeleted bit ,
)

CREATE TABLE Educations
(
Id int PRIMARY KEY ,
[Name] nvarchar ,
)
DROP TABLE Educations

CREATE TABLE Teachers
(
Id int PRIMARY KEY IDENTITY , 
Fullname nvarchar(30),
Age int,
Email nvarchar (30),
Adress nvarchar (20),
IsDeleted bit,
)

DROP TABLE Teachers
INSERT INTO Users ([Name],Surname, Age, Email,IsDeleted) VALUES
('Nihat', 'Khidirov', 20,'nkhidirov14084@ada.edu.az',1);
INSERT INTO Users ([Name],Surname, Age, Email,IsDeleted) VALUES
('Samir', 'Alakbarov', 27,'ceki_1997@list.ru',0);
INSERT INTO Users ([Name],Surname, Age, Email,IsDeleted) VALUES
('Aqil', 'Alakbarov', 15,'samaqon_200@gmail.com',0);

INSERT INTO Teachers([Fullname],Age, Email, Adress, IsDeleted) VALUES
('Ulvi Majid', 37, 'ulvimajid@gmail.com', 'Baki', 0)
INSERT INTO Teachers([Fullname],Age, Email, Adress, IsDeleted) VALUES
('Samir Alakbarov', 40, 'amilaliyev@gmail.com', 'Quba', 1)
INSERT INTO Teachers([Fullname],Age, Email, Adress, IsDeleted) VALUES
('Niha Khidirov', 30, 'nihatmkh@code.edu.az', 'Sumagayit', 1)
DELETE FROM Teachers WHERE  Id=5

--1
SELECT * FROM USERS
--2
SELECT*FROM Users WHERE AGE<20
--3
SELECT COUNT  (*) FROM Users
--4
SELECT *FROM Users where IsDeleted=1
--5
SELECT *FROM Teachers WHERE Age>30

--6

CREATE TABLE Employee
(
ID int PRIMARY KEY IDENTITY (1,1),
Fullname nvarchar(255) NOT NULL,
Age int CHECK (Age>=0),
EMAIL nvarchar(50) NOT NULL UNIQUE,
SALARY decimal (18,2) NOT NULL
CHECK(SALARY>=300 AND SALARY<=2000),
)
INSERT INTO Employee (Fullname,Age, EMAIL, SALARY) VALUES('Nihat Khidirov', 30, 'nkhidirov14084@ada.edu.az',2000)


--7
--one to many relations 
CREATE TABLE Marka (
ID int Primary Key Identity, 
[Name] nvarchar(20),
)
CREATE TABLE MODEL
(
ID INT PRIMARY KEY IDENTITY,
[NAME] nvarchar(20),
MarkaId int FOREIGN KEY REFERENCES Marka,
)
DROP TABLE MODEL
 CREATE TABLE COURSES
 (
  COURSESID int PRIMARY KEY IDENTITY,
 [NAME] nvarchar(20),
 )

 CREATE TABLE STUDENTS
 (
 StudentID int PRIMARY KEY IDENTITY,
 [Name] nvarchar(20),
 )
 DROP TABLE STUDENTS

 CREATE TABLE ENROLLMENTS
 (
 COURSESID int Foreign Key References COURSES ,
 StudentID int Foreign Key References STUDENTS,
 )



