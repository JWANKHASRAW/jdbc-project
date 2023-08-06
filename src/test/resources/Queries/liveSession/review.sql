select * from employees;

--1. List all the employees first and last name with their salary in employees table
select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES;

--2. How many employees have salary less than 5000?
select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where salary < 5000;

--3. How many employees have salary between 6000 and 7000?
select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where SALARY between 6000 and 7000;

--4. List all the different region_ids in countries table
select distinct REGION_ID from COUNTRIES;

--5. Display the salary of the employee Grant Douglas (lastName: Grant, firstName: Douglas)
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME= 'Douglas' and LAST_NAME = 'Grant';


--6. Display all department information from departments table
-- if the department name values are as below
-- IT , Public Relations , Sales , Executive
select * from DEPARTMENTS
where DEPARTMENT_NAME in('IT', 'Public Relations', 'Sales');

--7. Display the maximum salary in employees table
select max (SALARY) from EMPLOYEES;



--8. Display the the minimum salary in employees table
select min(SALARY) from EMPLOYEES;

--9. Display the average salary of the employees;
select round(avg(SALARY)) from EMPLOYEES;

--10. Count the total numbers of the departments in departs table
select count(*)
from DEPARTMENTS;

--11. Sort the start_date in ascending order in job_history's table
select * from JOB_HISTORY
order by START_DATE asc;

--12. Sort the start_date in descending order in job_history's table
select * from JOB_HISTORY
order by START_DATE desc;

--13. Display all records whose last name contains 2 lowercase 'a's
select * from EMPLOYEES
where LAST_NAME like '%a%a%';


--14. Display all the employees whose first name starts with ‘A'
select * from EMPLOYEES
where FIRST_NAME like 'A%';

--15. Display all the employees whose job_ID contains ‘IT'
select * from EMPLOYEES
where JOB_ID like 'IT%';

--16. Display all unique job_id that end with CLERK in employee table
select distinct JOB_ID
from EMPLOYEES
where JOB_ID like '%CLERK';

--17.Display all employees first name starts with A and have exactly 4 characters
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like 'A___';

--18. Display all the employees whose department id in 50, 80, 100
select * from EMPLOYEES
where DEPARTMENT_ID in ('50', '80', '100')
order by DEPARTMENT_ID asc;

--19. Display all employees who does not work in any one of these department id —> 90, 60, 100, 130, 120
select * from EMPLOYEES
where DEPARTMENT_ID not in ('90', '60', '100', '130', '120');

--20. divide employees into groups by using their job id
select JOB_ID
from EMPLOYEES
group by JOB_ID;

-- 20.1 display the maximum salaries in each groups
select JOB_ID, max(SALARY)
from EMPLOYEES
group by JOB_ID;

-- 20.2 display the minimum salaries in each groups
select JOB_ID, min(SALARY)
from EMPLOYEES
group by JOB_ID;

--20.3 display the average salary of each group
select JOB_ID, count(*), avg(SALARY)
from EMPLOYEES
group by JOB_ID;

--20.4 how many employees are there in each group that have minimum salary of 5000 ?
select JOB_ID, count(*)
from EMPLOYEES
where SALARY >=5000
group by JOB_ID;

-- 20.5 display the total budgets of each groups
select JOB_ID, sum(SALARY)
from EMPLOYEES
group by JOB_ID;


--21. display all job_id and average salary who work as any of these jobs IT_PROG,SA_REP, FI_ACCOUNT, AD_VP
select JOB_ID, avg(SALARY) as "avarage salary"
from EMPLOYEES
having JOB_ID in('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP')
group by JOB_ID;

--22.Display max salary for each department
select MAX(SALARY), DEPARTMENT_ID
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

--23. Display total salary for each department except department_id 50, and where total salary >3000
select sum(SALARY), DEPARTMENT_ID
from EMPLOYEES
group by DEPARTMENT_ID
having sum(salary)>3000 and DEPARTMENT_ID !='50';

--24. Display full addresses from locations table in a single column
select STREET_ADDRESS||', '||CITY||', '||POSTAL_CODE||COUNTRY_ID
from LOCATIONS;

--25.  Display all information of the employee who has the minimum salary in employees table
select * from EMPLOYEES
where salary = (select min(salary)from employees);

--26. Display the second minimum salary from the employees
select min(salary) from EMPLOYEES
where salary > (select min(salary) from EMPLOYEES);

--27. Display all information of the employee who has the second minimum salary
select * from EMPLOYEES
where salary =(select min(salary) from EMPLOYEES where salary> (select min(salary)from EMPLOYEES));

