create database  Store_Procedure
use Store_Procedure
Go

--Bài 1:Thực hiện câu lệnh và quan sát kết quả thu được:
USE AdventureWorks2019
GO

--Tạo một thủ tục lưu trữ lấy ra toàn bộ nhân viên vào làm theo năm có tham số đầu vào là một năm
CREATE PROCEDURE sp_DisplayEmployeesHireYear
@HireYear int
AS
SELECT * FROM HumanResources.Employee
WHERE DATEPART(YY, HireDate)=@HireYear
GO

--Để chạy thủ tục này cần phải truyền tham số vào là năm mà nhân viên vào làm
EXECUTE sp_DisplayEmployeesHireYear 2003
GO

--Tạo thủ tục lưu trữ đếm số người vào làm trong một năm xác định có tham số đầu vào là một năm,
-- tham số đầu ra là số người vào làm trong năm này
CREATE PROCEDURE sp_EmployeesHireYearCount
@HireYear int,
@Count int OUTPUT
AS
SELECT @Count=COUNT(*) FROM HumanResources.Employee
WHERE DATEPART(YY, HireDate)=@HireYear
GO
--Chạy thủ tục lưu trữ cần phải truyền vào 1 tham số đầu vào và một tham số đầu ra.
DECLARE @Number int
EXECUTE sp_EmployeesHireYearCount 2003, @Number OUTPUT
PRINT @Number
GO

--Tạo thủ tục lưu trữ đếm số người vào làm trong một năm xác định có tham số đầu vào là một năm, hàm trả về số người vào làm năm đó
CREATE PROCEDURE sp_EmployeesHireYearCount2
@HireYear int
AS
DECLARE @Count int
SELECT @Count=COUNT(*) FROM HumanResources.Employee
WHERE DATEPART(YY, HireDate)=@HireYear
RETURN @Count
GO
--Chạy thủ tục lưu trữ cần phải truyền vào 1 tham số đầu và lấy về số người làm trong năm đó.
DECLARE @Number int
EXECUTE @Number = sp_EmployeesHireYearCount2 2003
PRINT @Number
GO

--Tạo bảng tạm #Students
CREATE TABLE #Students
(
RollNo varchar(6) CONSTRAINT PK_Students PRIMARY KEY,
FullName nvarchar(100),

Birthday datetime constraint DF_StudentsBirthday DEFAULT
DATEADD(yy, -18, GETDATE())
)
GO
--Tạo thủ tục lưu trữ tạm để chèn dữ liệu vào bảng tạm
CREATE PROCEDURE #spInsertStudents
@rollNo varchar(6),
@fullName nvarchar(100),
@birthday datetime
AS BEGIN
IF(@birthday IS NULL)
SET @birthday=DATEADD(YY, -18, GETDATE())
INSERT INTO #Students(RollNo, FullName, Birthday)
VALUES(@rollNo, @fullName, @birthday)

END
GO
--Sử dụng thủ tục lưu trữ để chèn dữ liệu vào bảng tạm
EXEC #spStudents 'A12345', 'abc', NULL
EXEC #spStudents 'A54321', 'abc', '12/24/2011'
SELECT * FROM #Students
--Tạo thủ tục lưu trữ tạm để xóa dữ liệu từ bảng tạm theo RollNo
CREATE PROCEDURE #spDeleteStudents
@rollNo varchar(6)
AS BEGIN
DELETE FROM #Students WHERE RollNo=@rollNo
END
--Xóa dữ liệu sử dụng thủ tục lưu trữ
EXECUTE #spDeleteStudents 'A12345'
GO

--Tạo một thủ tục lưu trữ sử dung lệnh RETURN để trả về một số nguyên
CREATE PROCEDURE Cal_Square @num int=0 AS
BEGIN
RETURN (@num * @num);
END
GO
--Chạy thủ tục lưu trữ
DECLARE @square int;
EXEC @square = Cal_Square 10;
PRINT @square;
GO

--Xem định nghĩa thủ tục lưu trữ bằng hàm OBJECT_DEFINITION
SELECT
OBJECT_DEFINITION(OBJECT_ID('HumanResources.uspUpdateEmployeePersonalInfo')) AS DEFINITION

