--1
select min(Price) from Products

--2
select max(Salary) from Employees

--3
select count(*) from Customers

--4
select count(distinct Category) 
from Products

--5
select sum(SaleAmount) from Sales
where ProductID=7

--6
select avg(age) from Employees

--7
select DepartmentName, count(*) as Number_of_Employees from Employees
group by DepartmentName

--8
select Category, min(price) as Min_Price, max(price) as Max_Price from Products
group by Category

--9
select CustomerID, sum(SaleAmount) as Total_Sales from Sales
group by CustomerID

--10
select DepartmentName, count(*) as Qnt_Employee  
from Employees
group by DepartmentName
having count(*)>5

--11
select ProductID, sum(SaleAmount) as Total_Sales, avg(SaleAmount) as Avg_Sales
from Sales
group by ProductID

--12
select count(*)
from Employees
where DepartmentName='HR'

--13
select DepartmentName, min(Salary) as Min_Salary, max(Salary) as Max_Salary
from Employees
group by DepartmentName

--14
select DepartmentName, avg(salary) as Avg_Salary
from Employees
group by DepartmentName

--15
select DepartmentName, avg(salary) as Avg_Salary, count(*) as Qty_Emp
from Employees
group by DepartmentName

--16
select Category, avg(price) as Average_price
from Products
group by Category
HAVING avg(Price) > 400

--17
select SaleDate, sum(SaleAmount) as TotalSales
from Sales
group by SaleDate

--18
select CustomerID, count(Quantity) from Orders
group by CustomerID
having count(Quantity)>=3

--19
select DepartmentName, avg(Salary) from Employees
group by DepartmentName
having avg(salary)>60000 

--20
select Category, avg(price) as avg_salary from Products
group by Category
having avg(price)>150 
order by avg_salary asc

--21
select CustomerID, sum(TotalAmount) as TotalSales from Orders
group by CustomerID
having sum(TotalAmount)>1500

--22
select DepartmentName, sum(Salary) as TotalSalary, avg(Salary) as AvgSalary from Employees
group by DepartmentName
having avg(salary)>65000

--24
select Year(OrderDate) as OrderYear, Month(OrderDate) as OrderMonth, sum(TotalAmount) as Total, count(distinct ProductID) as UniqueProductSold from Orders
group by Year(OrderDate), Month(OrderDate)
having count(distinct ProductID)>2

--25
select year(OrderDate) as OrderYear, min(Quantity) as MinQuantity, max(Quantity) as MaxQuantity from Orders
Group by year(OrderDate) 
