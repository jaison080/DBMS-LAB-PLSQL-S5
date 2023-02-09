DECLARE 
    c_id customers.id%type:=1;
    c_name customers.name%type;
    c_addr customers.address%type;
    c_sal customers.salary%type;
BEGIN
    SELECT name,address,salary INTO c_name,c_addr,c_sal
    FROM customers
    WHERE id=c_id;
    dbms_output.put_line('Customer '||c_name || ' from '|| c_addr || ' earns ' || c_sal);
END;
/