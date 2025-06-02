--task1
select ProductName as Name from Products

--task2
select * from Customers as Client

--task3
select ProductName from Products
union
select ProductName from Products_Discounted

--task4
select ProductName from Products
intersect
select ProductName from Products_Discounted

--task5
select * from Customers
select distinct FirstName from Customers

--task6
select *, case
	when Price > 1000 then 'High'
	when Price <= 1000 then 'Low'
	end as Price_level
from Products

--task7
select *, IIF(StockQuantity > 100, 'YES','NO') from Products_Discounted

--task8
select ProductName from Products
union
select ProductName from Products_Discounted

--task9
select ProductName from Products
except
select ProductName from Products_Discounted

--task10
select *, IIF(Price > 1000, 'Expensive', 'Affordable') from Products

--task11
select * from Employees
where Age < 25 or Salary > 60000

--task12
select *, case
		when DepartmentName = 'HR' then Salary * 1.1
		when EmployeeID = 5 then Salary * 1.1
		else Salary
		end as Updated_salary
from Employees

--task13
select *, case
		when SaleAmount > 500 then 'Top Tier'
		when SaleAmount between 200 and 500 then 'Mid Tier'
		else 'Low Tier'
		end as Tiers
from Sales

--task14
select CustomerID from Orders
except
select CustomerID from Sales

--task15
select CustomerID, Quantity, case
		when Quantity = 1 then '3%'
		when Quantity between 1 and 3 then '5%'
		else '7%'
		end as discount_percentage 
from Orders
