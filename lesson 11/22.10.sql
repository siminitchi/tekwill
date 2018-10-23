--) b
--Afisati citi angajati lucreaza in fiecare departament,ordonati descrescator dupa numarul de angajati

select department_name
    ,count(employee_id)
from departments a
left join employees b
on a.department_id=b.department_id
group by department_name;





select * from departments;
select department_id Departament
    ,count(employee_id) Nr_angajati
    from employees
    group by department_id
    order by 2 desc;
    select *  from locations
    natural join countries
    natural join regions
    natural join employees;
    --Scrieti un select care va afisa pentru toti angajatii numele angajatului, al departamentului,
--al tarii,al orasului,al provinciei si numele Regiunii din care-i adresa pe care locuieste.
select * from countries;

select a.last_name || ' ' || a.first_name as "Numele Angajatului"
    ,b,department_name
    ,d.country_name
    ,d.state_province
    ,e.region_name
    from employees a
    join departments b using (a.department_id)
    join locations c using (b.location_id)
    join countries  d using (b.location_id)
    join regions e using  (c.region_id);
    select * from locations;
   
   select * from locations;
   
   
   
    select a.last_name || ' ' ||  a.last_name as NumeleAngajatului
    ,b.department_name
    ,d.country_name
    ,c.city
   ,c.state_province
   ,e.region_name
    from employees a
    left join departments b
    on a.department_id=b.department_id
    left join locations c 
    on b.location_id=c.location_id
   left  join countries d
    on c.country_id=d.country_id
   left join regions e
    on d.region_id=e.region_id;
    
    
    
    select a.last_name || ' ' || a.first_name as "Nume Angajat"
    ,b.last_name || ' ' || b.first_name as "Nume Manager"
    ,a.salary
    ,abs(b.salary-a.salary) as "Diferenta"
    from employees a
    left join employees b
    on a.manager_id=b.employee_id;
    
    
    
    --Scrieti un select care ar afisa numele angajatului si al departamentului pentru persoanele care lucreaza
--in aceleasi departament ca si angajatii care contin in nume/last_name "Taylor"

select * from employees where last_name='Taylor' or first_name='Taylor';

select 
    b.last_name
   ,c.department_name
    ,a.department_id
    from employees a 
    join employees b

    on a.last_name='Taylor' or a.first_name='Taylor'
   join departments c
    on a.department_id=c.department_id
    where b.department_id=a.department_id;
  
  
    select * from employees
    where last_name='Taylor';
    
    --)Scrieti un Select care va afisa first_name, last_name si salariul pentru acei angajati care cistiga mai
--putin decit angajatul cu employee_id 182.

select b.first_name
    ,b.last_name
    ,b.salary
    from employees a
    join employees b
    on a.employee_id=182
    where a.salary>b.salary;
    
    
   -- 6)Scrieti un select pentru a afisa numele angajatilor, salariul actual si diferenta dintre
--salariul maxim pe care il poate avea in dependenta de job si salariul care-l are la moment.(cu cit ar
--putea sa fie salary encrease pentru el)
--Folosind "natural join"

select max(salary)
    ,min(salary)
    from employees
    group by salary;
    select * from jobs;
select 
* from jobs;

select a.last_name
    ,a.salary
    ,b.max_salary-a.salary
    from employees a
   natural join jobs b;
 --  on a.job_id=b.job_id;
select * from jobs;

select job_title
    ,department_name
    ,last_name || ' ' || first_name
   ,start_date
    from job_history 
    join departments 
    using (department_id)
 join jobs 
 using (job_id)
   join employees 
   using (employee_id)
 where start_date>to_date('31-AUG-97' and end_date>'01-IAN-93';
select * from job_history;


select * from employees where employee_id=200;
    select * from job_history
    where employee_id=200;
   -- 7)Folosind "Using Join" scrieti un select pentru a afisa titlul jobului, numele departamentului,numele complet
--si data cind a inceput anagajatul sa lucreze in o oarecare pozitie pentru toate joburile
--care au inceput dupa 1 Ianuarie 1993 and si au finisat inainte de 31 August 1997
    --employee id = 200