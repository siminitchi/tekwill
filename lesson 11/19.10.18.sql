select * from employees;

select 
t1.last_name
    ,t1.first_name
    ,employee_id
    ,t2.job_title
    ,t2.max_salary
    ,t3.department_name
from employees t1
inner join jobs t2
on t1.job_id=t2.job_id
join departments t3
on t1.department_id=t3.department_id
and t3.department_id=90;
--fetch first 10 rows only;
--where t1.employee_id=102;
    
--selectam fiecare pesoana si ce manager are
select a.employee_id
    ,a.first_name ||' ' || a.last_name as employee_name
    ,a.manager_id
    ,b.employee_id
    ,b.first_name|| ' ' || b.last_name as manager_id
    from employees   a
    join employees b
    on a.manager_id=b.employee_id;
    
  --selectam toti angajatii pe care ii are un manager  
select a.employee_id
    ,a.first_name ||' ' || a.last_name as manager_id
    --,a.manager_id
    ,b.employee_id
    ,b.first_name|| ' ' || b.last_name as employee_name
    from employees   a
    join employees b
    on b.manager_id=a.employee_id;
 
 select 
      a.first_name ||' ' || a.last_name as employee_name
    ,a.manager_id
    ,b.employee_id
    ,b.first_name|| ' ' || b.last_name as manager_id1
    from employees   a
    left outer join employees b
    on a.manager_id=b.employee_id
    order by 3;
   -- where a.manager_id is null;
  
  
  
  -- in cazul dat numarul de 195 este explicat de ceea ca exista manageri care nu au subalterni,
 select 
      a.first_name ||' ' || a.last_name as employee_name
    ,a.manager_id
    ,b.employee_id
    ,b.first_name|| ' ' || b.last_name as manager_id1
    from employees   a
    right outer join employees b
    on a.manager_id=b.employee_id
    order by 3;
   -- where a.manager_id is null;
 
 -- el va include intersectia, ceea ce e  in a si ceea ce ramane in b
  select 
      a.first_name ||' ' || a.last_name as employee_name
    ,a.manager_id
    ,b.employee_id
    ,b.first_name|| ' ' || b.last_name as manager_id1
    from employees   a
    full outer join employees b
    on a.manager_id=b.employee_id
    order by 3;



--Home Assignment
--task 1
 select a.location_id
    ,a.street_address
    ,a.city
    ,a.state_province
    ,b.country_name
    from locations a
    join countries b  using (country_id);
 
 
 select * from locations;
 
 select a.location_id
    ,a.street_address
    ,a.city
    ,a.state_province
    ,b.country_name
    from locations a
natural join countries b;

select * from departments;

select last_name
    ,department_id
    ,department_name 
    from employees
    join departments using (department_id);
    
select a.last_name Employee
    ,a.employee_id "EMP#"
    ,b.last_name Manager
    ,a.manager_id
    from employees a
    join employees b
    on a.manager_id=b.employee_id
    order by 4 asc;
    
    select * from employees
    where manager_id is null;
    -- including the one who has the manager_id null
    select a.last_name Employee
    ,a.employee_id "EMP#"
    ,b.last_name Manager
    ,a.manager_id
    from employees a
    left outer join employees b
    on a.manager_id=b.employee_id
    order by 4 asc;
    
    select a.last_name
    ,a.department_id
    ,b.last_name
    from employees a
    join employees b
    on a.department_id=b.department_id
    where a.employee_id <> b.employee_id
    order by 2;

    
    select last_name
        ,department_id
from employees
order by 2;


select hire_date
from employees
where last_name='Davies';

select last_name
    ,hire_date
    from employees
    where hire_date>'29-JAN-13';
    

    
 
    
select a.last_name
    ,a.hire_date
    from employees a join employees davies
    on (davies.last_name='Davies') 
    where davies.hire_date<a.hire_date;
    
    
       
select a.last_name
    ,a.salary
    from employees a join employees davies
    on (davies.last_name='Davies')
    where davies.salary>a.salary;

select a.last_name
    ,a.hire_date
   ,b.last_name
    ,b.hire_date
    ,a.job_id
    from employees a
    join employees b
    on a.manager_id=b.employee_id
    where b.hire_date>a.hire_date;
    
    
    
    Create table job_grades
As(
Select 'A' grade_level,1000 lowest_sal,2999 highest_sal From dual
Union
Select 'B',3000,5999 From dual
Union
Select 'C',6000,9999 From dual
Union
Select 'D',10000,14999 From dual
Union
Select 'E',15000,24999 From dual
Union
Select 'F',25000,40000 From dual);

select job_title
    ,b.department_name
    ,last_name || ' ' ||
from employees a 
--join departments b join jobs join job_history
on a.department_id=b.department_id;

select * from employees;

select * from departments;

select * from job_history;
select * from jobs;


--7)Folosind "Using Join" scrieti un select pentru a afisa titlul jobului, numele departamentului,numele complet
--si data cind a inceput anagajatul sa lucreze in o oarecare pozitie pentru toate joburile
--care au inceput dupa 1 Ianuarie 1993 and si au finisat inainte de 31 August 1997