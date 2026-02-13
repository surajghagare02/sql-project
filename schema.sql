CREATE TABLE departments (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(50)
);

CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER,
    hire_date DATE,
    manager_id NUMBER,
    dept_id NUMBER,
    CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE salary_history (
    hist_id NUMBER PRIMARY KEY,
    emp_id NUMBER,
    old_salary NUMBER,
    new_salary NUMBER,
    change_date DATE,
    CONSTRAINT fk_emp FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);

INSERT INTO departments VALUES (10, 'HR');
INSERT INTO departments VALUES (20, 'IT');
INSERT INTO departments VALUES (30, 'Finance');
INSERT INTO departments VALUES (40, 'Sales');

INSERT INTO employees VALUES (1, 'King', 10000, DATE '2020-01-15', NULL, 20);
INSERT INTO employees VALUES (2, 'Neena', 8000, DATE '2021-03-10', 1, 20);
INSERT INTO employees VALUES (3, 'Lex', 12000, DATE '2022-06-01', 1, 20);
INSERT INTO employees VALUES (4, 'Alexander', 6000, DATE '2023-02-20', 2, 10);
INSERT INTO employees VALUES (5, 'Bruce', 6000, DATE '2023-08-11', 2, 10);
INSERT INTO employees VALUES (6, 'David', 9000, DATE '2022-11-05', 1, 30);
INSERT INTO employees VALUES (7, 'Valli', 7000, DATE '2024-01-10', 6, 30);
INSERT INTO employees VALUES (8, 'Diana', 7000, DATE '2024-05-12', 6, 30);


INSERT INTO salary_history VALUES (1, 2, 7000, 8000, DATE '2023-01-01');
INSERT INTO salary_history VALUES (2, 4, 5000, 6000, DATE '2023-06-01');
INSERT INTO salary_history VALUES (3, 7, 6000, 7000, DATE '2024-02-01');


select * from salary_history;
select * from employees;
select * from departments;
