-- auto complete: automatic increse id's
drop table student;

create table student
(sno serial primary key, 
sname varchar(10), 
marks int);

-- alter table student auto_increment = 100; ---- MySql

insert into student(sname, marks) values('x', 60);
insert into student(sname, marks) values('y', 60);
insert into student(sname, marks) values('z', 60);

delete from student where sno = 2;

select * from student;

-- limit: used to display rows from a table.
select * from student;

select * from student limit 4;
-- select * from student limit 2,5; ---- MySql

