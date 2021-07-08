create table PhongBan	
(
	MaPB varchar(7) primary key,
	TenPB nvarchar(50)
);
drop table NhanVien
create table NhanVien
(
	MaNV varchar(7) primary key,
	TenNV nvarchar(50),
	NgaySinh Datetime,
	SoCMND char(9),
	GioiTinh char(1) default('M'),
	DiaChi nvarchar(100),
	NgayVaoLam Datetime,
	MaPB varchar(7),
	constraint check_NgaySinh check (NgaySinh < select cast(getdate())
	constraint check_CMND check (SoCMND between 0 and 999999999),
	constraint check_GioiTinh check (GioiTinh = 'F' or 'M'),
	constraint fk_MaPB_PhongBan foreign key(MaPB) references PhongBan(MaPB)
);


