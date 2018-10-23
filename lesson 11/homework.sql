select last_name
    ,nvl(to_char(commission_pct),'No commission')
    from employees;
    
    
select job_id
    ,case job_id when 'AD_PRES' THEN 'A'
                
    end
    from employees;
    
select max(salary) 
    ,min(salary)
    ,avg(salary)
    ,sum(salary)
from employees;
select job_id
    ,max(salary) 
    ,min(salary)
    ,avg(salary)
    ,sum(salary)
from employees
group by job_id;


select job_id
,count(*)
from employees
where job_id='&var'
group by job_id;

select * from employees;
select count(distinct manager_id) as "Number of managers"
from employees;

select (max(salary)-min(salary))
from employees;

select manager_id
    ,max(salary)
    from employees
    group by manager_id;
SELECT COUNT(*) total,
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2005,1,0))"2005", SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2006,1,0))"2006", SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2007,1,0))"2007", SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2008,1,0))"2008"
FROM    employees;


select last_name || ' earns '  || to_char(salary,'$999,999.00') || ' monthly but wants ' || to_char(3*salary,'$999,999.000') ||'.' as "Dream Salaries"
from employees;

select job_id,
case job_id when 'AD_PRES' then 'b'
            when  'AD_VP' then 'a'
           else '0'
                 end 
from employees;

select job_id
    ,case job_id when 'AD_PRES' THEN 'A'
                
    end
    from employees;
    
select (case when job_id='AD_PRES' then 'b'
            else '0'
            end)
            from employees;
            
select decode(job_id, 'AD_PRES', 'A',
                      'AD_VP','B') 
from employees;
select hire_date from employees;

select count(*) Total
    ,sum(decode(to_char(hire_date,'YYYY'), '2005',1)) "2005"
    ,sum(decode(to_char(hire_date,'YYYY'), '2013', 1)) "2013"
    ,sum(decode(to_char(hire_date,'YYYY'), '2014', 1)) "2014"
from employees;


SELECT COUNT(*) total,
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2012,1,0))"2005", 
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2013,1,0))"2006", 
SUM(DECODE(TO_CHAR(hire_date, 'YYYY'),2014,1,0))"2007"
FROM    employees;

select job_id
    ,department_id
    from employees
    where rownum<=10;
    
 --90 60 100   
select job_id
    ,sum(decode(department_id, 90, salary)) Dept90
    ,sum(decode(department_id, 50, salary)) Dept50
    ,sum(decode(department_id, 100, salary)) Dept100
    ,sum(salary)
from employees
group by job_id;
 
  select department_id,
    sum(salary)
    from employees
    group by department_id;
   
 
 
    
    select distinct job_id
        ,department_id
    from employees
    where rownum<=10;
    
    
    
select location_id
    ,street_address
    ,city
    ,state_province
    ,country_name
    from locations natural join countries
    --where city='Toronto';
    
select last_name
    ,department_id
    ,department_name
    from employees natural join departments;
    
select last_name
    ,job_id
    ,department_id
    ,department_name
    from employees natural join locations natural join departments
    where city='Toronto';
    select * from departments;
    
    select * from employees
    where rownum<=10;
    select * from departments;
    
select last_name
    ,employee_id
    ,manager_id
    from employees;
    
   
   
    select last_name
    ,employee_id
    ,manager_id
    ,case(manager_id, 
    from departments natural join employees;
    
select manager_id
    ,min(salary)
    from employees
    where salary>=6000
    group by manager_id
    order by 1 asc;



