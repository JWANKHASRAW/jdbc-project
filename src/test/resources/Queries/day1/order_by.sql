select * from employees;
/*
 ORDERBY:
    - It allows us to sort data based on provided column
    - As a default it will order the result ASCENDING ORDER (A-Z, 0-9)
    - If you want to sort it in DESCENDING order we need to specify right after column name.
 */

 --display all employees based on salary is asc order
select * from EMPLOYEES
order by salary;

--same query ins asc order
select * from EMPLOYEES
order by salary ASC;

--same query ins DESC order
select * from EMPLOYEES
order by salary DESC;

SELECT * FROM EMPLOYEES
ORDER BY FIRST_NAME ASC;

SELECT * FROM EMPLOYEES
ORDER BY FIRST_NAME DESC;

--display all information when employee id is <120 and order them based on salary desc
select * from EMPLOYEES
where EMPLOYEE_ID <120
order by SALARY desc;

--display all information from employees and order them based on first name asc and last name desc.
select * from EMPLOYEES
order by FIRST_NAME asc, LAST_NAME desc;

select * from EMPLOYEES
order by HIRE_DATE asc, SALARY desc;




