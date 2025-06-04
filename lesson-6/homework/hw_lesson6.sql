--task2
select * from TestMultipleZero
where A<>0 or B<>0 or C<>0 or D<>0

--task3
select * from section1
where id like '%[13579]%'

--task4
select top 1 * from section1
order by id asc

select * from section1
where id = (select MIN(id) from section1)

--task5
select top 1 * from section1
order by id desc

select * from section1
where id = (select MAX(id) from section1)

--task6
select * from section1
where name like 'b%'

--task7
select * from ProductCodes
where code like '%$_%' escape '$'

