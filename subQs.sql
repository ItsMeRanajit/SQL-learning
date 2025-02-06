use college;

select * from student2;

--subqueries : sub qs can be written under from, where and select, but where is the most popular method

select * from tableName
where condition operator (sub query);

-- sub query is same normal queries but using sub queries is like appling operation on already selected data

select avg(marks) from student2;
select full_name, marks from student2 
where marks > ( select avg(marks) from student2);
--finding students who has greater than avg marks


--using subq with from: we must use alias here
select max(marks) from (select marks from student2 where location = "Delhi") as temp; 


--using subq with select
select ( select max(marks) from student2), full_b name from student2;
--the subq inside one must return only 1 row.

select * from student;

-- View: It is like creating a virtual table.  
-- It makes a sub-table but does not store data itself.  
-- It just refers to the original table with a subset of data.  
-- view has no effect on the databse


create view view1 as 
select full_name, roll from student2;
--here a virtual table is created which refers to only name and roll of the org table. 

select * from view1;