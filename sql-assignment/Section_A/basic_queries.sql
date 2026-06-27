-- Celebal Summer Internship 2026
-- Week 2: E-Commerce Sales Database
-- Section A - SQL Basics (SELECT, Constraints, Primary Keys)
-- Author: Manjit Bajaj

-- Use the Shopease database
USE shopease_db;

-- 1. To display all columns and rows from the customer's table
SELECT * FROM customers;
/*
Insight: Retrieves every record from customers table.It help to understand database and verify information.
*/

-- 2. Retrieve only the first_name, last_name, and city of all customers.
SELECT first_name, last_name, city FROM customers;
/*
Insight: Displays only the required customer details instead of all columns,
making the output more focused and improving query efficiency.
*/

-- 3. List all unique categories available in the products table.
SELECT DISTINCT category FROM products;
/*
Insight: Duplicates entries are removed and returns each product category only once. 
*/

-- 4. Identify the Primary Key of each table in the schema. Explain why a Primary Key must be unique and NOT NULL.
/* Primary key from Each table is as follows:
customers -> customer_id
products -> product_id
orders -> order_id
order_items -> item_id

A Primary Key:
1. Uniquely identifies each record in a table.
2. Cannot contain NULL values, ensuring every record has an identifier.
3. Prevents duplicate records.
4. Helps establish relationships between tables using Foreign Keys.
*/

-- 5. What constraints are applied to the email column in the customers table? What would happen if you tried to insert a duplicate email?
/* The email columns has following constraints: 
email VARCHAR(100) UNIQUE NOT NULL
This means:
NOT NULL -> Every customer must have an email.
UNIQUE -> No two customers can have the same email address

For example: 
INSERT INTO customers VALUES ( 109,'Rahul','Verma','aarav.s@email.com','Nagpur','Maharashtra','2024-09-01',TRUE );
Result: Error Code: 1062. Duplicate entry 'aarav.s@email.com' for key 'customers.email'
MySQL will return a Duplicate entry error because the email already exists.
The record will not be inserted.
*/

-- 6. Insert a product with unit_price = -50
INSERT INTO products VALUES
(209, 'sample_product','Electronics','Test Brand',-50,100);
/*
Result:Error Code: 3819. Check constraint 'products_chk_1' is violated
The insertion failed because of the CHECK constraint: CHECK (unit_price > 0)
 Explanation: The value -50 is less than 0.
The CHECK constraint ensures that product prices must be greater than zero.
Therefore, the database rejects the record and displays a constraint violation error
 */
