-- TASK 2
-- Show top 5 expensive products

call table_products();

select * 
from novakart.products
order by price desc
limit 5
;