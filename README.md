# sql_challenge

#Schema

*** I ran DROP TABLE IF EXISTS right before the creation of each table as I had to rerun the table every time I had to change or fix something. This simplified things for me and made it less irritating vs. getting the table already exists error. 

I first created the 'titles' table and made the title_id the primary key since this column was going to be referenced by the 'employees' table.

I then created the 'employees' table and made the emp_title_id the foreign key and emp_no the primary key since emp_title_id would be able to reference title_id in 'titles' and emp_no would be able to be referenced by the dept_emp, dept_manager, and salaries tables. 

I proceeded to create the 'departments' table and made dept_no the primary key as it would be referenced with the next table created which is the 'dept_manager' table. This table has two foreign keys which are dept_no that references dept_no in departments and emp_no that references emp_no in 'employees'. This table also has these two columns as primary keys as well.

Next, came the 'dept_emp' table which also has two foreign keys which are dept_no that references dept_no in 'departments; and emp_no that references emp_no in 'employees'. This table's primary keys are emp_no and dept_no.

Lastly,  I created the 'salaries' table with its foreign key being emp_no that references 'employees' and its primary key is emp_no as well. 

#Queries

First I did SELECT * for all tables to run them when needed. 

1. Ran a join statement with 'employees' and 'salaries' to list the employee number, last name, firt name, sex, and salary of each employee/
2. Selected from 'employees' table to list first name, last name, and hire date for employees hired in 1986
3. Ran a join statement with 'dept_manager', 'department', and 'employees' to list the manager of each department with their department number, 
department name, employee number, last name, and first name.
4. Ran a join statement with 'departments', dept_emp', and 'employees' to list the department number for each employee with that employee’s employee number,
--last name, first name, and department name.
5. Ran a select statement on employees where the first name equaled 'Hercules' and the last name equaled names that started with B. I used B and the % wildcard to complete this part of the query. 
6. Ran a join statement with 'departments', dept_emp', and 'employees' to list each employee in the sales department along with their employee number, last name, and first name. ***this didn't specify to include the dept_name; however, I included it to make sure it was only selecting 'sales' and that it ran correctly. ***
7. I ran a join statement on the same tables specified on #6; however, I used OR in the WHERE statement to show employees for both sales and development departments.
8. Here I selected last_name from 'employees' and used the aggregate function COUNT to count the instances of each last name, grouped it by last_name, and ordered by DESC. 



