
----------------------------1--------------------------------------
Create Database MSSQL_Assignment_03
Go
Use MSSQL_Assignment_03
Go

Create Table Customer
(
 CustomerID INT Constraint PK_Customer Primary Key (CustomerID),
 CustomerName VARCHAR(60) NOT NULL,
 Identify int Constraint CK_IdentityIdenNum Check (Identify > 0),
 Address VARCHAR(10)
)
GO
Create Table ThueBao
(
 MaTB CHAR(5) Constraint PK_Subscription Primary Key (MaTB),
 SoTB INT Constraint CK_PhoneNum Check (SoTB > 0) NOT NULL,
 LoaiTB VARCHAR(30) NOT NULL
)
GO
Create Table Register
(
 CustomerID INT Constraint FK_Customer Foreign Key (CustomerID) References Customer(CustomerID),
 MaTB CHAR(5) Constraint FK_Subscription Foreign Key (MaTB) References ThueBao(MaTB),
 RegisDate date
)
GO


----------------------------------------------3----------------------------------------
Insert Into ThueBao Values ('1', '123456789', 'Tra truoc')
Insert Into ThueBao Values ('2', '123456798', 'Tra sau')
Insert Into ThueBao Values ('3', '123456879', 'Tra truoc')
Insert Into ThueBao Values ('4', '123457689', 'Tra sau')
Insert Into ThueBao Values ('5', '123465789', 'Tra truoc')
Insert Into ThueBao Values ('6', '123546789', 'Tra sau')
GO
Insert Into Customer Values ('11111', 'Nguyen Van Nhat', '013273654', 'Ha Noi')
Insert Into Customer Values ('22222', 'Nguyen Van Nhi', '2019239485', 'Ha Noi')
Insert Into Customer Values ('33333', 'Nguyen Van Tam', '092831923', 'Ha Nam')
Insert Into Customer Values ('44444', 'Nguyen Van Tu', '123918385', 'Ha Tay')
Insert Into Customer Values ('55555', 'Nguyen Van Ngu', '123456789', 'Ha Dong')
GO
Insert Into Register Values ('121', 'TB1', '2021-07-16')
Insert Into Register Values ('122', 'TB2', '2021-07-17')
Insert Into Register Values ('123', 'TB3', '2021-07-18')
Insert Into Register Values ('124', 'TB4', '2021-07-19')
Insert Into Register Values ('125', 'TB5', '2021-07-20')
Insert Into Register Values ('122', 'TB6', '2021-07-21')
GO
----------------------------------4-----------------------------------------
--a--
Select * From Customer
--b--
Select * From ThueBao
----------------------------------5-----------------------------------------
--a--
Declare @PhoneNum INT
Set @PhoneNum = 0123456789
Select * From ThueBao
Where SoTB = @PhoneNum

--b--
Declare @IdenNum int
Set @IdenNum = 123456789
Select * From Customer
Where Identify = @IdenNum
--c--
Select CustomerName, Identify, SoTB, LoaiTB From Register As C
Inner Join Customer  On Customer.CustomerID = C.CustomerID
Inner Join ThueBao  On ThueBao.MaTB = C.MaTB
Where Identify = 123456789
--d--
Select SoTB, LoaiTB, RegisDate From Register As C
Inner Join ThueBao As ThueBao On ThueBao.MaTB = C.MaTB
Where RegisDate = '2021-07-17'
GO
--e--
Select CustomerName, Address, SoTB, LoaiTB From Register As C
Inner Join ThueBao As ThueBao On ThueBao.MaTB = C.MaTB
Inner Join Customer As A On A.CustomerID = C.CustomerID
Where Address like '%Ha Noi%'
GO
-------------------------------------6------------------------------------
--a--
Select Count(*) From Customer
--b--
Select Count(*) From ThueBao
--c--
Select Count(SoTB) AS TongsoTBDKNgay From Register As C
Inner Join ThueBao As ThueBao On ThueBao.MaTB = C.MaTB
Where RegisDate = '2021-07-17'

Go
--d--
Select * From Customer AS A
INNER JOIN Register AS C ON C.CustomerID = A.CustomerID
INNER JOIN ThueBao AS ThueBao ON ThueBao.MaTB = C.MaTB
GO

--------------------------------7-------------------------------
--a--
Alter Table Register
Alter Column RegisDate date NOT NULL
--b--
Alter Table Register
Add Constraint CK_RegisDateCons Check (RegisDate < GetDate() or RegisDate = GetDate())
--c--
Alter Table ThueBao
Add Bonus tinyint Check (Bonus >= 0)
--d--
ALTER TABLE ThueBao
DROP COLUMN SoTB
GO
ALTER TABLE ThueBao
  ADD SoTB VARCHAR(10);
 GO
ALTER TABLE ThueBao
ADD CONSTRAINT CK_Phone CHECK (SoTB LIKE '09%')
GO
SELECT * FROM ThueBao
