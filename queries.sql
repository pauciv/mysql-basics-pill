show databases;
use employees;

-- EMPLOYEES --------------------------------------------------------------------------------------------------------------------------
select * from employees;

SET FOREIGN_KEY_CHECKS = 0; 
alter table employees modify column emp_no int auto_increment; 
SET FOREIGN_KEY_CHECKS = 1;

insert into employees (birth_date, first_name, last_name, gender, hire_date) 
values
	('1999-05-22', 'Pau', 'Civill', 'M', '2022-09-28');

show create table employees; -- genera el comando para crear la tabla de nuevo, esta vez ya con el auto_increment en emp_no. 

insert into employees (birth_date, first_name, last_name, gender, hire_date) 
values
	('1994-01-11', 'Juan Carlos', 'Manzanera', 'M', '2022-09-12'),
    ('1993-02-09', 'Alex', 'Balaguer', 'M', '2021-03-12'),
    ('1990-02-26', 'Marta', 'Punset', 'F', '2021-03-25'),
    ('1996-03-16', 'Jose', 'Morcillo', 'M', '2022-11-02'),
    ('2003-04-02', 'Ezequiel', 'Zvirgzdiņš', 'M', '2022-09-19'),
    ('1998-05-29', 'Jackson', 'Jiacheng', 'M', '2020-05-06'),
    ('1995-05-05', 'Lidia', 'Frias', 'F', '2018-02-20'),
    ('1992-06-16', 'Alejandro Luis', 'Herrero', 'M', '2022-04-06'),
    ('1997-07-10', 'Lokesh', 'Pereiro', 'M', '2021-09-05'),
    ('1988-08-30', 'Elisabet', 'Ramos', 'F', '2018-09-10'),
    ('1992-09-18', 'Antonio', 'Martín', 'M', '2019-03-12'),
    ('1995-09-16', 'Alvaro', 'Alonso', 'M', '2020-01-30'),
    ('1991-11-09', 'Thalita', 'de Oliveira', 'F', '2021-06-24'),
    ('1997-12-13', 'Ziwen', 'Wang', 'M', '2022-04-24');

-- SALARIES ----------------------------------------------------------------------------------------------------------------------------
select * from salaries;

insert into salaries (emp_no, salary, from_date, to_date) 
values
	(1, 50000, '2022-09-28', '2028-09-28'),
    (2, 43000, '2022-09-12', '2026-09-12'),
    (3, 45000, '2021-03-12', '2025-03-12'),
    (4, 36000, '2021-03-25', '2026-03-25'),
    (5, 36000, '2022-11-02', '2024-11-02'),
    (5, 42000, '2024-11-02', '2028-11-02'),
    (6, 22000, '2022-09-19', '2023-09-19'),
    (6, 28000, '2023-09-19', '2027-09-19'),
    (7, 22000, '2020-05-06', '2022-05-06'),
    (7, 28000, '2022-05-06', '2025-05-06'),
    (8, 27000, '2018-02-20', '2020-02-20'),
    (8, 32000, '2020-02-20', '2025-02-20'),
    (9, 40000, '2022-04-06', '2026-04-06'),
    (9, 50000, '2026-04-06', '2030-04-06'),
    (10, 38000, '2021-09-05', '2026-09-05'),
    (11, 34000, '2018-09-10', '2022-09-10'),
    (12, 30000, '2019-03-12', '2023-03-12'),
    (13, 44000, '2020-01-30', '2026-01-30'),
    (14, 45000, '2021-06-24', '2024-06-24'),
    (15, 33000, '2022-04-24', '2028-04-24');

-- DEPARTMENTS ------------------------------------------------------------------------------------------------------------------------
select * from departments;

insert into departments (dept_no, dept_name) 
values
	('AMT', 'Administra'),
    ('MKT', 'Marke'),
    ('HR', 'Human'),
    ('IT', 'Information technolo'),
    ('ACT', 'Accoun'),
    ('PR', 'Public'),
    ('RCT', 'Recrui');
    
-- DEPARTMENTS_EMPLOYEE ----------------------------------------------------------------------------------------------------------------
select * from dept_emp;
select emp_no, from_date, to_date from salaries; -- to display the dates of employees contracts  

