select * from employees;

--display all info of where first name is David

select * from EMPLOYEES
where FIRST_NAME ='David';

--display all info of where first name is David and last name is Lee
select * from EMPLOYEES
where FIRST_NAME='David' and LAST_NAME='Lee';

--display  first name last name, salary where first name is peter
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME ='Peter';

--display email from employees where salary is > 5000
select EMAIL
from EMPLOYEES
where SALARY<5000;

--display all info from employees who is making more than 7000 and department id is 60
select * from EMPLOYEES
where SALARY >7000 and DEPARTMENT_ID ='60';

--display all info from employees where salary >=3000 & <=7000
select * from EMPLOYEES
where SALARY between 3000 and 7000;

--display all info from employees who is working as IT prog or MK_Man
select * from EMPLOYEES
where JOB_ID ='IT_PROG' or JOB_ID='MK_MAN';

--SOLUTION 2
select * from EMPLOYEES
where JOB_ID IN('IT_PROG','MK_MAN');

--display all info where employees id 121, 142, 154, 165, 187
select * from EMPLOYEES
where EMPLOYEE_ID=121 OR EMPLOYEE_ID=142 OR EMPLOYEE_ID=154 OR EMPLOYEE_ID=165 OR EMPLOYEE_ID =187;

--SOLUTION 2
select * from EMPLOYEES
where EMPLOYEE_ID IN(121, 142, 154, 165, 187);

--display all info where COUNTRY ID IS US AND IT
select * from COUNTRIES
where COUNTRY_ID IN('US','IT');

--display all info except where county id is US and IT
select * from COUNTRIES
where COUNTRY_ID NOT IN('US','IT');

--employee with null infor
--IS NULL
select * from EMPLOYEES
where DEPARTMENT_ID IS NULL;

--IS NOT NULL
SELECT * FROM EMPLOYEES
WHERE MANAGER_ID IS NULL;



