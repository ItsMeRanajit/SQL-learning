-- primary key - is a column of a table which uniquely identifies each row of the table and not null, pk can be only 1 in a table.

-- foreign key - is a col or a set of cols which is/are a primary key of other table. foreign keys can be repeatative and null as its not a primary key of the current table
-- foreign key can also be the pk of a table but in that case it has to be unique and not null.

use xyz;

--how to define pk
create table if not exists classes(
    room_id int primary key,
    capacity int
);

--or
create table if not exists classes(
    room_id int,
    capacity int,
    primary key (room)
);
--we can directly use the col name

--or

create table if not exists classes(
    room_id int,
    capacity int,
    monitor varchar(50),
    primary key (room, monitor)
);
-- here the combination of room and monitor has to be unique, the room no can be repeateble as he monitor but their combination has to be unique means room 1 monitor-ranajit cant be once again.

-- foreign key

create table if not exists room(
    room int,
    Foreign Key (room) REFERENCES classes(room_id)
);

create table if not exists dept(
    dept_id int primary key,
    dept_name varchar(50)
);

create table if not exists teacher(
    id int primary key,
    name varchar(50),
    dept int,
    foreign key (dept) references dept(dept_id)
);

insert into dept(dept_id, dept_name)
values 
(101, "Science"),
(102, "English"),
(103, "Hindi");


insert into teacher(id, name, dept) VALUES
(1, "Adam", 101),
(2, "Suzen", 103),
(3, "Dyam", 103),
(4, "Cristiano", 102),
(5, "Liam", 101);

--Cascading

create table if not exists teacher (
    id int primary key,
    name varchar(50),
    dept int,
    foreign key (dept) references dept(dept_id)
    on update cascade
    on delete cascade
);

update dept 
set dept_id = 111
where dept_id = 107;

select * from teacher;

--parent table where the foreign key references meiang the pk
-- child table is the table with foreign key
--update cascade means when the parent table is updated then its child table is also updated automatically for the foreign key link.
--delete cascade means if the parent tables content is deleted then also the related info on child table also gets deleted