select * from EMPLOYEES;

create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);

select * from DEVELOPERS;

create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);
select * from Testers;

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;

select * from DEVELOPERS;

select * from TESTERS;

/*
 UNION OPERATOR
 - to merge more than one table vertically
 - remove DUPs
 - make an oder as default asc
 */

select * from DEVELOPERS
union
select * from TESTERS;

/*
UNION ALL
    -Same as union but it doesn’t remove the duplicates.
    -Don’t sort the result.

 */

select * from DEVELOPERS
union all
select * from TESTERS;

/*
 MINUS
 -	It removes same data from first table and gives result from first table.
 */

select names from DEVELOPERS
minus
select names from TESTERS;


select names from TESTERS
minus
select names from DEVELOPERS;

/*
 INTERSECT
 - returns the common appear in both query results and it will sort and remove the dups.
 */

select names from TESTERS
intersect
select names from DEVELOPERS;