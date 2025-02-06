use college;

select * from student2; 

update student2 
set grade='O'
where grade = 'A';

select * from student2;

update student2
set grade = 'O'
where marks between 90 and 100;

update student2
set marks = marks + 1; 


delete from student2 
where marks < 80;