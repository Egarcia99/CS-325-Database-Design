--Emilyo Garcia
--09/02/2022

spool 325lab2.text

Prompt
Prompt Emilyo Garcia
Prompt

drop table return;
create table return 
(return_name  varchar2(39),
return_item   varchar2(50),
return_price  decimal(6,2),
return_num    integer,
return_last   date,
primary key   (return_name)
);


describe return;


insert into return
values
('Bill', 'hose', 10.00, 2, '03-SEP-2021');

insert into return
values
('Joe', 'wheel', 150.50, 4, '15-AUG-2020');

insert into return
values
('Timmy', 'boat', 2500.00, 10, '27-OCT-2002');

insert into return
values
('Bob', 'car', 350.00, 1, '30-AUG-2012');

insert into return
values
('Connie', 'coat' , 175.00, 5, '22-SEP-2022');

insert into return
values
('Oscar', 'hat' , 15.00, 7, '01-SEP-2021'); 


select *
from return;

drop table loans;
create table loans
(return_name varchar2(39),
loan_start  date,
loan_return date,
loan_id     integer,
primary key (loan_id),
foreign key (return_name) references return
);

describe loans;

insert into loans
values
('Bill', '02-SEP-2017', '09-SEP-2018', 3);

insert into loans
values
('Bob', '29-SEP-2020', '29-SEP-2022', 5);

insert into loans
values
('Timmy', '16-SEP-2003', 7);

insert into loans
values
('Connie', '15-AUG-2001', '15-AUG-2022', 8);

select *
from loans;

spool off
