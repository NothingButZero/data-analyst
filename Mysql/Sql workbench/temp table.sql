create temporary table table1
(
	username varchar(50),
    pin varchar(10)
)
;

select *
from table1
;

select * 
from parks_and_recreation.employee_demographics
;

create temporary table full_name
select concat(first_name, " ", last_name) as full_name
from parks_and_recreation.employee_demographics
;

select * 
from full_name 
;