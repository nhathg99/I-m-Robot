
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



