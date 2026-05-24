with math_salary as
(
select concat(demo.first_name , " ", demo.last_name) as Full_name,
demo.gender, salary.salary,
sum(salary.salary) over(partition by demo.gender order by demo.employee_id) as rollover_salary,
avg(salary.salary) over(partition by demo.gender) as avg_salary,
rank() over(partition by demo.gender order by demo.employee_id) as rank_num
from parks_and_recreation.employee_demographics as demo
join parks_and_recreation.employee_salary as salary
	on demo.employee_id = salary.employee_id
) 

select *
from math_salary
;