create procedure salary_table()
select * 
from parks_and_recreation.employee_salary
;

create procedure park_table()
select * 
from parks_and_recreation.parks_departments
;

drop procedure if exists `demo_table_pera` ;

delimiter $$
create procedure demo_table_pera(emp_id int)
begin
	select demo.employee_id, 
    concat(demo.first_name, " ", demo.last_name) as full_name,
    salary.salary
    from parks_and_recreation.employee_demographics as demo
    join parks_and_recreation.employee_salary as salary
		on demo.employee_id = salary.employee_id
    where demo.employee_id = emp_id
    ;
end $$
delimiter ;

call demo_table_pera(1);
call demo_table();
call salary_table();
call park_table();