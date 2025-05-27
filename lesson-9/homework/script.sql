--1
select b.ProductName, a.SupplierName from Suppliers as a
cross join Products as b
where a.SupplierID=b.SupplierID 
--2
select a.Name, b.DepartmentName from Employees as a
cross join Departments as b
where a.DepartmentID=b.DepartmentID
--3
select a.ProductName, b.SupplierName from Products as a
join Suppliers as b
on b.SupplierID=a.SupplierID
--4
select a.OrderID, b.FirstName from Orders as a
join Customers as b
on a.CustomerID=b.CustomerID
--5
select a.CourseName, b.Name from Courses as a
cross join Students as b
--6
 select a.ProductName, b.Quantity from Products as a
 join Orders as b
 on a.ProductID=b.ProductID
--7
select b.Name, a.DepartmentName from Departments as a
join Employees as b
on a.DepartmentID=b.DepartmentID
--8
select a.name, b.enrollmentid from students as a
join Enrollments as b
on a.StudentID=b.StudentID
--9
select b.OrderID, a.PaymentID, a.Amount from Payments as a 
join Orders as b
on a.OrderID=b.OrderID
--10
select b.ProductName, b.Price from Orders as a
join Products as b
on a.ProductID=b.ProductID
where b.Price>100
--11
select a.Name, b.DepartmentName from Employees as a
join Departments as b
on a.DepartmentID<>b.DepartmentID
--12
select* from Orders as a
join Products as b
on a.Quantity>b.StockQuantity
--13
select a.FirstName, b.ProductID, b.SaleAmount from Customers as a
join Sales as b
on a.CustomerID=b.CustomerID
where b.SaleAmount>=500
--14
select c.Name, a.CourseName from Courses as a
join Enrollments as b
on a.CourseID=b.CourseID
join Students as c
on b.StudentID=c.StudentID
--15
select a.ProductName,b.SupplierName from Products as a
join Suppliers as b
on a.SupplierID=b.SupplierID
where b.SupplierName like'%Tech%'
--16
select a.OrderID,a.TotalAmount,b.Amount from Orders as a
join Payments as b
on a.OrderID=b.OrderID
where b.Amount<a.TotalAmount
--17
select a.Name,b.DepartmentName from Employees as a
join Departments as b
on a.DepartmentID=b.DepartmentID
--18
select* from Products as a
join Categories as b
on a.CategoryID=b.CategoryID
where b.CategoryName in ('Electronics','Furniture')
--19
select a.SaleID,a.SaleAmount,b.FirstName,b.LastName,b.City,b.Country from Sales as a
join Customers as b
on a.CustomerID=b.CustomerID
where b.Country='USA'
--20
select b.FirstName, b.LastName, b.Country, a.TotalAmount from Orders as a
join Customers as b
on a.CustomerID=b.CustomerID
where b.Country='Germany' and a.TotalAmount>100
--22
select a.PaymentID, a.OrderID,a.Amount,b.Quantity, c.Price, (b.Quantity*c.Price) as ExpectedAmount from Payments as a
join Orders as b
on a.OrderID=b.OrderID
join Products as c
on b.ProductID=c.ProductID
where a.Amount<>(b.Quantity*c.Price)
--23
select a.StudentID, a.Name from Students as a
left join Enrollments as b
on a.StudentID=b.StudentID
left join Courses as c
on b.CourseID=c.CourseID
where c.CourseID is null
--24
select a.EmployeeID as ManagerID, a.Name as ManagerName, a.Salary as ManagerSalary,
b.EmployeeID as EmployeeID, b.Name as EmployeeName, b.Salary as EmployeeSalary  from Employees as a
join Employees as b
on a.EmployeeID=b.ManagerID
where a.Salary<=b.Salary
--25
SELECT DISTINCT
    c.CustomerID,
    c.CustomerName
FROM 
    Customers AS c
JOIN 
    Orders AS a ON c.CustomerID = a.CustomerID
LEFT JOIN 
    Payments AS b ON a.OrderID = b.OrderID
WHERE 
    b.PaymentID IS NULL;
