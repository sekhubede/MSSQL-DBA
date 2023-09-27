/*
Types of SQL Statments
- DML, DDL, DCL, TCL

DML (Data Manipulation Language)
- Deals with data manipulation includes most common SQL statements such as:
    > SELECT
    > INSERT
    > UPDATE
    > DELETE etc.
- Used to store, modify, retrieve, delete and update data in a database.

    INSERT
    - Insert a set of values into a database table.
    >   INSERT INTO Student (Rank, StudentName, Mark) VALUES (1, 'Abbas', 450)

    UPDATE
    - Update existing values in datavase based on some condition.
    >   UPDATE Student SET StudentName = 'Abbas' WHERE StudentName = 'Imran'

    DELETE
    - Delete existing record in table based on some condition.
    >   DELETE FROM Student WHERE StudentName = 'Abbas'

DDL (Data Definition Language)
- Deals with database schemas and descriptions.
- How data should reside in database.
- CREATE, ALTER, DROP, TRUNCATE.

    CREATE
    - Used to create:
        - New table in an existing db.
        - Other db objects such as stored procedure, functions, etc.
    >   CREATE TABLE Strudent (Rank Int, StudentName VARCHAR(50), Mark Float)

    ALTER
    - Can add, modify, drop, rename columns.
    - Rename table and other objects in db.
    >   ALTER TABLE Student ADD (StudentAddress VARCHAR(100))

    DROP
    - Remove table definition and all the data indexes, triggers, constraints and permission specifications for the table.
    >   DROP TABLE Student
    >   DROP DATABASE AdventureWorks

    TRUNCATE
    - Remove all rows from a table without logging the individual row deletions.
    - Once truncate is done no way to recover the data.
    - Truncate over delete to remove records as quick as possible.
    - No WHERE clause to specify a row to truncate, it truncates entore table.
    >   TRUNCATE TABLE Table_Name

DCL (Data Control Language)
- Defines user control over data in the database.
- i.e. GRANT and REVOKE

    GRANT Statement
    - Used to grant SQL SELECT, UPDATE, INSERT, DELETE, and other priviledges on tables or views.
    >   GRANT UPDATE ON ORDER_BACKLOG TO JONES WITH GRANT OPTION
    >   GRANT SELECT ON TABLE Q.STAFF TO PUBLIC

    REVOKE
    - Used to cancel previously granted or denied premissions.
    >   REVOKE DELETE ON employees FROM anderson;
    >   REVOKE ALL ON employees FROM anderson;

TCL (Transaction Control Language)
- Used to manage the transactions in the database
- Manage the changes made by DML statements.
- Also allows the statements to be grouped together into logical transactions.

    COMMIT Statement
    - Used to permanently save any transaction into the database
    - When we use commit in any query then the change made by that query will be permanent and visible.
    >   BEGIN TRAN d
        UPDATE emp SET empName = 'D' WHERE empid = 11
        COMMIT TRAN d

    ROLLBACK Statement
    - Used to undo changes made by any command but only before a commit is done.
    - We can't rollback data which has been committed in the database with the help of the commit keyword.
    >   DECLARE @BookCount int
        BEGIN TRANSACTION AddBook
        INSERT INTO Books VALUES (20,'Book15','Cat5',2000)
        SELECT @BookCount = COUNT(*) FROM Books WHERE name = 'Book15'
        IF @BookCount > 1
        BEGIN
        ROLLBACK TRANSACTION AddBook
        PRINT 'A book with the same name alreaady exists'
        END
        ELSE
        BEGIN
        COMMIT TRANSACTION AddBook
        PRINT 'New book added successfully'
        END

    SAVEPOINT Statement
    - Used to temporarily save a transaction so that you can roll back to that point whenever necessary.
    - Savepoint names must be distict within a given transaction.
    - After savepoint has been created, you can wither continue processing, commit your work, roll back the entire transaction or roll back to the savepoint.
    >   UPDATE employees SET salary = 7000 WHERE last_name = 'Banda';
        SAVEPOINT banda_sal;
        UPDATE employees SET salary = 12000 WHERE last_name = 'Greene';
        SAVEPOINT greene_sal;
        SELECT SUM(salary) FROM employees;
        ROLLBACK TO SAVEPOINT banda_sal;
        UPDATE employees SET salary = 11000 WHERE last_name = 'Greene';
        COMMIT;
*/
