-- =========================================
-- DATABASE SETUP
-- Company: NovaKart
-- =========================================

CREATE DATABASE novakart;
USE novakart;

-- =========================================
-- CUSTOMERS TABLE
-- =========================================

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

-- =========================================
-- PRODUCTS TABLE
-- =========================================

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- =========================================
-- ORDERS TABLE
-- =========================================

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);

-- =========================================
-- ORDER ITEMS TABLE
-- =========================================

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),
    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);

-- =========================================
-- CUSTOMERS DATA
-- =========================================

INSERT INTO customers VALUES
(1, 'Rahul Sharma', 'Surat', '2025-01-10'),
(2, 'Amit Patel', 'Mumbai', '2025-01-15'),
(3, 'Sneha Verma', 'Delhi', '2025-01-18'),
(4, 'Priya Shah', 'Ahmedabad', '2025-01-20'),
(5, 'Karan Mehta', 'Pune', '2025-01-22'),
(6, 'Neha Singh', 'Jaipur', '2025-01-25'),
(7, 'Arjun Nair', 'Bangalore', '2025-01-28'),
(8, 'Riya Kapoor', 'Chennai', '2025-02-01'),
(9, 'Vikram Joshi', 'Hyderabad', '2025-02-03'),
(10, 'Anjali Desai', 'Surat', '2025-02-05');

-- =========================================
-- PRODUCTS DATA
-- =========================================

INSERT INTO products VALUES
(1, 'iPhone 15', 'Mobile', 79999),
(2, 'Samsung S24', 'Mobile', 69999),
(3, 'Gaming Mouse', 'Accessories', 2499),
(4, 'Mechanical Keyboard', 'Accessories', 5499),
(5, 'Gaming Laptop', 'Laptop', 125000),
(6, 'Office Laptop', 'Laptop', 65000),
(7, 'Smart Watch', 'Wearables', 9999),
(8, 'Bluetooth Speaker', 'Audio', 3499),
(9, 'AirPods Pro', 'Audio', 24999),
(10, 'Monitor 27 Inch', 'Accessories', 18999);

-- =========================================
-- ORDERS DATA
-- =========================================

INSERT INTO orders VALUES
(101, 1, '2025-03-01', 82498),
(102, 2, '2025-03-02', 69999),
(103, 3, '2025-03-03', 130499),
(104, 4, '2025-03-04', 24999),
(105, 5, '2025-03-05', 18999),
(106, 6, '2025-03-06', 9999),
(107, 7, '2025-03-07', 149498),
(108, 8, '2025-03-08', 3499),
(109, 9, '2025-03-09', 79999),
(110, 10, '2025-03-10', 5499),
(111, 1, '2025-03-11', 24999),
(112, 2, '2025-03-12', 65000),
(113, 3, '2025-03-13', 3499),
(114, 4, '2025-03-14', 9999),
(115, 5, '2025-03-15', 125000);

-- =========================================
-- ORDER ITEMS DATA
-- =========================================

INSERT INTO order_items VALUES
(1, 101, 1, 1),
(2, 101, 3, 1),
(3, 102, 2, 1),
(4, 103, 5, 1),
(5, 103, 4, 1),
(6, 104, 9, 1),
(7, 105, 10, 1),
(8, 106, 7, 1),
(9, 107, 5, 1),
(10, 107, 1, 1),
(11, 108, 8, 1),
(12, 109, 1, 1),
(13, 110, 4, 1),
(14, 111, 9, 1),
(15, 112, 6, 1),
(16, 113, 8, 1),
(17, 114, 7, 1),
(18, 115, 5, 1),
(19, 102, 3, 2),
(20, 104, 8, 3),
(21, 105, 7, 1),
(22, 106, 3, 1),
(23, 108, 4, 1),
(24, 109, 10, 1),
(25, 110, 8, 2),
(26, 111, 3, 1),
(27, 112, 7, 2),
(28, 113, 10, 1),
(29, 114, 8, 1),
(30, 115, 4, 2);

-- =========================================
-- YOUR FIRST TASKS
-- =========================================

-- TASK 1
-- Find all customers from Surat

-- TASK 2
-- Show top 5 expensive products

-- TASK 3
-- Find unique product categories

-- TASK 4
-- Find total revenue generated

-- TASK 5
-- Find total orders placed by each customer

-- TASK 6
-- Find average product price per category

-- TASK 7
-- Show customer names with their orders

-- TASK 8
-- Find products never ordered

-- TASK 9
-- Find top 3 customers by spending

-- TASK 10
-- Find monthly revenue report