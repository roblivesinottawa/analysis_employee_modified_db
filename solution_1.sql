USE employees_mod;

select year(d.from_date) as calendar_year, e.gender, count(e.emp_no) as num_of_employees
from t_employees e join t_dept_emp d
on d.emp_no = e.emp_no
group by calendar_year, e.gender
having calendar_year >= 1990;