insert into dept_emp (emp_no, dept_no, from_date, to_date) 
values
	(1, 'IT', '2022-09-28', '2028-09-28'),
    (1, 'ACT', '2023-09-28', '2028-09-28'),
    (2, 'IT', '2022-09-12', '2026-09-12'),
    (2, 'MKT', '2024-09-12', '2026-09-12'),
    (3, 'HR', '2021-03-12', '2025-03-12'),
    (3, 'AMT', '2022-03-12', '2025-03-12'),
    (4, 'MKT', '2021-03-25', '2026-03-25'),
    (4, 'HR', '2025-03-25', '2026-03-25'),
    (5, 'RCT', '2022-11-02', '2028-11-02'),
    (5, 'PR', '2022-11-02', '2028-11-02'),
    (5, 'IT', '2026-11-02', '2028-11-02'),
    (6, 'PR', '2022-09-19', '2027-09-19'),
    (6, 'AMT', '2023-09-19', '2027-09-19'),
    (7, 'MKT', '2020-05-06', '2025-05-06'),
    (7, 'IT', '2022-05-06', '2025-05-06'),
    (8, 'IT', '2018-02-20', '2025-02-20'),
    (8, 'RCT', '2023-02-20', '2025-02-20'),
    (9, 'HR', '2022-04-06', '2030-04-06'),
    (9, 'AMT', '2023-04-06', '2030-04-06'),
    (9, 'PR', '2028-04-06', '2030-04-06'),
    (10, 'ACT', '2021-09-05', '2026-09-05'),
    (10, 'AMT', '2021-09-05', '2026-09-05'),
    (11, 'IT', '2018-09-10', '2022-09-10'),
    (12, 'ACT', '2019-03-12', '2023-03-12'),
    (13, 'MKT', '2020-01-30', '2026-01-30'),
    (14, 'RCT', '2021-06-24', '2024-06-24'),
    (15, 'HR', '2022-04-24', '2028-04-24');
    
-- DEPARTMENTS_MANAGER ---------------------------------------------------------------------------------------------------------------
select * from dept_manager;

insert into dept_manager (emp_no, dept_no, from_date, to_date) 
values
	(11, 'PR', '2022-09-28', '2028-09-28'),
	(11, 'IT', '2022-09-28', '2028-09-28'),
    (12, 'ACT', '2022-09-28', '2028-09-28'),
    (13, 'MKT', '2022-09-28', '2028-09-28'),
    (14, 'RCT', '2022-09-28', '2028-09-28'),
    (15, 'HR', '2022-09-28', '2028-09-28');

-- TITLES -----------------------------------------------------------------------------------------------------------------------------
select * from titles;

insert into titles (emp_no, title, from_date, to_date) 
values
	(1, 'Computer Science', '2017-09-28', '2021-06-28'),
    (2, 'Computer Science', '2016-09-12', '2020-06-12'), --
    (3, 'Human Resources', '2016-09-12', '2020-06-12'), --
    (4, 'Marketing', '2015-09-25', '2019-06-25'),
    (5, 'Business administration', '2016-09-12', '2020-06-12'), --
    (6, 'International Relations', '2011-09-19', '2016-06-19'),
    (7, 'Comunication and digital media', '2013-05-06', '2019-05-06'),
    (8, 'Computer Science', '2013-09-20', '2017-06-20'),
    (9, 'Psychology', '2015-10-06', '2020-06-06'), --
    (10, 'Accounting and finance', '2011-09-19', '2015-06-19'),
    (11, 'Computer Science', '2013-09-10', '2017-06-10'),
    (12, 'Accounting and finance', '2015-10-12', '2020-06-12'), --
    (13, 'Comunication and digital media', '2015-09-25', '2019-06-25'),
    (14, 'Psychology', '2014-09-25', '2019-06-25'),
    (15, 'Human Resources', '2016-09-16', '2021-06-21');

-- 1.5.2 UPDATE DATA --------------------------------------------------------------------------------------------------------------------
-- - Update employees
select * from employees;

SET SQL_SAFE_UPDATES = 0;

update employees set first_name = 'Pau' 
where first_name = 'Ziwen' and last_name = 'Wang' and birth_date = '1997-12-13' 
or first_name = 'Alejandro Luis' and last_name = 'Herrero' and birth_date = '1992-06-16';

SET SQL_SAFE_UPDATES = 1;

select * from employees where first_name = 'Pau';

-- - Update departments
select * from departments;

