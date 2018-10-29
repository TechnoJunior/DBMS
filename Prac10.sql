declare
a integer:=40;
b integer:=40;
c integer;
begin
c:=a+b;
dbms_output.put_line('Addition is :'||c);
end;
/

declare
a integer:=30;
b integer:=40;
c real;
begin
c:=(a+b)/4;
dbms_output.put_line('Value of c:'||c);
end;
/

declare
pie constant real:=3.14;
radius real:=9.5;
circumference real;
area real;
diameter real;
begin
dbms_output.put_line('Radius is :'||radius);
circumference:=2*pie*radius;
dbms_output.put_line('Circumference is :'||circumference);
area:=pie*radius*radius;
dbms_output.put_line('Area is :'||area);
diameter:=radius*2;
dbms_output.put_line('Diameter is :'||diameter);
end;
/

declare
pie constant real:=3.14;
radius real:=&radius;
circumference real;
area real;
diameter real;
begin
dbms_output.put_line('Radius is :'||radius);
circumference:=2*pie*radius;
dbms_output.put_line('Circumference is :'||circumference);
area:=pie*radius*radius;
dbms_output.put_line('Area is :'||area);
diameter:=radius*2;
dbms_output.put_line('Diameter is :'||diameter);
end;
/

declare
a number:=&a;
begin
if a=100 then
dbms_output.put_line('Value of a is equal to 100');
else
dbms_output.put_line('Value of a is not equal to 100');
end if;
dbms_output.put_line('You have entered :'||a);
end;
/


declare
grade varchar2(1):='&grade';
begin
case(grade)
when 'a' then dbms_output.put_line('Excellent');
when 'b' then dbms_output.put_line('Very Good');
when 'c' then dbms_output.put_line('Good');
when 'd' then dbms_output.put_line('Average');
when 'e' then dbms_output.put_line('Pass with Grace');
else dbms_output.put_line('Fail');
end case;
end;
/

declare
i number:=1;
begin
loop
dbms_output.put_line(i);
if i=10 then exit;
end if;
i:=i+1;
end loop;
end;
/


declare
i number:=1;
begin
while i<=10 loop
dbms_output.put_line(i);
i:=i+1;
end loop;
end;
/


declare
i number:=1;
begin
for i in 1..10 loop
dbms_output.put_line(i);
end loop;
end;
/


declare
pie constant real:=3.14;
radius real:=1;
area real;
begin
for radius in 1..6  loop
area:=pie*radius*radius;
insert into circle values(radius,area);
end loop;
end;
/

declare
days number(1):=&days;
begin
case days
when 1 then dbms_output.put_line('Monday');
when 2 then dbms_output.put_line('Tuesday');
when 3 then dbms_output.put_line('Wednesday');
when 4 then dbms_output.put_line('Thursday');
when 5 then dbms_output.put_line('Friday');
when 6 then dbms_output.put_line('Saturday');
when 7 then dbms_output.put_line('Sunday');
else dbms_output.put_line('Enter a number between 1-7');
end case;
end;
/

declare
a number(5):=&a;
b number(5):=&b;
c number(5):=&c;
begin
if a>b and a>c then
dbms_output.put_line(a||' is largest number');
elsif b>a and b>c then
dbms_output.put_line(b||' is largest number');
else
dbms_output.put_line(c||' is largest number');
end if;
end;
/

declare
pie constant real:=3.14;
r real:=&radius;
h real:=&height;
area real;
begin
area:=2*pie*r*h+2*pie*r*r;
dbms_output.put_line('Area of Cylinder :'||area);
end;
/

declare
a number(5):=&a;
b number(5):=&b;
begin
dbms_output.put_line('Before Swapping A='||a||' and B='||B);
a:=a+b;
b:=a-b;
a:=a-b;
dbms_output.put_line('After Swapping A='||a||' and B='||B);
end;
/

declare
i number(5):=1;
summ number(5):=0;
begin
for i in 1..5 loop
summ:=summ+i;
end loop;
dbms_output.put_line('Sum is :'||summ);
end;
/

declare
n number(5);
fac number(5):=1;
i number(5);
begin
n:=&n;
for i in 1..n loop
fac:=fac*i;
end loop;
dbms_output.put_line('Factorial is :'||fac);
end;
/

dbms_output.put_line();