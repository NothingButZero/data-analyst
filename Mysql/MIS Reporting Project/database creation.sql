USE mis_reporting;

CREATE TABLE orders (
OrderID INT PRIMARY KEY,
OrderDate DATE,
Branch VARCHAR(50),
Employee VARCHAR(20),
Customer VARCHAR(20),
Product VARCHAR(50),
Category VARCHAR(50),
Quantity INT,
UnitPrice DECIMAL(10,2),
SalesAmount DECIMAL(12,2),
PaymentMode VARCHAR(30),
OrderStatus VARCHAR(20)
);

-- Import data from the Excel Orders sheet.

select *
from employees
;

CREATE TABLE employees (
    EmployeeID VARCHAR(10) PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Department VARCHAR(50),
    Branch VARCHAR(50)
);