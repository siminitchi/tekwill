



select * from ad_student_attendance


select course_name
    ,department_id
from ad_course_details
where course_id= 199;

select student_id
    ,no_of_days_off
from ad_student_attendance
where no_of_days_off > 15;

    
    
    
    select student_id
    ,first_name
    ,student_reg_year
    from ad_student_details
    where first_name='NINA'
    or first_name='ROBERT'
    order by student_reg_year asc;


select course_name
    ,department_id
    from ad_course_details
    where department_id=20
    or department_id=40
    order by course_name ASC;



select student_id
    ,marks
    course_id
    from  ad_exam_results
    where marks <65 
    or marks >90;
    
select student_id as "student#"
    ,marks as "semester marks"
    from  ad_exam_results
    where (marks >65 
    or marks <90)
and (course_id=199
or course_id=189);
    
select first_name
    , student_reg_year
    from ad_student_details
    where student_reg_year like '_______14';
    
    
    
    
select first_name
    ,parent_id
    from ad_student_details
    where email_addr is null;
    
    
    
select first_name
    ,student_reg_year
        ,email_addr
        from ad_student_details
        where email_addr is not null;
       
        
select student_id
    ,marks
    from ad_exam_results
    where marks>&marks;
    

        
        
        select * from ad_department
select course_id
    ,course_name
    ,session_id
    from 
    
    where deparment_id=%department_id
    
    
    




    
    select first_name
    from ad_student_details
    where first_name like '%N%'
    and first_name like '%A%';
    
    
    select * from ad_course_details;
    
    select course_id
        ,course_name
        ,department_id
        ,session_id
        from ad_course_details
        where (department_id=10 
        or department_id=40)
        and (session_id<>300
        and session_id<>200);
        
   
select student_id as "Student #"
    ,exam_id as "Exam code"
    ,course_id as "Course Code"
    ,marks as "Score"
    from ad_exam_results
    where marks=0.7*100;
    


select student_id as "Student #"
    ,exam_id as "Exam code"
    ,course_id as "Course Code"
    ,marks as "Score"
    from ad_exam_results
    where marks=&nota;
    
    
    
    select course_id
    ,course_name
    ,session_id
    from ad_course_details
    order by &column;
    
    select last_name
    ,length(last_name)
    from employees
    where last_name like '&start_letter%';
    
    select last_name
    ,lpad(salary,15,'$') salary
    from employees;
    
    
    select last_name
    ,lpad(' ', salary/1000,'*') as employees_and_their_salaries
    from employees
    order by salary desc;s
    
    
    