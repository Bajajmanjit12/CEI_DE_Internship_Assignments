# Celebal Summer Internship 2026 – Week 3 SQL Advanced Analytics

## Project Overview

This repository contains the solution for **Week 3** of the **Celebal Summer Internship 2026**. The assignment focuses on performing advanced SQL analytics on the **Superstore** dataset by applying **Subqueries**, **Common Table Expressions (CTEs)**, **Window Functions**, and **JOINs** to solve real-world business problems.

The project demonstrates how advanced SQL techniques can be used to analyze customer sales, rank customers based on revenue, identify high-value transactions, and generate meaningful business insights from retail sales data.

---

# Objective

The objective of this assignment is to:

* Import the Superstore dataset into a staging table (`superstore_raw`).
* Create normalized **customers**, **orders**, and **products** tables from the raw dataset.
* Apply **Subqueries** to solve analytical business questions.
* Use **Common Table Expressions (CTEs)** for intermediate aggregations and customer-level analysis.
* Implement **Window Functions** (`ROW_NUMBER`, `RANK`, `DENSE_RANK`) for ranking and segmentation.
* Combine **JOINs**, **CTEs**, and **Window Functions** to generate customer sales reports.
* Perform customer sales analysis to identify top customers, low-performing customers, single-order customers, and above-average customers.
* Document query results and business insights following industry best practices.

---

# Technologies Used

* MySQL 8.x
* MySQL Workbench
* SQL (ANSI SQL)

---

# Repository Structure

```text
SQL-Advanced-Analytics-Superstore/
│
├── SQL/
│   └── advanced_sql_analysis.sql
│
├── Results/
│   └── Query_Results.pdf
│
├── Mini_Project/
│   └── customer_sales_insights.pdf
│
├── README.md
│
└── Superstore.csv 
```

---

# File Description

### `SQL/advanced_sql_analysis.sql`

Contains the complete SQL implementation for the assignment, including:

* Database selection
* Table creation
* Data insertion using `SELECT DISTINCT`
* Subquery-based analysis
* Common Table Expressions (CTEs)
* Window Function queries
* Final combined analytical query

---

### `Results/Query_Results.docx`

Contains screenshots of all executed SQL queries and their outputs, along with brief explanations and observations for each query.

---

### `Mini_Project/Customer_Sales_Insights.docx`

Contains the Customer Sales Insights analysis, including:

* Top 5 customers
* Bottom 5 customers
* Customers with only one order
* Customers with above-average sales
* Highest order value per customer
* Business insights and overall findings

---

### `Superstore.csv` 

The original Superstore retail dataset used for analysis. This file is included only if permitted by the dataset's license.

---

# Database Schema

The analysis is based on the following tables created from the staging table `superstore_raw`:

* **customers**

  * customer_id
  * customer_name
  * segment

* **products**

  * product_id
  * product_name
  * category
  * sub_category

* **orders**

  * row_id
  * order_id
  * order_date
  * ship_date
  * ship_mode
  * customer_id
  * product_id
  * sales
  * quantity
  * discount
  * profit
  * state
  * city
  * region

### Entity Relationships

```text
customers (1) ─────────< orders (N)

products (1) ──────────< orders (N)
```

---

# SQL Concepts Demonstrated

The project covers the following advanced SQL concepts:

### Subqueries

* Orders with above-average sales
* Highest sales order for each customer

### Common Table Expressions (CTEs)

* Customer-wise total sales
* Above-average customer sales analysis
* Intermediate aggregations

### Window Functions

* `ROW_NUMBER()`
* `RANK()`
* `DENSE_RANK()`
* `PARTITION BY`

### JOIN Operations

* INNER JOIN
* Combining customer and order data
* Analytical reporting using JOIN + CTE + Window Functions

---

# Business Questions Solved

The following analytical questions were answered using SQL:

* Find all orders where sales are greater than the average sales.
* Find the highest sales order for each customer.
* Calculate total sales for each customer.
* Identify customers whose total sales are above average.
* Rank customers based on total sales.
* Assign row numbers to orders within each customer.
* Display the top 3 customers based on total sales.
* Generate a final ranked customer sales report.

### Mini Project – Customer Sales Insights

* Who are the top 5 customers?
* Who are the bottom 5 customers?
* Which customers placed only one order?
* Which customers have above-average sales?
* What is the highest order value for each customer?

---

# How to Run the Project

1. Clone this repository.

2. Create a MySQL database named `superstore_db`.

3. Import the Superstore dataset into the staging table `superstore_raw`.

4. Open and execute the SQL script:

   `SQL/advanced_sql_analysis.sql`

5. Verify that the tables are created successfully and all queries execute without errors.

6. Compare your outputs with the screenshots provided in:

   `Results/Query_Results.docx`

7. Review the business analysis in:

   `Mini_Project/Customer_Sales_Insights.docx`

---

# Learning Outcomes

Through this assignment, the following concepts were practiced:

* Importing and organizing real-world datasets.
* Creating normalized tables using `SELECT DISTINCT`.
* Writing analytical SQL queries using Subqueries.
* Simplifying complex logic with Common Table Expressions (CTEs).
* Applying Window Functions for ranking and segmentation.
* Combining JOINs, CTEs, and Window Functions to build analytical reports.
* Extracting business insights from retail sales data.
* Documenting SQL projects using professional GitHub repository structure.

---

# Conclusion

This project demonstrates the practical application of advanced SQL techniques to solve real-world business analytics problems using the Superstore dataset. By leveraging Subqueries, CTEs, Window Functions, and JOINs, meaningful customer sales insights were generated, including customer rankings, high-value orders, and sales performance analysis. The assignment strengthened analytical SQL skills and showcased how structured query techniques can transform raw transactional data into actionable business intelligence.

---

# Author

**Manjit Bajaj**

Computer Science Undergraduate

**Celebal Summer Internship 2026**

Maharashtra, India

**GitHub:** https://github.com/Bajajmanjit12

**LinkedIn:** https://www.linkedin.com/in/manjit-bajaj-1839a0281/
