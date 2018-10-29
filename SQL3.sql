SET SERVEROUTPUT ON
	DECLARE
		salary number:=&salary;
	BEGIN
	if(salary<=350000) then
		dbms_output.put_line('No need to pay tax');
	elsif(salary>350000 and salary<500000) then
		dbms_output.put_line('You have to 10% tax i.e :'||(salary*10)/100);
	else
		dbms_output.put_line('You have to 20% tax i.e :'||(salary*20)/100);
	end if;
	END;
	/
SET SERVEROUTPUT OFF


/*SET SERVEROUTPUT ON
DECLARE
	a number:=&a;
BEGIN
if(a>10) then
	dbms_output.put_line('Value of a is greater than 10');
else
	dbms_output.put_line('Value of a is lesser than 10');
	end if;	
END;
/
SET SERVEROUTPUT OFF*/