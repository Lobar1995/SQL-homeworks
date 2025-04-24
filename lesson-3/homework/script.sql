--1 
--Bulk insert is used to import csv and text format files into SQL Server. Also, by using bulk insert query
--it is possible to automate certain command/process. However, the same can be done by graphical way but
--graphical way cannot be automated and so it is required to do it always manually.
--2 
--First of all, in order to import any data from external dabases into sql server, it is required to create the condition as in its 
--primary source and only then it will be possible to import such files as follows:
--csv, excel, text and flat files
-- 3 
create table Products (
ProductID INT Primary Key,
ProductName varchar (50),
Price decimal (10,2))

select* from Products

--4 
insert into Products (ProductID, ProductName, Price) values 
(1, 'Apple', 1000),
(2, 'Orange', 1500),
(3, 'Banana', 1700)

select* from Products

--5 
--NUll is when data is not available, and hereby by default a row illustrates null
create table Products_null (ProductID int, ProductName varchar (20))
insert into Products_null values 
(null, 'Apple'),
(2, 'Orange'),
(3, null)
--Not null is constraint which is required to state as 'not null' in case if user does not want to get null information.
--Therefore, the information is to be clearly stated in a table.
create table Products_not_null (ProductID int not null, ProductName varchar (20) not null)
insert into Products_not_null values 
(null, 'Apple'),
(2, 'Orange'),
(3, null)
--As it can be seen above due to the stated 'not null' constraint earlier, columns do not allo nulls.
insert into Products_not_null values 
(1, 'Apple'),
(2, 'Orange'),
(3, 'Banana')
select* from Products_not_null

--6 
drop table Products
create table Products (
ProductID INT Primary Key,
ProductName varchar (50) unique,
Price decimal (10,2))

--7 
-- Comment is to be stated in order to make a project easy to follow/understant/proceed by any other user
--8 
create table Categories (
CategoryID int primary key,
CategoryName varchar (70) unique);
--9 
--Identity is usually applied for IDs because if it is shown
--as ID INT Identity (1,1) by default it is meant than ID starts with 1 and proceeds as 2,3, and so on. 
--If for example it is stated as ID int identity (300,5), it would meant that ID looks like 300, 305, 310 and so on.
--10 
drop table Products
create table Products (
id int,
first_name varchar (50),
last_name varchar (70),
email varchar (70),
gender char(1));
bulk insert Products from 'C:\Users\Lobar Tuxtayeva\Desktop\Products.csv.csv'
with (
firstrow=2,
fieldterminator=',',
rowterminator='\n')

--11 
select * from Categories
drop table Products
create table Products (
ProductID INT Primary Key,
ProductName varchar (50) unique,
Price decimal (10,2), categoryID int foreign key references categories (CategoryID))
select *from Products
--12 
--Primary key at once can be both unique and not null. 

--13 
drop table Products
create table Products (
ProductID INT Primary Key,
ProductName varchar (50),
Price decimal (10,2) check (price>0))

--14 
alter table Products
add Stock int not null
select* from Products

--16 
--The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.
-- A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.

--17 
create table Customers (
ID int,
Name varchar(20),
age int check (age>=18));
--18 
create table identity_check (
ID int identity (100,110),
name varchar (20));
--19 
create table OrderDetails (
ID int primary key,
name varchar (20));
--21 
create table Employees (
EmpID int primary key,
Email varchar (50) unique);

