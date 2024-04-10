-- Emilyo Garcia and Emily Funk
-- October 7, 2022
-- Database Design Lab 7

spool 325lab7-out.txt

Prompt Emilyo Garcia and Emily Funk

Prompt ===== Lab Query 1 =====

select empl_last_name, hiredate
from empl
where job_title = 'Manager'and salary > ( select avg(salary)
					  from empl
					  where job_title = 'Manager');

Prompt ===== Lab Query 2 =====

select hiredate
from empl
where dept_num in (select dept_num
		   from dept
		   where dept_loc = 'New York');

Prompt ===== Lab Query 3 =====

select empl_last_name, hiredate
from empl
where hiredate > (select max(hiredate)
		  from empl
		  where job_title = 'Manager');

Prompt ===== Lab Query 4 =====

select empl_last_name "Employee", dept_name || ' (' || dept_loc || ')' "Department (Location)"
from empl e, dept d
where d.dept_num = e.dept_num;


Prompt ===== Lab Query 5 =====

select empl_last_name, job_title, hiredate
from empl
where hiredate > '01-JAN-2018' 
union 
select empl_last_name, job_title, hiredate
from empl
where dept_num in (select dept_num
		   from dept
		   where dept_loc = 'Dallas');

Prompt ===== Lab Query 6 =====

select empl_last_name
from empl
where hiredate > (select max(hiredate)
		  from empl
		  where job_title = 'Manager');

spool off
