create or replace procedure insert_user
(id in number,name in varchar2) is
begin
insert into users values (id,name);
end;
/

create or replace procedure print is
begin
dbms_output.put_line('Hello World!!!');
end;
/

create or replace procedure sq
(n in out number) is
begin
n:=n*n;
end;
/

declare
m number:=&m;
begin
sq(m);
dbms_output.put_line('Square of number :'||m);
end;
/

create or replace procedure minimum
(a in number,b in number,c out number) is
begin
if a<b then
c:=a;
else
c:=b;
end if;
end;
/

declare
n1 number:=&n1;
n2 number:=&n2;
n3 number;
begin
minimum(n1,n2,n3);
dbms_output.put_line('The minimum number of'||n1||' and '||n2||' is '||n3);
end;
/

create or replace procedure salary
(emp_id in number,sal in number) as
begin
update emp set salary=salary+sal where id=emp_id;
dbms_output.put_line('Salary updated!!!');
end;
/

create or replace procedure details
(emp_id in number) is
show employee%rowtype;
begin
select * into show from employee where id=emp_id;
dbms_output.put_line('Id : '||show.id);
dbms_output.put_line('Name : '||show.name);
dbms_output.put_line('Dept No : '||show.dept_no);
dbms_output.put_line('Salary : '||show.salary);
end;
/

declare
n number:=&n;
begin
details(n);
end;
/

create or replace procedure insertdata(
id in  userdb.id%type,
name in  userdb.name%type,
createby in  userdb.created_by%type,
createdate in  userdb.created_date%type)
is
begin
insert into userdb values (id,name,createby,createdate);
dbms_output.put_line('Value Inserted !!!');
end;
/

set serveroutput on
create or replace procedure show
(e_id in number) as
details emp%rowtype;
begin
select * into details from emp where id=e_id;
dbms_output.put_line('Id : '||details.id);
dbms_output.put_line('Name : '||details.name);
dbms_output.put_line('Salary : '||details.salary);
end;
/

exec show(1);