select FIRST_NAME from EMPLOYEES;
/*
   The distinct will remove the duplicated first names
 */
select Distinct FIRST_NAME from EMPLOYEES;

/*
 if you use distinct on a PK file (e.g ID) it wouldn't filter because there is no duplicate in the PK file
 */