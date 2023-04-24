/*
Operators, Expressions and Conditions

*/

/*
SQL Operators
- Symbols which are used to perform logical and mathematical operations.
- Three types of Operators used in SQL

    > Arithmetic Operators
        - Used to perform mathematical calculations like:
            - addition (+), subbtraction (-), multipication (*), division (/) and modulus (%).

    > Relational Operators
        - Used to find the relation beween two columns. To compare the values of two columns.
            - > (greater than), < (less than), >= (less than or equal to), <= (greater than or equal to)
            - = (equal to), != or <> (no equal to)
            - !< (not less than), !> (not greater than)

    > Logical Operators
        - Used to perform logical operations on the given expressions.
            -  AND, OR, NOT, BETWEEN...AND, IS NULL, IS NOT NULL, LIKE, UNIQUE, IN, NOT IN, etc,.

*/

/*
EXPRESSIONS
- Is a combination of one or more values, operators and SQL functions that evaluate to a value.
- These SQL EXPRESSIONs are like formulae and they are written in query language.
- You can also use them to query the database for a specific set of data.
    > SELECT column1, column2, columnN FROM table_name WHERE [EXPRESSION | CONDITION|];

Types of Expressions
    
    > SQL Boolean expressions
        - Fetch data based on one-to-one matching. In other words, we can think of it as a query that fetches one result at a time.
            - Find out employees whose age is equal to 26.
            - Query: SELECT * FROM dataflair_employee WHERE age = 26;

    > SQL Numerical expressions
        - Used to perform mathematical operations on the stored data.
            - Find employees whose age, if doubled, will be more than 50.
            - Query: SELECT * FROM dataflair_employee WHERE age*2 > 50;

    > SQL Date expressions
        - Used to compare and get data according to various date-related queries and conditions.
            - Find the employees who were born after 1995 January.
            - Query: SELECT * FROM dataflair_employee WHERE DoB > DATE('1995/01/01');
*/

/*
CONDITIONS
- Specifies a conbination of one or more expressions and logical (Boolean) operations and returns a value of TRUE, FALSE, or unknown.
    - SELECT * FROM suppliers WHERE (state = 'California' AND supplier_id <> 900) OR (supplier_id = 100);

*/