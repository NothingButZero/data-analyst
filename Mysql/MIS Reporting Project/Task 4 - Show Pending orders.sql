-- Task 4: Show only pending orders.

SELECT *
FROM orders
WHERE OrderStatus = "Pending"
;