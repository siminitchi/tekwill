select last_name,salary
from employees
where salary> all( select salary from employees where job_id='IT_PROG');
select * from employees;

update employees
set salary=20000
where employee_id=207;

update copy_emp
set department_id= (select department_id
                        from employees
                        where employee_id=100)
                        
 where job_id=     (select job_id from employees where employee_id=200);

where employee_id=103;
select * from employees;
delete from employees where last_name='Siminitchi';


select department_id
from employees
minus 
select department_id from employees where job_id='ST_CLERK';

create table My_first_table
            (deptno         number(2),
            dname           varchar2(14),
            loc             varchar2(13),
            create_date date default sysdate);


describe My_first_table;

select * from My_first_Table;

insert into My_first_Table(dname,loc)
values('IT','Switzerland');


create table My_first_table12
            (deptno        number(2) default '01',
            dname           varchar2(14),
            loc             varchar2(13),
            create_date date default sysdate);
            
insert into my_first_table12(dname)
values('it');
select * from my_first_Table12;


create   table HR_TABLE (employee_id number(6) constraint emp_pk_id primary key
            ,first_name varchar2(50)
            ,last_name varchar2(50)
            ,email varchar2(50)  constraint emp_emaail_nn not null);
select * from hr_table;

insert into hr_table(employee_id,first_name,email,last_name)
values(1,'fd','dsfs','da');


 create   table HR_TABLE_2 (employee_id number(6)
                            ,first_name varchar2(50)
                            ,last_name varchar2(50)
                            ,email varchar2(50)
                            ,constraint emp_pk_empll primary key(employee_id)
                            ,constraint emp_emaail_nn not null(email));
    
    
    
 create   table HR_TABLE_3 (employee_id number(6)
                            ,first_name varchar2(50)
                            ,last_name varchar2(50) not null 
                            ,email varchar2(50) not null
                            ,department_id number(6)  constraint test_fk_2 references departments(department_id));
    
    
    select * from hr_table_3;

create table test_employee1s
as 
select * from employees
where department_id=(select department_id from employees where job_id='IT-PROG');
select * from test_employee1s;



select department_id
from employees
minus 
select department_id
from employees
where job_id='ST_CLERK';
select * from departments;

select * from locations;
select * from departments
where location_id is null;
select distinct * from locations;

select location_id
from locations
intersect
select location_id from departments;

select location_id,country_id
from locations
union  
select location_id from departments;

select country_id from countries
minus ;


select a.location_id, b.country_id
from departments a
join locations b
on a.location_id=b.location_id
where a.location_id is null;
-- 1700,1800,2400,2500,2700

select * from locations;
select * from departments;

--?????????????
select country_id,country_name
from countries
natural join locations
where location_id
in(select location_id from locations
minus
(select location_id
from departments
intersect
select location_id from locations));

select country_id,country_name
from countries
minus 
select l.country_id,c.country_name
from locations l join countries c
on (l.country_id=c.country_id)
join departments d
on d.location_id=l.location_id
minus
select country_id,country_name
from countries
natural join locations
where location_id
in(select location_id from locations
minus
(select location_id
from departments
intersect
select location_id from locations));
select * from locations
natural join departments;



select employee_id
    ,job_id
    ,department_id
from employees
where department_id is not null
minus
select employee_id
    ,job_id
    ,department_id
from employees
where department_id<>50 
and department_id <> 80;

select * from employees
where job_id='SA_REP'
intersect
select * 
from employees
where department_id=
                (select department_id 
                from departments 
                where department_name='Sales');


select employee_id,job_id,department_id from employees where department_id = 50 or department_id = 80;


select last_name
    ,department_id 
    ,department_name
    from employees
 
natural join departments
union all
select last_name
    ,department_id 
    ,department_name
    from employees
    natural join departments
    where department_id is  null
 or department_name is null ;
 
select employee_id,department_id,department_name from employees
natural join departments;

select country_id,country_name
from countries
where country_id in(
select country_id
from countries
minus 
select distinct country_id from locations
where location_id in(
select location_id from departments));

select last_name,department_id,to_char(null)department_name
from employees
union
select to_char(null),department_id,department_name
from departments;


create  table my_employee
    (employee_id     number(4) not null,
    last_name        varchar2(25),
    first_name       varchar2(25),
    userid           varchar2(8),
    salary           number(9,2));


describe my_employee;
/*create table My_first_table
            (deptno         number(2),
            dname           varchar2(14),
            loc             varchar2(13),
            create_date date default sysdate);*/
insert  into my_employee(employee_id,last_name,first_name,userid,salary)
values(2,'Dancs','Betty','bdancs',860);
            
select * from my_employee;  

insert into my_employee
values(&employee_id,'&last_name','&first_name','&userid',&salary);

update my_employee
set last_name='Drexler'
where employee_id=3;
            
update my_employee
set salary=1000
where salary<900;

delete from my_employee
where employee_id=5;
commit;

delete * from my_employee;
commit

rolback