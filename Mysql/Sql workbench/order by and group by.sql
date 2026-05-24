select *
from parks_and_recreation.employee_demographics
;

select age, gender
from parks_and_recreation.employee_demographics
order by age
;

select *
from parks_and_recreation.employee_demographics
;

select gender, 
avg(age), 
max(age),
min(age),
count(age)
from parks_and_recreation.employee_demographics
group by gender
;

select occupation, salary
from parks_and_recreation.employee_salary
order by salary
;