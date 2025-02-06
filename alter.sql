use college;

select * from student2;

alter table student2
add column age int;

alter table student2
drop column age;

alter table new_students 
rename to student2;
--rename table

alter table student2
change column city location varchar(50);
--rename col


alter table student2
modify col_Name new_datatpe new_constraint;
--modify datatype of col


---Truncate tabel - deletes all data only of the table, the table schema remains

truncate table student;