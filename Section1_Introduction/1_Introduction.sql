/*
Database
- Data
    - Collection of facts, such as numbers, words, measurements observations or just descriptions of things.
    - i.e. Name, age, height weight etc. Are some data related to someone.
    - Apicture, image, file, pdf rtc. can also be considered data.

- Base
    - System, foundation, hub, central location where all the data come together.

- Database
    - An organized and systematic collection of data generally stored and accessed electronically from a computer system. Databases make data management eay.

Question
- Data can be stored in a spreadsheet or a text document as well so why do we need a database.

    - Databases store information more effeciently, databases can handle volumes of information that would be unmanageable in a spreadsheet.
    - Spreadsheet have record limitations whereas databases do not.
    - Compared to databases, spreadsheets can require a large amount of hard-drive space for data storage.
    - Joining records is a lot easier in DB than compared to text or spreadsheet.

- RDBMS
    - Relational database management system.
    - Relational database is a type of database. 
        - It uses a structure that allows us to identify and access data in relation to another piece of data in the database. Often, data in a relational database is organized into tables.

- SQL 
    - Structured Query Language is a command line programming language used to communicate with  data stored in a relational datase management system.
    - Syntanx is similar to the english language, which meakes it relatively easy to read, write, update or translate data.

    History:
        - Invented 1970 by IBM.
        - First version was call SEQUEL (Structured English Query Language). Later was changed to SQL because SEQUEL was already trademarked by an airline company.

*/

/*
Top 5 RDBMS using SQL

- ORACLE DB
    - Database product by oracle and its enterprise verion was released in 1979.
    - Database commonly used for running online transaction processing, data warehousing and mixed database workloads.
    - Oracle is one of the biggest vendor in the IT market.

- Microsoft SQL Server
    - MS SQL Server is a relational database server by Microsoft.
    - First version was released 1988.
    - It's among the most stable, secure reliable database solutions.
    - Support wide variety of transaction processing, analytics, and business intelligence applications in corporate IT environment.
    - Competes primarily against oracle DB and IBM DB2.

- MYSQL
    - Swedish company called MySql AB orginally developed MySql in 1994.
    - Community developed open sourse and its first version was release in 1995.
    - US Tech company Sun MicroSystems then took full ownership when they bought MySql AB in 2008.
    - US Tech Giant Oracle 2009 acquired Sun MicroSystems itself, and MySql has been practically owned by Oracle since.
    - Even though MySql is open source software, you can buy a commercial license version from Oracle to get premium support services.
    - Main advantages: Easy to use, inexpensive, reliable (has been around since 1995), has a large community of developers who can help answer questions.

- PostgreSQL
    - Community developed open source, first version in 1987.
    - Originally named Postgres, refeting to its origins as successor to the Ingres databse developed at the university of California, Berkeley.
    - 1996 project renamed to PostgreSQL to reflect its support for SQL.
    - After a review in 2007 development team decided to keep the name PostgreSQL.

- MariaDB
    - Community developed open source and 2009 first verion was released.
    - Development is led by some of the original developers of MySql, who forked it due to concerns over its acquisition by Oracle corporation in 2009.
    - Named after Monty's younger daughter, Maria.

*/

/*
Introduction to MS SQL Server
- Suite of database software published by Microsoft and used entensively in enterprise world.

- Includes: 
    - Relational database engine.
        - Stores data in tables, columns and rows.
    
    - Integration Services (SSIS)
        - Data movement tool for importing, exorting and transforming data.

    - Reporting Services (SSRS)
        - Used to create reports and serve reports to end users.

    - Analysis Services (SSAS)
        - Multidimensional database used to query data from the main database engine.

        Pros:
            - Various supported editions.
            - Online product documentation. 
            - Microsoft premier support.
            - On-Premier and cloud database support.
            - Plenty of tools and applications.
            - Support for use on Linux.

        Cons:
            - Expensive enterprise edition.
            - Difficult licensing process that's always changing.
*/

/*
Editions of MS SQL Server

- Enterprise:
    - Comprehensive high-end data center capabilities.
    - Fast performance.
    - Unlimited virtualization.
    - End-to-end business intelligence enabling high service levels for mission critical workloads.
    - End-to-tnd access to data insights.
    - For large organisations.

- Standard:
    - Basic data management.
    - Business intelligence data for department.
    - And small organization to sun applications.
    - Supports common development tools for on-premise and cloud enabling effective database managment with minimal IT resources.

- Web:
    - Low total cost of ownership option for web hosting companies.

- Developer:
    - Let developers build any kind of application on top of SQL server.
    - Includes all functionality of enterprise edition.
    - Licensed for use as development and system testing. Not for prodution server.
    - Ideal for building and testing applications.

- Express:
    - Entry elvel, free database.
    - Ideal for learning, building desktop and small server data-driven applications.
    - Best for independant software vendors, developers adn hobbyists. Building client applications.
    - Can be seamlesly upgraded to other higher end versions of SQL server if you need more advanced FB features.
    - SQL server exress LocalDB is a light weight version of express that has all of its programming features.
        - Run in user mode.
        - Has a fast zero-configuration.
        - And short list of pre-requisites.

*/