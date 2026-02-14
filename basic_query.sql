--Basic queries

--List all employees
select * from employees;

--Employees working in IT department
select e.emp_name,d.dept_name
from employees e
join departments d on
e.dept_id=d.dept_id
where dept_name='IT';

--Employees with salary > 7000
select emp_name,salary
from employees
where salary>7000;

--Employees hired after 2022
select emp_name,hire_date
from employees
where hire_date>date '2022-12-31';