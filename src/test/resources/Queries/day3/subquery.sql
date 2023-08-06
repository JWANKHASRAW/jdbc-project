select * from employees;

--display all info who is making max salary
-- max salary
select max(SALARY)
from  EMPLOYEES;
--if we know max salary can we find who is getting it?

select * from employees
where SALARY = 24000;

-- dynamic solution
select * from employees
where SALARY =(select max(SALARY) from  EMPLOYEES);

--Task: give me all information who is getting min salary
select * from EMPLOYEES
where SALARY =(select min(SALARY) from EMPLOYEES);

--display all information who is getting second highest salary?
select max(SALARY) from EMPLOYEES
where salary <24000;

--dynamic solution
select *
from EMPLOYEES
where salary = (select max(salary) from EMPLOYEES where salary < (select max(SALARY) from EMPLOYEES));

--Task: Display all information who is getting more than average salary?
select round(avg(SALARY),0) from EMPLOYEES;

select *
from EMPLOYEES
where salary > ( select round(avg(SALARY),0) from EMPLOYEES);

--find second min salary
select min(SALARY)
from EMPLOYEES;

select * from EMPLOYEES
where salary > (select min(salary) from EMPLOYEES);
