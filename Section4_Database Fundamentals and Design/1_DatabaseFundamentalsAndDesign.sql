/*
What is data?
- Collection of facts, such as numbers, words, measurements, observations or just descriptions of things.

Raw data?
- Needs to be proccsseed to give it meaning.

Information?
- Proccessed data which have meaning.

Data in the contex of databses?
- Refers to all the single items that are stored in a database, either individually or as a set.

What is database?
- Organized collection of data structure information, or dta, typically stored electronically in a computer system.
- Usually controlled by a DBMS (Database Management System).

Difference between a database and spreadsheet?
- How the data is stored and manipulated.
- Who can access the data.
- How much data can be stored.

How data is stored?
- Data is stored in tables.
- Structured Query Language.
- Data has to be stored in a standadized manner.
- Data is stored in a database in tables, but tables are not the dtabase.
- Tables are the simplest object for data storage in a database.
- Table column stores specific data type.
- Table row or record.

TABLES | COLUMNS | ROWs

Tables?
- Relational database system contains one or more objects called tables.
- The data or information for the datavase are stored in these tables.
- Tables are uniquely indentified by their names.
- The number of tables in a database is limited only by the number of objects allowed in a databse (2,147,483,647) or MSSQL.
- MySql has no limit on the number of tables.

Columns?
- Set of data values, all of a single tpe in a table.
- Define the data in a table.
- May contain text values, numbers, or even pointers to files in the operating system.
- Name (column) is unique.
- Maximum no of columns in SQL Server is 1024.
- Maximum no of columns in MySQL is 4096.
- Table need at least one column. Field = column.
- Some cases (C# fields) field is the intersection of a row and a column.

Row?
- Collection of fields that make up a record.
- Also called a record.
- Each row represents a unique record.
- A table can contain zero or more rows when there are zero, it is said to be an empty table.
- The number of rows in the table is limited only by the storage capacity of the server.

What is a key?
- Data item that exclusively identifies a record.
- Can be single attricute of a froup of attributes.
- Keys are also used to generate relationship among different database tables.

Diffferent type of keys?

Candidate key?
- An attribute or set of attributes that uniquely identifies a record.
- Table can have multiple candidate keys. Meaning we can have more than one key that serves as a candidate key i.e. StudentID and Email.
- Among the set of candidate key one candidate key is chosen as the Primary Key. Either one can be used as a primary key.

Primary Key?
- A set of one or more fields (columns) of a table that uniquely identify a record in a database table.
- A table can have only one primary key and one candidate key can be selected as a primary key.
- The primary key should be chosen such that its attributes are never or rarely changed.
- Cannot contain "NULL".
- Primary key field contain a clustered index.

Secondary key?
- Candidate key that are not selected as primary key.
- Can also work as a primary key.
- Also called alterante key.

Unique key?
- A set of one or more attributes that can be used to uniquely identify the records in a table.
- Similar to primary key but unique key field can contain a "NULL" value but primary key doesn't allow "NULL" value.
- Unique field contain a non-clustered index.

Composite key?
- Combination of more than one attribute that can be used to uniquely identify each record.



*/