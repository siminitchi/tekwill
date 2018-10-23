select * from job_history
order by 1;
--6-a)Afisati employee_id, job_id si cite luni a lucrat persoana respectiva in acea functie.
--Ordonati datele la alegere astfel incit data angajatul are mai multe inregistrari sa le vizualizati impreuna. 
--6- b)Verificati dataca sunt persoane care si-au schimbat jobul cel putin de 2 ori.

select job_id
    ,employee_id
    ,distinct employee_id
    from employees;