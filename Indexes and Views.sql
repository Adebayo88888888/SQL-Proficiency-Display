# TUTORIAL SIX
/* INDEXING IN MYSQL
CREATE INDEX statement is used to create indexes in tables. 
The indexes are used to retrieve info from the table more quickly than others.
Note; Updating the table with indexes takes a lot more time than pdating the columns without indexes bcos indexes neeed an update 
So, only create indexes for those columns that will be frequently searched against.alter
*/

select * from person2;
create index index_city_name
on person2(city_name);
desc person2;
desc students;
create index index_age_first_name
on students(age, first_name);

desc students;

alter table students
drop index index_age_first_name;

## TUTORIAL SEVEN 
/* Views are virtual table based on the result set on a SQL query 
*/
##Ohh, View in sql is like filter in spreadsheet, showing only particular ifo from a database
use customers;
drop table students;
create table student(
studentid int auto_increment , 
first_name varchar(25) not null, 
last_name varchar(20) not null,
age int not null ,
primary key (studentid)
);
desc student;
insert into student values (1, 'sam', 'bay', 18),
(2,'Ade', 'Ola', 15),
(3,'Joe', 'leo', 22);
select * from student;
drop table department;

create table department(
stcustomer_infocustomer_infocustomer_infoudent_id int auto_increment,
deaprtment_name varchar(20) not null,
foreign key (student_id) references student(studentid));

desc department;
insert into department values( 1,'computer science'),
(2,'computer engineering'),
(3, 'electronics');
select * from department;
select * from student;
create view student_info as
select first_name,last_name,age from student inner join department using (studentid);
select * from student_info;
drop view student_info;