/*Write a PL/SQL block to display the last name of manager, and their departments for a particular city, 
using parameters with a default value in explicit cursor.*/

DECLARE
  CURSOR emp_cur (dep_location NUMBER DEFAULT 1700) IS
    SELECT d.department_name,
           e.last_name manager,
           l.city
    FROM departments d, employees e, locations l
    WHERE l.location_id = dep_location
      AND l.location_id = d.location_id
      AND d.department_id = e.department_id
    ORDER BY d.department_id;
 
  PROCEDURE dep_cur  IS
    depname departments.department_name%TYPE;
    dep_mgr employees.last_name%TYPE;
    dep_in_city locations.city%TYPE;
  BEGIN
    LOOP
      FETCH emp_cur INTO depname, dep_mgr, dep_in_city;
      EXIT WHEN emp_cur%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE(rpad(depname,35) ||rpad(dep_mgr,15)|| dep_in_city);
    END LOOP;
  END dep_cur;
 
BEGIN

  DBMS_OUTPUT.PUT_LINE('DEPARTMENTS AT :');
  DBMS_OUTPUT.PUT_LINE('----------------------------');
  DBMS_OUTPUT.PUT_LINE(rpad('Department',35)||rpad('Manager',15)||'City');
  DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');
  OPEN emp_cur;
  dep_cur; 
  CLOSE emp_cur;
   DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------');
  OPEN emp_cur(1400); 
  dep_cur; 
  CLOSE emp_cur;
END;
/