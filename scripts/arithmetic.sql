DECLARE
    a integer:=10;
    b integer:=20;
    c integer;
    f float;
BEGIN
    c:=a+b;
    dbms_output.put_line('Value of c is '||c);
    f:=a/b;
    dbms_output.put_line('Value of f is '||f);
END;
/