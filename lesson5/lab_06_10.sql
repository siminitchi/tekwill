select * from ad_course_Details;

select course_id
    ,course_name
    ,session_id
    from ad_course_details
    where department_id=&utilizator
    order by &column;
    
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
    


    