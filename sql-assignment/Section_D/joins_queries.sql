-- Celebal Summer Internship 2026
-- Week 2: E-Commerce Sales Database
-- Section D - Joins & Relationships
-- Author: Manjit Bajaj

-- Use shopease database
USE shopease_db;

-- 19. Write an INNER JOIN query to display each order along with the customer's first_name and last_name. Show: order_id, order_date, first_name, last_name, total_amount.
SELECT o.order_id, o.order_date, c.first_name, c.last_name , o.total_amount
FROM orders o INNER JOIN customers c
ON o.customer_id = c.customer_id;
/*
Insight: returns only those orders that have matching customer
*/

-- 20. Using a LEFT JOIN, list ALL customers and their orders (if any). Customers with no orders should still appear with NULL values for order columns.
SELECT * FROM customers c LEFT JOIN orders o
ON c.customer_id = o.customer_id;
/*
Insight: Left join returns every customer. If a customer has no orders
then order column contains NULL value.
*/

-- 21. Write a query using JOINs across three tables (orders → order_items → products) to show: order_id, product_name, quantity, unit_price, and discount_pct for each order item. 
SELECT o.order_id,p.product_name, oi.quantity, oi.unit_price,oi.discount_pct 
FROM orders o JOIN order_items oi
ON oi.order_id = o.order_id 
JOIN products p
ON oi.product_id = p.product_id;

/*
Insight: Display every product purchased in every order along with quantity,
unit price and discount.
*/

-- 22. Explain the difference between LEFT JOIN and RIGHT JOIN with an example from this schema. When would you use a FULL OUTER JOIN?
/*
Left join -  A left join returns all records from the left table and
only matching records from the right table.If no match exists, NULL
values are returned for the right table columns.

Right join : A right join returns all records from rigth table and matching 
records from left table. if no match exists in left table it returns the NULL value.
*/

-- Example of Left join
SELECT * FROM customers c LEFT JOIN orders o
ON c.customer_id = o.customer_id;
/*
Result: All customers are displayed.
Customers without orders have NULL values for order columns.
*/

-- Example for Right join
SELECT * FROM customers c RIGHT JOIN orders o
ON c.customer_id = o.customer_id;
/*
Result: All orders are displayed.
If an order had no matching customer, customer columns would be NULL.
*/
 /*
 Full outer join: It returns all rows from both tables.
 Since, MySQL does not support FULL JOIN
 We can perform it by using LEFT JOIN UNION RIGHT JOIN
 
 It is used when you need every row from both tables.*/
 
 -- Example of full outer join'
( SELECT * FROM customers c LEFT JOIN orders o
ON c.customer_id=o.customer_id)
UNION
( SELECT * FROM customers c RIGHT JOIN orders o
ON c.customer_id=o.customer_id);

-- 23. Identify all Foreign Key relationships in the schema. Explain what would happen if you tried to insert an order with customer_id = 999 (which doesn't exist in customers).
/*
Foreign Key Relationship:
Following are the foreign keys:
1. orders -> customer_id refernces customers -> customer_id
2. order_items -> order_id refrences orders -> order_id
3. order_items -> product_id references products -> product_id
*/

-- Example of inserting cutomer_id = 999
INSERT INTO orders VALUES (1011,999,'2026-06-26','Pending', 7000.0);
/*
Result: Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`shopease_db`.`orders`, CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`))
Reason: customer_id 999 does not exist in customers table.
*/



 
