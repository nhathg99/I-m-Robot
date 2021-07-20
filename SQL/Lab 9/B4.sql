Create database B4
USE  B4
Go


CREATE TABLE Class
(
ClassCode VARCHAR(10) PRIMARY KEY,
HeadTeacher VARCHAR(30),
Room VARCHAR(30),
TimeSlot CHAR,
CloseDate DATETIME
)
Go

CREATE TABLE Student
(
RollNo VARCHAR(10) PRIMARY KEY,
ClassCode VARCHAR(10), 
FullName VARCHAR(30),
Male bit,
Birthdate DATETIME,
Address VARCHAR(30),
Provice CHAR(5),
Email VARCHAR(30),
CONSTRAINT fk_ClassCode FOREIGN KEY(ClassCode) REFERENCES Class(ClassCode),
)
Go

CREATE TABLE Subject
(
SubjectCode VARCHAR(10)  PRIMARY KEY,
SubjectName VARCHAR(40),
WMark bit,
PMark bit,
WTest_per int,
PTest_per int
)
Go
drop table Mark
CREATE TABLE Mark
(
RollNo VARCHAR(10) ,
SubjectCode VARCHAR(10) ,
WMark float,
PMark float,
Mark float,
PRIMARY KEY(RollNo,SubjectCode),
CONSTRAINT fk_rollno FOREIGN KEY(RollNo) REFERENCES Student(RollNo),
CONSTRAINT fk_Sbcode FOREIGN KEY(SubjectCode) REFERENCES Subject(SubjectCode)
)
Go


--1--
INSERT INTO Class VALUES ('1221','NGUYEN VAN A','Class A','G','2021-07-20'),
                         ('1222','NGUYEN VAN B','Class B','I','2021-07-20'),
                         ('1223','NGUYEN VAN C','Class C','L','2021-07-20'),
                         ('1224','NGUYEN VAN D','Class D','M','2021-07-20'),
                         ('1225','NGUYEN VAN E','Class E','M','2021-07-20')
GO

INSERT INTO Student VALUES   ('01','1221','NGUYEN VAN NHAT','1','1999-01-01','Ha Noi','HN','example1@gmail.com'),
							 ('02','1222','VU TRUONG SON','1','1999-01-02','Ha Noi','HN','example2@gmail.com'),
							 ('03','1223','TRAN LONG VU','1','1999-01-03','TP HCM','HCM','example3@gmail.com'),
							 ('04','1224','NGUYEN TRUONG AN','1','1999-01-04','Ha Noi','HN','example4@gmail.com'),
							 ('05','1225','NGUYEN MINH NHAT','1','1999-01-05','Hai Duong','HD','example5@gmail.com')
GO

INSERT INTO Subject VALUES ('SQL1','SQL 1','1','1','100','100'),
                           ('SQL2','SQL 2','1','1','100','100'),
                           ('SQL3','SQL 3','1','1','100','100'),
                           ('SQL4','SQL 4','1','1','100','100'),
                           ('SQL5','SQL 5','1','1','100','100')
GO

INSERT INTO Mark VALUES ('01','SQL1','50','80','65'),
                        ('02','SQL2','90','50','65'),
                        ('03','SQL3','100','100','100'),
                        ('04','SQL4','90','80','85'),
                        ('05','SQL5','99','99','99')
GO

--2--

--3--
Drop View  Studen_OUT_VIEW
CREATE VIEW Studen_OUT_VIEW AS
SELECT FullName, Male, Birthdate, Address, Email, SubjectCode FROM Student As A
INNER JOIN Mark As B ON A.RollNo = B.RollNo
WHERE Mark <= 82.5
SELECT * FROM Studen_OUT_VIEW

--4--
CREATE VIEW Student_TimeSlot_View
AS
SELECT FullName, Male, Birthdate, Address, Email, TimeSlot FROM Student As A
JOIN Class As B ON A.ClassCode = B.ClassCode
WHERE TimeSlot = 'M'
SELECT * FROM Student_TimeSlot_View
