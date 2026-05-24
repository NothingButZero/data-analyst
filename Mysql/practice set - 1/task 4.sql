-- TASK 4
-- Find total revenue generated

call table_orders();

select sum(total_amount) as total_revenue
from novakart.orders
;