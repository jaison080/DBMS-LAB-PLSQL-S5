/*Write a PL/SQL program to arrange the number of two variable in such a way that 
the small number will store in num_small variable and large number will store in num_large variable.*/

DECLARE
    num_large NUMBER;
    num_small NUMBER;
    A NUMBER;
    B NUMBER;
BEGIN
    A:=10;
    B:=20;
    IF(A>B) THEN
        num_large:=A;
        num_small:=B;
    ELSE
        num_large:=B;
        num_small:=A;
    END IF;
    DBMS_OUTPUT.PUT_LINE('NUM_LARGE : '||num_large);
    DBMS_OUTPUT.PUT_LINE('NUM_SMALL : '||num_small);
END;
/