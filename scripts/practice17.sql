/*Write a PL/SQL program to count number of employees in a specific department and 
check whether this department have any vacancies or not. If any vacancies, how many vacancies are in that department.*/

DECLARE
    tot_emp NUMBER;
	get_dep_id NUMBER;
	
BEGIN
    get_dep_id := '&new_dep_id';
    SELECT Count(*)
    INTO   tot_emp
    FROM   employees e
           join departments d
             ON e.department_id = d.department_id
    WHERE  e.department_id = get_dep_id;

    dbms_output.Put_line ('The employees are in the department '||get_dep_id||' is: '
                          ||To_char(tot_emp));

    IF tot_emp >= 45 THEN
      dbms_output.Put_line ('There are no vacancies in the department '||get_dep_id);
    ELSE
      dbms_output.Put_line ('There are '||to_char(45-tot_emp)||' vacancies in department '|| get_dep_id );
    END IF;
END; 
/