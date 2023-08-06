select * from employees;

select * from COUNTRIES;

/*
 - percent % --> for matching any sequence of characters (0 or more)
 - underscore _ __. for matching any single character

 Logics in java
 - contains
 - startswith
 endswith
 */

--display all employees where first name is starts with B

SELECT * from EMPLOYEES
where FIRST_NAME like 'B%';

--display all employees where first name is starts with B and length of it is letter is 5 letter
select * from EMPLOYEES
where FIRST_NAME like 'B____';

--display 5 letter first name from employee where middle char is z.
select * from EMPLOYEES
where FIRST_NAME like '__z__';

--display first name ends with 'e'
select * from EMPLOYEES
where FIRST_NAME like '%e';

--display all employees where job id contains IT
select * from EMPLOYEES
where JOB_ID like '%IT%';

--display all information where firstname startwith H and ending with L
select * from EMPLOYEES
where FIRST_NAME like 'H%l';
