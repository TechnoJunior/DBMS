create table employee1(empno number primary key,empname varchar(20),street varchar(20),city varchar(20));
create table works1(empno number references employee1,cname varchar(20),salary number);
//primary key
create table located_in1(cname varchar references works1,city varchar(20));
//Query 4
SQL> select empname from employee1 where empno=(
  2  select empno from works1 where salary=(
  3  select max(salary) from works1 where empno in(
  4  select empno from employee1 where city='Mumbai')));
  
  
  
select * from employee1 where city='Mumbai';

select * from located_in1 where city='Mumbai';

select empno from works1 where cname in(select cname from located_in1 where city='Mumbai');
//Query 5
select * from employee1 where city='Mumbai' and 
empno in (select empno from works1 where cname in
(select cname from located_in1 where city='Mumbai'));


Hello World

set serveroutput on;
DECLARE
	msg varchar2(20):='Hello World';
BEGIN
	dbms_output.put_line(msg);
END;
