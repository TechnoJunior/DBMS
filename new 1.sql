Primary Key
create table a(id number primary key,name varchar(20));

create table b(id number primary key,a_id number references a);
	or
create table b(id number primary key,a_id number,constraint FK foreign key(a_id) references a(id);
	or
alter table b add constraint fk foreign key(a_id) references a(id);

check constraint
