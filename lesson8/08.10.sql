select hire_date
    ,to_char(hire_date,'DD-MM-YYYY') as to_char
    ,to_char(hire_date,'Day-Month_YYYY') as to_char_1
    ,to_char(hire_date,'Day.Month.YYYY') as to_char_2
    ,to_char(hire_date,'DD/MM/YYYY HH24:MI:SS AM') as to_char_4
    ,to_char(hire_date,'DD "OF" Month,YYYY') month_of
    ,to_char(hire_date,'Ddspth "of" month,YYYY') month_of
     ,to_char(hire_date,'DDspth "of" month,YYYY') month_of
    from employees
    order by 4;
    
select to_char(hire_date,'fmDay.Month.YYYY') as to_char_hm
     ,to_char(hire_date,'DDspth "of" month,YYYY') month_of
     ,to_char(employee_id,'L9999.999') -- ce e asta??
     ,to_char(salary,'L99,999.999')
from employees;

select to_number(phone_number,'99.999999')
from employees
where employee_id between 100 and 144;

select * from employees
where hire_date=to_date('17-06-2011','DD.MM,YYYY');

select round(months_between(sysdate,to_date('17-JUN-2011','DD-MON-YY'))) as string_with_date
    ,sysdate
    ,to_date('17-06-2011','DD-MM-YY')
from employees
where hire_date=to_Date('17-06-2011','DD/MM/YYYY');


select salary
    ,commission_pct
    ,nvl(commission_pct,0) as substitution_commission
    ,salary*(1+commission_pct) as full_salary
    ,salary * nvl(commission_pct,1) as full_salary
from employees;


select 
from employees
where nvl(commission_pct,0)<=0.2;


select nvl2(commission_pct,1,0)
    ,nullif(10,7) first_param
    ,coalesce(commission_pct,manager_id,department_id,employee_id) as la
    ,nvl(manager_id,'12')
    --,nvl(manager_id,'12')
from employees;

select * from employees;

select first_name || ' ' || last_name as Full_Name
    ,salary,
    ,case job_id when 'ST CLERK' and salary > 0600 then department_id
    else manager_id 
    end as case_only_with_one_column
from employees;