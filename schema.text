create table titles (
	title_id VARCHAR Primary Key, 
	title VARCHAR NOT NULL); 
	
	
create table employees (
	emp_no INTEGER PRIMARY KEY,  
	emp_title_id VARCHAR,
	birthdate date NOT NULL, 
	first_name VARCHAR NOT NULL, 
	last_name VARCHAR NOT NULL, 
	sex VARCHAR NOT NULL, 
	hire_date DATE not null,
	foreign key (emp_title_id) REFERENCES titles (title_id)); 


create table departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL); 


create table dept_manager(
	dept_no VARCHAR NOT NULL, 
	emp_no INTEGER NOT NULL, 
	foreign key (dept_no) REFERENCES departments (dept_no),
	foreign key (emp_no) REFERENCES employees (emp_no)); 


create table dept_emp(
	emp_no INTEGER NOT NULL, 
	dept_no VARCHAR NOT NULL, 
	foreign key (emp_no) REFERENCES employees (emp_no), 
	foreign key (dept_no) REFERENCES departments (dept_no)); 
	
create table salaries (
	emp_no INTEGER NOT NULL, 
	salary INTEGER NOT NULL, 
	foreign key (emp_no) REFERENCES employees (emp_no));