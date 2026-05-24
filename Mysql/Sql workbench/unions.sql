-- task is to identify who is older then 40 or 50 and whos salary is high like 60000 +

select *
from parks_and_recreation.employee_demographics
;

select * 
from parks_and_recreation.employee_salary
;

select first_name, last_name, "old man" as lable
from parks_and_recreation.employee_demographics
where age > 40 and gender = "Male"
union
select first_name, last_name, "old lady" as lable 
from parks_and_recreation.employee_demographics
where age > 40 and gender = "Female"
union
select first_name, last_name, "60,000+ salary" as lable
from parks_and_recreation.employee_salary
where salary > 60000 
order by first_name, last_name
;