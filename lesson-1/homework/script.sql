--1
Data definition or data description language (DDL) is a syntax for creating and modifying dababase objects such as tables, indices, and users.
SQL database or relational database is a collection of highly structured tables, wherein each row reflects a data entity, and every column defines a specific information field.
Tables are database objects that contain all the data in a database. In tables, data is logically organized in a row-and-column format similar to a spreadsheet. 
Each row represents a unique record, and each column represents a field in the record.
--2
Data Definition Language (DDL): SQL provides a set of commands to define and modify the structure of database, including creating tables, modifying table structure,
and dropping tables;
Data Manipulation Language (DML): SQL provides a set of commands to manipulate data within a database including adding, modifying, and deleting data;
Query Language: SQL provides a rich set of commands for querying a database to retrieve data, including the ability to filter, sort, group, and join data from multiple tables.
Transaction Control: SQL supports transaction processing, which allows users to group a set of database operations into a single transaction that can be rolled back in case
of failure.
Data Integrity: SQL includes features to enforce data integrity, such as the ability to specify constraints on the values that can be inserted or updated in a table,
and to enforce referential integrity between tables.
--3
There are possible two modes: Windows Authentication Mode and mixed mode. Windows authentication mode enables Windows Authentication and disable SQL Server Authentication.
Mixed mode enables both Windows Authentication and SQL Server Authentication.
--4
create database SchoolDB
--5
create table Student (StudentID INT PRIMARY KEY, Name VARCHAR(50), Age INT)
select* from Student
--6
SQL server is the software that handles the database and the tables.
SQL Server Management Studio is the interface between the user and the database. If you do an UPDATE statement in SSMS this will communicate to SQL server the required
action on the database and tables.
--7
DDL (Data Definition Language) -- create; alter; drop; truncate
DML (Data Manipulation Language) --select; insert; update; delete
DCL (Data Control Language) --grant; revoke
TCL (Transaction Control Language) --commit, rollback, savepoint, set transaction
--8
insert into Student values
(1, 'Lobar', 30),
(2, 'Sanjar', 35),
(3, 'Khalid', 2)
select* from Student
--9
BACKUP DATABASE [SchoolDB] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\SchoolDB.bak' WITH NOFORMAT, NOINIT,  NAME = N'SchoolDB-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
RESTORE DATABASE [SchoolDB] FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\SchoolDB.bak' WITH  FILE = 1,  NOUNLOAD,  STATS = 5
