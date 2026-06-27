# Celebal Summer Internship 2026 – Week 2 SQL Assignment

##  Project Overview

This repository contains the solution for **Week 2** of the **Celebal Summer Internship 2026**. The assignment focuses on designing and querying a relational database for an e-commerce platform named **ShopEase** using SQL.

The project demonstrates fundamental and intermediate SQL concepts including database creation, table relationships, filtering, aggregation, joins, indexing, conditional logic, and transaction management. The database models a real-world e-commerce system consisting of customers, products, orders, and order items.

---

# Objective

The objective of this assignment is to:

* Design and create a relational database.
* Implement tables with appropriate constraints.
* Establish relationships using Primary Keys and Foreign Keys.
* Create indexes to improve query performance.
* Load and validate sample data.
* Perform business-oriented SQL queries.
* Apply filtering and aggregation techniques.
* Retrieve data using different JOIN operations.
* Use CASE statements for conditional logic.
* Understand ACID properties and implement SQL transactions.
* Organize SQL scripts in a clean and maintainable project structure.

---

# Technologies Used

* MySQL 8.x
* MySQL Workbench
* SQL 

---

## Project Structure

```text
sql-assignment/
│
├── shopease_database_setup.sql
│
├── Section_A/
│   └── basic_queries.sql
│
├── Section_B/
│   └── filtering_queries.sql
│
├── Section_C/
│   └── aggregation_queries.sql
│
├── Section_D/
│   └── joins_queries.sql
│
├── Section_E/
│   └── advanced_queries.sql
│
├── superstore/
│   ├── Sample - Superstore.csv
│   ├── SQL_Superstore_Analysis.ipynb
│   └── README.md
│
└── README.md
```


---

# File Description

### `shopease_database_setup.sql`

Contains the complete database setup including:

* Database creation
* Table creation
* Primary Key & Foreign Key constraints
* Index creation
* Sample data insertion
* Data validation queries

---

### `basic_queries.sql`

Covers basic SQL concepts including:

* SELECT statements
* Column selection
* DISTINCT
* Primary Keys
* Constraints
* Constraint validation

---

### `filtering_queires.sql`

Contains filtering and optimization queries using:

* WHERE clause
* AND / OR conditions
* BETWEEN
* Comparison operators
* Index concepts
* Query optimization (SARGable queries)

---

### `aggregation_queries.sql`

Demonstrates SQL aggregation techniques including:

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()
* GROUP BY
* HAVING
* ORDER BY

---

### `joins_queries.sql`

Focuses on relational data retrieval using:

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN (concept)
* FULL OUTER JOIN (concept)
* Multi-table joins
* Foreign Key relationships

---

### `advanced_queries.sql`

Contains advanced SQL concepts including:

* CASE expressions
* Conditional aggregation
* ACID properties
* SQL Transactions
* COMMIT
* ROLLBACK

---

# Database Schema

The database consists of the following tables:

* **customers**
* **products**
* **orders**
* **order_items**

### Entity Relationships

```text
customers (1) ────────< orders (N)

orders (1) ───────────< order_items (N)

products (1) ─────────< order_items (N)
```

---

# How to Run the Project

1. Open **MySQL Workbench**.

2. Execute `shopease_database_setup.sql`.

3. Verify that all tables and sample data have been created successfully.

4. Run each section file in the following order:

   * `basic_queries.sql`
   * `filtering_queries.sql`
   * `aggregation_queries.sql`
   * `joins_queries.sql`
   * `advanced_queries.sql`

5. Review the query outputs and insights.

---


# Learning Outcomes

After completing this assignment, the following concepts were practiced:

* Designing a normalized relational database.
* Creating tables with constraints and relationships.
* Writing efficient SQL queries.
* Performing data filtering and aggregation.
* Combining data using joins.
* Understanding query optimization using indexes.
* Applying conditional logic with CASE.
* Managing transactions while preserving data integrity.
* Organizing SQL scripts following industry best practices.

---

# Author

**Manjit Bajaj**  
Computer Science Undergraduate  
CEI Internship Program  
Maharashtra, India

- GitHub: https://github.com/Bajajmanjit12
- LinkedIn: https://www.linkedin.com/in/manjit-bajaj-1839a0281/
