drop table Customer
create table Customer(
	CustomerID INT IDENTITY(1,1) NOT NULL,
	CustomerFirstName VARCHAR(20) NOT NULL,
	CustomerLastName VARCHAR(10) NOT NULL,
	CustomerAddress VARCHAR(50) ,
	CustomerDistrict VARCHAR(50),
	CustomerCity VARCHAR(50),
	CustomerPhoneNumber INT NOT NULL,
	CONSTRAINT PK_CustomerLastName PRIMARY KEY (CustomerLastName)
)
go
select*from Customer
go
drop table Product
create table Product(
	ProductID INT  IDENTITY(1,1),
	ProductName VARCHAR(30) NOT NULL,
	ProductDescription VARCHAR(3) DEFAULT(NULL),
	ProductUnit VARCHAR(15)  NOT NULL ,
	ProductPrice INT NOT NULL,
	ProductQuantity INT NOT NULL,
	CONSTRAINT PK_ProductName PRIMARY KEY (ProductName)
 )
 go

 insert into Customer(CustomerFirstName,CustomerLastName,CustomerAddress,CustomerDistrict,CustomerCity,CustomerPhoneNumber) VALUES('Nguyen Van','An','111 Nguyen Trai','Thanh Xuan','Ha Noi','123456789')
 insert into Customer(CustomerFirstName,CustomerLastName,CustomerAddress,CustomerDistrict,CustomerCity,CustomerPhoneNumber) VALUES('Nguyen Van','Ba','112 Nguyen Trai','Thanh Xuan','Ha Noi','123456789')
 insert into Customer(CustomerFirstName,CustomerLastName,CustomerAddress,CustomerDistrict,CustomerCity,CustomerPhoneNumber) VALUES('Chu ba',N'Tu','113 Nguyen Trai','Thanh Xuan','Ha Noi','123456789')


 insert into Product(ProductName,ProductDescription,ProductUnit,ProductPrice,ProductQuantity) VALUES('MSI GAMING PC','new','Cai',100000000,999)
 insert into Product(ProductName,ProductDescription,ProductUnit,ProductPrice,ProductQuantity) VALUES('ASUS GAMING PC','new','Cai',100000000,999)
 insert into Product(ProductName,ProductDescription,ProductUnit,ProductPrice,ProductQuantity) VALUES('CORSAIR GAMING PC','new','Cai',100000000,999)


 drop table Invoice
 create table Invoice(
	InvoiceID INT IDENTITY(1,1) ,
	CustomerFirstName VARCHAR(20),
	CustomerLastName VARCHAR(10),
	ProductName VARCHAR(30) NOT NULL,
	ProductDescription VARCHAR(3) DEFAULT('New'),
	ProductQuantity INT NOT NULL,
	CONSTRAINT PK_invoice PRIMARY KEY (InvoiceID),
	CONSTRAINT FK_CustomerName FOREIGN KEY (CustomerLastName) REFERENCES Customer(CustomerLastName),
	CONSTRAINT FK_Product FOREIGN KEY (ProductName) REFERENCES Product(ProductName)
 )
 go

 insert into Invoice(CustomerFirstName,CustomerLastName,ProductName,ProductDescription,ProductQuantity) Values('Nguyen Van','An','')
 select*from Customer
 select*from Product
 select*from Invoice

ALTER TABLE Invoice
DROP CONSTRAINT FK_CustomerName;

ALTER TABLE Invoice
DROP CONSTRAINT FK_Product;
