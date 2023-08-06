select * from employees;


--the query below second column name is "ROUND(AVG(SALARY))" which is not a nice display in the console we change name by using 'as'
select DEPARTMENT_ID, ROUND(AVG(SALARY)) as "Average salary"
from EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID
HAVING ROUND(AVG(SALARY)) >6000
ORDER BY 2 ASC;

--or
select DEPARTMENT_ID, ROUND(AVG(SALARY)) as Average_salary
from EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID
HAVING ROUND(AVG(SALARY)) >6000
ORDER BY 1 ASC;

--Manager is asking display annual salary for all employees as annual_salary
select FIRST_NAME, SALARY*12 as annual_salary
from  EMPLOYEES;

-------------------STING MANIPULATION---------------------------------
/*
    Concatenation
    java --> +  --> FIRSTNAME + ' ' + LASTNAME
    SQL --> ||  --> FIRSTNAME || ' ' || LASTNAME
 */
--I want to get full name column where we have first name+ ' ' + last name
select FIRST_NAME || ' ' || EMPLOYEES.LAST_NAME as full_name
FROM EMPLOYEES;

--add @cydeo.com to all the emails in the employee table
select EMAIL ||'@cydeo.com'
from EMPLOYEES;

--or
select concat(EMAIL,'@cydeo.com') from EMPLOYEES;

--lowerCase
select lower(EMAIL ||'@cydeo.com') from EMPLOYEES;

--upperCase
select upper(email||'@cydeo.com') from EMPLOYEES;

--INITCAP
--it makes first letter uppercase
select INITCAP(email||'@cydeo.com') from EMPLOYEES;

--LENGTH
select email, length(email) as email_length
from EMPLOYEES;

--display all employees where firstname length =6
select FIRST_NAME
from EMPLOYEES
where length(FIRST_NAME) =6;

--or
select FIRST_NAME from EMPLOYEES
where FIRST_NAME like '______';

--display initial from firstname and lastname
--SUBSTR--
--Will allow to pick number of characters from a string.

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.'as initials from EMPLOYEES;

--in SBSTR if we use minus sign '-' it will start from the end
select substr(FIRST_NAME,-1,1)||'.'||substr(LAST_NAME,-1,1)||'.'as initials from EMPLOYEES;
select FIRST_NAME,substr(FIRST_NAME,-3) from EMPLOYEES;