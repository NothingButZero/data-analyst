select *
from parks_and_recreation.employee_demographics
;

select age, avg_age
from(
	select age,
	avg(age) as avg_age,
    count(age) as total
    from parks_and_recreation.employee_demographics
    group by age
) as age_table
;

select demo.first_name, demo.last_name, table_age.avg_age
from parks_and_recreation.employee_demographics as demo
join (
	select avg(age) as avg_age
    from parks_and_recreation.employee_demographics
) as table_age
; 