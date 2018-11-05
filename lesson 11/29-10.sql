Insert Into retired_emps
Select 209,'Nanc Gren'  ,'FI_MGR'  ,100,'17-AUG-10','17-AUG-15',12008,null,80 From dual
Union ALL
Select 210,'Danel Faet' ,'ST_CLERK',123,'16-AUG-10','10-JUL-12',9000,0.35,90 From dual    
Union All
Select 211,'Jon Chn'     ,'PU_MAN'  ,131,'28-SEP-13','05-DEC-14',8200,1.15,80 From dual
Union All
Select 212,'Doug Gree'  ,'SH_CLERK',147,'13-JAN-16','13-MAY-18',2600,null,50 from dual
Union all
Select 213,'Jenn Whal'  ,'AD_ASST' ,108,'17-SEP-11','17-OCT-15',4400,0.25,10 from dual
Union all
Select 214,'Mich Hart'    ,'MK_MAN'  ,149,'17-FEB-12','20-FEB-13',13000,0.2,20 from dual
Union all
Select 215,'Pa Fy'      ,'MK_REP'  ,205,'17-AUG-13','17-NOV-14',6000,null,20 from dual;


select * from retired_emps;

select first_name || ' ' || last_name as " Numele Angajatului"
    ,job_id
    ,hire_date,
    salary
from employees
intersect
select ename,
job,
hiredate,
sal
from retired_emps;


Insert Into retired_emps
Select 2015,'TJ Olson'  ,'ST_CLERK'  ,100,'10-APR-15','17-AUG-15',2100,null,80 From dual;

select first_name || ' ' || last_name as " Numele Angajatului"
    ,job_id
    ,department_id
    ,salary
from employees
union all
select job,ename,deptno,sal
from retired_emps
order by job_id;


select first_name || ' ' || last_name as " Numele Angajatului"
    ,job_id
    ,hire_date,
    salary
from employees
minus
select ename,
job,
hiredate,
sal
from retired_emps;


create table employees_old as 
select * from employees;

create table jobs_old
as 
select * from jobs;

create table job_history_old
as select * from job_history;


create table departments_old
as select * from departments;

create table locations_old
as select * from locations;


create table countries_old
as select* from countries;

create table regions_old
as select * from regions;

select * from employees;
insert into departments(department_id, department_name,manager_id,location_id)
values (132,'Purchasing',100,1700);
select * from departments order by 1;

insert into departments(department_id, department_name,manager_id,location_id)
values (232,'Public',null,null);
select * from employees;
 
 insert into employees (employee_id,last_name,email,phone_number,hire_date,job_id,salary,commission_pct,manager_id,department_id)
 values(289,'Siminitchi','simi@gmail.com','544444444',sysdate,'IT_PROG',16900,0.1,100,80);
 
 select  * from departments;
 
 s  
 insert into departments
 values(&department_id,'&department_Name',null,null);
 
 
 insert into sales_reps
( select employee_id
    ,last_name
    ,salary
    ,commission_pct
    from employees);
    
    
    Create table sales_reps
(ID NUMBER(6) ,
NAME VARCHAR2(25),
SALARY NUMBER(8,2),
COMMISSION_PCT NUMBER(2,2));
