# Celebal Summer Internship 2026 – Week 2 SQL Assignment

## Project Overview

This repository contains the solution for **Week 2** of the **Celebal Summer Internship 2026**. The assignment focuses on designing and querying a relational database for an e-commerce platform named **ShopEase** using SQL.

The project demonstrates fundamental and intermediate SQL concepts, including database creation, table relationships, filtering, aggregation, joins, indexing, conditional logic, and transaction management. It also includes a separate **Superstore Sales Analysis** project using a real-world retail dataset for SQL-based business analytics.

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
* Perform SQL-based analysis on a real-world retail dataset.
* Organize SQL scripts and documentation following industry best practices.

---

# Technologies Used

* MySQL 8.x
* MySQL Workbench
* SQL (ANSI SQL)
* Google Colab (Superstore Analysis)
* SQLlite

---

# Project Structure

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
├── SQL_Result_Screenshots.pdf
│
└── README.md
```

---

# File Description

### `shopease_database_setup.sql`

Contains the complete ShopEase database setup including:

* Database creation
* Table creation
* Constraints
* Primary & Foreign Keys
* Index creation
* Sample data insertion
* Validation queries

---

### `basic_queries.sql`

Implements SQL basics such as:

* SELECT
* DISTINCT
* Constraints
* Primary Keys
* Data Retrieval

---

### `filtering_queries.sql`

Contains filtering and optimization queries using:

* WHERE
* BETWEEN
* LIKE
* Comparison Operators
* Index Concepts
* Query Optimization

---

### `aggregation_queries.sql`

Demonstrates aggregation using:

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

Demonstrates relational querying using:

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN (Concept)
* FULL OUTER JOIN (Concept)
* Multi-table Joins
* Foreign Key Relationships

---

### `advanced_queries.sql`

Contains advanced SQL concepts including:

* CASE Expressions
* Conditional Aggregation
* ACID Properties
* Transactions
* COMMIT
* ROLLBACK

---

### `SQL_Result_Screenshots.pdf`

Contains screenshots of query execution and outputs for all assignment sections, serving as evidence of successful implementation.

---

### `superstore/`

Contains the SQL-based analysis of the **Sample Superstore** dataset, including:

* Dataset
* Google Colab Notebook
* Project-specific README

---

# Database Schema

The ShopEase database consists of the following tables:

* customers
* products
* orders
* order_items

### Entity Relationships

```text
customers (1) ────────< orders (N)

orders (1) ───────────< order_items (N)

products (1) ─────────< order_items (N)
```

---

# How to Run the Project

1. Clone this repository.

2. Open MySQL Workbench.

3. Execute `shopease_database_setup.sql`.

4. Verify that all tables and sample data are created successfully.

5. Execute the SQL files in the following order:

   * `basic_queries.sql`
   * `filtering_queries.sql`
   * `aggregation_queries.sql`
   * `joins_queries.sql`
   * `advanced_queries.sql`

6. Review the generated outputs and compare them with the screenshots provided in `SQL_Result_Screenshots.pdf`.

For the **Superstore Analysis**, open the notebook located in the `superstore` folder and execute the cells sequentially.

---

# Learning Outcomes

Through this assignment, the following concepts were practiced:

* Designing normalized relational databases.
* Implementing constraints and relationships.
* Writing optimized SQL queries.
* Applying filtering and aggregation techniques.
* Retrieving related data using joins.
* Understanding database indexing.
* Using CASE expressions for conditional logic.
* Managing transactions using COMMIT and ROLLBACK.
* Performing SQL-based business analysis on real-world data.
* Organizing SQL projects following GitHub best practices.

---

# Conclusion

This assignment provided practical experience in designing relational databases and solving real-world business problems using SQL. It strengthened concepts related to data modeling, query optimization, aggregation, joins, transactions, and analytical thinking. The accompanying Superstore analysis further demonstrated the application of SQL in exploring and extracting meaningful insights from retail sales data.

---

# Author

**Manjit Bajaj**

Computer Science Undergraduate

**Celebal Summer Internship 2026**

 Maharashtra, India

**GitHub:** https://github.com/Bajajmanjit12

**LinkedIn:** https://www.linkedin.com/in/manjit-bajaj-1839a0281/
