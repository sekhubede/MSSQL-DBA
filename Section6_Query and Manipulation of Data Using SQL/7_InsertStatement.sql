-- #region Insert Statement

    -- Syntax
        -- INSERT statement to add data that you specifically define
        -- Can add data that you retrieve from other tables or views
        -- OUTPUT clause in your INSERT statement to capture the statement's results for auditing or verfication purposes
    INSERT INTO [table1_name]
    (
        [column1],
        [column2],
        [columnN]
    )
    VALUES
    (
        [value1],
        [value2],
        [valueN]
    )

    -- Practical
        -- Method 1
        INSERT INTO [SalesStuff]
        ([staffId],[fName], [lName])
        VALUES
        (100,'Kogn','King')

        -- Method 2
            -- When populating all the columns you do not have to specify the fields
        INSERT [SalesStuff]
        VALUES 
        (200, 'Michael', 'Blythe'),
        (300, 'Linda', 'Mitchell');

-- #endregion

-- #region Inserting From Other Tables

    -- Syntax
        -- Method 1
    INSERT [table1_name]
    (
        [value1],
        [value2]
    )
    SELECT [value11], [value12]
    FROM [table2_name]
    WHERE [columnN]

        -- Method 2
            -- SELECT * INTO statement creates a new table and inserts rows from the query into it
    SELECT [select_list] INTO [destination] FROM [source] WHERE [columnN]

    -- Practical
    SELECT * INTO [marketing.customers] FROM [sales.customers]

-- #endregion

