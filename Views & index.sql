-- View is a virtual table based on the result-set of an SQL statement.
-- Modification not afect tables
-- Modification in real tables afect views

select * from employees;

create view employees_v1 as select employee_id, first_name, salary from employees;

select * from employees_v1;

drop view employees_v1;

-- Index: used to retrieve data from the database very fast.
create index idx_employees on employees (first_name);
explain select * from employees where first_name = 'Mozhe';

drop index idx_employees;