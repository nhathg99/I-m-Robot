--Lấy ra dữ liệu của bảng Contact có ContactID>= 00 và ContactID<=200
SELECT *
FROM Person.Contact
WHERE ContactID >= 100 AND ContactID <= 200
--Lấy ra dữ liệu của bảng Contact có ContactID trong khoảng [100, 200]
SELECT * FROM Person.Contact
WHERE ContactID BETWEEN 100 AND 200
--Lấy ra những Contact có LastName kết thúc bởi ký tự e
SELECT * FROM Person.Contact
WHERE LastName LIKE '%e'
--Lấy ra những Contact có LastName bắt đầu bởi ký tự R hoặc A kết thúc
bởi ký tự e
SELECT * FROM Person.Contact
WHERE LastName LIKE '[RA]%e'
--Lấy ra những Contact có LastName có 4 ký tự bắt đầu bởi ký tự R hoặc
A kết thúc bởi ký tự e
SELECT * FROM Person.Contact
WHERE LastName LIKE '[RA]__e'
--Sử dụng INNER JOIN
SELECT Person.Contact.*
FROM Person.Contact INNER JOIN HumanResources.Employee ON
Person.Contact.ContactID=HumanResources.Employee.ContactID
SELECT Title, COUNT(*) [Title Number]
FROM Person.Contact
WHERE Title LIKE 'Mr%'
GROUP BY ALL Title
--GROUP BY với HAVING: mệnh đề HAVING sẽ lọc kết quả trong lúc được
gộp nhóm
SELECT Title, COUNT(*) [Title Number]
FROM Person.Contact
GROUP BY ALL Title
HAVING Title LIKE 'Mr%'

----BTVN-------------
create database Lab6_P3
use Lab6_P3
Go
Drop table PhongBan
drop table NhanVien
drop table LuongDA
create table PhongBan(
	MaPB varchar(7) primary key,
	TenPB NVARCHAR(50)
)
Go

Create table NhanVien(
	MaNV VARCHAR(7) PRIMARY KEY,
	TenNV NVARCHAR(50),
	NgaySinh Datetime ,
	Constraint Check_Ngaysinh Check (NgaySinh < Getdate()),
	SoCMND char(9) ,
	Constraint Check_SoCMND Check (SoCMND >=100000000 AND SoCMND <=999999999),
	GioiTinh CHAR(1) Default('M'),
	Constraint Check_GioiTinh Check (GioiTinh = 'M' OR GioiTinh ='F'),
	DiaChi NVARCHAR(100),
	NgayVaoLam DATETIME ,
	Constraint Check_NgayVaoLam CHECK (year(NgayVaoLam) >= ( year(NgaySinh) + 20)),
	MaPB VARCHAR(7) ,
	Constraint FK_PhongBan_MaPB Foreign Key(MaPB) References PhongBan(MaPB)
)
Go

Create Table LuongDA(
	MaDA VARCHAR(8),
	MaNV VARCHAR(7),
	NgayNhan DATETIME NOT NULL default(GETDATE()),
	SoTien MONEY Check (SoTien > 0),
	Constraint PK_NhanVien_DuAn Primary key (MaDA , MaNV),
	Constraint FK_NhanVien_MaNV Foreign KEY (MaNV) references NhanVien(MaNV)

)
Go
insert into PhongBan values ('phong 1','Phong Hanh Chinh'),
							('phong 2','Phong Nhan Su'),
							('phong 3','Phong Quan Ly'),
							('phong 4','Phong Hop'),
							('phong 5','Phong Ky Thuat')

