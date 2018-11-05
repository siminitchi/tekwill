select last_name || ' ' || first_name "Nume Prenume Angajat"
    ,job_title
    ,department_id
    from employees
    join jobs
    using(job_id)
    where department_id=80
    order by 1;
    
select last_name || ' ' || first_name "Nume Prenume Angajat"
    ,job_title
    ,department_id
    from employees a
    join jobs b
    on a.job_id=b.job_id
    where department_id=80
    order by 1;
    
    
    select last_name || ' ' || first_name "Nume Prenume Angajat"
    ,job_title
    ,department_id
    from employees
    natural join jobs
    where department_id=80;
    
    select * from countries;
    
select * from locations;

select * from departments;

select country_name
    ,city
    ,department_name
    ,street_address
    from locations a
    join countries b
    on a.country_id=b.country_id
    join departments c
    on a.location_id=c.location_id;
    
    
    --ex 11
    select department_name
        ,last_name || ' ' || first_name "Nume Manager"
        from employees a
    right join departments b
        on b.manager_id=a.employee_id;
       
       
        select * from departments;
    select * from jobs;


select job_id
    ,avg(salary)
    from employees
    group by job_id;
    
   -- ex 12 
select job.job_title
 ,avg(emp.salary) Salariu
    from employees emp
    join jobs job
    on emp.job_id=job.job_id
  group by job.job_title;
    
    --ex 13
    select job.job_title
    ,emp.salary
    from jobs job 
    join employees emp
    on emp.job_id=job.job_id
    where emp.salary>=12000;
    
    select * from job_history;
    
    select job_id
        ,salary
        from employees
        join job_history
        using  (employee_id)
        where salary>=12000;

    
    
    select * from departments;
    --ex 14
    
    
    
    select dep.department_name "Departament"
    ,emp.last_name || ' ' || emp.first_name 
    ,loc.city
    from employees emp
    join departments dep
    on emp.employee_id=dep.manager_id
    join locations loc
    on loc.location_id=dep.location_id;
    
    
    --15)
--Scrieti un select pentru a afisa numele angajatului, numele jobului si numarul de zile
--lucrate doar pentru joburile din departamanetul 80.

select last_name || ' ' || first_name "Nume Angajat"
   ,job_title
   , trunc(sysdate - hire_date) "Numarul de Zile lucrate"
    from employees 
    join jobs 
    using(job_id)
    where department_id=80;


select * from departments
where location_id=2400;
--Afisati numele complet,departamentul si salariul acelor angajati care lucreaza in
--careva departamente locate in Londra.
select last_name || ' ' || first_name
    ,department_name
    ,salary
    ,city
    from employees 
    join departments using (department_id)
    join locations using(location_id)
    where city='London';

select * from departments;
--17)Afisati citi angajati sunt in fiecare departament
   select department_name " Departamente"
   ,count(employee_id) " Nr de angajati"
   from employees
   join departments using(department_id)
   group by department_name;
   
   
   
   
       
select *
    from employees
    where hire_date>
                    (select hire_date
                     from employees
                    where last_name='Davies');
   
          
select *
    from employees
    where hire_date
                   in(select hire_date
                     from employees
                    where first_name='Peter');
                    
select *
    from employees
    where salary<
                   (select salary
                     from employees
                    where last_name='Davies');
                    
     
select salary,job_id,first_name from employees where last_name='Taylor';
select *
from employees 
where job_id= 
            (select job_id 
            from employees
            where last_name='Taylor' 
            and first_name='Winston')
and salary >
            (select salary 
            from employees 
            where last_name='Taylor' 
            and first_name='Winston');

select * 
from employees 
where salary>=(select avg(salary) from employees);


select * from employees
where salary<=(select avg(salary) from employees where department_id=80)
and department_id=80;

select department_id
    ,min(salary)
    from employees
    group by department_id
    having min(salary)<=
                (select min(salary)
               from employees
               where department_id=80)
order by 1;

select * from departments a left join employees b
on a.department_id=b.department_id
where b.employee_id is null;


select department_name
    ,count(employee_id)
    ,count(*)
    from departments a 
    left join employees b
    on a.department_id=b.department_id
    group by department_name
    order by 2;
    
    
select * from employees where salary in(select min(salary) from employees group by department_id);
 select * from employees;
 
    -- exercitiul 1 lecti a 8
    -- cum sa fac sa nu-l afiseze pe el?
undefine name
select last_name
    ,hire_date
    from employees
    where department_id    
                        in(select department_id 
                        from employees 
                        where last_name='&&name')
and last_name!='&name';
                        
--exercitiul 2
select employee_id
    ,last_name
    ,salary
    from employees
    where salary>
                (select avg(salary)
                from employees);
                
--exercitiul 3
select employee_id
    ,last_name
    from employees
where department_id
                    in(select department_id 
                    from employees
                    where last_name like '%u%');
                    
                    
select * from locations where location_id=1700;
select * from departments ;

select last_name
    ,department_id
    ,job_id
    from employees
    where department_id
                        in(select department_id
                        from departments
                        where location_id=1700);
                      --  and manager_id is not null);
                        

select last_name
    ,department_id
    ,job_id
    from employees
    where department_id
                        in(select department_id
                        from departments
                        where location_id=&location);
                        
                        
select last_name
    ,salary
    from employees
    where manager_id in(select employee_id 
                        from employees
                        where last_name='King');
                        
 select * from employees where manager_id=156;                       


select department_id
    ,last_name
    ,job_id
    from employees
    where department_id=
                        (select department_id
                        from departments
                        where department_name='Executive');
                        
                        
                        
select last_name
    ,salary
    from employees 
    where salary>
                (select max(salary)
                from employees
                where department_id=60);
                
                

                        
select employee_id
    ,last_name
    ,salary
    from employees
where department_id
                    in(select department_id 
                    from employees
                    where last_name like '%u%')
and salary> 
            (select avg(salary)
            from employees);
                    


                        
