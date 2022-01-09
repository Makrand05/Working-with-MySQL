-- UC1 Ability to create a payroll service database--
show databases;
create database payroll_service;
show databases;
use payroll_service;


-- UC 2 Ability to create a employee payroll table in the payroll service database to manage employee payrolls
create table employee_payroll (
id int not null auto_increment,
name varchar(50) not null,
salary Double not null,
startDate Date not null,
primary key(id) 
);

drop table employee_payroll;
-- UC 3 Ability to create employee payroll data in the payroll service database as part of CRUD Operation

insert into employee_payroll(name, salary, startDate) values ('Geeta',500000.0,'2021-01-10');
insert into employee_payroll(name, salary, startDate) values ('Navneet',400000.0,'2021-02-10');
insert into employee_payroll(name, salary, startDate) values ('Ramesh',400000.0,'2021-02-10');
insert into employee_payroll(name, salary, startDate,gender) values ('Seeta',300000.0,'2021-03-10','F');

-- UC 4 -- Ability to retrieve all the employee payroll data that is added to payroll service database
select * from employee_payroll;
select * from employee_payroll where name='Ram';

-- UC 5 --Ability to retrieve salary data for a particular employee as well as all employees who have joined in a particular data range from the payroll service database

select * from employee_payroll where startDate between  '2021-02-10' and Date(now());


-- UC 6 Ability to add Gender to Employee Payroll Table and Update the Rows to reflect the correct Employee Gender
alter table employee_payroll add gender char(1);

update employee_payroll set gender = "M" where id IN(2,3);
update employee_payroll set gender = "F" where id=1;
update employee_payroll set name = "Geeta" where id=5;

-- UC 7 Ability to find sum, average, min, max and number of male and female employees

select SUM(salary) from employee_payroll;

select gender, SUM(salary) from employee_payroll group by gender;

-- UC 8 Ability to extend employee_payroll data to store employee information like employee phone, address and department - Ensure employee department

alter table employee_payroll
add phone_number varchar(30),
add department varchar(30) not null,
add address varchar(250) default 'ABC';

-- UC 9  Ability to extend employee_payroll table to have Basic Pay, Deductions, Taxable Pay, Income Tax, Net Pay
alter table employee_payroll rename column salary to basic_pay;

alter table employee_payroll
add duduction int,
add taxable_pay int,
add incom_tax int,
add net_pay int;

-- UC 10 Ability to make Terissa as part of Sales and Marketing Department

insert into employee_payroll(name, basic_pay, startDate,department) values ('Terrisa',400000.0,'2021-02-10','Sales');

insert into employee_payroll(name, basic_pay, startDate,phone_number,department,duduction,taxable_pay,incom_tax,net_pay) 
values ('Terrisa',400000.0,'2021-02-10',1234567,'Marketing',30000,200,300,2000);

-- UC 11 Implement the ER Diagram into Payroll Service DB

create table employee (
id int not null auto_increment primary key,
name varchar(50) not null,
gender varchar(1),
phone varchar(30),
address varchar(250),
startDate Date not null
);

create table payroll(
id int not null auto_increment primary key,
basic_pay int,
deduction int,
income_tax int,
taxable_pay int,
net_pay int,
emp_Id int ,
foreign key(emp_id) references employee(id)
);

create table department(
id int not null auto_increment primary key,
dept_name varchar(20) not null
);

create table employee_department(
employee_id int not null,
department_id int not null,
foreign key(employee_id) references employee(id),
foreign key(department_id) references department(id),
primary key(employee_id,department_id)
);

select * from employee_department;