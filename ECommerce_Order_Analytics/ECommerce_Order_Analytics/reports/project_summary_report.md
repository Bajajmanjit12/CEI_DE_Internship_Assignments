# Project Summary Report

## E-Commerce Order Analytics System

---

# Project Overview

The **E-Commerce Order Analytics System** is an end-to-end data analytics project developed using **Python**, **Pandas**, and **SQLite**. The project simulates a real-world e-commerce environment where raw transactional data from multiple sources contains inconsistencies and data quality issues. The objective is to clean, validate, transform, and analyze this data to generate meaningful business insights.

The project follows a complete ETL (Extract, Transform, Load) workflow, beginning with synthetic data generation and ending with SQL-based business intelligence reporting and command-line analytics.

---

# Project Workflow

The project was completed in five major phases:

1. Data Generation
2. Data Cleaning and Validation
3. SQL Business Analytics
4. Python and SQLite Integration
5. Edge Case Testing

---

# Phase 1 – Data Generation

Four datasets were generated using Python with more than 500 records in each file.

### Datasets Generated

* customers.csv
* products.csv
* orders.csv
* order_items.csv

To simulate real-world scenarios, intentional data quality issues were introduced.

### Issues Introduced

* 5% missing customer IDs
* Incorrect order date formats
* Mixed-case product names
* Extra spaces in product names
* 2% invalid email addresses
* Negative quantities representing returned items

---

# Phase 2 – Data Cleaning and Validation

The generated datasets were cleaned using Pandas.

### Cleaning Performed

### Orders

* Standardized multiple date formats
* Replaced missing customer IDs with placeholder values

### Products

* Removed leading and trailing spaces
* Normalized product names using Title Case

### Customers

* Validated email addresses using Regular Expressions
* Identified invalid email records

### Order Items

* Verified referential integrity
* Identified returned products using negative quantities

After preprocessing, cleaned datasets were exported for database loading.

---

# Phase 3 – SQL Analytics

The cleaned datasets were loaded into an SQLite database.

Several SQL queries were implemented to answer business questions.

---

# Basic Analysis

The following reports were generated:

* Total revenue by category
* Top 10 customers by revenue
* Monthly order count

---

# Intermediate Analysis

Additional business insights included:

* Customers who never received delivered orders
* Products with more returns than purchases
* Return rate by category

---

# Advanced Analysis

Advanced SQL techniques were implemented using Window Functions and CTEs.

### Running Revenue

Calculated cumulative revenue for every region over time.

### Product Ranking

Ranked products within each category using DENSE_RANK().

### Customer Purchase Gap

Calculated the number of days between consecutive customer purchases using LAG().

Customers with an average purchase gap greater than 30 days were flagged as **At Risk**.

### Monthly Customer Segmentation

Customers were classified into:

* High Value
* Medium Value
* Low Value

based on monthly revenue.

### Customer Lifetime Value

Customers were divided into four quartiles using NTILE():

* Platinum
* Gold
* Silver
* Bronze

### Year-over-Year Revenue

Compared monthly revenue against the same month of the previous year.

### Category Shift Analysis

Compared each customer's first purchased category with their latest purchased category.

### Revenue Distribution

Calculated cumulative revenue contribution from top customers.

### Cohort Analysis

Measured customer retention over the first four months after registration.

---

# Phase 4 – Python and SQLite Integration

A command-line reporting application was developed using Python and SQLite.

The application allows users to:

* Select report type
* Enter a date range
* View total orders
* View total revenue
* View unique customers
* Display top three products
* Compare revenue with the previous period

This provides a lightweight reporting interface without requiring external tools.

---

# Phase 5 – Edge Case Testing

Automated test functions were created to validate important business rules.

### Tests Performed

* Invalid order references
* Discount percentage greater than 100%
* Zero quantity validation
* Future order date validation

These tests help ensure data consistency and reliability.

---

# Business Insights

The analysis produced several important business insights.

### Revenue Insights

* Electronics generated the highest overall revenue.
* Books contributed the lowest total revenue.
* Revenue fluctuated across different months.

---

### Customer Insights

* Premium and VIP customers generated significantly higher revenue than regular customers.
* A small percentage of customers contributed a large share of total sales.
* Multiple customers were identified as "At Risk" due to long purchase intervals.

---

### Product Insights

* Electronics remained the most frequently purchased category.
* Certain products experienced high return volumes.
* Product rankings differed significantly across categories.

---

### Return Analysis

* Return rates varied by product category.
* Returned products negatively impacted overall revenue.
* Monitoring return behavior can help improve inventory planning.

---

### Customer Retention

* Cohort analysis showed a gradual decline in customer retention over time.
* Customers demonstrated the highest activity during the registration month.

---

# Project Highlights

* Generated realistic synthetic datasets
* Implemented complete ETL workflow
* Performed advanced SQL analytics
* Used Window Functions and Common Table Expressions
* Built a command-line reporting application
* Implemented automated data validation tests
* Followed a modular project structure

---

# Technologies Used

* Python
* Pandas
* NumPy
* SQLite
* SQL
* Faker
* Jupyter Notebook
* Visual Studio Code

---

# Learning Outcomes

This project strengthened practical knowledge in:

* Data generation
* Data cleaning
* Data validation
* SQL analytics
* Window Functions
* Common Table Expressions
* Customer segmentation
* Cohort analysis
* Business reporting
* Python and SQLite integration

---

# Conclusion

The E-Commerce Order Analytics System successfully demonstrates a complete data analytics workflow from synthetic data generation to business intelligence reporting. The project integrates Python for data processing, SQLite for database management, and SQL for advanced analytics. By combining ETL processes, analytical SQL queries, command-line reporting, and edge case testing, the project showcases industry-relevant skills in data engineering and business analytics while emphasizing data quality, scalability, and actionable insights.
