SET SERVEROUTPUT ON
DECLARE
i number:=10;
BEGIN
	loop
		exit when i>20;
			dbms_output.put_line(i);
			i:=i+1;
	end loop;
END;
/
SET SERVEROUTPUT OFF
