--To Create Database
/*
1) CREATE DATABASE db_name;
2) DROP DATABASE db_name;
*/

--To Create Table
USE Developer_Demo;
CREATE TABLE KiaraMovies(
ID INT PRIMARY KEY,
Name VARCHAR(50),
Age INT NOT NULL
);
--

--Insert Value
INSERT INTO KiaraMovies VALUES(1, 'Prince', 22);
INSERT INTO KiaraMovies VALUES(2, 'Pranali', 21);
INSERT INTO KiaraMovies Values(4, 'Prince', 23);
INSERT INTO KiaraMovies Values(5, 'Prince', 23);
INSERT INTO KiaraMovies Values(6, 'Prince', 23);
INSERT INTO KiaraMovies Values(7, 'Prince', 23);
INSERT INTO KiaraMovies Values(8, 'Prince', 23);
INSERT INTO KiaraMovies Values(9, 'Prince', 23);
INSERT INTO KiaraMovies Values(10, 'Prince', 23);
INSERT INTO KiaraMovies Values(11, 'Prince', 23);
INSERT INTO KiaraMovies Values(12, 'Prince', 23);
INSERT INTO KiaraMovies Values(13, 'Prince', 23);
INSERT INTO KiaraMovies Values(14, 'Prince', 23);


--To view TABLE 
SELECT * FROM KiaraMovies;

--To create database using IF NOT EXISTS
IF NOT EXISTS(SELECT NAME FROM sys.databases WHERE name = 'KiaraMovies')
BEGIN
CREATE DATABASE KiaraMovies;
END

--To show the databases
SELECT NAME
FROM sys.databases
WHERE database_id>4;

--SELECT DISTINCT Syntax
SELECT DISTINCT NAME, Age
	FROM KiaraMovies;

SELECT NAME FROM KiaraMovies; --will only select the particular column 
SELECT DISTINCT NAME FROM KiaraMovies; --will show the distinct name only

SELECT COUNT(DISTINCT Name) FROM KiaraMovies; 


--WHERE Clause
SELECT* FROM KiaraMovies
WHERE Name = 'Pranali';

--ORDER by
/*
ASC - Ascending
DESC - Descending 
*/
SELECT * FROM KiaraMovies
ORDER BY ID, Name ASC; --Ascending order














































--Delete Table
DROP TABLE KiaraMovies;