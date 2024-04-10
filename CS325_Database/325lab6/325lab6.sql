-- Emilyo Garcia and Evan Putnam
-- September 30, 2022

spool 325lab6-out.txt

Prompt Emilyo Garcia and Evan Putnam 

Prompt ===== Lab Query 1 =====

select dept_name, dept_loc LOCATION
from dept;

Prompt ===== Lab Query 2 =====

select empl_last_name "Last Name", hiredate "Hired", job_title "Job Title"
from empl;

Prompt ===== Lab Query 3 =====

select empl_last_name, hiredate, hiredate + 3 "H PLUS 3"
from empl;

Prompt ===== Lab Query 4 =====

select job_title, commission, commission * 1.2 "PLUS 20%"
from empl;

Prompt ===== Lab Query 5 =====

select job_title, commission, commission * 1.2 "PLUS 20%"
from empl
where commission is not NULL;

Prompt ===== Lab Query 6 =====

select cust_lname, empl_last_name
from customer, empl
where customer.empl_rep = empl.empl_num;

Prompt ===== Lab Query 7 =====

select empl_last_name, dept_loc
from empl e, dept d
where e.dept_num = d.dept_num;

Prompt ===== Lab Query 8 =====

select empl_last_name, e.dept_num, dept_name
from empl e , dept d
where e.dept_num = d.dept_num;

Prompt ===== Lab Query 9 =====

Select count(*) "# Salary > 2000"
from empl
where salary > 2000;

Prompt ===== Lab Query 10 =====

select min (hiredate) "Earliest", max(hiredate) "Latest"
from empl
where job_title = 'Clerk';

Prompt ===== Lab Query 11 =====

select count(*), sum(commission), avg(commission)
from empl
where job_title = 'Sales';

Prompt ===== Lab Query 12 =====

select count(*) "Num-Empl", count(commission) "Non-Null-Num-Comm", count(mgr) "Non-Null-Num-Mgr"
from empl;
 
Prompt ===== Lab Query 13 =====

select min(hiredate)
from empl
where job_title = 'Clerk';

spool off

