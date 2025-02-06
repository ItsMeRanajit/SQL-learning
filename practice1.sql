create database if not exists xyz;
use xyz;

create table if not exists employee( 
    id int PRIMARY KEY,
    name varchar(50),
    salary int
);

insert into employee (id, name, salary) values 
(100, "ranajit", 500000),
(101, "Aman", 400000),
(102, "Pranoy", 400000)


select * from employee;