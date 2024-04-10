-- Emilyo  Garcia
-- CS 325 Database Design Lab 10
-- October 28, 2022

start set-up-ex-tbls.sql

spool 325lab10-out.txt

prompt Emilyo Garcia

prompt ===== Lab Query 1 =====

select job_title, mgr
from empl
where salary < 2000 
union 
select job_title, mgr
from empl
where commission is not null;

prompt ===== Lab Query 2 =====

select job_title, mgr
from empl
where salary < 2000  
intersect
select	job_title, mgr
from empl
where commission is not null;

prompt ===== Lab Query 3 =====

select job_title, mgr
from empl
where salary < 2000
minus
select  job_title, mgr
from empl
where commission is not null;

prompt ===== Lab Query 4 =====

select empl_last_name, 2*(salary) twice_salary
from empl
where job_title = 'Clerk'
minus
select empl_last_name, 2*(salary) twice_salary
from empl
where hiredate < '01-JAN-2015'
order by twice_salary desc;

prompt ===== Lab Query-Set 5 =====

select empl_last_name, commission
from empl
where commission is not null;

select empl_last_name, 0
from empl
where commission is null;

select empl_last_name, commission comm_value
from empl
where commission is not	null
union
select empl_last_name, 0 comm_value            
from empl
where commission is null
order by comm_value desc, empl_last_name;

prompt ===== Lab Query-Set 6 =====

select empl_last_name, job_title, salary
from empl
where job_title != 'Manager' and salary > (select min(salary)
				  	   from empl
					   where job_title = 'Manager');

select empl_last_name, job_title, salary
from empl
where dept_num in (select dept_num
		   from dept
		   where dept_loc = 'New York');


select empl_last_name, job_title, salary
from empl
where job_title	!= 'Manager' and salary	> (select min(salary)
                                  	   from	empl
                                           where job_title = 'Manager')
union
select empl_last_name, job_title, salary
from empl
where dept_num in (select dept_num
                   from	dept
                   where dept_loc = 'New York')
order by salary;

prompt ===== Lab Query 7 =====

select empl_last_name, job_title, salary, commission
from empl
where commission is not null;

update empl
set commission = commission + 100
where job_title = 'Sales' and Salary < (select avg(salary)
			                from empl
			                where job_title = 'Sales');

select empl_last_name, job_title, salary, commission
from empl;

prompt ===== Lab Query 8 =====

delete from empl
where salary < (select min(salary)
		from empl
		where job_title = 'Sales');

select empl_last_name, job_title, salary
from empl;

prompt ===== Lab Query 9 =====

rollback;

spool off
