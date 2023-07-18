-- #region Update Statement

    -- Syntax
    UPDATE [table1_name]
    SET [column1] = [value1],
    [column2] = [value2],
    [columnN] = [valueN]
    WHERE [columnN]

    -- Practical
    UPDATE [staffSales] SET [SQuota] = 500000 -- all rows will be updated

    UPDATE [staffSales] SET [SQuota] = [SQuota] + 50000

    UPDATE [staffSales] SET [SQuota] = [SQuota] + 50000, 
    [SYTD] = 0, [SLastYear] = [SLastYear] * 1.05 -- update multiple columns

    UPDATE [staffSales] SET [TerritoryName] = 'UK'
    WHERE [TerritoryName] = 'United Kingdom' -- filter records to update

    UPDATE [staffSales] SET [SQuota] = [sp.SQuota]
    FROM [SalesStaff] AS [ss]
    INNER JOIN [Sales.vSalesPerson] AS [sp]
    ON [ss.FullName] = ([sp.FirstName] + ' ' + [sp.LastName]) 
    -- update records based on another tables data

-- #endregiond