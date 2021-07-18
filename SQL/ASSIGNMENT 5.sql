Create Database MSSQL_Assignment_05
Use MSSQL_Assignment_05
Go
Create Table Contact
(
 ContactID INT Constraint PK_Contact Primary Key (ContactID),
 ContactName NVARCHAR(100) NOT NULL,
 BornDate DATE,
 Address VARCHAR(100)
)

Go
Create Table PhoneNumber
(
 ContactID INT Constraint FK_Contact Foreign Key (ContactID) References Contact(ContactID),
 PhoneNum NUMERIC
)
Go
------------------------------------------3----------------------------------------
Insert Into Contact Values ('111', N'Nguyễn Trường An', '1999-01-01', 'Ha Noi')
Insert Into Contact Values ('112', N'Nguyễn Văn Nhật', '1999-01-02', 'Ha Noi')
Insert Into Contact Values ('113', N'Vũ Trường Sơn', '1999-01-03', 'Ha Dong')
Insert Into Contact Values ('114', N'Trần Long Vũ', '1999-01-04', 'Ha Giang')
Go


Insert Into PhoneNumber Values ('111', 09123456790)
Insert Into PhoneNumber Values ('112', 09123456797)
Insert Into PhoneNumber Values ('113', 09123456796)
Insert Into PhoneNumber Values ('114', 09123456786)
Go

--------------------------------------------4-----------------------------------------
--a--
Select * From Contact
go
--b--
Select * From PhoneNumber
go
--------------------------------------------5-----------------------------------
--a--
Select * From Contact
Order By ContactName ASC
Go
--b--
Select ContactName, PhoneNum From Contact 
Inner Join PhoneNumber  On Contact.ContactID = PhoneNumber.ContactID
Where ContactName like N'Nguyễn Văn Nhật'

Go
--c--
Select * From Contact
Where BornDate = '1999-01-02'

Go
---------------------------------------------6----------------------------
--a--
Select ContactName, Count(*) As Total_Contact From PhoneNumber 
INNER JOIN Contact  On Contact.ContactID = PhoneNumber.ContactID
Group By ContactName

Go
--b--
Select Count(ContactName) as SoNguoisinhthang12 From Contact
Where DatePart(mm, BornDate) = 12

Go
--c--
Select ContactName, BornDate, Address, PhoneNum
From Contact 
INNER JOIN PhoneNumber  On Contact.ContactID = PhoneNumber.ContactID

Go
--d--
Declare @Phone INT
Set @Phone = '123456789'
Select ContactName, BornDate, Address, PhoneNum
From Contact 
Inner Join PhoneNumber  On Contact.ContactID = PhoneNumber.ContactID
Where PhoneNum = @Phone
---------------------------------------------7------------------------------------------
--a--
Alter Table Contact
Add Constraint dateofbirth Check (BornDate < GetDate())

Go
--b--


Go
--c--
Alter Table PhoneNumber
Add NgayBatDauLienLac date

Go