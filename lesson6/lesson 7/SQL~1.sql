define hide_column;
set verify on;
select employee_id
    ,last_name  
    ,first_name
    ,salary
    ,&&hide_column
    from employees
    where hire_date=&hide_column;
    
    undefine hide_column;
    
    
    select first_name
        ,last_name
        ,lower(first_name) as lower
        ,upper(last_name) as upper
        ,initcap(last_name) as initcap
    from employees;
    
        select first_name
        ,last_name
    from employees
    where lower(last_name) like '%a%';
    
select first_name || ' ' || last_name as fullname_1
    ,concat(first_name,last_name) as fullname_2
    ,substr(last_name,-3,3) as experiment
    ,instr(lower(first_name),'e',1,2) as intr_name112
    ,instr(lower(first_name),'e',1,1) as intr_name111
    from employees;
    
    
    define adrese = 'md-2002,or.chisinau,str......';
    select substr(&adrese,1, instr(adrese,',',1,1)-1)
    from  dual;
    

    
    
    
    