create database homework2
use homework2
--BASIC LEVEL TASKS
--1
create table Employees 
(EmpID INT, 
Name varchar(50),
Salary Decimal (10,2))
select * from Employees
--2
insert into Employees values (1,'Lobar',1.500)
insert into Employees values
(2,'Sanjar',2000.00),
(3,'Khalid',2500.00)
--3
update Employees
set salary=1500.00
where EmpID=1
select * from Employees
--4
delete from Employees
where EmpID=2

--5
--delete
delete from Employees
where EmpID=3
-- as it can be seen above "delete" is used to delete entire row
--truncate 
truncate table Employees 
select * from Employees
--truncate is DDl command, and it is used to remove all the records in the table
--drop
drop table Employees
-- drop is DDL command, and is used to delete the entire table
--6
create table Employees 
(EmpID INT, 
Name varchar(50),
Salary Decimal (10,2))
select * from Employees
alter table Employees
alter column name varchar (100)
--7
alter table Employees
add Department varchar(50)
select * from Employees
--8
alter table Employees
alter column Salary float
--9
create table Departments (
DepartmentID int not null primary key,
DepartmentName varchar(50))
--10
delete Departments
select *from Departments
--11
create table Employees 
(EmpID INT, 
Name varchar(50),
Salary Decimal (10,2))
select*from Employees
insert into Employees values
(1,'Lobar', 1500),
(2,'Sanjar',1500),
(3,'Khalid',2000),
(4,'Sevara',1500),
(5,'Charos',1500)
create table Departments1 (EmpID INT, 
Name varchar(50),
Salary Decimal (10,2))
insert into Departments1 (EmpID, Name, salary)
select EmpID, Name, Salary
from Employees
select* from Departments1
--12
create table Department (EmpID int, EmpName varchar (50), Salary money, DepName varchar (50))
insert into Department values 
(1,'Lobar', 3500, 'Accounting'),
(2,'Sanjar',4000, 'Audit'),
(3,'Khalid',2500, 'FI'),
(4,'Sevara',3700, 'Lending'),
(5,'Charos',5000, 'Retail')

update Department
set Depname='Management'
where Salary>3000

select* from Department

--13
alter table Department
drop column EmpName
select* from Department
--14
create table Employees 
(EmpID INT, 
Name varchar(50),
Salary Decimal (10,2), DepName varchar (50))

insert into Employees values
(1,'Lobar', 1500, 'Accounting'),
(2,'Sanjar',1500, 'FI'),
(3,'Khalid',2000, 'Retail'),
(4,'Sevara',1500, 'Lending'),
(5,'Charos',1500, 'IFRS')
alter table Employees
drop column DepName
select *from Employees
--15
--Database-Homework2-Tables-Employees (right click)- choose rename option
--16
drop table Departments
select * from Departments
--17
create table Products (ProductID INT Primary Key, ProductName VARCHAR (50), Category VARCHAR (50), Price DECIMAL)
select * from Products
--18
alter table Products
add check (Price>0)
--19
alter table Products
add StockQuantity int 

alter table Products
add constraint df_StockQuantity
default 50 for StockQuantity
--20
alter table Products
rename column Category to ProductCategory
--21
 insert into Products values 
 (1, 'A', 'dresses', 1000, 3),
 (2, 'B', 'shoes', 1500, 5),
 (3, 'C', 'sunglasses', 500, 2),
 (4, 'D', 'jeans', 5000,10),
 (5, 'E', 'acsessuars', 10000, 20)
 select* from Products
--22
create table Products_Backup (ProductID INT Primary Key, ProductName VARCHAR (50), Category VARCHAR (50), Price DECIMAL, StockQuantity int)
insert into Products_Backup (ProductID, ProductName, Category, Price, StockQuantity)
select ProductID, ProductName, Category, Price, StockQuantity
from Products
select * from Products_Backup
--23
--Database-Homework2-Tables-Products (right click)- choose rename option
--24
