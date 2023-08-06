select * from employees;

/*
 create table syntax
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional),
        colName3 DataType Constraints,
        ....
 );
 */

 --CREATE TABLE --
CREATE TABLE scrumteam_jwan(
    emp_id integer PRIMARY KEY,
    first_name varchar (30) not null,
    last_name varchar(20) not null,
    job_title varchar(20),
    salary integer

);

select * from scrumteam_jwan;

insert into scrumteam_jwan(emp_id, first_name, last_name, job_title, salary)
VALUES (1, 'Severus', 'Snape', 'Tester', 130000);

insert into scrumteam_jwan(emp_id, first_name, last_name, job_title, salary)
VALUES (2, 'Jwan', 'Khasraw', 'Tester', 140000);

insert into scrumteam_jwan(emp_id, first_name, last_name, job_title, salary)
VALUES (3, 'Phoebe', 'Buffay', 'Scrum Master', 90000);

insert into scrumteam_jwan(emp_id, first_name, last_name, job_title, salary)
VALUES (4, 'Rachel', 'Ray', 'Developer', 150000);

select * from scrumteam_jwan;

--save changes so that other people, connections can get the udpates
commit;

/*
 update table_name
 SET column1 = value1
 column2=value2, ....
 where condition;
 */

 update scrumteam_jwan
SET salary = salary+5000;

update scrumteam_jwan
set salary = salary-5000
where emp_id = 3;

select * from scrumteam_jwan;
commit work;

--delete--
/*
 DELETE FROM table_name
 WHERE condition
 */

delete from scrumteam_jwan
where emp_id = 4;

commit;

--add a new column
alter table scrumteam_jwan add gender varchar(10);
commit;
select * from scrumteam_jwan;

update scrumteam_jwan
SET gender = 'Male'
where emp_id=1;
commit;

--RENAME THE COLUMN
ALTER TABLE SCRUMTEAM_JWAN RENAME COLUMN salary to annual_salary;
commit;

select * from scrumteam_jwan;

--drop column
ALTER TABLE SCRUMTEAM_JWAN DROP COLUMN gender;

--RENAME TABLE
--ALTER TABLE SCRUMTEAM_JWAN RENAME TO agileteam_jwan


--TRUNCATE TABLE
TRUNCATE TABLE SCRUMTEAM_JWAN;
select * from scrumteam_jwan;

--DROP TABLE
DROP TABLE SCRUMTEAM_JWAN;

COMMIT;