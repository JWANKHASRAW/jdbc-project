select * from customer;

select * from ADDRESS;

--how to get address and phone number for the customers
select FIRST_NAME, LAST_NAME, ADDRESS, PHONE
from CUSTOMER join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--Q: what if I want to see customer table address_id information too.
-- Since the address id is in both table we must specify which table we want the address_id from
select FIRST_NAME, LAST_NAME, CUSTOMER.ADDRESS_ID, ADDRESS.ADDRESS_ID, ADDRESS, PHONE
from CUSTOMER join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--We don't have to repeat the customer and address table names instead we can make short cuts
--Table Aliases
-- CUSTOMER --C
--EMPLOYEES --E
--ADDRESS --A

select FIRST_NAME, LAST_NAME, C.ADDRESS_ID, A.ADDRESS_ID, ADDRESS, PHONE
from CUSTOMER C join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID;


--left inner join THIS WILL BRING THE WHOLE DATA EVEN NULL ONES
select FIRST_NAME, LAST_NAME, C.ADDRESS_ID, A.ADDRESS_ID, ADDRESS, PHONE
from CUSTOMER C LEFT JOIN ADDRESS A
ON C.ADDRESS_ID = A.ADDRESS_ID;

--RIGHT inner join
SELECT FIRST_NAME, LAST_NAME, CUSTOMER.CUSTOMER_ID, ADDRESS.ADDRESS_ID,ADDRESS, PHONE
FROM CUSTOMER RIGHT JOIN ADDRESS
ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--FULL OUTER join
SELECT FIRST_NAME, LAST_NAME, CUSTOMER.CUSTOMER_ID, ADDRESS.ADDRESS_ID,ADDRESS, PHONE
FROM CUSTOMER FULL JOIN ADDRESS
ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

SELECT * FROM CUSTOMER;