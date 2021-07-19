CREATE DATABASE MSSQL_Assignment_06
USE MSSQL_Assignment_06
GO

CREATE TABLE Book
(
BookID CHAR(3) PRIMARY KEY,
BookName	NVARCHAR(30),
Author		VARCHAR(50),
Content		NVARCHAR(1000),
BookType	NVARCHAR(30),
BookPrice	MONEY
)
GO

CREATE TABLE Publish
(
Publisher VARCHAR(20) PRIMARY KEY,
PubAddress VARCHAR(20),
)
GO

CREATE TABLE BookDetail
(
BookID CHAR(3) ,
Publisher VARCHAR(20) ,
PublishYear INT,
PublishTimes INT,
QTY INT,
CONSTRAINT CK_Masach FOREIGN KEY(BookID) REFERENCES Book(BookID),
CONSTRAINT CK_NhaXB FOREIGN KEY(Publisher) REFERENCES Publish(Publisher)
)
GO
--------------------------------------------------2--------------------------------------------------
INSERT INTO Book VALUES ('B01',N'Trí tuệ Do Thái','Eran Katz',N'Bạn có muốn biết: Người Do Thái sáng tạo ra cái gì và nguồn gốc trí tuệ của họ xuất phát từ đâu không? Cuốn sách này sẽ dần hé lộ những bí ẩn về sự thông thái của người Do Thái, của một dân tộc thông tuệ với những phương pháp và kỹ thuật phát triển tầng lớp trí thức đã được giữ kín hàng nghìn năm như một bí ẩn mật mang tính văn hóa.',N'Khoa học xã hội','79000')
INSERT INTO Book VALUES ('B02',N'Đắc Nhân Tâm','Dale Carnegie',N'Đắc nhân tâm, tên tiếng Anh là How to Win Friends and Influence People là một quyển sách nhằm tự giúp bản thân (self-help) bán chạy nhất từ trước đến nay. Quyển sách này do Dale Carnegie viết và đã được xuất bản lần đầu vào năm 1936, nó đã được bán 15 triệu bản trên khắp thế giới. Nó cũng là quyển sách bán chạy nhất của New York Times trong 10 năm. Tác phẩm được đánh giá là cuốn sách đầu tiên và hay nhất trong thể loại này, có ảnh hưởng thay đổi cuộc đời đối với hàng triệu người trên thế giới',N'Tự lực','76000')
INSERT INTO Book VALUES ('B03','Rich Dad, Poor Dad','Sharon Lechter, Robert Kiyosaki','Rich Dad, Poor Dad là cuốn sách bán chạy nhất của Robert Kiyosaki. Trong đó, ông bày tỏ thái độ ủng hộ cho sự độc lập về tài chính nhờ đầu tư, bất động sản, kinh doanh và sử dụng tài chính hợp lý','Tài chính cá nhân','35000')
INSERT INTO Book VALUES ('B04','Secret of millionaire mind','T. Harv Eker','Secrets Of The Millionaire Mind reveals the missing link between wanting success and achieving it',N'Tự Lực','89500')

GO
INSERT INTO Publish VALUES (N'Kim Đồng',N'Hà Nội')
INSERT INTO Publish VALUES (N'Tổng hợp TP.HCM',N'Tp HCM')

INSERT INTO BookDetail VALUES ('B01',N'Tổng hợp TP.HCM',2019,5,999)
INSERT INTO BookDetail VALUES ('B02',N'Kim Đồng',2008,5,999)
INSERT INTO BookDetail VALUES ('B03',N'Tổng hợp TP.HCM',2013,5,999)
INSERT INTO BookDetail VALUES ('B04',N'Kim Đồng',2021,5,999)
--3--
SELECT PublishYear, BookName FROM BookDetail AS A
INNER JOIN Book AS B ON B.BookID = A.BookID
WHERE PublishYear >= 2008
--4--
SELECT TOP(2) BookName, BookPrice FROM Book ORDER BY BookPrice desc
--5--
SELECT BookID, BookName, Author, BookType FROM Book 
WHERE BookType LIKE '%Tự Lực%'
--6--
SELECT BookName FROM Book
WHERE BookName LIKE 'R%'
--7--
SELECT BookName FROM Book AS A
INNER JOIN BookDetail AS B ON B.BookID = A.BookID
WHERE Publisher = 'Tổng hợp TP.HCM'