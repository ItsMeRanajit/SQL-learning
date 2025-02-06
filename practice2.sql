use xyz;

create table if not exists payments(
    customer_id int primary key,
    name varchar(50),
    mode varchar(50),
    city varchar(50)
);


insert into payments (customer_id, name, mode, city)
values
(101, "olivia", "netbanking", "kolkata"),
(102, "Ethan", "credit card", "Delhi"),
(103, "Sophia", "netbanking", "Mumbai"),
(104, "Liam", "cash", "Bangalore"),
(105, "Emma", "credit card", "Chennai"),
(106, "Noah", "netbanking", "Hyderabad"),
(107, "Ava", "cash", "Pune"),
(108, "Lucas", "credit card", "Ahmedabad"),
(109, "Mia", "netbanking", "Kolkata"),
(110, "James", "cash", "Jaipur"),
(111, "Amelia", "credit card", "Lucknow");


select * from payments;

select mode, count(customer_id) from payments
GROUP BY mode order by count(customer_id);