--CREATE DATABASE MSSQL_Assignment_04
USE MSSQL_Assignment_04
GO

CREATE TABLE Product
(
ProductID CHAR(15) PRIMARY KEY,
ManuDate DATETIME,
ProductType VARCHAR(50),
ProductTypeID VARCHAR(5)
)
GO
CREATE TABLE Employee
(
EmployeeID VARCHAR(15) PRIMARY KEY,
EmployeeName NVARCHAR(20)
)
GO
CREATE TABLE Responsible
(
EmployeeID VARCHAR(15) CONSTRAINT FK_EmployeeID FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID),
ProductID CHAR(15) CONSTRAINT FK_ProductID FOREIGN KEY(ProductID) REFERENCES Product(ProductID)
)
Go
------------------------------------------------3-----------------------------
INSERT INTO Product VALUES ('111','2021-07-16','Máy tính xách tay 1','Z37E')
INSERT INTO Product VALUES ('222','2021-07-17','Máy tính xách tay 2','Z37F')
INSERT INTO Product VALUES ('333','2021-07-18','Máy tính xách tay 3','Z37G')
INSERT INTO Product VALUES ('444','2021-07-19','Máy tính xách tay 4','Z37H')

GO
INSERT INTO Employee VALUES ('987688',N'Nguyễn Trường An')
INSERT INTO Employee VALUES ('987689',N'Nguyễn Văn Nhật')
INSERT INTO Employee VALUES ('987690',N'Vũ Trường Sơn')
INSERT INTO Employee VALUES ('987691',N'Trần Long Vũ')
GO
INSERT INTO Responsible VALUES ('987688','111')
INSERT INTO Responsible VALUES ('987689','222')
INSERT INTO Responsible VALUES ('987690','333')
INSERT INTO Responsible VALUES ('987691','444')
GO
-----------------------------------------------4--------------------------------------
--a--
SELECT ProductTypeID FROM Product
--b--
SELECT ProductID, ProductType FROM Product
--c--
SELECT EmployeeName, EmployeeID FROM Employee
------------------------------------------------5------------------------------------
--a--
SELECT DISTINCT ProductTypeID, ProductType FROM Product ORDER BY ProductType ASC
--b--
SELECT EmployeeName FROM Employee ORDER BY EmployeeName ASC
--c--
SELECT ProductID, ProductType FROM Product WHERE ProductTypeID LIKE 'Z37F'
--d--
SELECT EmployeeName ,ProductType, ProductTypeID FROM Product AS A
INNER JOIN Responsible ON Responsible.ProductID = Responsible.ProductID
INNER JOIN Employee ON Employee.EmployeeID = Employee.EmployeeID
WHERE EmployeeName = N'Nguyễn Văn Nhật'
ORDER BY ProductTypeID DESC
--------------------------------------------------6----------------------------------
--a--
SELECT ProductTypeID ,COUNT(ProductID) AS ProductCompare FROM Product 
GROUP BY ProductTypeID
--c--
SELECT * FROM Product 
INNER JOIN Responsible ON Responsible.ProductID = Product.ProductID
INNER JOIN Employee  ON Employee.EmployeeID = Responsible.EmployeeID
--d--
SELECT * FROM Employee 
INNER JOIN Responsible ON Responsible.EmployeeID = Employee.EmployeeID
INNER JOIN Product  ON Product.ProductID = Responsible.ProductID
---------------------------------------------------7-------------------------------
--a--
ALTER TABLE Product
ADD CONSTRAINT CK_RegisDate CHECK (ManuDate < GetDate() or ManuDate = GetDate())
--b--

--c--
ALTER TABLE Product
ADD Version VARCHAR(20)