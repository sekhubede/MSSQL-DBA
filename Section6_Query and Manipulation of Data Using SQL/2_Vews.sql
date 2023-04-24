/*
Create a view
*/

-- View syntax
CREATE VIEW [view_name] AS
    SELECT [column_1], [column_2], [column_3] ...
    FROM [table_name]
    WHERE {conditions}

CREATE VIEW EmployeeRecords AS
SELECT Person.Person.Title, Person.Person.FirstName, Person.Person.LastName,
        Person.PersonPhone.PhoneNumber,
        Person.PhoneNumberType.Name
FROM Person.Person INNER JOIN
        Person.PersonPhone ON Person.Person.BusinessEntityID = Person.PersonPhone.BusinessEntityID INNER JOIN
        Person.PhoneNumberType ON Person.PersonPhone.PhoneNumberTypeID = Person.PhoneNUmberType.PhoneNumberTypeID
WHERE (Person.Person.Title = 'Mr.')