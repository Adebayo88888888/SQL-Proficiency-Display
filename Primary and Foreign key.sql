# TUTORIAL FIVE
alter table person1
drop primary key;
# FOREIGN KEY IS USED TO LINK TWO TABLES 2GEDA ALSO CALLED REFERENCING KEY 
create table person2(
id varchar(20) not null,
first_name varchar(20),
last_name varchar (20),
age int not null ,
salary int,
primary key (id));

desc person2;
show tables;
use customers;
create table department(
id int not null,
dept_id int not null,
dept_name varchar(20) not null,
primary key(dept_id));
desc department;
alter table department 
add foreign key (id) references person2(id);
## CHECK CONSTRAINTS i.e to control thhe type of value that can enter the database


drop table person2;
create table person2(
id varchar(20) not null,
first_name varchar(20),
last_name varchar (20),
age int not null ,
salary int,
primary key (id),
check (salary< 50000));
desc person2;
insert into person2 values ('1', 'Ade', 'Bayo','18',  '80000');
## DEFAULT CONSTRAINT

drop tables person2;
create table person2(
id varchar(20) not null,
first_name varchar(20),
last_name varchar (20),
city_name varchar(25) default 'Abeokuta',
age int not null ,
salary int,
primary key (id));
desc person2;
