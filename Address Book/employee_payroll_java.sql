use address_book_service;

create table employee_payroll_java (
id int not null auto_increment,
name varchar(50) not null,
gender varchar(1) not null,
startDate Date not null,
address varchar(100),
phone int,
primary key(id) 
);

insert into employee_payroll_java( name,gender,startDate,address,phone) 
value('Ram','M','2021-02-10','Pune',123456);

alter table employee_payroll_java add salary int;

insert into employee_payroll_java( name,gender,startDate,address,phone,salary) 
value('Ram','M','2021-02-10','Pune',123456,50000);

insert into employee_payroll_java( name,gender,startDate,address,phone,salary) 
value('Prashant','M','2021-02-10','Pune',123456,50000);
select * from employee_payroll_java;

update employee_payroll_java set salary= 10000 where name='Prashant';