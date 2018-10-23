select * from employees;
select last_name
from employees
where lower(last_name) like '%a%'
and lower(last_name) like '%e%';

select sysdate
from dual;

select employee_id
    ,last_name
    ,salary
    ,salary*1.155 as "New Salary"
    ,salary*1.155-salary difference
    from employees;
    
select last_name
    ,length(last_name)
    from employees
    where last_name like '&letter';
    
    
select last_name
    ,round(months_between(sysdate,hire_date)) months_worked
    from employees
    order by 2;
    
    
select last_name
    ,salary
    ,lpad(salary,10,'*')
    ,rpad(' ',salary/1000,'*')
    ,length(salary)
    from employees;
    
select last_name,
    round((sysdate-hire_date)/7) as tenure
    from employees
    where department_id=90
    order by 2 asc;
    
    
    select last_name
        ,salary
        ,lpad(salary,15,'$')
        from employees;
        
        
select last_name || ' earns $' || to_char(salary) || ' monthly but wants $' || to_char(salary*3) as "Dream Salaries"
from employees
order by salary desc;

select last_name
   ,hire_date
    ,to_char(next_day(add_months(hire_date,6),'Monday')) as Review
    from employees;

select *
from employees;

select last_name
    ,to_char(next_day(add_months(hire_date,6),'Monday'),'fmDay, "The" Ddspth "of" Month, YYYY') Review
    from employees;

select last_name
    ,commission_pct
    if commission_pct==0