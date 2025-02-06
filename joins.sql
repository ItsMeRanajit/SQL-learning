use college;

create table if not exists course(
    id int PRIMARY KEY,
    course varchar(50)
);

insert into course (id, course)
values
(101, "Math"),
(102, "Eng"),
(103, "Beng");

select * from course;

insert into student (id, name , course_id) VALUES
(1, "ranajit", 101),
(2, "anisha", 104),
(3, "kris", 102);

select * from student;

--join


-- 1. inner join
select *
from student  
inner join course 
on student.course_id = course.id; --without alias

select *
from student as S
inner join course as C
on S.course_id = C.id; --with alias

-- 2. left join 

select * from student as s
left join course as c
on s.course_id = c.id;


-- 2. right join 

select * from student as s
right join course as c
on s.course_id = c.id;

-- 2. full join : 
    -- if we are using oracle or postgre there full join or full outer join the keyword exists but in mysql full join or full outer join doesnot exists.
    -- so we have join in other method

select * from student as s
left join course as c
on s.course_id = c.id
union
select * from student as s
right join course as c
on s.course_id = c.id;
--so we are adding both left and right joined tables to build full join. 


create table if not exists emp(
    id int,
    name varchar(50),
    manager_id int
);

insert into emp (id, name, manager_id) VALUES
(101, "adam", 103),
(102, "bob", 104),
(103, "casey", null),
(104, "donald", 103);

select * from emp;


--self join : to get each emps manager which is from the same table.

select a.name, b.name as manager  from emp as a
join emp as b
on a.manager_id = b.id;


--union : merges 2 tables and does not gives repeated records if any then prints once. for using union both tabels must have same no of cols and their datatype must be same

show tables;

select colums from tableA
union
select columns from tableB; 