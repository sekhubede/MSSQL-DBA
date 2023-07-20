-- #region Delete Statement

    -- Syntax
    DELETE [table_name]

    DELETE FROM [table_name] -- 'FROM' keyword is optional

    DELETE TOP (20) {PERCENT} FROM [SalesStaff]

    DELETE 

    -- Practical
    DELETE FROM [SalesStaff] -- 'FROM' keyword is optional
    WHERE [CountyRegion] = 'United States'

    DELETE [SalesStaff]
    WHERE [StaffID] IN 
    (
        SELECT [BusinessEntityID] 
        FROM [Sales.vSalesPerson]
        WHERE [SalesLastYear = 0]
    )

    DELETE [SalesStaff]
    FROM [Sales.vSalesPerson] AS [sp]
    INNER JOIN [dbo].[SalesStaff] AS [ss] ON
    [sp.BusinessEntityID] = [ss.StaffID]
    WHER [sp.SalesLastYear] = 0;


-- #endregion