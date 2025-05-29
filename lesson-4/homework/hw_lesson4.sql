--task1
select top 5 * from Employees

--task2
select distinct Category from Products

--task3
select * from Products
where Price > 100

--task4
select * from Customers
where FirstName like 'A%'

--task5
select * from Products
order by Price asc

--task6
select * from Employees
where Salary > 60000 and DepartmentName = 'HR'

--task7
select Email, ISNULL(email, 'noemail@example.com') from Employees

--task8
select * from Products
where Price between 50 and 100

--task9
select distinct Category, ProductName from Products

--task10
select distinct Category, ProductName from Products
order by ProductName desc

--task11
select top 10 * from Products
order by Price desc

--task12
select FirstName, LastName, coalesce(FirstName, Lastname) from Employees

--task13
select distinct Category, Price from Products

--task14
select * from Employees
where Age between 30 and 40 or DepartmentName = 'Marketing'

--task15
select * from Employees
order by Salary desc offset 10 rows fetch next 10 rows only

--task16
select * from Products
where Price <= 1000 and StockQuantity >50
order by StockQuantity asc

--task17
select * from Products
where ProductName like '%e%'

--task18
select * from Employees
where DepartmentName in ('IT','HR','Finance') 
order by DepartmentName, Salary desc

--task19
select * from Customers
order by City asc, PostalCode desc

--task20
SELECT TOP 5 * FROM Sales
ORDER BY SaleAmount DESC

--TASK21
SELECT FirstName + ' ' + LASTNAME AS FullName FROM Employees

--task22
select distinct Category, ProductName, Price from Products
where Price > 50

--task23
select * from Products
where Price < (select AVG(Price) * 0.1 from Products)

--task24
select * from Employees
where Age < 30 and DepartmentName in ('IT', 'HR')

--task25
select * from Customers
where Email like ('%@gmail.com')

--task26
SELECT * FROM Employees
WHERE Salary > ALL (
  SELECT Salary FROM Employees
  WHERE DepartmentName = 'Sales'
)

--task27
select * from Orders
where OrderDate between dateadd(day,-180, (select MAX(OrderDate) from Orders)) and (select MAX(OrderDate) from Orders)

