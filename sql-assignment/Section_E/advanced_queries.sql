-- Celebal Summer Internship 2026
-- Week 2: E-Commerce Sales Database
-- Section E - Advanced Concepts (CASE, ACID, Transactions)
-- Author: Manjit Bajaj

-- Use shopease database
USE shopease_db;

-- 24. Write a query using CASE to classify products into price tiers
SELECT product_name, unit_price,
CASE
	WHEN unit_price < 1000 THEN 'Budget'
    WHEN unit_price BETWEEN 1000 AND 3000 THEN 'Mid-range'
    ELSE 'Premium'
END AS price_tier
FROM products;
/*
Insight: Case statement classifies products into different price segments to analyze the pricing strategy more effectively.
*/

-- 25. Using a CASE statement inside an aggregate function, count how many orders are 'Delivered' vs 'Not Delivered' (all other statuses). Display the result in a single row.
SELECT SUM( CASE WHEN status = 'Delivered' THEN 1 ELSE 0 END) AS Delivered_order,
SUM( CASE WHEN status != 'Delivered' THEN 1 ELSE 0 END) as Not_Delivered_orders
FROM orders;
/*
Insight: This query gives the count of delivered and not delivered orders.
We can use count() function as well.
*/

-- 26. Explain each letter of ACID properties
/*
A - Atomicity: It means a transaction is treated as single unit. Here, either all operations must
be completed or none of them should be done.alter
Example: During transaction of money of rs.7000, money should be deducted
from one account unless it is also deposited into another account.alter

C - Consistency: It means after every transactions the database must in a valid state
by following all rules and constraints.
Example: After tranferrinf the money, total amount of both the accounts
must remainn unchanges. 

I - Isolation: It means multiple transactions running simultaneously should not
affect each other. Each transaction must be isolated from another.
Example: If two customer tries to perform same transaction to same account, at a time only 
one must be succeed.

D - Durability: It means once the transaction is committed, even if database server gets crashed
then data or changes must saved permanently.
Example: IF a transaction or online payment is made the record must be saved even after power failure.

*/

-- Q27. Write a SQL transaction that does the following atomically: 
--   1. Insert a new order (order_id=1011, customer_id=102, today's date, 'Pending', 1598.00) 
--   2. Insert two order items for that order 
--   3. Update the stock_qty of the purchased products 
--   4. If any step fails, ROLLBACK the entire transaction. Otherwise, COMMIT. 
-- Write the complete BEGIN...COMMIT/ROLLBACK block. 

START transaction;
-- insert a new order
INSERT INTO orders VALUES(1011, 102, current_date(), 'Pending', 1598.00);

-- insert order items
INSERT INTO order_items VALUES (5016, 1011, 206, 1, 1299.00,0);
INSERT INTO order_items VALUES (5017, 1011, 208, 1, 599.00,0);

-- update product stock
UPDATE products SET stock_qty = stock_qty - 1
WHERE product_id = 208;
UPDATE products SET stock_qty = stock_qty - 1
WHERE product_id = 206;

-- commit transaction
COMMIT;

/*
If any statement fails before COMMIT,
execute:
ROLLBACK;
This cancels all changes made during the transaction.
*/
