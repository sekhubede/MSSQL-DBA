-- #region Function

    -- Theory
        -- Function must return a value but in Stored Procedure it is optional
        -- Function can have only input parameters whereas Procedures can have input or output parameters
        -- Functions can be called form Procedure whereas Procedures cannot be called from a Function
        -- Procedure allow SELECT as well as DML(InSERT/UPDATE/DELETE) statement in it whereas Function allows only SELECT statement in it
        -- Exception can be handled by try-catch block in a Procedure whereas try-catch block cannot be used in a Function
        -- Transactions can be used in Procedure whereas we can't use Transactions in Functions
        
        -- Built-In Functions
            -- Scalar Function: Scalar functions operate on a single value and return a single value
                -- upper('dotnet'), lower('DOTNET'), convert(int, 15.56)

            -- Aggregate Functions: Aggregate functions operate on a collection of values and return a single value
                -- max(), min(), avg(), count()

            -- Date Time Functions: Related to date and time
                -- GETDATE(), Datediff(), DateAdd(), Day(), Month(), Year()

        -- User-Fefined Functions
            -- Scalar Function: The uer-defined scalar function also returns a single value as a result of actions performed by the function

            -- Inline Table-Valued Function: The user-defined inline table-valued function returns a table variable as a result of actions performed  by the function

            -- Multi-Statment Table-Valued Function: A user-defined multi-statment table-valued functoin returns a table variable as a result of actions performed by the function. In this, a table variable must be explictly declared and defined whose value can be derived from multiple SQL statments

    -- Syntax
    CREATE FUNCTION [database_name] [function_name] (parameters) -- database name is optional
        RETURNS [data_type] AS
        BEGIN
        [sql_statments]
        RETURN [value]
        END

    -- Practical
    CREATE FUNCTION fnGetEmpFullName(@FirstName VARCHAR(50), @LastName VARCHAR(50))
    RETURNS VARCHAR(101) AS
    BEGIN
    RETURN (SELECT @FirstName + ' ' + @LastName);
    END

    SELECT dbo.fnGetEmpFullName(FirstName, LastName) as FullName, Salary FROM [TableName]
-- #endregion