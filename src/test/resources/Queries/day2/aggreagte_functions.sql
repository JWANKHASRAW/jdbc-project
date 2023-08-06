select * from employees;

/*
    Aggreagate functions takes multi row and return one result.
    All of them ignore NULL value.

    - Count  it will count rows e.g.: how many departments do we have?
    - Max  it will return max value
    - Min  it will return min value
    - Sum  it will give total value
    - avg  it will give average value

 */

--how many dept we have
select * from DEPARTMENTS;
select Count(*) from DEPARTMENTS; --count all the rows

--how many locations we have
select * from LOCATIONS;
select count(*) from LOCATIONS;

select count(DEPARTMENT_ID)
from EMPLOYEES;

--Task:
-- how many different first name we hav?

select count(distinct FIRST_NAME) from EMPLOYEES;

-- how many employees working as IT_PROG or SA_REP
select count(*) FROM EMPLOYEES
WHERE JOB_ID IN('IT_PROG', 'SA_REP');

--MAX AND MIN SALARY

SELECT MAX(SALARY)
FROM EMPLOYEES;

SELECT MIN(SALARY)
FROM EMPLOYEES;

--AVG

SELECT AVG(SALARY)
FROM EMPLOYEES;

SELECT ROUND(AVG(SALARY)) FROM EMPLOYEES;
SELECT ROUND(AVG(SALARY), 1) FROM EMPLOYEES;
SELECT ROUND(AVG(SALARY), 2) FROM EMPLOYEES;

--SUM
SELECT SUM(SALARY) FROM EMPLOYEES;