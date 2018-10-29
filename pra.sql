set serveroutput on
declare
	a int;
	b int;
	c int;
begin
	a:=10;
	b:=20;
	c:=a+b;
	dbms_output.put_line(c);
end;
/