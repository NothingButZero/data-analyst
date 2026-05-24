-- TASK 9
-- Find top 3 customers by spending

call table_customers();
call table_orders();
call table_order_items();

select customers.customer_id, customers.name, customers.city,
sum(orders.total_amount) as total
from novakart.customers as customers
join novakart.orders as orders
	on customers.customer_id = orders.customer_id
group by customers.customer_id
order by total desc
limit 3
;