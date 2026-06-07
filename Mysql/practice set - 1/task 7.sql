-- TASK 7
-- Show customer names with their orders

call table_customers();
call table_orders();
call table_order_items();
call table_products();

select customers.name,
products.product_name
from novakart.customers as customers
join novakart.orders as orders
	on customers.customer_id = orders.customer_id
join novakart.order_items as items
	on orders.order_id = items.order_id
join novakart.products as products
	on items.product_id = products.product_id
;
