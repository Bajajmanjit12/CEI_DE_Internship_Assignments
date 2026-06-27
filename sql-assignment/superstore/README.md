# SQL Superstore Data Analysis

## Project Overview

This project is part of the **Celebal Summer Internship 2026 – SQL Week 2 Assignment**. The objective is to perform SQL-based data analysis on the **Sample Superstore** dataset by exploring the data, validating its quality, applying filtering techniques, performing aggregations, and solving business-related analytical queries.

The project is implemented using **Google Colab**, **SQLite**, and **Pandas**, allowing SQL queries to be executed within a notebook environment while maintaining a professional and reproducible workflow.

---

## Objectives

* Load the Superstore dataset into a SQL database.
* Explore and understand the dataset.
* Validate data quality.
* Perform SQL filtering operations.
* Apply aggregation functions.
* Execute business-oriented SQL queries.
* Demonstrate SQL JOIN concepts using normalized tables.
* Use advanced SQL features such as CASE statements and Window Functions.
* Document the complete analysis in a GitHub-ready format.

---

## Dataset Information

* **Dataset:** Sample - Superstore.csv
* **Source:** Kaggle
* **Domain:** Retail Sales
* **Records:** Approximately 9,994
* **Columns:** 21

The dataset contains information related to customer orders, products, sales, profit, discounts, shipping details, and geographical regions.

---

## Technologies Used

* Google Colab
* SQLite
* Pandas
* SQL

---

## Project Structure

```text
superstore/
│
├── Sample - Superstore.csv
├── SQL_Superstore_Analysis.ipynb
└── README.md
```

---

## SQL Concepts Covered

### Database Setup

* Create Database
* Import CSV Dataset

### Data Validation

* Row Count
* Schema Exploration
* Missing Value Checks
* Duplicate Record Detection

### Basic SQL

* SELECT
* DISTINCT
* LIMIT

### Filtering

* WHERE
* BETWEEN
* IN
* LIKE
* ORDER BY

### Aggregation

* COUNT
* SUM
* AVG
* MIN
* MAX
* GROUP BY
* HAVING

### Joins

To demonstrate JOIN operations, the original dataset was normalized into logical tables:

* Customers
* Products
* Orders

Implemented:

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN (Equivalent using LEFT JOIN in SQLite)

### Advanced SQL

* CASE Statements
* Window Functions (RANK)
* Business Analysis Queries
  
---

## Key Insights

* Technology, Furniture, and Office Supplies are the primary product categories.
* A small number of customers contribute significantly to overall sales.
* Sales performance varies across different regions.
* Discount levels have a noticeable impact on profitability.
* The dataset contains minimal missing values and duplicate records.
* Monthly sales trends help identify seasonal business patterns.

---

## Learning Outcomes

Through this project, I gained practical experience in:

* Importing CSV data into a SQL database
* Writing SQL queries for data exploration
* Filtering and sorting datasets
* Performing aggregations for business analysis
* Detecting missing and duplicate data
* Implementing JOIN operations using normalized tables
* Applying CASE expressions and Window Functions
* Organizing a SQL analysis project for GitHub

---

## How to Run

1. Open **SQL_Superstore_Analysis.ipynb** in Google Colab.
2. Upload the `Sample - Superstore.csv` dataset.
3. Execute the notebook cells in order.
4. Review the SQL query outputs and business insights.

---

# Author

**Manjit Bajaj**  
Computer Science Undergraduate  
CEI Internship Program  
Maharashtra, India

- GitHub: https://github.com/Bajajmanjit12
- LinkedIn: https://www.linkedin.com/in/manjit-bajaj-1839a0281/
