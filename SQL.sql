select * from ad_exam_results;
select student_id
    ,course_id
    ,marks
    ,marks*1.155 as "New Score"
    from ad_exam_results;
    
    select student_id
    ,course_id
    ,marks
    ,marks*1.155 as "New Score"
    ,marks*0.155 as "Increase"
    from ad_exam_results
    order by  marks asc;
    

    
    select first_name as "s g"
    from employees
    where first_name ='Steven';
    
    
    set verify on
    select employee_id,last_name, salary
    from employees
    where employee_id = &emp;
    
    
    grant select on string_addreses to ora19:
    use ora11
    select * 
    from string_addreses;
    
    
    
    
    
    Create table String_Addreses as
Select 'MD-2002,or.Chisinau, str. Mihai Eminescu 12, ap.28' as address from dual
Union
Select '2010,or.Chisinau, str. Grigore Vieru 50, ap.3' as address from dual
Union
Select 'MD2015,or.Chisinau, str. Ion Creanga 4, ap.17'  as address from dual
Union
Select 'md-2030,Chisinau, st. Muncesti 8, ap.54'  as address from dual
Union
Select 'MD-2004,Chisineov, str-da. Bucuriei 2, ap.23'  as address from dual
Union
Select 'Md-2045,or Chisin., s. Ion Inculet 8, ap.50'  as address from dual
Union
Select 'Md2013,chisinau, str. Vasile Lupu 40, ap.20'  as address from dual
Union
Select 'MD2031,or.CHISINAU,'  as address from dual
Union
Select 'md2017,or.CH, str. , ap.28'  as address from dual;


select address
    ,instr(address,',',1)
    from string_addreses;
    
select address
    ,instr(address,',',1)
    ,substr(address,1,instr(address,',',1)-1)
    from string_addreses;
    
    select address
    ,instr(address,',',1)
    ,substr(address,1,instr(address,',',1)-1)
    ,substr(substr(address,1,instr(address,',',1)-1),-4,4) as "zip code"
    ,('MD-' || substr(substr(address,1,instr(address,',',1)-1),-4,4)) as "zip code finis" 
    from string_addreses;



select *
from string_addreses;

Select Substr(address,1,instr(address,',',1,1)-1) as t1
     ,'MD-'||substr(Substr(address,1,instr(address,',',1,1)-1),-4) zip_code
From String_Addreses;


select address, instr(address,',',1,2)
from string_addreses;



select salary
,lpad(salary,6,'_')
,rpad(salary,6,'_')
,concat(concat(last_name,' '), first_name) as "full name"
,upper(concat(concat(last_name,' '), first_name)) as "full name 2"
from employees;

select round(100.35542,2)
,round(321.43322,-3)
,round(34.545342)
,round(150.543,-2)
from dual;



select trunc(100.35542,2)
,trunc(321.43322,-3)
,trunc(34.545342)
,trunc(232.543,-2)
from dual;
select floor(9)
from dual;


    
select * from employees;

select last_name
    ,salary
    from employees
    where salary>12000;
    
select employee_id
    ,last_name
    ,salary
    ,department_id
from employees
where manager_id=&manager
order by '&column';

select last_name
from employees
where last_name like '__a%';

select last_name
from employees
where last_name like '%a%'
and last_name like '%e%';

select last_name
    ,job_id
    ,salary
from employees
where (job_id='SA_REP'
or job_id='ST_CLERK')
and (salary <>2500
and salary <>3500
and salary<>7000);

select last_name as Employee
    ,salary Motnhly_Salary
    ,commission_pct
    from employees
    where commission_pct=0.2;
    
    
    select sysdate "Date"
from dual;



select Hire_date from employees;
select last_name
    ,round(months_between(sysdate,hire_Date))
    from employees
    order by 2;

    