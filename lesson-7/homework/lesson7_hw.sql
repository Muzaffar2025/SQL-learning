--task1
select MIN(Price) from Products

--task2
select MAX(Salary) from Employees

--task3
select COUNT(*) from Customers

--task4
select COUNT(distinct Category) from Products

--task5
select SUM(SaleAmount) from Sales
where SaleID = 7

--task6
select AVG(Age) from Employees

--task7
select DepartmentName, COUNT(DepartmentName) from Employees
group by DepartmentName

--task8
select Category, MIN(Price) as Min_price, MAX(Price) as Max_price from Products
group by Category

--task9
select CustomerID, SUM(SaleAmount) from Sales
group by CustomerID

--task10
select DepartmentName, COUNT(DepartmentName) from Employees
group by DepartmentName
having count(DepartmentName) > 5

--task11
select ProductID, SUM(SaleAmount), AVG(SaleAmount) from Sales
group by ProductID

--task12
select COUNT(DepartmentName) from Employees
where DepartmentName = 'HR'

--task13
select DepartmentName, MIN(Salary) as lowest, MAX(Salary) as highest from Employees
group by DepartmentName

--task14
select DepartmentName, AVG(Salary) as avg_salary from Employees
group by DepartmentName

--task15
select DepartmentName, COUNT(EmployeeID), AVG(Salary) from Employees
group by DepartmentName

--task16
select Category, AVG(Price) from Products
group by Category
having AVG(Price) > 400

--task17
select YEAR(SaleDate), SUM(SaleAmount) from Sales
group by YEAR(SaleDate)

--task18
select CustomerID, COUNT(OrderID) from Orders
group by CustomerID
having COUNT(OrderID) >= 3

--task19
select DepartmentName, AVG(Salary) from Employees
group by DepartmentName
having AVG(Salary) > 60000

--task20
select Category, AVG(Price) from Products
group by Category
having AVG(Price) > 150

--task21
select CustomerID, SUM(SaleAmount) from Sales
group by CustomerID
having SUM(SaleAmount) > 1500

--task22
select DepartmentName, SUM(Salary), AVG(Salary) from Employees
group by DepartmentName
having AVG(Salary) > 65000

--task23
select custid, SUM(freight) from tsql2012.sales.orders
group by custid
having SUM(freight) > 50

--task24
select month(OrderDate) as month, sum(TotalAmount), COUNT(distinct ProductID) from Orders
group by month(OrderDate)
having COUNT(distinct ProductID) >= 2

--task25
select YEAR(OrderDate), MIN(Quantity) as min_qu, MAX(Quantity) as max_qu from Orders
group by YEAR(OrderDate)
