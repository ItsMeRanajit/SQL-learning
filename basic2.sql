create database if not exists college;
-- if not exists only then itll excecute otherwise warning

create database if not exists school;
drop database if exists school;

show DATABASES;

use college;
show tables;
select * from student;

drop table student;



    create table if not exists student(
        roll int primary key,
        name varchar(50)
    );

    insert into student (roll, name) values
        (2, "ranajit"),
        (3, "someone")
--multiple at once
    
    select * from student