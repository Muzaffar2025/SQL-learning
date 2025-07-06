--task1
select ProductName, SupplierName from Products as p cross join Suppliers as s

--task2
select Name, DepartmentName from Employees as e cross join Departments as d

--task3
select p.ProductName, s.SupplierName from Products as p inner join Suppliers as s 
	on p.SupplierID = s.SupplierID

--task4
select c.FirstName, o.OrderID from Orders o inner join Customers c on o.CustomerID = c.CustomerID

--task5
select c.CourseName, s.Name from Courses as c cross join Students as s

--task6
select p.ProductName, OrderID from Products as p inner join Orders as o on p.ProductID = o.ProductID

--task7
select e.Name, d.DepartmentID from Employees as e inner join Departments as d on e.DepartmentID = d.DepartmentID

--task8
select Name, CourseID from Students as s left join Enrollments as e on s.StudentID = e.StudentID
where e.CourseID is not null

--task9
select o.OrderID, p.PaymentID from Orders as o left join Payments as p on o.OrderID = p.OrderID
where p.OrderID is not null

--task10
select * from Orders
select * from Products

select OrderID, Price from Orders as o left join Products as p on o.ProductID = p.ProductID
where p.Price > 100

--task11
select Name, DepartmentName from Employees as e left join Departments as d on e.DepartmentID = d.DepartmentID
where d.DepartmentID is null

--task12
select * from Orders
select * from Products

select OrderID, Quantity, StockQuantity from Orders as o left join Products as p on o.ProductID = p.ProductID
where o.Quantity > p.StockQuantity

--task13
select FirstName + LastName as fullname, ProductID from Sales as s left join Customers as c on s.CustomerID = c.CustomerID
where SaleAmount > 500 or SaleAmount = 500

--task14
select * from Courses
select * from Enrollments
select * from Students

select name, c.CourseName from Enrollments as e left join Students as s on e.StudentID = s.StudentID 
												left join Courses as c on e.CourseID = c.CourseID

--task15
select ProductName, SupplierName from Products as p inner join Suppliers as s on p.SupplierID = s.SupplierID
where SupplierName like '%tech%'

--task16
select o.OrderID from Orders as o inner join Payments as p on o.OrderID = p.OrderID
where Amount < TotalAmount

--task17
select Name, DepartmentName from Employees as e inner join Departments as d on e.DepartmentID = d.DepartmentID


--task18
select * from Products as p inner join Categories as c on p.Category = c.CategoryID
where CategoryName = 'Electronics' or CategoryName = 'Furniture'

--task19
select * from Sales as s inner join Customers as c on s.CustomerID = c.CustomerID
where c.Country = 'USA'

--task20
select * from Orders as o inner join Customers as c on o.CustomerID = c.CustomerID
where Country = 'Germany' and o.TotalAmount > 100

--task21
select * from Employees

--task22
select pay.*, o.Quantity * p.Price from Orders as o inner join Products as p on o.ProductID = p.ProductID
							                        inner join Payments as pay on o.OrderID = pay.OrderID
where pay.Amount != o.Quantity * p.Price 

--task23
select * from Students as s left join Enrollments as e on s.StudentID = e. StudentID
where e.StudentID is null

--task24
select * from Employees as e join Employees as em on e.EmployeeID = em.ManagerID
where e.Salary >= em.Salary

--task25
select FirstName +' '+ LastName as not_paid from Orders as o left join Payments as p on o.OrderID = p.OrderID
							left join Customers as c on o.CustomerID = c.CustomerID
where p.OrderID is null
