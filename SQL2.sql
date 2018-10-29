SET SERVEROUTPUT ON
DECLARE
	ename employee%rowtype;
BEGIN
	select * into ename from employee where salary<500000;
	DBMS_OUTPUT.PUT_LINE('Employee Name :'||ename.id);
	DBMS_OUTPUT.PUT_LINE('Employee Name :'||ename.name);
	DBMS_OUTPUT.PUT_LINE('Employee Name :'||ename.salary);
END;
/
SET SERVEROUTPUT OFF
