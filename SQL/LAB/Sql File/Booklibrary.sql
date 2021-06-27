Create Database BookLibrary
Go
Use BookLibrary
go
-- T?o b?ng Book
Create Table Book (
	BookCode int UNIQUE,
	BookTitle varchar(100) not null PRIMARY KEY,
	Author varchar (50) not null,
	Edition int,
	BookPrice money not null Default (100),
	Copies int 
	)
Go
-- T?o b?ng Member
Create Table Member(
	MemberCode int Uniqueidentifier,
	Name varchar(50) not null,
	Address varchar(100) not nul,
	PhoneNumber int,
	Constraint nameadd Primary Key (name , address)
)
Go
-- T?o b?ng IssueDetails
Create Table IssueDetails(
	BookCode int,Constraint code FOREIGN KEY(BookCode) REFERENCES Book(BookCode),
	MemberCode int ,
	IssueDate datetime ,
	ReturnDate datetime
	)
Go
-- Xóa b? các ràng bu?c khóa ngo?i c?a b?ng IssueDetails
ALTER Table (IssueDetails)
Drop Constraint code 
go
-- Xóa b? các ràng bu?c khóa chính c?a b?ng book
ALTER Table (Book)
Drop PRIMARY KEY
go
-- Xóa b? các ràng bu?c khóa chính c?a b?ng member
ALTER Table (Member)
Drop Constraint nameadd
Go
-- Thêm ràng bu?c khóa chính cho b?ng member
ALTER TABLE (Member)
Add PRIMARY KEY (Author)
Go
-- Thêm ràng bu?c khóa chính cho b?ng book
ALTER TABLE (Book)
Add PRIMARY KEY (PhoneNumber)
Go
-- Thêm m?i các ràng bu?c khóa ngo?i cho b?ng IssueDetails
ALTER TABLE IssueDetails
Add Constraint KhoaNgoai FOREIGN KEY (MemberCode) REFERENCES Member(Membercode)
GO
-- B? sung ràng bu?c giá bán sách >0 và < 200
ALTER TABLE Book
Add constraint gia_ban_sach Check (BookPrice Between 0 and 200)
go 
-- Bổ sung ràng buộc duy nhất cho phonenumber của bảng Member
ALTER TABLE Member 
Add Constraint number_phone UNIQUE (PhoneNumber)
Go
-- Bổ sung ràng buộc not null
ALTER TABLE IssueDetails
	Modify BookCode int Not Null
go
ALTER TABLE IssueDetails
	MODIFY MemberCode int Not null
go
-- Tạo khóa chính cho 2 cột BookCode và MemberCode cho bảng IssueDetails
ALTER TABLE IssueDetails
ADD Constraint Khoa_chinh PRIMARY KEY (BookCode , MemberCode