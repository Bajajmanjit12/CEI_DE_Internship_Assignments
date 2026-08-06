# E-Commerce Order Analytics System

## Project Overview

This repository contains the solution for the **E-Commerce Order Analytics System** mini project. The project simulates a real-world e-commerce analytics pipeline by generating synthetic transactional data, performing data cleaning and validation, loading the cleaned data into an SQLite database, and generating business insights using SQL.

The project demonstrates an end-to-end ETL (Extract, Transform, Load) workflow along with analytical SQL reporting, command-line report generation, and edge case validation using Python.

---

# Objective

The objective of this project is to:

* Generate realistic e-commerce datasets using Python.
* Simulate real-world data quality issues such as missing values, invalid emails, incorrect date formats, and inconsistent product names.
* Clean and validate the generated datasets using Pandas.
* Load the cleaned data into an SQLite database.
* Perform business analytics using SQL queries.
* Apply advanced SQL concepts including Window Functions, Common Table Expressions (CTEs), Subqueries, and analytical functions.
* Build a Python command-line application for generating business reports.
* Validate edge cases to ensure data integrity and reliability.

---

# Technologies Used

* Python 3.x
* Pandas
* NumPy
* Faker
* SQLite
* SQL
* Jupyter Notebook
* Visual Studio Code

---

# Repository Structure

```text
ECommerce_Order_Analytics/
│
├── data/
│   ├── raw/
│   │   ├── customers.csv
│   │   ├── products.csv
│   │   ├── orders.csv
│   │   └── order_items.csv
│   │
│   └── cleaned/
│       ├── customers_clean.csv
│       ├── products_clean.csv
│       ├── orders_clean.csv
│       └── order_items_clean.csv
│
├── database/
│   └── ecommerce.db
│
├── notebooks/
│   ├── data_cleaning.ipynb
│   ├── generate_data.ipynb
│   └── sql_analysis.ipynb
│
├── src/
│   ├── report_cli.py
│   └── tests.py
│
├── reports/
│   ├── cleaning_report.txt
│   └── project_summary_report.md
│
├── requirements.txt
└── README.md
```

---

# File Description

### `01_data_generation.ipynb`

Generates four synthetic datasets:

* customers.csv
* products.csv
* orders.csv
* order_items.csv

The generated data intentionally contains common data quality issues for ETL practice.

---

### `02_data_cleaning.ipynb`

Performs complete data preprocessing including:

* Date format correction
* Missing customer ID handling
* Product name normalization
* Email validation
* Referential integrity checking
* Cleaning report generation

---

### `03_sql_analysis.ipynb`

Loads cleaned data into SQLite and performs complete SQL analytics.

Includes:

* Basic SQL Queries
* Intermediate SQL Queries
* Advanced SQL Queries
* Window Functions
* Common Table Expressions (CTEs)
* Cohort Analysis
* Customer Segmentation

---

### `src/report_cli.py`

Command-line reporting application that allows users to:

* Select report type
* Enter date range
* Generate business summary
* Compare current and previous periods

---

### `src/tests.py`

Contains validation functions for testing project edge cases including:

* Invalid order references
* Discount greater than 100%
* Zero quantity
* Future order dates

---

### `reports/cleaning_report.txt`

Summarizes all data quality issues identified during preprocessing.

---

### `reports/project_summary_report.md`

Contains business insights, analytical findings, and project observations.

---

# Dataset Description

The project consists of four datasets.

### customers.csv

* customer_id
* customer_name
* email
* registration_date
* customer_type

Customer Types:

* REGULAR
* PREMIUM
* VIP

---

### products.csv

* product_id
* product_name
* category
* subcategory
* cost_price

Categories:

* Electronics
* Clothing
* Home
* Books

---

### orders.csv

* order_id
* customer_id
* order_date
* region_code
* status

Order Status:

* PLACED
* SHIPPED
* DELIVERED
* CANCELLED
* RETURNED

