--To Create Database
/*
1) CREATE DATABASE db_Title;
2) DROP DATABASE db_Title;
*/

--To Create Table
USE Developer_Demo;
CREATE TABLE KiaraMovies(
ID INT PRIMARY KEY,
Title NVARCHAR(255) NOT NULL,
 ReleaseYear INT,
);
--

--Insert Value
INSERT INTO KiaraMovies VALUES(1, 'Sholay', 1975);
INSERT INTO KiaraMovies VALUES(2, 'DDLJ', 1995);
INSERT INTO KiaraMovies VALUES(3, 'Bahubali', 2015);
INSERT INTO KiaraMovies Values(4, 'Lagaan ', 2001);
INSERT INTO KiaraMovies Values(5, 'Kabhi Khushi Kabhie Gham ', 2001);
INSERT INTO KiaraMovies Values(6, '3 Idiots', 2009);
INSERT INTO KiaraMovies Values(7, 'Koi Mil Gaya', 2003);
INSERT INTO KiaraMovies Values(8, 'Dil Chahta Hai ', 2001);
INSERT INTO KiaraMovies Values(9, 'Kuch Kuch Hota Hai', 1998);
INSERT INTO KiaraMovies Values(10, 'Mughal-e-Azam', 1960);
INSERT INTO KiaraMovies Values(11, 'Golmaal', 2006);
INSERT INTO KiaraMovies Values(12, 'My Title Is Khan', 2010);
INSERT INTO KiaraMovies Values(13, 'PK', 2014);
INSERT INTO KiaraMovies Values(14, 'Bajrangi Bhaijaan', 2015);


--To view TABLE 
SELECT * FROM KiaraMovies;

--To create database using IF NOT EXISTS
IF NOT EXISTS(SELECT Title FROM sys.databases WHERE Title = 'KiaraMovies')
BEGIN
CREATE DATABASE KiaraMovies;
END

--To show the databases
SELECT Title
FROM sys.databases
WHERE database_id>4;

--SELECT DISTINCT Syntax
SELECT DISTINCT Title, ReleaseYear
	FROM KiaraMovies;

SELECT Title FROM KiaraMovies; --will only select the particular column 
SELECT DISTINCT Title FROM KiaraMovies; --will show the distinct Title only

SELECT COUNT(DISTINCT Title) FROM KiaraMovies; 


--WHERE Clause
SELECT* FROM KiaraMovies
WHERE Title = 'Pranali';

--ORDER by
/*
ASC - Ascending
DESC - Descending 
*/
SELECT * FROM KiaraMovies
ORDER BY ID, Title ASC; --Ascending order


--Update
Update KiaraMovies
SET ReleaseYear = 2014
Where ID = 13; 


--LIMIT
Select TOP 1 * from KiaraMovies;

SELECT *
FROM KiaraMovies
ORDER BY ID
OFFSET 1 ROWS
FETCH NEXT 1 ROWS ONLY;



--MIN and Max
Select MIN(ReleaseYear) AS OLDEST Movie
FROM KiaraMovies;
WHERE ID = 1;










































--Delete Table
DROP TABLE KiaraMovies;