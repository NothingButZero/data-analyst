-- TASK 5
-- Find total orders placed by each customer

call table_orders();
call table_order_items();
call table_customers();

select customers.customer_id, customers.name, customers.city,
sum(items.quantity) as total_orders
from novakart.customers as customers
join novakart.orders as orders
	on customers.customer_id = orders.customer_id 
join novakart.order_items as items
	on orders.order_id = items.order_id
GROUP BY customers.customer_id
;