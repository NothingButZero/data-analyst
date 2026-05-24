-- trigger
call demo_table();
call salary_table();

DELIMITER $$
CREATE TRIGGER table_demo_update
	AFTER INSERT ON parks_and_recreation.employee_salary 
    FOR EACH ROW
BEGIN
	INSERT INTO parks_and_recreation.employee_demographics (employee_id, first_name, last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END $$
DELIMITER ;

INSERT INTO parks_and_recreation.employee_salary 
VALUES (13, 'jay', 'gelani', 'manager', 200000, 3)
;

-- event
DELIMITER $$
CREATE EVENT delte_old_ppls
ON SCHEDULE EVERY 10 SECOND
DO
BEGIN
	delete 
    FROM parks_and_recreation.employee_demographics
    WHERE age >= 60;
END $$
DELIMITER ;