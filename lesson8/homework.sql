select last_name
    ,round(months_between(sysdate,hire_date))
from employees;

select
    last_name
    ,lpad(salary,10,'$')
    from employees;
    
select last_name
    ,lpad(' ',salary/1000,'*')
    from employees
    order by 2;
    
select last_name
    ,round((sysdate-hire_date)/7) tenure
    from employees
    where department_id=90;
    
select last_name || ' earns ' || to_char(salary,'$999,999.000') || ' monthly but wants $'|| to_char(salary*3,'$999,999.000') || '.' as "Dream Salaries"
from employees;

select last_name
    ,hire_date
    ,to_char(next_day((add_months(hire_date,6)),'Monday'),'Day, "the" Ddspth "of" Month,YYYY')
    from employees;
    
select last_name
    ,nvl(to_char(commission_pct),'No Commission')
    from employees;
    
 select job_id
    ,last_name
    ,case job_id when 'AD_PRES' then 'A'
                 when 'ST_MAIN' then 'B'
                 when 'IT_PROG' then 'C'
                 when 'SA_REP' then 'D'
                 when 'ST_CLERK' then 'E'
                 ELSE '0'
                 END as Grade
    from employees
    order by 1;

select last_name,
case job_id when 'AD_PRES' then salary*2
end
from employees;
    
     select job_id
    ,last_name
    ,(case       when job_id='AD_PRES' then 'A'
                 when job_id='ST_MAIN' then 'B'
                 when job_id='IT_PROG' then 'C'
                 when job_id='SA_REP' then 'D'
                 when job_id='ST_CLERK' then 'E'
                 ELSE '0'
                 END) Grade 
    from employees
    order by 1;
    
    
  
  select department_id
    ,job_id
    ,avg(salary)
  from employees
  group by department_id;
  
  SELECT department_id, job_id, sum(salary) FROM employees
GROUP BY department_id, job_id
         ORDER BY job_id;
        
        
        
select hire_date,salary
from employees
order by hire_date;

select max(salary) as "Salariu Maxim"
    ,to_char(hire_date, 'MM.YYYY') as hire_date
    from employees
where phone_number like'650%'
group by to_char(hire_date, 'MM.YYYY')
order by 1 desc;

select * from employees;

select job_id
from employees;

select count(job_id)
   ,substr(job_id,1,1) || substr(lower(job_id),2,length(job_id))
 from employees
 group by job_id;
 
 
 select to_char(hire_date, 'MM.YYYY') "data angajare"
    ,count(to_char(hire_date, 'MM.YYYY')) "numar angajati"
from employees
group by to_char(hire_date, 'MM.YYYY')
having count(to_char(hire_date, 'MM.YYYY')) > 1
order by 2;
 
 
 select * from employees
 order by manager_id;
 -- managerii care au in subdiviziune mai mult de o persoana
 
 select manager_id
 from employees
 group by manager_id
 having count(manager_id)>1;
 
 
 
 --5)Afisati toate comisioanele si numarul persoanelor care primesc salariu cu comisionul respectiv.
--Pentru persoanele care nu au comision afisati "Persoane fara comision"
 select count(*)
 salary,nvl(to_char(commission_pct),'persoane fara comision')
 from employees
 group by commission_pct;
 
 select nvl(to_char(commission_pct),"persone fara comision")
 from employees;
select * from employees;

select * from job_history;

 --6-a)Afisati employee_id, job_id si cite luni a lucrat persoana respectiva in acea functie.
--Ordonati datele la alegere astfel incit data angajatul are mai multe inregistrari sa le vizualizati impreuna. 
--6- b)Verificati daca sunt persoane care si-au schimbat jobul cel putin de 2 ori.



select job_id
    ,max(salary)
    ,min(salary)
    ,sum(salary)
    ,round(avg(salary))
    from employees
    group by job_id
    order by 1;
select job_id
    ,count(job_id)
    from employees
    group by job_id;
    
select
count(manager_id) "Number of Managers"
from employees;


select max(salary)-min(salary) Difference
from employees;
select * from employees;

select manager_id
    ,min(salary)
    from employees
    group by manager_id
    order by 1 asc;


select employee_id
,count(employee_id)
from job_history
group by employee_id
having count(employee_id)>=2;
--continua acasa

