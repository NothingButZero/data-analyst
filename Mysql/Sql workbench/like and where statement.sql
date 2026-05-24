select * 
from parks_and_recreation.employee_demographics
;

select *
from parks_and_recreation.employee_demographics
where first_name like "a%"
;

select *
from parks_and_recreation.employee_demographics
where age > 20 and age < 50
;

select *
from parks_and_recreation.employee_demographics
where (age < 40) or first_name like "m%"
;