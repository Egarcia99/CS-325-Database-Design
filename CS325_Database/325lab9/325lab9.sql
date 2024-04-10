-- Emilyo Garcia
-- 10/21/2022
-- 325 lab 9

spool 325lab9-out.txt

prompt Emilyo Garcia

prompt ===== Lab Query 1 =====

select *
from dept
order by dept_loc;

prompt ===== Lab Query 2 =====

select *
from dept
order by dept_name;

prompt ===== Lab Query 3 =====

select empl_last_name, dept_name, salary, hiredate
from empl, dept
where empl.dept_num = dept.dept_num
order by dept_name, hiredate;

prompt ===== Lab Query 4 =====

select empl_last_name, dept_name, salary, hiredate
from empl, dept
where empl.dept_num = dept.dept_num
order by salary desc, hiredate;

prompt ===== Lab Query 5 =====

select mgr, min(hiredate)
from empl
group by mgr;

prompt ===== Lab Query 6 =====

select mgr, min(hiredate)
from empl
group by mgr
having min(hiredate) > '01-JAN-15';

prompt ===== Lab Query 7 =====

select dept_name, count(*)
from empl, dept
where empl.dept_num = dept.dept_num
group by dept_name
order by count(*);

prompt ===== Lab Query 8 =====

select dept_name, count(*)
from empl, dept
where empl.dept_num = dept.dept_num
group by dept_name
having avg(salary) < 2000
order by count(*);

prompt ===== Lab Query 9 =====

select empl_last_name, job_title, commission
from empl
order by commission;

spool off
