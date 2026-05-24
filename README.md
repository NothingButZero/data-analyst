# 🗄️ MySQL Learning & Practice

![MySQL](https://img.shields.io/badge/MySQL-8.0-blue?logo=mysql&logoColor=white)
![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)
![License](https://img.shields.io/badge/License-MIT-green)

A structured hands-on learning repository for **MySQL**, covering everything from basic SELECT statements to advanced topics like Window Functions, CTEs, Stored Procedures, Triggers, and real-world practice tasks on a custom e-commerce database.

---

## 📖 About This Repository

This repo documents my MySQL learning journey - from writing my first `SELECT` query to solving multi-table data analysis problems on a custom-built database called **NovaKart** (a mock e-commerce store).

The repository is split into two sections:

- **SQL Workbench** - Concept-by-concept practice files using the `Parks_and_Recreation` sample database.
- **Practice Set 1** - Real-world analytical tasks on the `NovaKart` database (customers, products, orders).

---

## 🏪 NovaKart Database Schema

The `NovaKart` database is a mock Indian e-commerce store used for practice set 1.

```sql
customers    →  customer_id, name, city, signup_date
products     →  product_id, product_name, category, price
orders       →  order_id, customer_id, order_date, total_amount
order_items  →  order_item_id, order_id, product_id, quantity
```

> 10 customers across cities like Surat, Mumbai, Delhi, Bangalore | 10 products across 5 categories | 15 orders

---

## 📚 Resources I'm Learning From

> 🔗 [Data Analyst Bootcamp](https://www.youtube.com/watch?v=rGx1QNdYzvs&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=4)  

---

## ✅ Topics Completed So Far

### 🔷 Core SQL Concepts
- [x] SELECT statements
- [x] WHERE & LIKE filters
- [x] ORDER BY & GROUP BY
- [x] LIMIT & Aliasing
- [x] HAVING clause
- [x] JOINs (INNER, LEFT, RIGHT)
- [x] UNIONs
- [x] String Functions

### 🔷 Intermediate SQL
- [x] CASE statements
- [x] Subqueries
- [x] Common Table Expressions (CTEs)
- [x] Window Functions
- [x] Temporary Tables
- [x] Stored Procedures
- [x] Events & Triggers

### 🔷 Practice Set - 1 (NovaKart)
- [x] Task 1 - Find all customers from Surat
- [x] Task 2 - Show top 5 expensive products
- [x] Task 3 - Find unique product categories
- [x] Task 4 - Find total revenue generated
- [x] Task 5 - Total orders placed by each customer
- [x] Task 6 - Average product price per category
- [x] Task 7 - Customer names with their orders
- [x] Task 8 - Find products never ordered
- [x] Task 9 - Top 3 customers by spending
- [x] Task 10 - Monthly revenue report

---

## 🚀 Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/mysql-learning-practice.git
   ```

2. Open MySQL Workbench and run `db.sql` (or `database and its task.sql` for NovaKart) to set up the database.

3. Then open any task or concept file and run it!

---

## 🙋 About Me

Learning MySQL as part of my data analysis journey. Open to feedback, suggestions, and contributions!

---

*⭐ If you find this helpful, feel free to star the repo!*
