
---Phan 1----
create database Lab10

USE AdventureWorks
SELECT*INTO Lab10.dbo.WorkOrder FROM Production.WorkOrder
Go

Use lab10

SELECT*INTO WorkOrderIX FROM WorkOrder
SELECT*FROM WorkOrder
SELECT*FROM WorkOrderIX

CREATE INDEX IX_WorkOrderID ON WorkOrderIX(WorkOrderID)

SELECT*FROM WorkOrder where WorkOrderID=72000
SELECT*FROM WorkOrderIX where WorkOrderID=72000

--Phan 2---
Create database CodeLean
Use Codelean
Go
Drop table Classes
Create Table Classes (
	ClassName char(6)  ,
	Teacher VARCHAR(30),
	TimeSlot VARCHAR(30),
	Class INT ,
	Lab INT
)
---1---
Create UNIQUE Clustered INDEX MyClusteredIndex ON Classes(ClassName)

---2---
Create  NONClustered INDEX TeacherIndex ON Classes(Teacher)
---3---
Drop Index TeacherIndex On Classes
---4---
Alter Index MyClusteredIndex On Classes With(FillFactor = 100)
---5---
CREATE INDEX ClassLabIndex
ON Classes(Class, Lab);

---6---
Use CodeLean
Exec sp_helpindex 'Classes'
Go
---Phan 3---
Create Database BTVN
Use BTVN
gO

CREATE TABLE Student (
	StudentNo INT PRIMARY KEY,
	StudentName NVARCHAR(50),
	StudentAddress NVARCHAR(100),
	PhoneNo INT
)
GO

CREATE TABLE Department (
	DeptNo INT PRIMARY KEY,
	DeptName NVARCHAR(50),
	ManagerName NVARCHAR(30)
)
GO

CREATE TABLE Assignment (
	AssignmentNo INT PRIMARY KEY,
	Description NVARCHAR(100)
)
GO

CREATE TABLE Works_Assign (
	JobID INT PRIMARY KEY,
	StudentNo INT,
	AssignmentNo INT ,
	TotalHours INT,
	JobDetails NVARCHAR(450),
	CONSTRAINT FK_StudentNo FOREIGN KEY(StudentNo) REFERENCES Student(StudentNo),
	CONSTRAINT FK_AssignmentNo FOREIGN KEY(AssignmentNo) REFERENCES Assignment(AssignmentNo)
)
GO

Insert Into Student Values