--Xem định nghĩa thủ tục lưu trữ bằng
SELECT definition FROM sys.sql_modules
WHERE
object_id=OBJECT_ID('HumanResources.uspUpdateEmployeePersonalInfo')
GO

--Thủ tục lưu trữ hệ thống xem các thành phần mà thủ tục lưu trữ phụ thuộc
sp_depends 'HumanResources.uspUpdateEmployeePersonalInfo'
GO

USE AdventureWorks2019
GO
--Tạo thủ tục lưu trữ sp_DisplayEmployees
CREATE PROCEDURE sp_DisplayEmployees AS
SELECT * FROM HumanResources.Employee
GO
--Thay đổi thủ tục lưu trữ sp_DisplayEmployees
ALTER PROCEDURE sp_DisplayEmployees AS
SELECT * FROM HumanResources.Employee
WHERE Gender='F'
GO
--Chạy thủ tục lưu trữ sp_DisplayEmployees
EXEC sp_DisplayEmployees
GO

--Xóa một thủ tục lưu trữ
DROP PROCEDURE sp_DisplayEmployees
GO

--
CREATE PROCEDURE sp_EmployeeHire
AS
BEGIN
--Hiển thị
EXECUTE sp_DisplayEmployeesHireYear 1999
DECLARE @Number int
EXECUTE sp_EmployeesHireYearCount 1999, @Number OUTPUT
PRINT N'Số nhân viên vào làm năm 1999 là: ' +
CONVERT(varchar(3),@Number)
END
GO
--Chạy thủ tục lưu trữ
EXEC sp_EmployeeHire
GO

--Thay đổi thủ tục lưu trữ sp_EmployeeHire có khối TRY ... CATCH
ALTER PROCEDURE sp_EmployeeHire
@HireYear int

AS
BEGIN
BEGIN TRY
EXECUTE sp_DisplayEmployeesHireYear @HireYear
DECLARE @Number int
--Lỗi xảy ra ở đây có thủ tục sp_EmployeesHireYearCount chỉ truyền 2 tham số mà ta truyền 3

EXECUTE sp_EmployeesHireYearCount @HireYear, @Number OUTPUT,

'123'

PRINT N'Số nhân viên vào làm năm là: ' +

CONVERT(varchar(3),@Number)
END TRY
BEGIN CATCH
PRINT N'Có lỗi xảy ra trong khi thực hiện thủ tục lưu trữ'
END CATCH
PRINT N'Kết thúc thủ tục lưu trữ'
END
GO
--Chạy thủ tục sp_EmployeeHire
EXEC sp_EmployeeHire 1999
--Xem thông báo lỗi bên Messages không phải bên Result
GO

--Thay đổi thủ tục lưu trữ sp_EmployeeHire sử dụng hàm @@ERROR
ALTER PROCEDURE sp_EmployeeHire
@HireYear int
AS
BEGIN
EXECUTE sp_DisplayEmployeesHireYear @HireYear
DECLARE @Number int
--Lỗi xảy ra ở đây có thủ tục sp_EmployeesHireYearCount chỉ truyền 2 tham số mà ta truyền 3
EXECUTE sp_EmployeesHireYearCount @HireYear, @Number OUTPUT,
'123'
IF @@ERROR <> 0
PRINT N'Có lỗi xảy ra trong khi thực hiện thủ tục lưu trữ'
PRINT N'Số nhân viên vào làm năm là: ' +
CONVERT(varchar(3),@Number)
END
GO
--Chạy thủ tục sp_EmployeeHire
EXEC sp_EmployeeHire 1999
--Xem thông báo lỗi bên Messages không phải bên Result

---------------------PHAN_2 -BT_TU_LAM-------------------------

create Database Toys_Management
Use Toys_Management
Go

Create table Toys(
	ProductCode VARCHAR(5) Primary Key,
	Name VARCHAR(30),
	Category VARCHAR(30),
	Manufacture VARCHAR(40),
	AgeRange VARCHAR(15),
	UnitPrice  Money,
	Netweight INT ,
	QtyOnHand INT
)

