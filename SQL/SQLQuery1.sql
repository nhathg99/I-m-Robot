USE AdventureWorks2019--Su dung co so du lieu

SELECT * FROM HumanResources.Employee
--Khai bao bien
GO
DECLARE @deptID INT --KHAI BAO BIEN CUC BO depID kieu INT
SELECT @deptID = 1 --GAN GIA TRI CHO BIEN BANG 1
SELECT Name, GroupName FROM HumanResources.Department WHERE DepartmentID = @deptID
GO

SELECT @@DATEFIRST
SELECT @@LANGUAGE
SELECT @@VERSION

Go

--Lay tong gia tri tat ca cac ban ghi co trong truong StandardCost thuoc ProductcostHistory
SELECT SUM(StandardCost) FROM Production.ProductCostHistory

--Lay gia tri trung binh cua truong StandardCost
SELECT AVG(StandardCost) FROM Production.ProductCostHistory

--Lay ra gia tri lon nhat cua truong
SELECT MAX(StandardCost) FROM Production.ProductCostHistory

--Lay ra gia tri nho nhat cua truong
SELECT MIN(StandardCost) FROM Production.ProductCostHistory

--Lay ra so ban ghi
SELECT COUNT(*) FROM Production.ProductPhoto
SELECT*FROM Production.ProductPhoto

--Lay ra ngay gio he thong
SELECT GETDATE()

--Lay ra ngay
SELECT DATEPART(DD,GETDATE())
--Lay ra thang
SELECT DATEPART(MM,GETDATE())
--Lay ra nam
SELECT DATEPART(YYYY,GETDATE())
--Lay ra gio
SELECT DATEPART(HH,GETDATE())
--Lay ra ngay trong nam
SELECT DATEPART(DAYOFYEAR,GETDATE())
--
SELECT DATEPART(MI,GETDATE())Z

SELECT DATEPART(SS,GETDATE())

SELECT DATEPART(MS,GETDATE())

SELECT DATEPART(DY,GETDATE())

SELECT DATEPART(WK,GETDATE())

SELECT DATEPART(DW,GETDATE())

SELECT DATEPART(QQ,GETDATE())



SELECT CONVERT(Varchar(50), GETDATE(), 103)

/*
http://www.java2s.com/Code/SQLServer/Date-Timezone/CONVERTVarChar50GETEDATE102.html
*/

--Lay ra dinh danh co so du lieu
SELECT DB_ID('AdventureWorks2019')
--LAY RA TEN CO SO DU LIEU
SELECT DB_NAME(6)
--TRA VE SO DINH DANH CHO MAY TRAM
SELECT HOST_ID()
--TRA VE TEN DINH DANH MAY TRAM
SELECT HOST_NAME()

SELECT OBJECT_ID('HumanResources')
--TAO CO SO DU LIEU
CREATE DATABASE EXAMPLE3

USE EXAMPLE3

--TAO BANG TRONG CO SO DU LIEU
CREATE TABLE Contacts
(MailId Varchar(20),
Name NText,
Telephonenumber INT)

--Them mot cot vao bang da co
ALTER TABLE Contacts ADD Address nvarchar(50)

--Them mot cot vao bang da co
INSERT INTO Contacts values ('abc@gmail.com', N'Nguyen Van A',9877667, N'Ha Noi')

--Lay ra tat ca ban ghi trong bang
SELECT*FROM Contacts

--Xoa ban ghi co mailID = abc@gmail.com
DELETE FROM Contacts WHERE MailId='abc@gmail.com'

--Sua ban ghi co mailID = abc@gmail.com
UPDATE Contacts SET Name=N'TRINH HOANG LONG' WHERE MailId='abc@gmail.com'
UPDATE Contacts SET Telephonenumber= N'96676935' WHERE MailId='abc@gmail.com'

--TAO LOGIN ACOUNT DE TEST GRANT
CREATE LOGIN example3 WITH PASSWORD = '123456'
--TAO USER TU LOGIN ACCOUNT VUA TAO
CREATE USER example3 FROM LOGIN example3

--Huy quyen cua user example3 tren bang contacts
REVOKE ALL ON Contacts FROM example3

--Gan quyen select cho example3 tren bang contacts
GRANT SELECT ON Contacts TO example3
SELECT ABS(-43)--TRA VE GIA TRI TUYET DOI

SELECT CEILING(43.5)--TRA VE GIA TRI LON HON HOAC BANG

SELECT FLOOR(43.5)--TRA VE GIA TRI NHO HON HOAC BANG

SELECT POWER(5,2)--HAM LUY THUA

SELECT ROUND(43.34535,1)

SELECT SIGN(-42)--LA +1 NEU LA SO DUONG, -1 NEU LA SO AM, 0 NEU LA 0

SELECT SQRT(9)--HAM CAN BAC HAI