use college;

insert into student2(roll, name, marks, grade, city) values 
(7, "someone", 78, "C", "Kolkata"),
(8, "someone2", 78, "C", "Kolkata"),
(9, "someone3", 78, "C", "Kolkata")


select * from student2;

select max(marks), min(marks) as minimum from student2;

select avg(marks), sum(marks), count(marks) from student2;

select city, COUNT(roll), max(marks), avg(marks)
from student2 group by city order by count(marks) desc;
--group by maked group basd on the col. means itll make a group of rows based on the city. and each grp has 2 rows in it.
--in grp by selected col and the grouped col must be same if city is selected then it must grped by city only. if city and name selcted then grped by city, named only. this doesnot include the agg func ie count

select city, marks, count(roll)
from student2 GROUP BY city, marks;
--here the its grped by the combination of city name and makrs. if 2 students lives in kolkata nd tehy both get same marks then they comes under same grp here like kolkata and 78

select count(name), city, max(marks) from student2 
where marks > 92
group by city 
having max(marks) > 90;
--having clause is same as where but having is used on groups, where clause doesnot work for grps  

-- there should be a specific order to write this
-- SELECT
-- FROM
-- where --works on rows
-- group BY 
-- HAVING --works on grps
-- ORDER BY