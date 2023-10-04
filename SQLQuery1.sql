--To Create Database
/*
1) CREATE DATABASE db_name;
2) DROP DATABASE db_name;
*/

--To Create Table
USE Developer_Demo;
CREATE TABLE Kiarastudent(
ID INT PRIMARY KEY,
Name VARCHAR(50),
Age INT NOT NULL
);

--Insert Value
INSERT INTO Kiarastudent VALUES(1, 'Prince', 22);
INSERT INTO Kiarastudent VALUES(2, 'Pranali', 21);

--To view TABLE 
SELECT * FROM Kiarastudent;

--To create database using IF NOT EXISTS
IF NOT EXISTS(SELECT NAME FROM sys.databases WHERE name = 'KiaraStudent')
BEGIN
CREATE DATABASE kiaraStudent;
END

--To show the databases
Select name
From sys.databases
where database_id>4;



