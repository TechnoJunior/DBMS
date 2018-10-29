SET SERVEROUTPUT ON
PROMPT Enter Employee ID number
ACCEPT eid

DECLARE
	ename employee%rowtype;
BEGIN
	select * into ename from employee where id=&eid;
	DBMS_OUTPUT.PUT_LINE('Employee Name :'||ename.id);
	DBMS_OUTPUT.PUT_LINE('Employee Name :'||ename.name);
	DBMS_OUTPUT.PUT_LINE('Employee Name :'||ename.salary);
END;
/
SET SERVEROUTPUT OFF
