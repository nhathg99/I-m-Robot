
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
	DeptNo INT ,
	DeptName NVARCHAR(50),
	ManagerName NVARCHAR(30),
	constraint PK_Department_DeptNo Primary key (DeptNo)
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

Insert Into Student Values (1,N'Nguyen Van Nhat',N'Ha Noi',0912345678),
						   (2,N'Vu Truong Son',N'Ha Noi',0912345677),
						   (3,N'Tran Long Vu',N'Ha Noi',0912345676),
						   (4,N'Nguyen Truong An',N'Ha Noi',0912345675)


Insert Into Department Values (11,N'Employees','Nguyen Van A'),
						      (22,N'Director','Nguyen Van B'),
						      (33,N'Vice Director','Nguyen Van C'),
						      (44,N'Employees','Nguyen Van D')

Insert Into Assignment Values (111,N'Giai Tich'),
						      (222,N'Cau Truc Du Lieu Va Giai Thuat'),
						      (333,N'Xac Xuat Thong Ke'),
						      (444,N'Cay Nhi Phan')

Insert Into Works_Assign Values (1111,1,111,90,'Complete'),
								(1112,1,222,90,'Missing'),
								(1113,1,333,90,'Complete'),
								(1114,1,444,90,'Complete'),
								(2222,2,111,90,'Complete'),
								(2223,2,222,90,'Missing'),
								(3333,4,333,90,'Complete'),
								(3334,4,444,90,'Complete'),
								(4445,3,222,90,'Missing'),
								(4446,3,333,90,'Complete')
---2----
Create CLustered Index IX_Student On Student(StudentNo) ---??
---3---
Alter Index IX_Student On Student REbuild
---4---
Create Index IX_Dept On Department(DeptName, ManagerName);




