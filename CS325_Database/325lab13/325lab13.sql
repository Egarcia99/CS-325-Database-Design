-- Emilyo Garcia and Michael Mohaddess
-- 325 lab 13
-- November 18, 2022

spool 325lab13-out.txt

prompt ===== Lab Problem 1 =====

select dept_name, salary
from dept, empl
where dept.dept_num = empl.dept_num
order by dept_name;

prompt ===== Lab Problem 2 =====

set pagesize 50
set feedback
/

prompt ===== Lab Problem 3 =====

col dept_name heading Department format a10
/

prompt ===== Lab Problem 2 =====

set pagesize 50
set feedback
/

prompt ===== Lab Problem 3 =====

col dept_name heading Department format a10
/

prompt ===== Lab Problem 4 =====

col salary heading “Dept|Salaries” format 99,999.99
/

prompt ===== Lab Problem 5 =====

break on dept_name skip 1
/

prompt ===== Lab Problem 6 =====

compute avg of salary on dept_name
/

prompt ===== Lab Problem 7 =====

ttitle “Department Average Salaries”
/


prompt ===== Lab Problem 8 =====

col job_title heading Position format a15
col hire_date heading Hired format a10 
col dept_num heading Department format a10
break on job_title skip 1

Select *
From empl
Order by job_title, hiredate, dept_num desc;

prompt ===== Lab Problem 9 =====

Clear breaks
Clear computes
Clear columns
ttitle off
Set feedback 6
Set pagesize 14
/

Spool off