Go
insert into NhanVien values ('NV 111',N'Nguyen Van A','1990-01-01','992211009','M',N'Ha Noi','2020-01-01','phong 1'),
							('NV 112',N'Nguyen Van B','1989-01-01','992211001','M',N'Ha Noi','2020-01-01','phong 2'),
							('NV 113',N'Nguyen Thi C','1988-01-01','992211002','F',N'Ha Noi','2020-01-01','phong 3'),
							('NV 114',N'Nguyen Van D','1987-01-01','992211003','M',N'Ha Noi','2020-01-01','phong 4'),
							('NV 115',N'Nguyen Thi E','1991-01-01','992211004','F',N'Ha Noi','2020-01-01','phong 5'),
							('NV 116',N'Nguyen Thi F','1991-01-01','992211004','F',N'Ha Noi','2020-01-01','phong 5'),
							('NV 117',N'Nguyen Van G','1991-01-01','992211004','M',N'Ha Noi','2020-01-01','phong 4'),
							('NV 118',N'Nguyen Thi H','1991-01-01','992211004','F',N'Ha Noi','2020-01-01','phong 5'),
							('NV 119',N'Nguyen Van I','1991-01-01','992211004','M',N'Ha Noi','2020-01-01','phong 4'),
							('NV 120',N'Nguyen Thi K','1991-01-01','992211004','F',N'Ha Noi','2020-01-01','phong 1'),
							('NV 121',N'Nguyen Van L','1991-01-01','992211004','M',N'Ha Noi','2020-01-01','phong 5'),
							('NV 122',N'Nguyen Thi M','1991-01-01','992211004','F',N'Ha Noi','2020-01-01','phong 2'),
							('NV 123',N'Nguyen Van N','1991-01-01','992211004','M',N'Ha Noi','2020-01-01','phong 2'),
							('NV 124',N'Nguyen Thi O','1991-01-01','992211004','F',N'Ha Noi','2020-01-01','phong 1'),
							('NV 125',N'Nguyen Van V','1991-01-01','992211004','M',N'Ha Noi','2020-01-01','phong 1')
Go
insert into LuongDA values  ('DV1','NV 111','2021-07-01','5000000'),
							('DV2','NV 112','2021-07-02','1500000'),
							('DV3','NV 113','2021-07-03','2500000'),
							('DV4','NV 114','2021-07-04','3500000'),
							('DV5','NV 111','2021-07-04','3500000'),
							('DV6','NV 114','2021-07-04','1250000'),
							('DV7','NV 114','2021-07-04','1250000'),
							('DV8','NV 111','2021-07-04','3350000'),
							('DV9','NV 114','2021-07-04','5500000'),
							('DV10','NV 114','2021-07-04','8500000'),
							('DV11','NV 111','2021-07-04','6500000'),
							('DV12','NV 115','2021-07-05','4500000')
Go
-----------------2-----------------
--select PHONG BAN-----
select * from PhongBan
--select Nhan Vien-----
select * from NhanVien
--select Lunog Du An-----
select * FROM LuongDA
ORDER by MaNV 
-----------------3-----------------
Select MaNV,TenNV As Gioi_Tinh_NU From NhanVien
Where GioiTinh = 'F'
Go
-----------------4-----------------
Select DIStinct MaDA From LuongDA
Order By MaDA
Go
-----------------5-----------------
Declare @Luong  INT = (Select Sum(SoTien)	From LuongDA Where MaNV = 'NV 111');
Declare @Luong1 INT = (Select Sum(SoTien)   From LuongDA Where MaNV = 'NV 112');
Declare @Luong2 INT = (Select Sum(SoTien)   From LuongDA Where MaNV = 'NV 113');
Declare @Luong3 INT = (Select Sum(SoTien)   From LuongDA Where MaNV = 'NV 114');
Declare @Luong4 INT = (Select Sum(SoTien)   From LuongDA Where MaNV = 'NV 115');
Select @Luong  As Luong_Nhan_Vien_1, @Luong1 As Luong_Nhan_Vien_2 ,@Luong2 As Luong_Nhan_Vien_3,
@Luong3 As Luong_Nhan_Vien_4 ,@Luong4 As Luong_Nhan_Vien_5
Go
-----------------6-----------------
Select A.MaNV , A.TenNV, B.TenPB, C.SoTien From NhanVien As A
Inner Join PhongBan AS B On A.MaPB = B.MaPB
Inner Join LuongDA AS C ON C.MaNV = A.MaNV
Group By A.MaNV , A.TenNV , B.TenPB, C.SoTien
HaVING B.TenPB = 'Phong Hanh Chinh'
-----------------7-----------------
Select A.MaNV , A.TenNV, B.TenPB, Sum(C.SoTien) As LuongDA_TONG From NhanVien As A
Inner Join PhongBan AS B On A.MaPB = B.MaPB
Inner Join LuongDA AS C ON C.MaNV = A.MaNV
Group By A.MaNV , A.TenNV , B.TenPB, C.SoTien
HaVING B.TenPB = 'Phong Hanh Chinh'











