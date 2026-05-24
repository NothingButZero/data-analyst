-- TASK 10
-- Find monthly revenue report

call table_order_items();
call table_orders();

select date_format(order_date, "%y-%m") as month,
sum(total_amount) as total_revenue
from novakart.orders
group by month
order by month
;