select * from EMPLOYEES;
select FIRST_NAME,SALARY from EMPLOYEES
where FIRST_NAME='James';

select FIRST_NAME, SALARY from EMPLOYEES
where SALARY<5000;

/*
 Display all the columns where salary is less 5000 and Manger id=114
 */
select * from EMPLOYEES
where SALARY<5000 and MANAGER_ID=114;

/*
 Display first name, last name and salary between 3000 and 5000
 */

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where SALARY >=3000 and SALARY<=5000;

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where SALARY between 3000 and 5000;

/*
 Display firstname, lastname, salary where firstname is 'David' or 'Peter'
 */

select FIRST_NAME,LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME ='David' or FIRST_NAME ='Peter' or FIRST_NAME ='James';

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME in('David','Peter', 'James');
