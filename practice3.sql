use college;

alter table student2
change column name full_name varchar(50);

select * from student2;

delete from student2 where marks < 80;

alter table student2
add column grade2 VARCHAR(1);

ALTER Table student2 
drop column grade2;