DECLARE
PROCEDURE compare(value varchar2,pattern varchar2) is
BEGIN   
    IF value LIKE pattern then
        dbms_output.put_line('True');
    ELSE
        dbms_output.put_line('False');
    END IF;
END;
BEGIN
    compare('Zara Ali','Z%A_i');
    compare('Nuha Ali','Z%A_i');
END;
/