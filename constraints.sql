--constraints - is a rule for that col. or for the table

use xyz;
create table if not exists faculty(
    fac_id int unique, -- constraints for a col
    fac_name varchar(50) not null,
    fac_age int check (fac_age >= 18), -- this is col constraint if age >= 18 only then it can be added
    fac_salary int DEFAULT 25000,
    constraint fac_check check (fac_age <= 60 and fac_id <= 100)
    -- constraint to table fac has to less than 60 if id <= 100 only then it can be added to the table
)

