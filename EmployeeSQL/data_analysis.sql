-- list employees and salaries
select e.emp_no,
e.last_name, e.first_name,
e.sex, s.salary
from employees as e
inner join salaries as s on
e.emp_no = s.emp_no;

-- list employees hired in 1986
select last_name, first_name,
hire_date
from employees
where extract(year from hire_date) = '1986';

-- list department managers
select d.dept_no, d.dept_name,
ma.emp_no, e.last_name, e.first_name
from departments as d
inner join dept_manager as ma on
d.dept_no = ma.dept_no
inner join employees as e on
e.emp_no = ma.emp_no;

-- list employees & their departments
select e.emp_no, e.last_name,
e.first_name, de.dept_no, d.dept_name
from employees as e
inner join dept_emp as de on
e.emp_no = de.emp_no
inner join departments as d on
d.dept_no = de.dept_no;

-- Hercules B list
select first_name, last_name,
sex
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- list Sales dept employees
select e.last_name, e.first_name,
de.emp_no, d.dept_name
from employees as e
inner join dept_emp as de on
e.emp_no = de.emp_no
inner join departments as d on
d.dept_no = de.dept_no
where dept_name = 'Sales';

-- list Sales & Development dept employees
select e.last_name, e.first_name,
de.emp_no, d.dept_name
from employees as e
inner join dept_emp as de on
e.emp_no = de.emp_no
inner join departments as d on
d.dept_no = de.dept_no
where dept_name in ('Sales','Development');

-- list frequency of last names
select last_name, count(last_name) as last_name_frequency
from employees
group by last_name
order by (last_name_frequency) desc;