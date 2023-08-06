select * from employees;

--How many locations we have for each country?

select COUNTRY_ID, COUNT(*)
from LOCATIONS
group by  COUNTRY_ID
having count(*)>2;

--order them based on country_id asc
select COUNTRY_ID, COUNT(*)
from LOCATIONS
group by  COUNTRY_ID
order by COUNTRY_ID asc;

--what if I want only to see US, Uk and CA

select COUNTRY_ID, COUNT(*)
from LOCATIONS
WHERE COUNTRY_ID IN ('US', 'UK', 'CA')
group by  COUNTRY_ID
order by COUNTRY_ID asc;

--Display where location count is >2
select COUNTRY_ID, COUNT(*)
from LOCATIONS
group by  COUNTRY_ID
HAVING COUNT(*)>2;

--TASK2: DISPLAY ALL EMPLOYEES SALARY IN FOLLOWING FORMAT AS COLUMN NAME EMPLOYEES_SALARY
--EX:
    --STEVEN MAKES 24000
    --NEENA MAKES 17000
SELECT FIRST_NAME|| ' makes ' || SALARY as Employees_salary
FROM EMPLOYEES;


