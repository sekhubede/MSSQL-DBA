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
 --
-- End: Types of Joins



