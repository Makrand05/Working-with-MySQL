use payroll_service;

select * from employee;
insert into employee(name,gender,phone,address,startDate) 
values('Rahul','M',9096592,'Pune','2021-01-01');

select * from payroll;
insert into payroll(basic_pay,deduction,income_tax,taxable_pay,net_pay,emp_id) values(0,0,0,0,0,1);

select * from department;
select * from employee_department;

select gender, sum(net_pay) from payroll,employee where
 employee.gender='M' and employee.id=payroll.emp_id;

desc employee_department;