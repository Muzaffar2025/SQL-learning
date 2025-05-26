---task1
use lesson_2
create table Employees (EmpID int, Name varchar(50), Salary decimal(10,2))
select * from Employees

---task2
insert into Employees values (1, 'Tom', 1500.5)
insert into Employees (Salary, Name, EmpID) values (900.455, 'Paul', 2), (1245.78, 'Roger', 3)
insert into Employees (EmpID, Salary) values (4, 4500.084), (5, 1545.45)

---task3
update Employees
set Name = 'Jimmy', Salary = 7000
where EmpID = 1

---task4
delete from Employees
where EmpID = 2

---task5
--DELETE: Removes specific rows from a table based on a condition. It is logged, can be rolled back, and triggers are fired
--DROP: Completely removes the table (or database) from the schema. The table structure, data, and associated constraints are deleted
--TRUNCATE: Removes all rows from a table quickly and efficiently, but cannot target specific rows. It is minimally logged, cannot be rolled back in some databases, and does not fire triggers

---task6
alter table Employees 
alter column Name varchar(100)

---task7
alter table Employees
add Department varchar(50)
select * from Employees

---task8
alter table Employees
alter column Salary float

---task9
create table Departments (DepartmentID int primary key, DepartmentName varchar(50))
select * from Departments

---task10
truncate table Employees
select * from Employees

---task11
insert into Departments (DepartmentName, DepartmentID) values
	('Management', 1),
	('Marketing', 2),
	('Sales', 3),
	('Finance', 4),
	('Production', 5)
Select * from Departments

---task12
update Departments
set DepartmentName = 'Management'
where salary > 5000

---task13
truncate table Employees
select * from Employees

---task14
alter table Employees
drop column Department
select * from Employees

---task15
EXEC sp_rename 'Employees', 'StaffMembers'
select * from StaffMembers

---task16
drop table Departments

---task17
create table Products (ProductID int primary key, ProductName varchar(60), Category varchar(60), Price decimal(10,2), Status varchar(10)) 
select * from Products

---task18
alter table Products
add constraint Price check (Price > 0)

---task19
alter table Products
add StockQuantity int default 50

---task21
insert into Products values 
	(1,'Apple','Fruits',20.5,'Yes',250),
	(2,'Onion','Veggi',5.9,'Yes',500),
	(3,'Peach','Fruits',22.1,'No',0),
	(4,'Banana','Fruits',25.00,'Yes',200),
	(5,'Cabbage','Veggi',9.5,'No',0)

---task22
select * into Products_Backup from Products
select * from Products_Backup

---task23
EXEC sp_rename 'Products', 'Inventory'
select * from Inventory

---task24
alter table Inventory
alter column Price float





