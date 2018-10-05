select current_date
from dual;

select sessiontimezone
    ,current_timestamp
from dual;

select last_name
    ,trunc((sysdate-hire_date)/7)
from employees;

select *
from ad_exam_details;

select exam_type
    ,start_date
    ,round((sysdate-start_date)/7) weeks
    from ad_exam_details
    where exam_id=550;
    
    select first_name || ' ' || last_name
    ,sysdate
    ,hire_date
    ,round((sysdate-hire_date)/7) as how_old_works_there
    ,round((sysdate-hire_date)/365) years
    from employees
    where round((sysdate-hire_date)/365)>5;
    
    
    
    
    select last_name
    ,hire_date
    ,trunc(months_between(sysdate,hire_date)) as months_worked
    ,trunc((sysdate-hire_date)/7) as weeks_worked
    ,add_months(sysdate,2)
    ,next_day('23-jul-2018','friday')
    from employees
    order by 3 asc;
    
    