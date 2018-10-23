--natural join
select *
from employees
natural join jobs;

select employees.first_name
    ,employees.last_name
    ,jobs.job_title
from employees
natural join jobs;

select t1.first_name
    ,t1.last_name
    ,t2.job_title
from employees t1 
natural join jobs  t2;

select *
from employees
where employee_id=100;

select * from jobs
where job_id='AD_PRES';


select * from employees
natural join jobs
where employee_id=100;


select * from employees
natural join departments
natural join jobs
where employee_id=102;


--using join

select * from  employees
join jobs using(job_id)
join departments using(department_id)
where employee_id=100;


select * from employees
join departments using(manager_id);

select * from employees
join jobs using(job_id)
join departments using(manager_id);



--Joins with ON-clause

select t1.*, t2.job_title
from employees t1
join jobs t2
on t1.job_id=t2.job_id;
