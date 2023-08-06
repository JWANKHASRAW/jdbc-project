
SELECT * FROM EMPLOYEES;
--your manager is asking for all jobs and their average salary
select distinct (JOB_ID) from employees;

--GET AVG SALARY FOR EACH job id field.

select AVG(SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';

SELECT AVG(SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'AC_ACCOUNT';

SELECT AVG(SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'AC_MGR';

--we can instead group the job id
SELECT JOB_ID, AVG(SALARY), count(*), SUM(SALARY), MIN(SALARY), MAX(SALARY)
FROM EMPLOYEES
group by JOB_ID;

--TASK
--DISPLAY HOW MANY DEP WE HAVE IN EACH LOCATION
SELECT LOCATION_ID, COUNT(*)
FROM DEPARTMENTS
GROUP BY LOCATION_ID
order by count(*); --> order in ases





--DISPLAY HOW MANY COUNTRIES WE HAVE IN EACH REGION and order them base on num of countries desc
SELECT REGION_ID, COUNT(*)
FROM COUNTRIES
GROUP BY REGION_ID
order by 2 desc;

--get me total salary for each dept from employees table.
select DEPARTMENT_ID, sum(SALARY), count(*)
from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID;

--display job id where their avg salary more than 5K
select JOB_ID, avg(salary)
from EMPLOYEES
group by JOB_ID
having avg(SALARY) >5000;

--disp dept where their avg salary is >6k
select DEPARTMENT_ID, ROUND(AVG(SALARY))
from EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID
HAVING ROUND(AVG(SALARY)) >6000
ORDER BY 1 ASC;

--Interview Q: Display duplicate first name from employees table.
select FIRST_NAME, count(*)
from EMPLOYEES
group by FIRST_NAME
having count(*)>1;

--display dept id where employees count is >5
select DEPARTMENT_ID, COUNT(*)
from EMPLOYEES
--WHERE DEPARTMENT_ID >5
GROUP BY DEPARTMENT_ID
HAVING COUNT(*)>5;


