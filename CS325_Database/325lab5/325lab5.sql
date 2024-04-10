
-- Emilyo Garcia and Jake Freed
-- 09/22/2022

spool 325lab5-out.txt

Prompt Emilyo Garcia and Jake Freed

Prompt Lab query 1

select empl_last_name
from empl
where mgr is Null;

Prompt Lab query 2

select empl_last_name, hiredate
from empl
where job_title = 'Sales';

Prompt Lab query 3

select salary, dept_name
from empl join dept on 
 (dept.dept_num = empl.dept_num) and empl.mgr like '%7839%';

Prompt lab query 4

select distinct job_title, mgr
from empl;

Prompt lab query 5

select *
from dept
where dept_loc in ('Dallas', 'Boston', 'New York');

Prompt lab query 6

select empl_last_name, job_title, salary
from empl
where (salary < 1000) or (salary > 3000);

Prompt lab query 7

select hiredate
from empl
where hiredate between '01-SEP-18' and '30-SEP-18';

Prompt lab query 8

select empl_last_name
from empl
where empl_last_name like 'M%';

spool off
