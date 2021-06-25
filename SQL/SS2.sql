USE AdventureWorks2019

SELECT * FROM HumanResources.Employee
DECLARE @deptID INT
SELECT @deptID = 1
SELECT Name,GroupName FROM HumanResources.Department 
WHERE DepartmentID =  @deptID
SELECT @@LANGUAGE
SELECT @@VERSION
SELECT @@ERROR	

GO	