/*Create the following tables : 
Item (item-code, item-name, qty-in-stock, reorder-level) 
Supplier (supplier-code, supplier-name, address, status) 
Can-supply(supplier-code, item-code)
(a) Insert  values that  to accept the data from the user with appropriate validation checks. 
(b) Write PL/SQL procedure to do the following : 
Generate a report of those items that are supplied by those suppliers whose status is "important".*/

create or replace function report(vs_code varchar2)
return varchar2asmylist varchar2(25); 
begin
    select item_code into mylist
    from Can_supplywhere supplier_code=vs_code;
    return mylist;
end;
/
declare
vs_code supplier.supplier_code%type;
cursor c23 isselect supplier_code into vs_code from supplier where status='important';
myitem varchar2(25); 
begin
for i in c23 loop
if i.status='important' then
vs_code:=i.supplier_code;
myitem:=report(vs_code);
select item_code, item_name
from itemwhere item_code=myitem;
dbms_output.put_line(item_code ||'is '|| item_name);end if;
end loop;
end;
/