-- TASK 6
-- Find average product price per category

call table_products();

select category,
avg(price) as average_price
from novakart.products
group by category
;