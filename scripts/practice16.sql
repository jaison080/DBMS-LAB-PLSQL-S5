/*Write a program in PL/SQL to create a cursor displays the name and salary of each employee in the EMPLOYEES table 
whose salary is less than that specified by a passed-in parameter value.*/

DECLARE
    var_record   employees%ROWTYPE;
    CURSOR cur_test (max_sal NUMBER) IS
        SELECT * FROM employees WHERE salary < max_sal;
BEGIN
    OPEN cur_test(5800);
    LOOP
        FETCH cur_test INTO var_record;
        EXIT WHEN cur_test%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Name: ' || var_record.first_name || chr(9)||' salary: '
            || var_record.salary);
    END LOOP;
    CLOSE cur_test;
END;
/