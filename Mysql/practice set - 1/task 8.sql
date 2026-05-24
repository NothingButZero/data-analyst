-- TASK 8
-- Find products never ordered

call table_products();
call table_order_items();
call table_orders();

select *
from novakart.products as products
left join novakart.order_items as items
	on products.product_id = items.product_id
where items.product_id is null
;

insert into products values(11, "simple pc case", "Accessories", 20000);