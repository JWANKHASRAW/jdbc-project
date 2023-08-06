select * from employees;

--let say we have the query that will use again, we can use a temporary 'visual table'

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.'as initials,
       FIRST_NAME||' '|| LAST_NAME as full_name from EMPLOYEES;

create view EmployeeInfo as
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.'as initials,
       FIRST_NAME||' '|| LAST_NAME as full_name from EMPLOYEES;

select * from EMPLOYEEINFO;

drop view EMPLOYEEINFO;