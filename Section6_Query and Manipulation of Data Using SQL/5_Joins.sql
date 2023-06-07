-- Start: JOINS
 -- Syntax
 SELECT [column1], [column2], [columnN]
 FROM [table1_name]
 JOIN [table2_name]
 ON [table1_column] = [table2_column]
 WHERE [condition]

 -- Practical
 SELECT e.[EmpId], e.[EmpName], s.[SalesNumber], s.[ItemSold]
 FROM [dbo].[Employees] As e
 JOIN [dbo].[Sales] As s
 ON e.[EmpId] = s.[EmpId]
 Order By e.[EmpId]

 SELECT Count(s.[SalesNumber]) As [NoOfSales], e.[EmpId], e.[EmpName]
 FROM [dbo].[Employees] As e
 JOIN [dbo].[Sales] As s
 ON e.[EmpId] = s.[EmpId]
 Group By e.[EmpId], e.[EmpName]
-- End: Joins

-- Start: Types of Joins

 -- Start: INNER Join
  -- Returns common rows from both tables as long as the condition is satisfied.

  -- Syntax
  SELECT [table1_column], [table1_column], [table2_column]
  FROM [table1_name]
  INNER JOIN [table2_name]
  ON [table1_matchingcolumn] = [table2_matchingcolumn]

  -- Practical

 -- End: INNER Join

 -- Start: LEFT Join
  -- Return all rows from left table and matching rows from the right table
  
  -- Syntax
  SELECT [table1_column], [table1_column], [table2_column]
  FROM [table1_name]
  LEFT JOIN [table2_name]
  ON [table1_matchingcolumn] = [table2_matchingcolumn]

  -- Practical

 -- End: LEFT Join

 -- Start: RIGHT Join
  -- Return all rows from right table and matching rows from the left table
  
  -- Syntax
  SELECT [table1_column], [table1_column], [table2_column]
  FROM [table1_name]
  RIGHT JOIN [table2_name]
  ON [table1_matchingcolumn] = [table2_matchingcolumn]

  -- Practical

 -- End: RIGHT Join

 -- Start: FULL Join
  -- Return all rows from both tables

  -- Syntax
  SELECT [table1_column], [table1_column], [table2_column]
  FROM [table1_name]
  FULL JOIN [table2_name]
  ON [table1_matchingcolumn] = [table2_matchingcolumn]


  -- Practical


 -- End: FULL Join

-- End: Types of Joins



