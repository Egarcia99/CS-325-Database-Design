-- Emilyo Garcia

-- October 14th 2022

-- Lab 8 325 Database Design

spool 325lab8-out.txt

prompt Emilyo Garcia

prompt ===== Lab Query 1 =====

select dept_name
from dept
where exists (select 'a'
  	      from empl
	      where empl.dept_num = dept.dept_num
              AND salary >= 3000);

prompt ===== Lab Query 2 =====

select empl_last_name
from empl
where job_title = 'Sales' and not exists (select empl_rep
		 			  from customer
					  where customer.empl_rep = empl.empl_num);
		  
prompt ===== Lab Query 3 =====
	
select empl_last_name, job_title
from empl 
where exists     (select 'a'
	          from dept
		  where dept.dept_num = empl.dept_num
		  and dept_name = &dept_name); 
		  
prompt ===== Lab Query 4 =====

select empl_last_name || ' - $' || salary "Employee Salaries"
from empl;	         
	   	   
prompt ===== Lab Query 5 =====

select empl_last_name
from empl
where empl_num = (select mgr
	          from empl
		  where job_title = 'Clerk'
		  and salary = (select max(salary)
		  	        from empl
		  		where job_title = 'Clerk'));

prompt ===== Lab Query 6 =====

select 35
from empl
where job_title = 'Manager';

prompt ===== Lab Query 7 =====

select empl_rep
from customer
union
select empl_num
from empl
where job_title = 'Analyst';

spool off
	     
	  

