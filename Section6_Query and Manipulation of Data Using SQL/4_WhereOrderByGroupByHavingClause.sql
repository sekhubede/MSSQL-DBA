/*
Theory:

WHERE Clause
- Used to specify a condition while fetching the data from a single table or by joining with multiple tables.
- To filter the records and fetching only the necessary records.
- Not only used in the ELECT statement, but it is also used in the UPDATE, DELETE statement, etc.

*/
-- Syntax
SELECT [column1], [column2], [columnN]
FROM [table_name]
WHERE [condition]

-- Practical

/*
Theory:

ORDER BY Clause
- Used to sort the data in ascending or descending order, based on one or more columns.
- Some databases sort the query results in an ascending order by default.

*/
-- Syntax
SELECT [column-list]
FROM [table_name]
WHERE [condition]
ORDER BY [column1], [column2], [columnN] [ASC | DESC]

-- Practical

/*
Theory:

GROUP BY Clause
- Used in collaboration with the SELECT statement to arrange identical data into groups.
- like "find the number of customers in each country"
- Often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.
- Follows the WHERE clause in a SELECR statement and precedes the ORDER BY clause.

*/
-- Syntax
SELECT [column1], [column2]
FROM [table_name]
WHERE [conditions]
GROUP BY [column1], [column2]
ORDER BY [column1], [column2]

-- Practical

/*
Theory:

HAVING Clause
- Enables you to specify conditions that filter which group results appear in the results.
- The WHERE clause places conditions on the selected columns.
- Whereas the HAVING clause places conditions on groups created by the GROUP BY clause.
- HAVING clause must follow the GROUP BY clause in a query and must also precede the ORDER BY clause if used.

*/ 
-- Syntax
SELECT [column1], [column2]
FROM [table_name]
WHERE [conditions]
GROUP BY [column1], [column2]
HAVING [conditions]
ORDER BY [column1], [column2]

-- Practical