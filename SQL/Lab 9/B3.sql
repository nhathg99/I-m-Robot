
Create database B3
go
use B3

create table Customers(
	CustomerID INT PRIMARY KEY,
	CustomerName VARCHAR(50),
	Address VARCHAR(100),
	Phone VARCHAR(12)
)
Go
Create Table Books(
	BookCode INT Primary Key,
	Category VARCHAR(50),
	Author VARCHAR(50),
	Publisher VARCHAR(50),
	Title VARCHAR(100),
	Price INT ,
	InStore INT 
)
Go
Create table BookSold (
	BookSoldID INT PRImary KEY,
	CustomerID INT,
	BookCode INT,
	Date datetime,
	Price INT ,
	Amount INT,
	Constraint FK_Customer_CustomerID Foreign Key(CustomerID) references Customers(CustomerID),
	Constraint FK_Book_BookCode Foreign Key(BookCode) references Books(BookCode)
	
)

--1--
insert into Customers Values ('11120','Tran Duc Bo','Ha Noi','123456789'),
							 ('11121','Tran Duc Do','Ha Noi','123456779'),
							 ('11122','Tran Duc Co','Ha Noi','123456769'),
							 ('11123','Tran Duc Ao','Ha Noi','123456759'),
							 ('11124','Tran Duc Eo','Ha Noi','123456749')

insert into Books Values(121,'Chinh tri','Nguyen Du','Kim Dong1','Truyen Kieu',999999,1),
						(122,'Tu luc','Nguyen Khuyen','Kim Dong','Tho Luc Bat',999999,10),
						(123,'Thieu Nhi','Nguyen Van Troi','Kim Dong1','Tho Nom',75000,100),
						(124,'Lich Su','Nguyen Huy Tuong','Kim Dong','Tho That ngon bat cu',100000,5),
						(125,'Kinh Doanh','Nguyen Thi Anh Dao','Kim Dong1','Tho that ngon tu tuyet',240000,2)

insert into BookSold Values (1, '11120',121,'2021-07-19',999999,5),
							(2, '11121',122,'2021-07-18',999999,4),
							(3, '11122',123,'2021-06-17',75000,15),
							(4, '11123',124,'2021-07-16',100000,10),
							(5, '11124',125,'2021-06-15',240000,9),
							(6, '11121',122,'2021-07-14',999999,6),
							(7, '11122',123,'2021-06-13',75000,3),
							(8, '11122',124,'2021-07-12',100000,2),
							(9, '11124',125,'2021-06-11',240000,4),
							(10,'11121',121,'2021-07-10',999999,1)
--2--
CREATE VIEW BOOK_VIEW 
AS 
SELECT A.BookCode , A.Price , B.Title, A.Amount  From P3_B1.dbo.BookSold  As A
Join P3_B1.dbo.Books As B ON A.BookCode = B.BookCode
Go

Select *From BOOK_VIEW
--3--
CREATE VIEW CUSTOMER_VIEW
AS 
SELECT A.CustomerID, A.CustomerName, A.Address , B.Amount From P3_B1.dbo.Customers AS A
Join P3_B1.dbo.BookSold As B ON A.CustomerID = B.CustomerID
Go

Select* From CUSTOMER_VIEW
--4--
CREATE VIEW CUSTOMER2_VIEW
AS 
SELECT A.CustomerID, A.CustomerName, A.Address , B.Date , C.Title From P3_B1.dbo.Customers AS A
Join P3_B1.dbo.BookSold AS B ON A.CustomerID = B.CustomerID
Join P3_B1.dbo.Books AS C ON C.BookCode = B.BookCode 
Where DATE < GETDATE()  AND DATE > '2021-06-01'
Go

Select* From CUSTOMER2_VIEW
Go
--5--
CREATE VIEW CUSTOMER3_VIEW
AS 
SELECT distinct A.CustomerID, A.CustomerName, A.Address , B.Amount*B.Price As [DA TIEU] From P3_B1.dbo.Customers AS A
Join P3_B1.dbo.BookSold As B ON A.CustomerID = B.CustomerID
Select CustomerName, Sum([DA TIEU]) as[Tong Tien] From CUSTOMER3_VIEW  As K Group By CustomerName
