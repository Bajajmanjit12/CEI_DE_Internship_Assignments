-- Celebal Summer Internship 2026
-- Week 2: E-Commerce Sales Database
-- Section B — Filtering & Optimization (WHERE, Indexes)
-- Author: Manjit Bajaj

-- use shopease database
USE shopease_db;

-- 7. Retrieve all orders with status = 'Delivered'.
SELECT * FROM orders WHERE status = 'Delivered';
/*
Insight: Filters the orders table to display only those orders that have been successfully delivered.
*/

-- 8. Find all products in the 'Electronics' category with a unit_price greater than ₹2000. 
SELECT * FROM products WHERE category = 'Electronics' AND unit_price > 2000;
/*
Insight: Combines multiple conditions using AND to retrieve only electronic products costing more than ₹2000.
*/
	
-- 9. List all customers who joined in the year 2024 and belong to the state 'Maharashtra'.
SELECT * FROM customers 
WHERE join_date BETWEEN '2024-01-01' AND '2024-12-31' 
AND state = 'Maharashtra';
/*
Insight: Retrieves customers who satisfy both conditions: 
they joined during 2024 and belong to Maharashtra.
*/

-- 10. Find all orders placed between '2024-08-10' and '2024-08-25' (inclusive) that are NOT cancelled.
SELECT * FROM orders 
WHERE order_date BETWEEN '2024-08-10' AND '2024-08-25'
AND NOT status = 'Cancelled';
/*
Insight: Displays orders within the given dates and excludes cancelled orders.
*/

/* 11. Explain what the index idx_orders_date does. 
How would it improve the performance of a query that filters orders by order_date? 
Write a sample query that would benefit from this index.

The index idx_orders_date is created on the order_date column.
Purpose:
1. Speeds up searches based on order_date.
2. Improves filtering, sorting, and range queries.
3. Reduces the number of rows scanned by MySQL, resulting in faster query execution.

*/

-- sample query
SELECT *
FROM orders
WHERE order_date BETWEEN '2024-08-01' AND '2024-08-31';

/*
This query benefits from the idx_orders_date index because MySQL can directly locate the matching date range instead of
performing a full table scan.
*/

-- 12. If you run: SELECT * FROM customers WHERE YEAR(join_date) = 2024; — would the index on join_date be used? Explain why or why not, and rewrite the query to be index-friendly (SARGable).

SELECT * FROM customers WHERE YEAR(join_date) = 2024;
/*
These query does not use the index. By applying the YEAR() function to the join_date column
it prevents MySQL from efficiently using an index on join_date.
Instead, the function must be evaluated for every row,
which can lead to a full table scan.
A SARGable (Search ARGument Able) query compares the column
directly without applying functions to it.
*/

SELECT *
FROM customers
WHERE join_date BETWEEN '2024-01-01' AND '2024-12-31';

/*
The new query is SARGable because it directly compares
the join_date column to a date range. If an index exists on
join_date, MySQL can efficiently use it to locate matching rows.

Additoinally, In the current schema, no index exists on join_date.
If an index were created on join_date, the new query
would be able to use that index efficiently.
*/
