select *
from parks_and_recreation.employee_demographics
;

select gender,
avg(age) as age_avg,
count(age) as ppls
from parks_and_recreation.employee_demographics
group by gender
;

select *
from parks_and_recreation.employee_demographics
order by age 
limit 3
;