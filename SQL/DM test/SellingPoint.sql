
--1)Create a databASe AS requested above.
CREATE DATABASE SellingPoINT
USE SellingPoINT
GO

--2. CREATE TABLE bASed on the above design.
CREATE TABLE Categories(
	CateID CHAR(6) Primary key,
	CateName NVARCHAR(100) NOT NULL,
	Description NVARCHAR(200)
)
GO

CREATE TABLE Parts(
	PartID INT Identity Primary Key,
	PartName NVARCHAR(100) Not NULL,
	CateID CHAR(6) ConstraINT FK_Parts_Categories Foreign Key (CateID) References Categories(CateID),
	Description NVARCHAR(1000),
	Price MONEY NOT NULL Default('0'),
	Quantity INT Default('0'),
	Warranty INT Default('1'),
	Photo NVARCHAR(200) Default('photo/nophoto.png')
)
GO

--3. INSERT INTO each table at leASt three records.
INSERT INTO Categories VALUES ('SP001',N'VGA',N'Card Màn Hình'),
							  ('SP002',N'CPU','Chíp Xử Lý'),
							  ('SP003',N'RAM','Bộ nhớ Khả Biến'),
							  ('SP004',N'SSD','Ổ Cứng Lưu Trữ')

INSERT INTO Parts (PartName,CateID,Description,Price,Quantity,Warranty,Photo)
VALUES (N'Option 1','SP001','GTX 1660Ti',80,100,12,null),
	   (N'Option 2','SP001','GTX 1660 Super',85,200,24,'photo/photo1.png'),
	   (N'Option 3','SP001','RTX 2060',110,190,12,null),
	   (N'Option 4','SP001','RTX 2060 Super',150,90,24,'photo/photo3.png'),

	   (N'Option 5','SP002','INTel Celeron',80,90,24,'photo/photo5.png'),
	   (N'Option 6','SP002','INTel Pentium',100,60,24,'photo/photo7.png'),
	   (N'Option 7','SP002','INTel Core I3',160,1000,24,'photo/photo9.png'),
	   (N'Option 8','SP002','INTel Core I9',1000,99,24,'photo/photo2.png'),

	   (N'Option 9' ,'SP003','Ram 2GB',60,90,24,'photo/photo4.png'),
	   (N'Option 10','SP003','Ram 4GB',120,90,24,'photo/photo6.png'),
	   (N'Option 11','SP003','Ram 8GB',140,90,24,'photo/photo8.png'),
	   (N'Option 12','SP003','Ram 16GB',190,90,24,'photo/photo10.png'),

	   (N'Option 13','SP004','SSD 120GB',80,80,12,'photo/photo12.png'),
	   (N'Option 14','SP004','SSD 240GB',120,90,12,'photo/photo11.png'),
	   (N'Option 15','SP004','SSD 256Gb',130,100,12,'photo/photo13.png'),
	   (N'Option 16','SP004','SSD 500GB',160,200,12,'photo/photo15.png')
--4.List all parts in the store with price > 100$.
SELECT * FROM Parts
	WHERE Price > 100
--5. List all parts of the cateGOry ‘CPU’.
SELECT A.PartID, A.PartName,B.CateName, A.CateID, A.Price,A.Description, A.Photo, A.Quantity,A.Warranty FROM Parts AS A 
Inner Join Categories AS B on A.CateID = B.CateID
WHERE B.CateID ='SP002';
--6. Create a view v_Parts contains the following information (PartID, PartName, CateName,Price, Quantity) FROM table Parts and Categories.
CREATE VIEW v_Parts
AS
SELECT Parts.PartID, Parts.PartName, Categories.CateName, Parts.Price, Parts.Quantity FROM Parts 
GO

SELECT * FROM v_Parts
GO
inner join Categories ON Parts.CateID = Categories.CateID;
--7 Create a view v_TopParts about 5 parts with the most expensive price.
CREATE VIEW v_TopParts
AS
SELECT TOP(5) * FROM Parts
ORDER BY Price DESC
GO

SELECT * FROM v_TopParts
GO
