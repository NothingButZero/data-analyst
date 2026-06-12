-- Task 7: Find all orders made using UPI payment.

SELECT *
FROM orders
;

SELECT *
FROM orders
WHERE PaymentMode LIKE "UPI"
;