--- Set operation
-- Union
-- Union all
-- 1. The union operator is used to combine the result-set of two or more SELECT statements.
-- 2. Each SELECT statement within UNION must have the same number of columns.
-- 3. The columns must also have similar data type.
-- 4. The columns in each SELECT statement must also be in the same order.

create table a(sname varchar(10), num int);
create table b(num int, grade varchar(3));
insert into a values('abc', 10);
insert into a values('xyz', 11);
insert into a values('pqr', 12);
insert into a values('mno', 14);
COMMIT;
insert into b values(11, 'a');
insert into b values(12, 'b');
insert into b values(13, 'c');
insert into b values(15, 'b');
COMMIT;

select * from a;
select * from b;

select num from a union select num from b order by num;
select num from a union all select num from b order by num;

-- Intersect
select num from a intersect select num from b;
-- Minus
select num from a except select num from b;
select num from b except select num from a;