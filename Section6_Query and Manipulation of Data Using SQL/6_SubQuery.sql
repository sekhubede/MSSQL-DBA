-- Start: Sub Query

    -- Syntax
        -- Nested query, inner query and embeded within the where
        -- Must be enclosed within parantheses
        -- Can have only one column in the SELECT clause, 
        -- unless multiple columns are in the main query for the subquery to compare its selected
    SELECT [column1], [column2], [columnN]
    FROM [table1_name]
    WHERE (SELECT [column1]
            FROM [table2_name]
            WHERE [conditionN])

    -- Practical
    SELECT TOP (1000) [BusinessEntityID]
            ,[RateChangeDate]
            ,[Rate]
            ,[PayFrequency]
            ,[ModifiedDate]
        FROM [AdventureWorks2016].[HumanResources].[EmployeePayHistory]
        WHERE [BusinessEntity] 
        IN 
            (
                SELECT [BusinessEntityID] 
                FROM [HumanResources].[EmployeePayHistory]
                WHERE [Rate] > 50.00
            )

-- End: Sub Query