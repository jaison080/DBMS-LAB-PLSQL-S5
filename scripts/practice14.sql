/*Create the following tables : 
Student (roll-no, name, subject-opted) 
Subject –rank (subject-code, subject-name, faculty-code, specialization) 
Faculty (faculty-code, faculty-name, specialization) 
(a) Insert  values that  to accept the data from the user with appropriate validation checks. 
(b) Write PL/SQL procedure to the following : 
Set the status of the subject to "not offered" if the subject is not offered by any of the faculty members.*/

create or replace procedure chk_splascursor 
c26 is select * from subject4
for update;
begin
for value in c26 
loop
if value.specialization='' then
update subject4 set status='not offered'
 
where current of c26;
end if;
end loop;
end;