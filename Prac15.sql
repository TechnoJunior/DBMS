create or replace trigger emp
before insert on emp
for each row
begin
if(:new.salary<=35000) then
:new.salary:=35000;
end if;
end;
/

create or replace trigger stud
before insert on student
for each row
begin
if(:new.marks<40) then
raise_application_error(-20500,'Marks Should be greater than 40');
end if;
end;
/