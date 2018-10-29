create or replace package minim as
procedure mini (x in number, y in number);
end minim;
/

create or replace package body minim is
procedure mini(x in number,y in number)
as
begin
if x<y then
	dbms_output.put_line('X is lesser :'||x);
else
	dbms_output.put_line('Y is lesser :'||y);
end if;
end mini;
end minim;
/

DECLARE
CURSOR cust_cur is
SELECT id, name,salary,hire_date FROM emp;
cust_rec cust_cur%rowtype;
BEGIN
OPEN cust_cur;
dbms_output.put_line('--------------------------------------------------');
dbms_output.put_line('|  '||'ID' || '  | ' || 'NAME'||'   |'||'SALARY'|| '  | '|| 'HIRE_DATE'||'   |');
dbms_output.put_line('--------------------------------------------------');
LOOP
  FETCH cust_cur into cust_rec;
EXIT WHEN cust_cur%notfound;
dbms_output.put_line('|  '||cust_rec.id || ' | ' || cust_rec.name||'|'||cust_rec.salary || ' | ' ||
cust_rec.hire_date||'  |');
END LOOP;
CLOSE cust_cur;
END;
/


DECLARE
cursor c1 is select id,name from emp;
c1_rec c1%rowtype;
id number;
BEGIN
open c1;
fetch c1 into c1_rec;
UPDATE emp
SET salary = salary + 500;
IF c1%notfound THEN
dbms_output.put_line('no customers selected');
ELSIF c1%found THEN
id := sql%rowcount;
dbms_output.put_line( id || ' customers selected ');
END IF;
END;
/