--28. List all the employees who are making above the average salary;
select * from EMPLOYEES
where salary > (select avg(SALARY) from EMPLOYEES);

--29.. List all the employees who are making less than the average salary
select * from employees
where salary < (select round(avg(SALARY)) from employees);

--30.. Display manager name of 'Neena'
select FIRST_NAME, LAST_NAME from employees
where EMPLOYEE_ID in (select MANAGER_ID from EMPLOYEES
where FIRST_NAME ='Neena');

--31.Find the 3rd maximum salary from the employees table (do not include duplicates)
select min(salary) from(select distinct SALARY from employees order by SALARY desc)
where rownum<4;

--32.Find the 5th maximum salary from the employees table (do not include duplicates)
select min(SALARY) from(select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<6;

--33.Find the 7th maximum salary from the employees table (do not include duplicates)
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM<8;

--34.Find the 10th maximum salary from the employees table (do not include duplicates)
select min(salary) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where rownum<11;

--35.Find the 3rd minimum salary from the employees table (do not include duplicates)
select max(salary) from (select distinct SALARY from EMPLOYEES order by salary asc)
where ROWNUM<4;

--36. Find the 5th minimum salary from the employees table (do not include duplicates)
select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where ROWNUM<6;

--37. FIND OUT COUNTRY NAME AND REGION NAME FROM COUNTRIES AND REGION TABLE
select C.COUNTRY_NAME, R.REGION_NAME from COUNTRIES C join REGIONS R
    on C.REGION_ID = R.REGION_ID;


--38. FIND OUT FIRST_NAME AND JOB_TITLE FROM JOBS AND EMPLOYEES TABLE
select FIRST_NAME, JOB_TITLE from JOBS J inner join EMPLOYEES E
on E.JOB_ID = J.JOB_ID;

--39.FIND OUT DEPARTMENT_NAME AND CITY
select D.DEPARTMENT_NAME, L.CITY from DEPARTMENTS D inner join LOCATIONS L
on L.LOCATION_ID = D.LOCATION_ID;

--40.. FIND OUT ALL CITIES AND COUNTRY NAMES
select CITY, COUNTRY_NAME from LOCATIONS L inner join COUNTRIES C
on L.COUNTRY_ID = C.COUNTRY_ID;


--41. FIND OUT FIRST_NAME, LAST NAME, DEPARTMENT ID , DEPARTMENT NAME FOR DEPARTMENT ID 80 OR 40

select E.FIRST_NAME, E.LAST_NAME, E.DEPARTMENT_ID,D.DEPARTMENT_NAME from EMPLOYEES E inner join DEPARTMENTS D
on D.DEPARTMENT_ID = E.DEPARTMENT_ID
where D.DEPARTMENT_ID in(80,40);

--43.FIND OUT CITY , COUNTRY_NAME OF THAT CITY , REGION_NAME OF THAT CITY
select L.city, C.COUNTRY_NAME, R.REGION_NAME from LOCATIONS L inner join COUNTRIES C
on L.COUNTRY_ID = C.COUNTRY_ID
inner join REGIONS R on R.REGION_ID=C.REGION_ID;

--44.FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY
select FIRST_NAME, JOB_TITLE, DEPARTMENT_name, city from employees E
inner join jobs J on E.JOB_ID = J.JOB_ID
inner join DEPARTMENTS D on D.DEPARTMENT_ID = E.DEPARTMENT_ID
inner join LOCATIONS L on L.LOCATION_ID = D.LOCATION_ID;

--45.FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME
select FIRST_NAME, JOB_TITLE, DEPARTMENT_name, city, country_name, Region_Name from employees E
inner join jobs J on E.JOB_ID = J.JOB_ID
inner join DEPARTMENTS D on D.DEPARTMENT_ID = E.DEPARTMENT_ID
inner join LOCATIONS L on L.LOCATION_ID = D.LOCATION_ID
inner join Countries C on L.COUNTRY_ID = C.COUNTRY_ID
inner join REGIONS R on R.REGION_ID = C.REGION_ID;

--46.9. FIND OUT EMPLOYEES FIRST_NAME, LAST NAME, DEPARTMENT ID AND ALL DEPARTMENTS INCLUDING WHERE DO NOT HAVE ANY EMPLOYEE.
select E.FIRST_NAME, E.LAST_NAME, D.DEPARTMENT_ID, D.DEPARTMENT_NAME from DEPARTMENTS D
left outer join Employees E on D.DEPARTMENT_ID= E.DEPARTMENT_ID;
