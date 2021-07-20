
---B1---

--1--
CREATE DATABASE B1
GO
USE B1
--2--
CREATE VIEW ProductList
AS
SELECT ProductID, Name FROM AdventureWorks2019.Production.Product
--3--
SELECT * FROM ProductList
--4--