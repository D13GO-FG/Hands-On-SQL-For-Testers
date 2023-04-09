-- Constraints when is created a new table or after by alter the table, used to specify rules for data in a table.
-- not null
create table student1 (sno int not null, sname varchar(10), marks int);

insert into student1 values(101, 'diego', 10);
insert into student1 values(null, 'luis', 8); -- Error, is null

select * from student1;

drop table student1;

-- unique
create table student1 (sno int unique, sname varchar(10), marks int);
-- create table student1 (sno int, sname varchar(10), marks int, unique(sno, sname, marks));
insert into student1 values(101, 'diego', 10);
insert into student1 values(101, 'luis', 10); -- Error, is duplicate
insert into student1 values(null, 'pepe', 8);
insert into student1 values(null, 'juan', 8);

select * from student1;

-- primary key: unique and not null
create table student1 (sno int primary key, sname varchar(10), marks int);
-- create table student1 (sno int, sname varchar(10), marks int, primary key(sno));
-- create table student1 (sno int, class int, sname varchar(10), marks int, primary key(sno, class));
insert into student1 values(101, 'diego', 10);
insert into student1 values(101, 'luis', 10);
insert into student1 values(null, 'pepe', 10);

select * from student1;

-- foreign key: used to link two talbes together
create table school(sno int, sname varchar(15), marks int, primary key(sno));
insert into school values(101, 'diego', 10);
insert into school values(102, 'luis', 10);
insert into school values(103, 'papa', 10);

select * from school;

create table library(sno int, foreign key(sno) references school(sno), book_name varchar(10));

insert into library values(102, 'java');
insert into library values(108, 'python'); --Error, no key in school
insert into library values(null, 'c');

select * from library;

delete from school where sno = 102; --Not delete parent with childs
delete from library where sno = 102; -- Is allow delete childs

-- When you insert a record in to child table, the column will be refred in Parent table.
-- If you try remove parent table record directly wtiout deleting records from child table -> Not allowed.
-- First, delete dependent record from child table, then delete record from parant table.

-- Delete Cascade: if you delete record from parent table directly, it will be removed and corresponding records will be also deleted from child table.
drop table library;
drop table school;

create table library(sno int, book_name varchar(10), foreign key(sno) references school(sno) on delete cascade);

insert into library values(101, 'python');
insert into library values(102, 'java');

delete from school where sno = 101;

select * from library;
select * from school;

-- check: Ensure that all values in a column satisfies a specific condition
drop table student;
create table student(sno int, sname varchar(10), marks int check(marks between 50 and 100));

insert into student values(101, 'diego', 51);
insert into student values(101, 'diego', 40); -- Invalid
insert into student values(101, 'diego', 101); -- Invalid

select * from student;

create table location(city varchar(15), check (city in('Tijuana', 'Pomona', 'Rosarito')), country varchar(15), pin int);

insert into location values('Tijuana', 'Mexico', 664);
insert into location values('Ensenada', 'Mexico', 666); -- Invalid
insert into location values('Pomona', 'EUA', 01)

-- default: Set a default value for a column when no value is specified
create table Orders(id int, ordernumber int, orderdate date default now());

select now();

insert into Orders values(101, 123123, '2023-04-09T07:05:52.942Z');
insert into Orders(id, ordernumber) values(102, 123122);

select * from Orders;