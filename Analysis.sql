--List the following details of each employee: employee number, last name, first name, sex, and salary.
--check count of joined table to make sure I have accurate count of employees  
select count(0) 
from employees t1 
JOIN salaries t2 
on tbl.emp_no = t2.emp_no 


select t1.emp_no, t1.last_name, t1.first_name, t1.sex, t2.salary 
from employees t1 
JOIN salaries t2 
on t1.emp_no = t2.emp_no 

--List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date
from employees 
where (select extract(YEAR from hire_Date))= 1986
order by hire_date 


--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select t1.dept_no, t2.dept_name, t1.emp_no, t3.last_name, t3.first_name 
from dept_manager t1 
JOIN departments t2 
on t1.dept_no = t2.dept_no 
JOIN employees t3
on t1.emp_no = t3.emp_no


--List the department of each employee with the following information: employee number, last name, first name, and department name.

select t1.emp_no, t1.last_name, t1.first_name, dep.dept_name 
from employees t1 
JOIN dept_emp t2 
on t1.emp_no = t2.emp_no 
JOIN departments dep
on t2.dept_no = dep.dept_no 



--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name, last_name, sex 
from employees 
where first_name = 'Hercules'
and last_name like ('B%')


--List all employees in the Sales department, including their employee number, last name, first name, and department name.

select distinct dept_name 
from departments


select t1.emp_no, t1.last_name, t1.first_name, dep.dept_name 
from employees t1 
JOIN dept_emp t2 
on tbl.emp_no = t2.emp_no 
JOIN departments dep 
on t2.dept_no = dep.dept_no 
where dep.dept_name = 'Sales'



--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select distinct dept_name 
from departments


select t1.emp_no, t1.last_name, t1.first_name, dep.dept_name 
from employees t1 
JOIN dept_emp t2 
on t1.emp_no = t2.emp_no 
JOIN departments dep 
on t2.dept_no = dep.dept_no 


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(*)
from employees
group by last_name 
order by count(*) desc 