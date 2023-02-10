/*Create the following table : 
Item (item-code, item-name, qty-in-stock, reorder-level) 
Supplier (supplier-code, supplier-name, address, status) 
Can-supply(supplier-code, item-code) 
(a) Insert  values that  to accept the data from the user with appropriate validation checks. 
(b) Write PL/SQL procedure to do the following : 
Set the status of the supplier to "important" if the supplier can supply more than five items.*/

CREATE OR REPLACE FUNCTION STATUS_CHANGE(VS_CODE VARCHAR2)
RETURN NUMBER ASMYCOUNT NUMBER(4);
BEGIN
SELECT COUNT(*) INTO MYCOUNT FROM CAN_SUPPLYWHERE SUPPLIER_CODE=VS_CODE;
RETURN MYCOUNT;
END; 
DECLARE
CURSOR C21 IS
SELECT SUPPLIER_CODE INTO VS_CODE FROM SUPPLIER;
COUNT NUMBER(4);
BEGIN
FOR I IN C21 LOOP
COUNT=STATUS_CHANGE(VS_CODE NUMBER)
