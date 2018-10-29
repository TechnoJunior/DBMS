create or replace function cal_cube
(x in number) return number is
c number;
begin
c:=x*x*x;
return(c);
end cal_cube;
/

create or replace function max_number
(x in number,y in number) return number is
begin
if(x>y) then
return(x);
elsif(y>x) then
return(y);
end if;
end max_number;
/

create or replace function si
(p in number,n in number,r in number) return number is
interest number;
begin
interest:=p*n*r/100;
return interest;
end si;
/

create or replace function leap_year
(y in number) return varchar2 is
leap varchar2(10);
begin
if mod(y,4) =0 then
return('Leap year');
else
return('Not a Leap Year');
end if;
end leap_year;
/

create or replace function customer
return number is
no_of_cust number;
begin
select count(*) into no_of_cust from cust;
return no_of_cust;
end customer;
/