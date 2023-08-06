select * from employees;

--Who is Neena's manager?

select workers.employee_id, workers.first_name, workers.LAST_NAME, workers.MANAGER_ID, managers.EMPLOYEE_ID, managers.FIRST_NAME,managers.LAST_NAME,managers.MANAGER_ID
from EMPLOYEES workers join employees managers
on workers.manager_id = managers.employee_id;

--how can I see all employees even if they dont have any manager? like CEO
select workers.employee_id, workers.first_name, workers.LAST_NAME, workers.MANAGER_ID, managers.EMPLOYEE_ID, managers.FIRST_NAME,managers.LAST_NAME,managers.MANAGER_ID
from EMPLOYEES workers left join employees managers
on workers.manager_id = managers.employee_id
order by 1 asc;
