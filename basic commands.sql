create database college;
drop database school;
use college;

create table student(
    id int primary key,
    name varchar(50),
    age int not null
);

insert into student values(1, "ranajit", 21);
insert into student values(2, "someone", 22);
insert into student values(3, "anisha", 22);
insert into student values(4, "sanku", 22);

  
select * from student;
show tables;


-- datatypes-

-- char - char(50)
-- varchar - varchar(50)
-- -- ** they work same but using char itll consume that length in memory even the word size is smaller than that and the unused part also get reserved, but in varchar we give max size that can be consumed. meaning if the var stored is less than 50 then itll consume only the length of the var if var is 30 then itll take 30 not 50 but in char itll take 50 even var is 30

-- int - INT
-- tinyint - TINYINT (-128 - 127)
-- bigint - BIGINT
-- float - FLOAT 
-- ** precision of 23 digits

-- double - DOUBLE 
-- **precision of 53 digits

-- boolean - BOOLEAN
-- date - DATE
-- year - YEAR



-- signed & unsigned - signed for -ve and +ve values, unsigned for +ve values only 