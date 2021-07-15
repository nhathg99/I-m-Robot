
create database QL_DonHang
use QL_DonHang
drop table InvoiceDetail
drop table Invoice
drop table Customer
drop table Product
create table Customer(
	CustomerID INT  NOT NULL,
	CustomerName VARCHAR(30) NOT NULL,
	CustomerAddress VARCHAR(50) ,
	CustomerDistrict VARCHAR(50),
	CustomerCity VARCHAR(50),
	CustomerPhoneNumber INT NOT NULL,
	CONSTRAINT PK_CustomerID PRIMARY KEY (CustomerID)
)
go

create table Product(
	ProductID INT ,
	ProductName VARCHAR(30) NOT NULL,
	ProductDescription VARCHAR(3) DEFAULT(NULL),
	ProductUnit VARCHAR(15)  NOT NULL ,
	ProductPrice INT NOT NULL,
	ProductQuantity INT NOT NULL,
	CONSTRAINT PK_Product PRIMARY KEY (ProductID)
 )
 go

 insert into Customer(CustomerID,CustomerName,CustomerAddress,CustomerDistrict,CustomerCity,CustomerPhoneNumber) VALUES(111,'Nguyen Van An','111 Nguyen Trai','Thanh Xuan','Ha Noi','123456789'),
																															(222,'Nguyen Van Ba','112 Nguyen Trai','Thanh Xuan','Ha Noi','123456789'),
																															(333,'Chu Tu','113 Nguyen Trai','Thanh Xuan','Ha Noi','123456789')


 insert into Product(ProductID,ProductName,ProductDescription,ProductUnit,ProductPrice,ProductQuantity) 
 VALUES(10001,'MSI GAMING PC','new','Cai',100000000,999),
		(1002,'ASUS GAMING PC','new','Cai',100000000,999),
		(1003,'CORSAIR GAMING PC','new','Cai',100000000,999)


 create table Invoice(
	InvoiceID INT ,
	CustomerID INT,
	NgayDat DATETIME,
	CONSTRAINT PK_invoice PRIMARY KEY (InvoiceID),
	CONSTRAINT FK_Customer FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
 )
 go
 insert into Invoice(InvoiceID,CustomerID,NgayDat) Values(1,111,'2021-07-12'),
												(2,222,'2021-07-12'),
												(3,333,'2021-07-12')
 create table InvoiceDetail(
    InvoiceID INT,
    ProductID INT,
    QTY int,
    CONSTRAINT fk_invoice FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID),   
     CONSTRAINT fk_products FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
 )
 
 insert into InvoiceDetail values	(1,10001,5),
									(2,1002,10),
									(3,1003,15)
select Customer.CustomerName from Invoice inner JOIN Customer
on Customer.CustomerID = Invoice.CustomerID inner join InvoiceDetail
on Invoice.InvoiceID = InvoiceDetail.InvoiceID
group by Customer.CustomerName
select Invoice.InvoiceID, InvoiceDetail.ProductID from Invoice inner JOIN InvoiceDetail
on InvoiceDetail.InvoiceID = Invoice.InvoiceID


SELECT CustomerName from Customer
order by CustomerName

select * from Product
ORDER by  ProductPrice desc

select Customer.CustomerName, Product.ProductName, InvoiceDetail.QTY, COUNT(*) from Invoice inner JOIN Customer
on Invoice.CustomerID= Customer.CustomerID join InvoiceDetail
on Invoice.InvoiceID = InvoiceDetail.InvoiceID INNER JOIN Product
ON Product.ProductID = InvoiceDetail.ProductID
where Customer.CustomerName = 'Nguyen Van An'
GROUP by Customer.CustomerName, Product.ProductName, InvoiceDetail.QTY

SELECT Invoice.CustomerID from Invoice inner JOIN InvoiceDetail
on Invoice.InvoiceID = InvoiceDetail.InvoiceID
GROUP by Invoice.CustomerID

select InvoiceDetail.ProductID, Product.ProductName, Product.ProductDescription, Product.ProductPrice from InvoiceDetail inner join Product
on InvoiceDetail.ProductID = Product.ProductID 
GROUP by InvoiceDetail.ProductID, Product.ProductName, Product.ProductDescription, Product.ProductPrice

SELECT InvoiceDetail.InvoiceID, SUM(InvoiceDetail.QTY * Product.ProductPrice) as total_price_order from InvoiceDetail INNER join Product
on InvoiceDetail.ProductID = Product.ProductID 
GROUP by InvoiceDetail.InvoiceID

alter TABLE Product 
add check (ProductPrice > 0)

alter TABLE Invoice
add check (NgayDat < getdate())

alter TABLE Invoice 
add PublishDate DATETIME DEFAULT '2021-7-12'
alter table Invoice 
add CONSTRAINT ck_PD default '2021-7-12' for  PublishDate
SELECT * FROM Invoice 
