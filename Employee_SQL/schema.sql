--drop the table 
DROP TABLE IF EXISTS titles;

--Create titles table
CREATE TABLE titles(
    title_id VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
	PRIMARY KEY (title_id) 
);

--View titles table
SELECT * FROM titles;


DROP TABLE IF EXISTS employees;

--Create employees table
CREATE TABLE employees(
	emp_no INT NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date date NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    PRIMARY KEY (emp_no)
);

--View employees table
SELECT * FROM employees;


--drop the table 
DROP TABLE IF EXISTS departments;

--Create a department table
CREATE TABLE departments(
  dept_no VARCHAR NOT NULL,
  dept_name VARCHAR NOT NULL,
  PRIMARY KEY (dept_no)
);

--View departments table
SELECT * FROM departments;

--drop the table 
DROP TABLE IF EXISTS dept_manager;

--Create a dept_manager table
CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY(dept_no, emp_no)
);

--View dept_manager table
SELECT * FROM dept_manager;

--drop the table 
DROP TABLE IF EXISTS dept_emp;

--Create a dept_emp table
CREATE TABLE dept_emp(
   emp_no INT NOT NULL,
   dept_no VARCHAR NOT NULL,
   FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
   FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
   PRIMARY KEY (emp_no, dept_no)
);

--View dept_emp table
SELECT * FROM dept_emp;



--drop the table 
DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries(
    emp_no INT NOT NULL,
    salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY(emp_no)
);

--View dept_emp table
SELECT * FROM salaries;