-- Celebal Summer Internship 2026
-- Week 2: E-Commerce Sales Database
-- Section C - Aggregation (GROUP BY, SUM, COUNT, AVG, MIN, MAX)
-- Author: Manjit Bajaj

-- Use the Shopease database
USE shopease_db;

-- Count the total number of orders in the orders table.
SELECT COUNT(*) AS total_number FROM orders;

-- Find the total revenue (SUM of total_amount) from all 'Delivered' orders.
SELECT SUM(total_amount) AS total_revenue FROM orders WHERE status = 'Delivered';

-- Calculate the average unit_price of products in each category.
SELECT Category, AVG(unit_price) AS average_unit_price FROM products GROUP BY category;

-- For each order status, find the count of orders and the total revenue. Sort the result by total revenue in descending order.
SELECT status, COUNT(order_id) AS total_orders, SUM(total_amount) AS total_revenue
FROM orders GROUP BY status ORDER BY total_revenue DESC;

-- Find the most expensive (MAX) and cheapest (MIN) product in each category.
SELECT category, max(unit_price) as Highest_price, MIN(unit_price) as Lowest_Price
FROM products GROUP BY category;

-- List all product categories where the average unit_price is greater than ₹2000. (Hint: Use HAVING clause) 
SELECT category , AVG(unit_price) as average_unit_price FROM products
GROUP BY category HAVING AVG(unit_price) > 2000;




