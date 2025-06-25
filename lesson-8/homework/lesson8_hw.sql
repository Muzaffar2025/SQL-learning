--task1
select Category, SUM(StockQuantity) as Ave_Prod from Products
group by Category

--task2
select ProductName, AVG(Price) from Products
where Category = 'Electronics'
group by ProductName

--task3
select FirstName + ' ' + LastName as Fullname, City from Customers
where City like 'L%'

--task4
select ProductName from Products
where ProductName like '%er'

--task5
select FirstName + ' ' + LastName, Country from Customers
where Country like '%a'

--task6
select MAX(Price) from Products

--task7
select *, case 
	when StockQuantity < 30 then 'Low Stock'
	else 'Sufficient'
	end as condition
from Products

--task8
select Country, COUNT(CustomerID) from Customers
group by Country

--task9
select MIN(Quantity) as min_quantity, MAX(Quantity) as max_quantity from Orders

--task10
select i.CustomerID from Orders o left join Invoices i on o.CustomerID = i.CustomerID
where OrderDate between '2023-01-01' and '2023-01-31' 
and i.CustomerID is null

--task11
select ProductName from Products
union all
select ProductName from Products_Discounted

--task12
select ProductName from Products
union
select ProductName from Products_Discounted

--task13
select year(OrderDate), AVG(TotalAmount) from Orders
group by year(OrderDate)

--task14
select ProductName, case
	when Price < 100 then 'Low'
	when Price between 100 and 500 then 'Mid'
	when Price > 500 then 'High'
	end as pricegroup

from Products

--task15
select * from city_population

SELECT 
    district_id,
    district_name,
    [2012],
    [2013]
INTO Population_Each_Year
FROM (
    SELECT 
        district_id, 
        district_name, 
        population, 
        year
    FROM city_population
) AS SourceTable
PIVOT (
    SUM(population)
    FOR year IN ([2012], [2013])
) AS PivotTable

select * from Population_Each_Year

--task16
select ProductID, SUM(SaleAmount) as total_sales from Sales
group by ProductID

--task17
select ProductName from Products
where ProductName like '%oo%'

--task18
SELECT 
    year,
    [Bektemir],
    [Chilonzor],
    [Yakkasaroy]
INTO Population_Each_City
FROM (
    SELECT 
        year,
        district_name,
        population
    FROM city_population
) AS SourceTable
PIVOT (
    SUM(population)
    FOR district_name IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS PivotTable;

select * from Population_Each_City

--task19
select top 3 CustomerID, SUM(TotalAmount) as Totalspent from Invoices
group by CustomerID
order by Totalspent desc

--task20
SELECT 
    district_id,
    district_name,
    population,
    year
INTO City_Population_Rebuilt
FROM (
    SELECT 
        district_id,
        district_name,
        [2012],
        [2013]
    FROM Population_Each_Year
) AS Pivoted
UNPIVOT (
    population FOR year IN ([2012], [2013])
) AS Unpivoted;

--task21
select p.ProductName, COUNT(s.SaleID) from Products p left join Sales s on p.ProductID = s.ProductID
group by p.ProductName

--task22
SELECT 
    district_name,
    population,
    year
INTO City_Population_Rebuilt
FROM (
    SELECT 
        year,
        Bektemir,
        Chilonzor,
        Yakkasaroy
    FROM Population_Each_City
) AS Pivoted
UNPIVOT (
    population FOR district_name IN (Bektemir, Chilonzor, Yakkasaroy)
) AS Unpivoted;

select * from City_Population_Rebuilt
