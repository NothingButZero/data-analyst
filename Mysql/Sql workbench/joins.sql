select *
from parks_and_recreation.employee_demographics
;

select *
from parks_and_recreation.employee_salary
;

select * 
from parks_and_recreation.parks_departments
;

-- inner join
select *
from parks_and_recreation.employee_demographics as demographics
inner join parks_and_recreation.employee_salary as salary
	on demographics.employee_id = salary.employee_id
;

-- left join 
select *
from parks_and_recreation.employee_demographics as demographics
left join parks_and_recreation.employee_salary as salary
	on demographics.employee_id = salary.employee_id
;

-- right join
select *
from parks_and_recreation.employee_demographics as demographics
right join parks_and_recreation.employee_salary as salary
	on demographics.employee_id = salary.employee_id
;

-- self join
select *
from parks_and_recreation.employee_demographics as demographics_one
join parks_and_recreation.employee_demographics as demographics_two
	on demographics_one.employee_id + 1 = demographics_two.employee_id 
;

-- mutiple joins
select *
from parks_and_recreation.employee_demographics as demographics
inner join parks_and_recreation.employee_salary as salary
	on demographics.employee_id = salary.employee_id
inner join parks_and_recreation.parks_departments as park
	on salary.dept_id = park.department_id
;

-- lol
select salary.employee_id, 
salary.first_name, 
salary.last_name, 
salary.salary,
parks.department_id, 
parks.department_name
from parks_and_recreation.employee_salary as salary
inner join parks_and_recreation.parks_departments as parks
	on salary.dept_id = parks.department_id
order by parks.department_id
;