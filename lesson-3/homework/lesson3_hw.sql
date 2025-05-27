--task1
/*Bulk insert is used to import data to SQL using syntax, we can import data to specific table from given source like
'C:\Users\HP-PC\Desktop\SQL\Customers.txt' and specify its structure with like firstrow, fieldterminator = ',', rowterminator ='\n'*/

--task2
--We can import to SQL files like txt, excel, csv and json

--task3
create table Products (ProductID int primary key, ProductName varchar(50), Price decimal(10,2))
select * from Products

--task4
insert into Products values (1,'Iphone11',900.5)
insert into Products values (2,'Samsung',510.5)
insert into Products values (3,'Redmi',300)

--task5
/*In SQL, NULL means a column can be left empty, representing missing or unknown data. 
In contrast, NOT NULL means the column must always have a value it cannot be left blank.*/

--task6
alter table Products
add constraint UQ_ProductName Unique(ProductName)

--task7
/*unique har bir ustun uchun alohida beriladi va ikki hil usulda jadval yaratish jarayonida yoki alter bilan mavjud jadvalga qoshish mumkin.
Unique belgilangan ustun yoki ustunlarda ma'lumot takrorlanmasligini ta'minlaydi, agar avvaldan takrorlangan ma'lumotlar mavjud bo'lsa unique ishlatib bo'lmaydi*/

--task8
alter table Products
add CategoryID int

--task9
create table Categories (CategoryID int identity primary key, CategoryName varchar(50) unique)
select * from Categories

--task10
/*Identity int bilan birga ishlatiladi va raqam yozishni avtomatlashtiradi, ma'lumotlar unique va not null bo'ladi. 
Identity(1,5) kabi ko'rinishda ham ishlatish mumkin, buning ma'nosi birinchi son 1 ikkinchisi 6, uchunchisi 11 bo'ladi va shu tartibda davom etadi*/

--task11
bulk insert Products
from 'C:\Users\HP-PC\Downloads\Telegram Desktop\Products.txt'
with (
	firstrow = 2,
	fieldterminator = ',',
	rowterminator = '\n'
)

--task12
alter table Products
add constraint fk_products_categoryid foreign key (CategoryID) references Categories(CategoryID)

--task13
/*In SQL, both PRIMARY KEY and UNIQUE KEY are used to enforce uniqueness of data in a column, but they have key differences
A PRIMARY KEY uniquely identifies each row in a table and cannot contain NULLs. Each table can have only one primary key (which can be single or composite)
A UNIQUE KEY also ensures that all values in the column are unique, but it can contain NULLs (depending on the database system). A table can have multiple unique keys*/

--task14
alter table Products
add constraint check_products_price check (Price > 0)

--task15
alter table Products
add Stock int NOT NULL default 20

--task16
update Products
set Price = 0
where Price is Null

--task17
/*A FOREIGN KEY in SQL Server enforces a link between two tables by ensuring that values in one table (child) match values in another (parent).
It maintains referential integrity by preventing invalid data and ensuring consistent relationships between tables.
Used to model one-to-many relationships*/

--task18
create table Customers (Id int identity, Age int check (Age>=18))

--task19
create table Task19 (Id int identity(100,10), Name varchar(50))

--task20
create table OrderDetails (ordersID int identity(1,1) primary key, orderdate date default getdate())

--task22
create table Employees (EmpID int primary key, Email varchar(50) unique)

--task23
ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID)
ON DELETE CASCADE
ON UPDATE CASCADE



