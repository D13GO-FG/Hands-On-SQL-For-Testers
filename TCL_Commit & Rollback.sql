-- COMMIT: This command is used to save all changes made to the database since the last COMMIT or ROLLBACK command.
-- ROLLBACK: This command is used to undo all changes made to the database since the last COMMIT or ROLLBACK command.

drop table student;

create table student(sid int, sname varchar(15));

-- Insert permantly
begin;
insert into student values(101, 'abc');
insert into student values(102, 'abc');
insert into student values(103, 'abc');
commit;

-- Deleted until rollback
begin;
delete from student where sid = 103;
select * from student;
rollback;

-- Deleted permantly
begin;
delete from student where sid = 103;
commit;

select * from student;