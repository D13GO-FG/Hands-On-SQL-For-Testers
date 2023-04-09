-- Group By Clause -> Grouping results from a table.
select department_id, sum(salary) from employees group by department_id;
select department_id, avg(salary) from employees group by department_id;
select department_id, max(salary), min(salary) from employees group by department_id;
select job_id, count(*) from employees group by job_id;
select job_id, department_id, count(*) from employees group by job_id, department_id;

-- Having -> used to filter the output from the group by clause.
select job_id, count(*) from employees group by job_id having count(*) > 10;
select department_id, sum(salary) from employees group by department_id having sum(salary) > 20000;

--- where ----> group by ----> having
select department_id, sum(salary) from employees where department_id <> 100 group by department_id having sum(salary) > 10000;


-- Order By -> Used to arrange the rows in a table (ascending or descending)
select * from employees order by department_id desc;
select * from employees order by salary;
select * from employees order by salary desc;

-- Order of Execution
--- select ----> from ----> where ----> group by ----> having ----> order by
select department_id, sum(salary) from employees group by department_id having sum(salary)>20000 order by sum(salary);

select department_id, sum(salary) from employees where department_id <> 100 group by department_id having sum(salary)>20000 order by sum(salary) desc;