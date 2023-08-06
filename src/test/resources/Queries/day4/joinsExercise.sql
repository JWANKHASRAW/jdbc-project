select * from employees;

select * from DEPARTMENTS;

--1.Display all first name and related department name

select FIRST_NAME, E.DEPARTMENT_ID,DEPARTMENT_NAME
from EMPLOYEES E join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

-- DISPLAY THE ABOVE LIST BASED ON first name ASC
select FIRST_NAME, E.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES E join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
order by FIRST_NAME asc;

--2.Display all first name and related department name including the employee without department
select FIRST_NAME, E.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES E LEFT join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY FIRST_NAME ASC;

--3.Display all first name and related department name including the department without employee
select FIRST_NAME, employees.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES right join DEPARTMENTS
on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
order by DEPARTMENT_NAME asc, count(*);


--4.Display how many employees in each department
select DEPARTMENT_NAME, count(*)
from EMPLOYEES join DEPARTMENTS
on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
group by DEPARTMENT_NAME;

--to display each employee and their department name
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES right join DEPARTMENTS
on EMPLOYEES.DEPARTMENT_ID = departments.DEPARTMENT_ID;

--5.Display all first name and dep name including the dept without employees and also employees without the dept.
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES full join DEPARTMENTS
on EMPLOYEES.EMPLOYEE_ID = departments.DEPARTMENT_ID;

--6.display all cities and related country names
select CITY, COUNTRY_NAME
from LOCATIONS join COUNTRIES
on LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID
order by CITY asc;

--7.Display all cities and related country names including with countries without city.
select city, COUNTRY_NAME
from LOCATIONS right join COUNTRIES
on locations.COUNTRY_ID = countries.COUNTRY_ID;

--8.Display all dept name and related street address
select DEPARTMENT_NAME, DEPARTMENTS.DEPARTMENT_ID, locations.LOCATION_ID, STREET_ADDRESS
from DEPARTMENTS  join LOCATIONS
on locations.LOCATION_ID = departments.LOCATION_ID;

--9.Display first name and last name, dept name, city for all employees
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, city
from EMPLOYEES join DEPARTMENTS
on EMPLOYEES.DEPARTMENT_ID = departments.DEPARTMENT_ID
join LOCATIONS
on departments.LOCATION_ID = locations.LOCATION_ID
join COUNTRIES
on locations.COUNTRY_ID = countries.COUNTRY_ID;

--10.Display first name and last name, dept name, city, country name, region name for all employees
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, city, COUNTRY_NAME, REGION_NAME
from EMPLOYEES join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = departments.DEPARTMENT_ID
join LOCATIONS on departments.LOCATION_ID = locations.LOCATION_ID
join COUNTRIES on locations.COUNTRY_ID = COUNTRIES.COUNTRY_ID
join REGIONS on countries.REGION_ID = regions.REGION_ID;

-- how many employees working for each country_name
select country_name, count(*)
from EMPLOYEES join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = departments.DEPARTMENT_ID
join LOCATIONS on departments.LOCATION_ID = locations.LOCATION_ID
join COUNTRIES on locations.COUNTRY_ID = COUNTRIES.COUNTRY_ID
group by country_name;

--show countries where we have >10 employee
select country_name, count(*)
from EMPLOYEES join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = departments.DEPARTMENT_ID
join LOCATIONS on departments.LOCATION_ID = locations.LOCATION_ID
join COUNTRIES on locations.COUNTRY_ID = COUNTRIES.COUNTRY_ID
group by country_name
having count(*) >10;

SELECT * FROM EMPLOYEES;

--LEFT JOIN WITH WHERE
SELECT *
FROM CUSTOMER C LEFT JOIN ADDRESS A
ON A.ADDRESS_ID = C.ADDRESS_ID
WHERE A.ADDRESS_ID IS NULL;