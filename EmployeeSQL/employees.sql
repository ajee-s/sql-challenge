create table titles (
title_id varchar (100) not null,
title varchar (100) not null,
	constraint pk_titles primary key (title_id)
);

create table employees (
emp_no int not null,
emp_title_id varchar (100) not null,
birth_date date not null,
first_name varchar(100) not null,
	last_name varchar(100) not null,
	sex varchar(100) not null,
	hire_date date not null,
	constraint pk_emplyees primary key (emp_no)
);

create table departments (
dept_no varchar(100) not null,
	dept_name varchar(100) not null,
	constraint pk_department primary key (dept_no)
);

create table dept_emp (
emp_no int not null,
	dept_no varchar (100) not null,
	constraint pk_dept_emp primary key (emp_no,dept_no)
);

create table dept_manager (
dept_no varchar (100)not null,
	emp_no int not null,
	constraint pk_dept_manager primary key (dept_no,emp_no)
);


create table salaries (
emp_no int not null,
	salary int not null,
	constraint pk_salaries primary key (emp_no)
);


alter table employees
add constraint fk_employees_titles
foreign key (emp_title_id)
references titles (title_id);

alter table salaries
add constraint fk_emplyoees_salaries
foreign key (emp_no)
references employees (emp_no);

alter table dept_emp
add constraint fk_dept_emp_emp_no
foreign key (emp_no)
references employees(emp_no);

alter table dept_emp
add constraint fk_dept_emp_dept_no
foreign key (dept_no)
references departments(dept_no);

alter table dept_manager
add constraint fk_dept_manager_dept_no
foreign key (dept_no)
references departments(dept_no);

alter table dept_manager
add constraint fk_dept_manager_emp_no
foreign key (emp_no)
references employees(emp_no);

select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from salaries
inner join employees on
employees.emp_no=salaries.emp_no;

select first_name, last_name, hire_date
from employees
where hire_date between '1/1/1986' and '12/31/1986';

select 
employees.emp_no, employees.last_name, employees.first_name,
dept_manager.dept_no, 
departments.dept_name
from dept_manager
inner join departments 
 on dept_manager.dept_no=departments.dept_no
inner join employees 
 on employees.emp_no=dept_manager.emp_no

select employees.emp_no, employees.last_name, employees.first_name,
dept_emp.dept_no, 
departments.dept_name
from dept_emp
inner join departments 
 on dept_emp.dept_no=departments.dept_no
inner join employees 
 on employees.emp_no=dept_emp.emp_no
 
select first_name, last_name, sex
from employees
where (first_name='Hercules'and last_name like 'B%');

select departments.dept_name, 
employees.emp_no, employees.last_name, employees.first_name
from dept_emp
inner join departments 
 on dept_emp.dept_no=departments.dept_no
inner join employees 
 on employees.emp_no=dept_emp.emp_no
 where departments.dept_name = 'Sales';
 
select departments.dept_name, 
employees.emp_no, employees.last_name, employees.first_name
from dept_emp
inner join departments 
 on dept_emp.dept_no=departments.dept_no
inner join employees 
 on employees.emp_no=dept_emp.emp_no
 where departments.dept_name = 'Sales' or departments.dept_name ='Development';
 
select last_name,
count (last_name)
from employees
group by last_name
order by
count(last_name) desc;

