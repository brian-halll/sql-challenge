-- Display for each employee: employee number, last name, first name, sex, and salary.
select x.emp_no, x.last_name, x.first_name, x.sex, y.salary
from employees x
Join salaries y
On (x.emp_no = y.emp_no);

--Display first name, last name, and hire date for employees who were hired in 1986
select last_name, first_name, hire_date
from employees 
Where hire_date Like '%1986%';

--List the manager of each department with the following information: 
--  department number, department name, the manager's employee number, last name, first name.
select x.emp_no, y.first_name, y.last_name, x.dept_no, z.dept_name
from deparment_manager x
Join employees y
On (x.emp_no = y.emp_no)
Join deparments z
On (x.dept_no = z.dept_no);

--List the department of each employee with the following information: 
--  employee number, last name, first name, and department name.
select x.emp_no, y.first_name, y.last_name, z.dept_name
from deparment_manager x
Join employees y
On (x.emp_no = y.emp_no)
Join deparments z
On (x.dept_no = z.dept_no);

--List first name, last name, and sex for employees whose 
--  first name is "Hercules" and last names begin with "B."
select emp_no, last_name, first_name, sex
from employees 
Where first_name = 'Hercules' and last_name like 'B%';

--List all employees in the Sales department, including their employee number, 
--  last name, first name, and department name.
select x.emp_no, x.last_name, x.first_name, z.dept_name
from employees x
join department_employee y
on (x.emp_no = y.emp_no)
join deparments z
on (y.dept_no = z.dept_no)
where dept_name = 'Sales';

--List all employees in the Sales and Development departments, including their employee number, 
--  last name, first name, and department name.
select x.emp_no, x.last_name, x.first_name, z.dept_name
from employees x
join department_employee y
on (x.emp_no = y.emp_no)
join deparments z
on (y.dept_no = z.dept_no)
where dept_name = 'Sales' or dept_name = 'Development';

--List the frequency count of employee last names (i.e., how many employees share each last name) 
--  in descending order.
select count(last_name) as "occurences", last_name
from employees
group by last_name
order by "occurences" DESC;




