SELECT SESSION_ID
FROM AD_COURSE_DETAILS;

SELECT 'Test '|| q'[It's Test]'
From  dual

Select EMPLOYEE_ID,FIRST_NAME,LAST_NAME, SALARY*12 AS "SALARIU ANUAL"
From Employees;

SELECT FIRST_NAME || q'['S NAME IS  ]' || LAST_NAME
FROM EMPLOYEES;

SELECT DISTINCT EXAM_ID, EXAM_TYPE, START_DATE, NAME
FROM AD_EXAM_DETAILS;

SELECT*
FROM AD_EXAM_DETAILS;

SELECT*
FROM AD_EXAM_TYPE;

SELECT EXAM_ID
FROM AD_EXAM_DETAILS;


SELECT START_DATE,EXAM_TYPE AS EXAMENE
FROM AD_EXAM_DETAILS;


SELECT EMPLOYEE_ID
    ,LAST_NAME  
    ,JOB_ID
    ,DEPARTMENT_ID
    
FROM EMPLOYEES
WHERE DEPARTMENT_ID=90;


SELECT *
FROM EMPLOYEES
WHERE LAST_NAME='King';

SELECT *
FROM EMPLOYEES
WHERE LAST_NAME='KING';

SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE='09-JUL-14';




SELECT *
FROM EMPLOYEES 
WHERE HIRE_DATE BETWEEN '03-JAN-14' AND '21-MAY-15'; 



select *
from employees
where manager_id in (100,101,102);



select *
from employees
where job_id like '___%';



select * 
from employees
where commission_pct is not null ;




select * 
from employees
where commission_pct is not null and (salary <=10000 or salary>=20000) ;


select * from employees
where phone_number like'%4%';

select first_name
    ,last_name
    ,department_id
    ,job_id
    ,salary
    from employees
    where job_id='ST_CLERK'
    and department_id='50'
and  phone_number like'%4%';


select * from departments 
where department_name='IT';


select * 
from employees
where department_id='60' 
and salary between 4000 and 10000;





select last_name
,department_id
,salary
from employees
where (department_id=60
or department_id=80)
and salary > 10000;



select * 
from employees
where (job_id='ST_MAN' 
or job_id='SA_REP')
and phone_number like'%5'



select * 
from employees
where (job_id='ST_MAN' 
or job_id='SA_REP')
and phone_number like'0%'
order by salary ASC;



select salary, last_name || first_name as fullname
from employees
order by 1 desc,2 asc;


select * 
from employees
order by salary 
offset 10 row
fetch first 8 rows with ties;



select *
from employees 
where employee_id=&dana;
