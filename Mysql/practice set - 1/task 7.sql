-- TASK 7
-- Show customer names with their orders

call table_customers();
call table_orders();
call table_order_items();
call table_products();

select customers.name,
orders.order_id
from novakart.customers as customers
join novakart.orders as orders
	on customers.customer_id = orders.customer_id
;