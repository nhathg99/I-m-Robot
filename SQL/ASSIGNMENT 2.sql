drop table Product,DsHang
create database MSSQL_Assignment_02
use MSSQL_Assignment_02
go


create table DsHang(
	MsBrand INT NOT NULL PRIMARY KEY,
	nameBrand VARCHAR(20) NOT NULL,
	Address VARCHAR(20) NOT NULL,
	SDT INT
)
go
insert into DsHang values	 (123,'Asus','USA','0983232'),
							 (124,'MSI','CHINA','0122123'),
							 (125,'ACER','VIETNAM','0321223')

create table Product(
	ProductID INT NOT NULL,
	MsBrand INT NOT NULL ,
	ProductName VARCHAR(50) NOT NULL,
	ProductDescription NVARCHAR(100) DEFAULT('NEW'),
	ProductUnit NVARCHAR(10) ,
	ProductPrice INT,
	ProductInStock INT,
	Constraint pk_product PRIMARY KEY (ProductID),
	Constraint pk_DsHang_MsBrand FOREIGN KEY(MsBrand) REFERENCES DsHang(MsBrand)
)

insert into Product values	 (1,123,'Máy Tính T450',N'Máy nhập cũ',N'Chiếc','1000','10'),
							 (2,123,'Dien thoai Nokia 5670',N'Dien Thoai Dang Hot',N'Chiếc','200','200'),
							 (3,123,'Máy In Samsung 450',N'Máy In Dang loai Binh',N'Chiếc','100','10'),
							 (4,124,'Máy Tính 12344',N'Máy nhập cũ',N'Chiếc','1000','10'),
							 (5,124,'Dien thoai Nokia 11234',N'Dien Thoai Dang Hot',N'Chiếc','200','200'),
							 (6,124,'Máy In Samsung 2352',N'Máy In Dang loai Binh',N'Chiếc','100','10'),
							 (7,125,'Máy Tính sdf',N'Máy nhập cũ',N'Chiếc','1000','10'),
							 (8,125,'Dien thoai Nokia qqq',N'Dien Thoai Dang Hot',N'Chiếc','200','200'),
							 (9,125,'Máy In Samsung 23454',N'Máy In Dang loai Binh',N'Chiếc','100','10')
----------------------------------4-----------------------------
--a--
select MsBrand , nameBrand from DsHang
go
--b--
select ProductID , ProductName from Product
go
----------------------------------5-----------------------------
--a--
select nameBrand from DSHang order by nameBrand desc
go
--b--
select ProductName,ProductPrice from Product order by ProductPrice desc
go
--c--
select * from  DSHang where nameBrand LIKE 'Asus'
go
--d--
select ProductID,ProductName from Product where ProductInStock < 11
go
--e--
select ProductName 
from Product 
INNER JOIN DSHang  on Product.MsBrand = DsHang.MsBrand
where DsHang.nameBrand LIKE 'Asus'

----------------------------------6-----------------------------
--a--
select nameBrand from DsHang
go
--b--
select DISTINCT ProductName from Product
--c--
SELECT nameBrand, COUNT(ProductID) AS Total_Name_Brand
FROM Product 
inner join DsHang on Product.MsBrand = DsHang.MsBrand
group by nameBrand
--d--
SELECT COUNT(ProductID) AS Total_Product FROM Product
GO
----------------------------------7-----------------------------
--a--
ALTER TABLE Product ADD CONSTRAINT ck_Price CHECK(ProductPrice>0)
--b--
ALTER TABLE DsHang
drop column SDT
go
ALTER TABLE DsHang
ADD SDT VARCHAR(10);
GO
ALTER TABLE DsHang
ADD CONSTRAINT Rp_SDT CHECK (SDT LIKE '0%')
GO
SELECT *
FROM DsHang
--c--
