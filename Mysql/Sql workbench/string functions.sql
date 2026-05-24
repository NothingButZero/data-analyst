select *
from parks_and_recreation.employee_demographics
;

-- lenght()
select first_name as Name, 
length(first_name) as lenght
from parks_and_recreation.employee_demographics
;

-- upper()
select first_name as Name, 
upper(first_name) as upper_case
from parks_and_recreation.employee_demographics
;

-- lower()
select first_name as Name, 
lower(first_name) as upper_case
from parks_and_recreation.employee_demographics
;

-- trim()
select trim("		Sky		"); -- remove all space
select ltrim("		Sky		"); -- remove left side space
select trim("		Sky		"); -- remove right side space

-- left()
select first_name, 
left(first_name, 3) 
from parks_and_recreation.employee_demographics
;

-- right()
select first_name, 
right(first_name, 3) 
from parks_and_recreation.employee_demographics
;

-- substring()
select first_name, last_name, birth_date, 
substring(birth_date,6,2) as months
from parks_and_recreation.employee_demographics
;

-- replace()
select first_name, 
replace(first_name, "A", "z")
from parks_and_recreation.employee_demographics
;

-- locate()
select first_name,
locate("a", first_name) -- NOTE: its return the position of targeted value
from parks_and_recreation.employee_demographics
;

-- concat()
select first_name, last_name,
concat(first_name, " ",last_name) as full_name
from parks_and_recreation.employee_demographics
;