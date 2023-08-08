# TUTORIAL EIGHT
/* SQL JOINS 
1 INNER JOIN
2 LEFT JOIN
3 RIGHT JOIN
4 FULL JOIN
5 NATURAL JOIN
6 CROSS JOIN
*/
create schema customer;
use customers;

select* from student;
insert into student values (4, 'Gift', 'sam', 20);
select * from department;

## INNER JOIN
select student.first_name, student.last_name, student.age, department.department_name 
from student inner join department 
on student.studentid= department.studentid;


## LEFT JOIN or LEFT OUTER JOIN

select student.first_name, student.last_name, student.age, department.department_name 
from student left join department 
on student.studentid= department.studentid;

## RIGHT JOIN
select student.first_name, student.last_name, student.age, department.department_name 
from student right join department 
on student.studentid= department.studentid;

## FULL OUTER JOIN
select student.first_name, student.last_name, student.age, department.department_name 
from student left join department 
on student.studentid= department.studentid

union

select student.first_name, student.last_name, student.age, department.department_name 
from student right join department 
on student.studentid= department.studentid;

##CROSS JOIN
select student.first_name, student.last_name, student.age, department.department_name 
from student cross join department;

## NATURAL JOIN
select student.first_name, student.last_name, student.age, department.department_name 
from student natural join department;

