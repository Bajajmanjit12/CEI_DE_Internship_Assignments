-- Celebal Summer Internship 2026
-- Week 2: E-Commerce Sales Database
-- Section C - Aggregation (GROUP BY, SUM, COUNT, AVG, MIN, MAX)
-- Author: Manjit Bajaj

-- Use the Shopease database
USE shopease_db;

-- 13. Count the total number of orders in the orders table.
SELECT COUNT(*) AS total_number FROM orders;
/*
Insight: Counts the total number of orders available in the orders table.
*/

-- 14. Find the total revenue (SUM of total_amount) from all 'Delivered' orders.
SELECT SUM(total_amount) AS total_revenue FROM orders WHERE status = 'Delivered';
/*
Insight: Calculates the total revenue earned from all delivered orders only.
*/

-- 15. Calculate the average unit_price of products in each category.
SELECT Category, AVG(unit_price) AS average_unit_price FROM products GROUP BY category;
/*
Insight: Shows the average price of products for each category.
*/

-- For each order status, find the count of orders and the total revenue. Sort the result by total revenue in descending order.
SELECT status, COUNT(order_id) AS total_orders, SUM(total_amount) AS total_revenue
FROM orders GROUP BY status ORDER BY total_revenue DESC;
/*
Insight: Displays the number of orders and total revenue for each order status.
The results are sorted from highest revenue to lowest.
*/

-- Find the most expensive (MAX) and cheapest (MIN) product in each category.
SELECT category, max(unit_price) as Highest_price, MIN(unit_price) as Lowest_Price
FROM products GROUP BY category;
/*
Insight: Shows the highest and lowest product price in each category.
*/

-- List all product categories where the average unit_price is greater than ₹2000. (Hint: Use HAVING clause) 
SELECT category , AVG(unit_price) as average_unit_price FROM products
GROUP BY category HAVING AVG(unit_price) > 2000;
/*
Insight: Displays only those categories whose average product price is more than ₹2000.
*/




