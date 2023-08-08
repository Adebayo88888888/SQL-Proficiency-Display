# TUTORIAL 2

create table customer_info_2(id integer auto_increment, first_name varchar(20), last_name varchar(20), salary integer, primary key (id));
show tables;
select * from customer_info_2;
# INSERT RECORDS INTO TABLE

insert into customer_info_2(first_name, last_name, salary)values
('Ade', 'Sam', '20000'),
('Bayo', 'Aremu', '300000'),
('Olu', 'Mark', '10000'),
('Ola', 'John', NULL);

select * from customer_info_2 where salary is not null;

select * from customer_info_2 where salary is null;
# SQL UPDATE STATEMENT TO REPLACE NULL VALUES

update customer_info_2 set salary= 50000 where id=4;

select * from customer_info_2;
# SQL DELETE STATEMENT

delete from customer_info_2 where id=4;

select * from customer_info_2;
# SQL ALTER TABLE

## ADDING COLUMN TO EXISTING TABLE

alter table customer_info_2 add email varchar (25);
select * from customer_info_2;

alter table customer_info_2  add DOB date;
## ALTER TABLE AND MODIFY COLUMMN

alter table customer_info_2 modify dob year;
# Describig the schema of a table

desc customer_info_2;