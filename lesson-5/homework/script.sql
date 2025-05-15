--1
select ProductName as 'Name' from Products

--2
select* from Customers as Client

--3
select ProductName from Products
union 
select ProductName from Products_Discounted

--4
select ProductName from Products
intersect 
select ProductName from Products_Discounted

--5
select distinct FirstName, Country
from Customers

--6
select*, case when price>1000 then 'High'
			        when price<=1000 then 'Low' 
			        end as Conditions
from Products 

--7
select*, IIF (StockQuantity>100, 'Yes','No') as Status
from Products_Discounted

--8
select ProductName from Products
union 
select ProductName from Products_Discounted

--9
select* from Products
except
select* from Products_Discounted

--10
select*, IIF (Price>1000, 'Expensive', 'Affordable') from Products

--11
select* from Employees
where Age<25 or Salary>60000

--12
update Employees
set Salary=0.1*Salary
from Employees
where DepartmentName='HR' or EmployeeID=5

--13
select*, case when SaleAmount>500 then 'Top Tier'
			  when SaleAmount between 200 and 500 then 'Mid Tier'
			  else 'Low Tier' 
			  end as Tiers
from Sales

--14
select CustomerID from Orders
except
select CustomerID from Sales

--15
select CustomerID,Quantity, case when Quantity between 1 and 3 then 3
			  when Quantity between 2 and 3 then 5
			  else 7
			  end as Discount_Persentage
from Orders
