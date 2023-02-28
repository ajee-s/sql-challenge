# sql-challenge

titles
-
title_id PK varchar(100)
title varchar(100)


employees
-
emp_no PK int
emp_title_id varchar FK >- titles.title_id
birth_date date
first_anme varchar
last_name varchar
sex varchar
hire_date date



salaries
----
emp_no PK int, FK >- employees.emp_no
salary int



departments
----
dept_no PK varchar
dept_name varchar


dept_emp
---
emp_no PK int, FK >- employees.emp_no
dept_no PK varchar, FK >- departments.dept_no

dept_manager
---
dept_no PK varchar, FK >- departments.dept_no
emp_no PK int, FK >- employees.emp_no

Steps completed -

Create a table schema for each of the six CSV file
Import each CSV file into its corresponding SQL table
List the employee number, last name, first name, sex, and salary of each employee (2 points)
List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)
List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
List each employee in the Sales department, including their employee number, last name, and first name (2 points)
List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)