---

### order_items.csv

* item_id
* order_id
* product_id
* quantity
* unit_price
* discount_percent

---

# Data Quality Issues Simulated

The generated datasets intentionally include realistic inconsistencies:

* 5% missing customer IDs
* Invalid order date formats
* Mixed-case product names
* Extra spaces in product names
* 2% invalid email addresses
* Negative quantities representing product returns
* Referential integrity validation between orders and order items

---

# Data Cleaning Performed

### Orders

* Corrected inconsistent date formats
* Handled missing customer IDs

### Products

* Removed leading and trailing spaces
* Removed multiple spaces
* Converted product names to Title Case

### Customers

* Validated email addresses using Regular Expressions

### Order Items

* Checked referential integrity
* Identified returned products using negative quantities

---

# SQL Concepts Demonstrated

The project includes a wide range of SQL concepts.

### Basic SQL

* GROUP BY
* ORDER BY
* Aggregate Functions
* INNER JOIN

### Intermediate SQL

* CASE Statements
* HAVING Clause
* Subqueries
* Conditional Aggregation

### Advanced SQL

* Common Table Expressions (CTEs)
* Window Functions
* ROW_NUMBER()
* DENSE_RANK()
* LAG()
* NTILE()
* Running Totals
* Cohort Analysis
* Year-over-Year Analysis
* Customer Segmentation

---

# Business Questions Solved

The following business problems were addressed using SQL.

### Basic Analytics

* Total revenue by product category
* Top 10 customers by revenue
* Monthly order count

### Intermediate Analytics

* Customers with no delivered orders
* Products having more returns than purchases
* Return rate by category

### Advanced Analytics

* Running revenue by region
* Product ranking within categories
* Customer purchase gap analysis
* Monthly customer segmentation
* Customer lifetime value quartiles
* Year-over-Year revenue comparison
* First and latest purchased category
* Revenue contribution by top customers
* Customer cohort analysis
* Customer order timeline analysis

---

# Python Features Implemented

* Synthetic data generation
* Data cleaning pipeline
* Email validation
* Referential integrity validation
* SQLite database integration
* Command-line reporting tool
* Automated edge case testing

---

# Edge Cases Tested

The project validates the following scenarios:

* Invalid order references
* Discount percentage greater than 100%
* Zero quantity orders
* Future order dates

---

# How to Run the Project

1. Clone this repository.

2. Install project dependencies.

```bash
pip install -r requirements.txt
```

3. Generate the raw datasets using:

```text
01_data_generation.ipynb
```

4. Clean and validate the generated data using:

```text
02_data_cleaning.ipynb
```

5. Execute SQL analysis using:

```text
03_sql_analysis.ipynb
```

6. Run the command-line reporting application.

```bash
python src/report_cli.py
```

7. Execute the edge case validation tests.

```bash
python src/tests.py
```

---

# Learning Outcomes

This project provided practical experience in:

* Building synthetic datasets
* Data preprocessing and validation
* ETL pipeline development
* SQLite database management
* Advanced SQL analytics
* Window Functions
* Common Table Expressions
* Business intelligence reporting
* Python and SQL integration
* Data quality assurance

---

# Conclusion

The E-Commerce Order Analytics System demonstrates a complete end-to-end analytics workflow beginning with synthetic data generation and ending with business intelligence reporting. The project integrates Python, Pandas, SQLite, and advanced SQL techniques to clean, validate, analyze, and report transactional data. Through ETL processing, analytical SQL queries, customer segmentation, cohort analysis, and automated testing, the project showcases practical skills required for data engineering and business analytics roles.

---

# Author

**Manjit Bajaj**

Computer Engineering Undergraduate

**Celebal Summer Internship 2026**

Maharashtra, India

**GitHub:** https://github.com/Bajajmanjit12

**LinkedIn:** https://www.linkedin.com/in/manjit-bajaj-1839a0281/

