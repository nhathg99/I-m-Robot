Create database LAB_12
Use LAB_12
GO
Drop table Employee
Create Table Employee(
	EmployeeID INT,
	Name VARCHAR(100),
	Tel CHAR(11),
	Email VARCHAR(30)
)
Go
Drop table Groups
Create Table Groups(
	GroupID INT ,
	GroupName VARCHAR(30),
	LeaderID INT,
	ProjectID INT ,
)
Go
Drop table Project
Create Table Project(
	ProjectID INT ,
	ProjectName VARCHAR(30),
	StartDate datetime,
	EndDate datetime,
	Period INT,
	Cost money,
)
Go
Drop table GroupDetail
Create Table GroupDetail(
	GroupID INT,
	EmployeeID INT,
	Status CHAR(20),
)
Go

Insert Into Employee values (10,'Nguyen Van A','0988818888','Example1@gmail.com'),
							(11,'Nguyen Van B','0999919999','Example2@gmail.com'),
							(12,'Nguyen Van C','0977717777','Example3@gmail.com'),
							(13,'Nguyen Van D','0966616666','Example4@gmail.com'),
							(14,'Nguyen Van E','0988815555','Example5@gmail.com'),
							(15,'Nguyen Van F','0988815566','Example6@gmail.com'),
							(16,'Nguyen Van G','0988814445','Example7@gmail.com'),
							(17,'Nguyen Van H','0988813457','Example8@gmail.com'),
							(18,'Nguyen Van I','0988877568','Example9@gmail.com')
Go
Insert Into Groups Values (111011,'Bitcoin'  ,001,1),
						  (111012,'Ethereum' ,002,2),
						  (111013,'Binance'  ,003,3),
						  (111014,'Tether'   ,004,4),
						  (111015,'Cardano'  ,005,5),
						  (111016,'Polkadot' ,006,6),
						  (111017,'Ripple'   ,007,7),
						  (111018,'Stellar'  ,008,8),
						  (111019,'Uniswap'  ,009,9),
						  (111020,'Chainlink',010,10)
Go
Insert Into Project Values  (1,'Project 1' ,'2018-01-01','2018-05-01',4,10000),
						    (2,'Project 2' ,'2018-02-01','2018-06-01',4,50000),
							(3,'Chinh Phu Dien Tu' ,'2018-03-01','2018-07-01',4,20000),
							(4,'Project 4' ,'2018-04-01','2018-08-01',4,30000),
							(5,'Chinh Phu Dien Tu' ,'2018-05-01','2018-09-01',4,40000),
							(6,'Project 6' ,'2018-06-01','2018-10-01',4,10000),
							(7,'Project 7' ,'2018-07-01','2018-11-01',4,20000),
							(8,'Chinh Phu Dien Tu' ,'2018-08-01','2018-12-01',4,60000),
							(9,'Project 9' ,'2018-09-01','2018-10-01',1,90000),
							(10,'Project 10','2018-10-01','2018-12-01',2,15000)
Go
Insert Into GroupDetail Values  (111011,10,'Complete'),
								(111012,11,'Loading'),
								(111013,12,'Complete'),
								(111014,13,'Loading'),
								(111015,14,'Complete'),
								(111016,15,'Complete'),
								(111017,16,'Complete'),
								(111018,17,'Loading'),
								(111019,18,'Complete')
ALTER TABLE Employee 
 Add constraint PK_Employee Primary key (employeeID);
Go
ALTER TABLE Groups 
 Add constraint PK_Groups Primary key (GroupID, ProjectID);
Go
ALTER TABLE Project 
 Add constraint FK_Groups Foreign key (ProjectID) References Groups(ProjectID);
 --3--
 Select EmployeeID, Name, Tel, Email From Employee