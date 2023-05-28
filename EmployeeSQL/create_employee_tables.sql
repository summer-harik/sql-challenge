-- create employees table
create table employees (
emp_no INT NOT NULL Primary Key,
emp_title_id VARCHAR(25),
birth_date DATE,
first_name VARCHAR(25),
last_name VARCHAR(25),
sex CHAR(1),
hire_date DATE);

-- create titles table
create table titles (
title_id VARCHAR(25) NOT NULL Primary Key,
title VARCHAR(25));

-- create departments table
create table departments (
dept_no VARCHAR(25) NOT NULL Primary Key,
dept_name VARCHAR(25));

-- create manager department table
create table dept_manager (
dept_no VARCHAR(25) NOT NULL,
Foreign Key (dept_no) references departments(dept_no),
emp_no INT NOT NULL,
Foreign Key (emp_no) references employees(emp_no));

-- create employee department table
create table dept_emp (
emp_no INT NOT NULL,
Foreign Key (emp_no) references employees(emp_no),
dept_no VARCHAR(25) NOT NULL,
Foreign Key (dept_no) references departments(dept_no));

-- create salaries table
create table salaries (
emp_no INT NOT NULL,
Foreign Key (emp_no) references employees(emp_no),
salary INT);
