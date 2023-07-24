-- #region Stored Procedure Statment

    -- Syntax
    CREATE PROCEDURE [procedure_name]
    AS
    [sql_statment]
    GO

    EXEC [procedure_name] -- To execute a stored procedure

    CREATE PROCEDURE [procedure_name] [@param1] [type], [@param2] [type]
    AS
    [sql_statment]
    GO

    EXEC [procedure_name] [param1], [param2]


    -- Practical
    CREATE PROCEDURE [SelectAllPersonAddress]
    AS
    SELECT * FROM [Person.Address]
    GO

    EXEC [SelectAllPersonAddress]

    CREATE PROCEDURE [SelectAllPersonAddress] [@City] NVARCHAR(30)
    AS
    SELECT * FROM [Person.Address] WHERE [City] = [@City]
    GO

    EXEC [SelectAllPersonAddress] [@City] = 'New York'
    EXEC [SelectAllPersonAddress] 'New York' -- without using paramemer name, use comma for multiple paramers
-- #endregion