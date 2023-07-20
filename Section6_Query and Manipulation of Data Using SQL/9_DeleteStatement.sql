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

    -- In production environment use a transaction to delete
    -- deletes the records from the table but does not commit it to memory
    BEGIN TRAN
    DELETE FROM [SalesStaff] 
    WHERE [CountyRegion] = 'united states'
    -- meaning if something was wrong with the query above
    -- we can do the following
    ROLLBACk TRAN
    -- rolls back the deleted records

    -- if you are happy with the query you can run the commit without the rollback tran
    COMMIT -- to complete the delete when using the begin tran keyword

-- #endregion