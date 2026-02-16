--Joins
--Employees with department name
select e.emp_name,d.dept_name
from employees e
join departments d on
e.dept_id=d.dept_id;

--Employees and their managers
select e.emp_name,m.emp_name as manager_name
from employees e 
join employees m on 
e.manager_id=m.emp_id;

--Employees earning more than manager
select e.emp_name,m.emp_name as manager_name
from employees e
join employees m
on e.manager_id=m.emp_id
where e.salary>m.salary;                                                  
