# TUTORIAL FOUR
/* SQL CONSTRAINTS
SQL constraints are used to specify any rulefor the records in a table.Constrants can be column based, or table based.alter
1 Not null
2 Unique
3 Primary key
4 Foreign key 
5 check table
6 Default
7 Index

*/
create table students(
id int not null,
first_name varchar(20) NOT NULL,
last_name varchar(20) NOT NULL,
age int);
show tables ;
desc students;

create table person(
id varchar(20) not null,
first_name varchar(20),
last_name varchar (20),
age int not null ,
UNIQUE (id)
);
insert into person values('1', 'Adenla', 'Bayonla', '18');
select * from person ;
alter table person add unique (first_name);
desc person;
# DROP A UNIQUE CONSTRAINT

Alter table person add constraint uc_person unique(age, first_name);
desc person;
alter table person
drop index uc_person;
## Primary key
create table person1(
id int not null,
first_name varchar(20) not null,
last_name varchar(10),
age int not null,
constraint pk_person primary key (id, last_name)
);
desc person1;
alter table person1
drop primary key;
alter table person1
add primary key (id);
desc person1;