update departments set dept_name = 'Accounting' where dept_no = 'ACT'; 
update departments set dept_name = 'Administration' where dept_no = 'AMT'; 
update departments set dept_name = 'Human Resources' where dept_no = 'HR'; 
update departments set dept_name = 'Information technology' where dept_no = 'IT'; 
update departments set dept_name = 'Marketing' where dept_no = 'MKT'; 
update departments set dept_name = 'Public Relations' where dept_no = 'PR'; 
update departments set dept_name = 'Recruiting' where dept_no = 'RCT';

-- 1.5.3 GET DATA --------------------------------------------------------------------------------------------------------------------
select * from employees;
select * from salaries;

-- - Select all employees with a salary greater than 20,000, you must list all employees data and the salary.
select e.*, s.salary from employees e left join salaries s on e.emp_no = s.emp_no where s.salary > 40000; -- I have put 40000 because otherwise all of them will be selected.

-- - Select all employees with a salary below 10,000, you must list all employees data and the salary.
select e.*, s.salary from employees e left join salaries s on e.emp_no = s.emp_no where s.salary < 30000; -- I have put 30000 because otherwise none of them will be selected.

-- - Select all employees who have a salary between 14,000 and 50,000, you must list all employees data and the salary.
select e.*, s.salary from employees e left join salaries s on e.emp_no = s.emp_no where s.salary >= 14000 and s.salary <= 50000;

-- - Select the total number of employees.
select count(emp_no) from employees;

-- - Select the total number of employees who have worked in more than one department.
select count(*) as multidept_emp from (
	select emp_no from dept_emp group by emp_no having count(emp_no) > 1 -- count(*) returns the same /-- this single line returns all numbers from 1 to 10
) as x; -- x is the subqueriy's name.

-- - Select the titles of the year 2020.
select title from titles where to_date like '2020%';
select title as 2020_titles from titles where to_date like '2020%'; -- renaming title

-- - Select the name of all employees with capital letters.
select upper(first_name) from employees;

-- - Select the name, surname and name of the current department of each employee.
select * from employees;
select * from dept_emp;
select * from departments; 

select e.first_name, e.last_name, d.dept_name 
from employees e 
	left join dept_emp d_e 
	on e.emp_no = d_e.emp_no
	left join departments d
	on d_e.dept_no = d.dept_no;

-- - Select the name, surname and number of times the employee has worked as a manager.
select * from employees;
select * from dept_manager;

select e.first_name, e.last_name, count(d_m.emp_no) as no_times_mng
from dept_manager d_m
	left join employees e
    on d_m.emp_no = e.emp_no
    group by e.emp_no;

-- - Select the name of employees without any being repeated.
select distinct(first_name) from employees;

-- 1.5.4 DELETE DATA
-- - Delete all employees with a salary greater than 20,000.
select * from salaries;

-- to select what I want to delete
select e.*, s.salary 
from employees e
	left join salaries s
    on e.emp_no = s.emp_no
    where s.salary > 44000; -- I have put 40000 because otherwise all of them will be selected.

delete employees
from employees
	left join salaries
    on employees.emp_no = salaries.emp_no
    where salaries.salary > 44000; -- I have put 40000 because otherwise all of them will be selected.

select * from employees;

-- - Remove the department that has more employees.
select * from dept_emp;
select * from departments;

-- count the number of employees of each department
select count(d_e.emp_no) as no_emp, d.dept_name -- LE TENGO QUE HACER UN MAX AL COUNT
	from dept_emp d_e 
		left join departments d 
		on d.dept_no = d_e.dept_no 
		group by d.dept_no; -- group by d_e.dept_no; (is the same)

-- select max num of employees in a department
select max(no_emp) as max_emp 
from (
	select count(d_e.emp_no) as no_emp, d.dept_name -- LE TENGO QUE HACER UN MAX AL COUNT
	from dept_emp d_e 
		left join departments d 
		on d.dept_no = d_e.dept_no 
		group by d.dept_no -- group by d_e.dept_no; (is the same)
) as max_num;

-- delete (an attempt that DOES NOT WORK)
delete departments
from departments
    where dept_no = (
		select max(no_emp) as max_emp 
		from (
			select count(emp_no) as no_emp, d.dept_name -- LE TENGO QUE HACER UN MAX AL COUNT
			from dept_emp d_e 
				left join departments d 
				on d.dept_no = d_e.dept_no 
				group by d.dept_no -- group by d_e.dept_no; (is the same)
		) as max_num
    );
    
-- delete solution
delete departments 
from departments
	where dept_no = (    
		select dept_no, count(emp_no) as num_emp
        from dept_emp
		group by dept_no
        order by num_emp desc
        limit 1
	);
