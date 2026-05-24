select *
from parks_and_recreation.employee_salary
;

select occupation, avg(salary)
from parks_and_recreation.employee_salary
where occupation like "%city%"
group by occupation
having avg(salary) > 50000
;