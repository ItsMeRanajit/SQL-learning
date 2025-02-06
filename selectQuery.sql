use college;

create table if not exists student2(
    roll int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
);

insert into student2 (roll, name,marks, grade , city) VALUES
(1, "ranajit", 95, "A", "Kolkata"),
(2, "Rohit", 88, "B", "Delhi"),
(3, "Ananya", 92, "C", "Kolkata"),
(4, "Priya", 89, "A", "Mumbai"),
(5, "Arjun", 85, "B", "Delhi"),
(6, "Ishita", 90, "C", "Mumbai")


select * from student2;

select city from student2;

select distinct city from student2;
--disticnt only shows the value once without repeat

select * from student2 where city = "Kolkata";

select roll, name from student2 where marks > 80 and marks < 90;

select roll, name from student2 where marks + 10 >= 100;

select name from student2 where marks BETWEEN 80 and 90;


select name,city from student2 where city in ("Delhi", "Kolkata")

select name,city from student2 where city not in ("Delhi", "Kolkata")

select * from student2 limit 3;
--limit limits the diplayed data into given no of rows, only 3 will be shown

select * from student2 order by marks desc;
-- order by is for adjusting the order based on some col. 

select name from student2 where name like "A%"; --starts with A
select name from student2 where name like "%A"; --ends with A
select name from student2 where name like "_a%"; --has 2nd letter a
select name from student2 where name like "%i_"; --has 2nd letter i from end

select name from student2 where city is null; --shows wehre the given col is null

select name as "Student Name" from student2; --shows data with renamed col