insert into Toys Values ('T001','DO CHOI A','DO CHOI LAP GHEP','JAPAN','3-5 AGES',50000,200,99),
						('T002','DO CHOI B','GAME','JAPAN','10 AGES OR MORE',15000,150,99),
						('T003','DO CHOI C','CARD','JAPAN','6 AGES',25000,150,99),
						('T004','DO CHOI D','RUBIK','JAPAN','ALL AGES ',35000,500,60),
						('T005','DO CHOI E','DO CHOI LAP GHEP','JAPAN','3-5 AGES',45000,600,40),
						('T006','DO CHOI F','GAME','JAPAN','10 AGES OR MORE',55000,800,50),
						('T007','DO CHOI G','CARD','JAPAN','6 AGES',65000,100,100),
						('T008','DO CHOI H','RUBIK','JAPAN','ALL AGES ',15000,150,20),
						('T009','DO CHOI I','ORGANIZE','JAPAN','3-5 AGES',25000,1000,30),
						('T010','DO CHOI K','DO CHOI LAP GHEP','JAPAN','3-5 AGES',35000,140,25),
						('T011','DO CHOI L','ORGANIZE','JAPAN','3-5 AGES',45000,120,999),
						('T012','DO CHOI M','CARD','JAPAN','6 AGES',55000,300,9999),
						('T013','DO CHOI N','DO CHOI LAP GHEP','JAPAN','3-5 AGES',65000,200,100),
						('T014','DO CHOI O','CARD','JAPAN','6 AGES',15000,100,33),
						('T015','DO CHOI U','RUBIK','JAPAN','ALL AGES ',25000,500,25),
						('T016','DO CHOI I','CARD','JAPAN','6 AGES',35000,100,1000),
						('T017','DO CHOI P','GAME','JAPAN','10 AGES OR MORE',45000,300,99),
						('T018','DO CHOI Q','DO CHOI LAP GHEP','JAPAN','3-5 AGES',55000,600,99),
						('T019','DO CHOI R','GAME','JAPAN','10 AGES OR MORE',65000,2700,99)


---2---
CREATE PROCEDURE HeavyToys 
AS
SELECT * FROM Toys
Where Netweight >= 500
GO

---3---
Create Procedure PriceIncrease
as
update Toys set UnitPrice = UnitPrice + 10
go

---4---
create procedure QtyOnHand
as
update Toys set QtyOnHand = QtyOnHand - 5
go



----------------Phan_3 - BTVN---------------------
--1--
EXEC sp_helptext'HeavyToys '
EXEC sp_helptext'PriceIncrease'
EXEC sp_helptext'QtyOnHand'

select * from sys.sql_modules where object_id= object_id('HeavyToys');
select * from sys.sql_modules where object_id= object_id('PriceIncrease');
select * from sys.sql_modules where object_id= object_id('QtyOnHand');

select OBJECT_DEFINITION (OBJECT_ID('HeavyToys'));
select OBJECT_DEFINITION (OBJECT_ID('PriceIncrease'));
select OBJECT_DEFINITION (OBJECT_ID('QtyOnHand'));
--2--
sp_depends'HeavyToys'
GO
sp_depends'PriceIncrease'
GO
sp_depends'QtyOnHand'
GO
--3--
ALTER PROCEDURE PriceIncrease
AS
UPDATE Toys SET UnitPrice = UnitPrice + 10
SELECT * FROM Toys
GO

ALTER PROCEDURE QtyOnHand
AS
UPDATE Toys SET QtyOnHand = QtyOnHand - 5
Select * from Toys
GO

--4-- 
CREATE PROCEDURE SpecificPriceIncrease
AS
UPDATE Toys SET UnitPrice = UnitPrice + QtyOnHand
SELECT * from Toys
go
--5--

ALTER PROCEDURE SpecificPriceIncrease @NUM int output as
UPDATE Toys SET UnitPrice = UnitPrice + QtyOnHand
where toys.QtyOnHand > 0
select name, UnitPrice as [NewPrice], QtyOnHand from Toys
select @NUM = @@ROWCOUNT
go

--6--
ALTER PROCEDURE SpecificPriceIncrease as
begin
UPDATE Toys SET UnitPrice = UnitPrice + QtyOnHand
where Toys.QtyOnHand > 0
select name, UnitPrice as [NewPrice], QtyOnHand from Toys
select @@rowcount
execute HeavyToys
--7--
DROP PROCEDURE HeavyToys
DROP PROCEDURE QtyOnHand
DROP PROCEDURE PriceIncrease