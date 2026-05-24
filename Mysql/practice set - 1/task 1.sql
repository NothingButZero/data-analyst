-- TASK 1
-- Find all customers from Surat

call table_customers();

select *
from novakart.customers
where city like "Surat"
;