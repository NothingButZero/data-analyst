-- Task: Pay increse and bonus
-- less then 50,000 = 5%
-- grater then 50,000 = 7%
-- if in finace = 10% bonus

select *
from parks_and_recreation.employee_salary
;

select *
from parks_and_recreation.parks_departments
;

select concat(first_name," ", last_name) as Full_name, salary,
case 
	when salary < 50000 then salary * 1.05
	when salary > 50000 then salary * 1.07
end as New_salary,

case
	when dept_id = 6 then salary * .10 -- Note: use .10 to saw only bonus if use 1.10 its will saw total after adding bonus.
end as bonus
from parks_and_recreation.employee_salary
;