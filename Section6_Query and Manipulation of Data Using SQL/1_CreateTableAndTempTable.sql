/*
Create table(s) and Temp table(s)
*/

-- Create table syntax

USE [AdventureWorks2016]

CREATE TABLE [database_name].[schema_name].[table_name](
	[pk_column] [data_type] PRIMARY KEY,
	[column_1] [date_type] NOT NULL,
	[column_2] [date_type],
	...,
	table_contraints
);

CREATE TABLE [AdventureWorks2016].[sales].[storenew](
store_id INT PRIMARY KEY IDENTITY (1,1),
sales INT NOT NULL,
)

CREATE TABLE [AdventureWorks2016].[sales].[visits](
visit_id INT PRIMARY KEY IDENTITY (1,1),
first_name VARCHAR (50) NOT NULL,
last_name VARCHAR (50) NOT NULL,
visited_at DATETIME,
phone VARCHAR (20),
store_id INT NOT NULL,
FOREIGN KEY (store_id) REFERENCES sales.storenew(store_id)
)

SELECT * FROM [AdventureWorks2016].[sales].[visits]

-- Create temp table syntax
-- Method 1
SELECT [column_1], [column_2], [column_3]
INTO [#temptablename]
FROM [schema_name].[table_name]
WHERE {condition}

SELECT BusinessEntityID, firstname, lastname
INTO #TempPersonTable
FROM [Person].[Person]
WHERE title = 'mr.'

SELECT BusinessEntityID, firstname, lastname, Title
FROM [Person].[Person]
WHERE title = 'mr.'

SELECT * FROM #TempPersonTable

DROP TABLE #TempPersonTable

-- Method 2
CREATE TABLE [#temptablename] (
	[column_1], [column_2], [column_3]
	)
	INSERT INTO [#temptablename]
	SELECT [column_1], [column_2], [column_3]
	FROM [schema_name].[table_name]
	WHERE {condition}

CREATE TABLE #TempPersonTable(
BusinessEntityID INT,
firstname NVARCHAR(50),
lastname NVARCHAR(50),
Title NVARCHAR(50)
)
INSERT INTO #TempPersonTable
SELECT BusinessEntityID, firstname, lastname, Title
FROM [Person].[Person]
WHERE title = 'mr.'

SELECT * FROM #TempPersonTable

DROP TABLE #TempPersonTable