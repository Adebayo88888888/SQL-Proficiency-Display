# SUBQUERY PROJECT
create schema datas;
use datas;
create table employee(Emp_Id int unique not null,
Emp_name varchar(20) not null,
Age int not null,
Gender varchar(1) not null,
Dept varchar(15),
City varchar(20) not null,
Salary int not null);


insert into employee values
(100, 'Ammy', 35, 'F', 'IT', 'Lagos', 20000),
(101, 'Jack', 22, 'M', 'Finance', 'Abuja', 30000),
(102, 'Sam', 25, 'M', 'Sales', 'Ogun', 50000),
(103, 'Rose', 33, 'F', 'HR', 'Chicago', 40000),
(104, 'Bob', 36, 'M', 'Tech', 'Austin', 35000),
(105, 'David', 39, 'M', 'Finance', 'Miami', 24000),
(106, 'Marcus', 36, 'M', 'Tech', 'Eko', 20500),
(107, 'Mary', 28, 'F', 'HR', 'Maryland', 35000);


Select * from employee;

# Subquery using select statement
select emp_name, dept, salary from employee 
where salary < ( select avg(salary) from employee);

# Subquery with insert statement
create table products
(prod_Id int not null,
item varchar(10),
sell_price float,
product_type varchar(20));

select * from products;
insert into products values
( 101, "Jewellery", 1800, 'Luxury'),
(102, 'T-shirt', '100', 'Non luxury'),
(103, 'Laptop', '1300', 'luxury'),
(104, 'Table', '400', 'Non luxury');

select * from products;

create table orders(order_id int ,
product_sold varchar(20) ,
selling_price float);

select * from orders;

insert into orders 
select prod_id, item, sell_price
from products where prod_id in
(select prod_id from products where sell_price > 1000);
select * from orders;


select * from employee_b;
create table employee_b(Emp_Id int unique not null,
Emp_name varchar(20) not null,
Age int not null,
Gender varchar(1) not null,
Dept varchar(15),
City varchar(20) not null,
Salary int not null);

insert into employee_b values 
(100, 'Ammy', 35, 'F', 'IT', 'Lagos', 20000),
(101, 'Jack', 22, 'M', 'Finance', 'Abuja', 30000),
(102, 'Sam', 25, 'M', 'Sales', 'Ogun', 50000),
(103, 'Rose', 33, 'F', 'HR', 'Chicago', 40000),
(104, 'Bob', 36, 'M', 'Tech', 'Austin', 35000),
(105, 'David', 39, 'M', 'Finance', 'Miami', 24000),
(106, 'Marcus', 36, 'M', 'Tech', 'Eko', 20500),
(107, 'Mary', 28, 'F', 'HR', 'Maryland', 35000);

# using subquery with update statement
update employee
set salary = salary * 0.35 
where age in (select age from employee_b where age >= 25);

# subquery with delete statement
delete from employee
where age in (select age from employee_b where age >=30)



select * from employee








