select * from employees;

/*
 it limits rows based on provided number
 */
select * from EMPLOYEES
where ROWNUM<11;




--display all info from employees who is getting first 5 highest salary
--This is the correct answer
select * from (select * from employees order by salary desc)
where ROWNUM<6;

--display all info from employees who is getting 5th highest salary
--first we need to find what is the 5th highest salary
SELECT min(SALARY) FROM (SELECT DISTINCT SALARY FROM EMPLOYEES ORDER BY SALARY DESC)
WHERE ROWNUM<6;

--who is making 5th highest salary?
--IQ how do you find who is making 37th highest salary?
--For the Nth highest salary frmula is rownum < N+1
--For the 37th highest salary rownum <37+1 =38
select * from EMPLOYEES
where SALARY =(select min(SALARY) from(select distinct SALARY from employees order by SALARY desc)
               where ROWNUM<37);

--Homework --> display all information who is getting 3th lowest salary
select * from EMPLOYEES
where SALARY= (select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY asc)
               where ROWNUM <4);

