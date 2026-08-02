# Celebal Excellence Internship Program 2026
# Week 7: Delta Lake MERGE Implementation (Incremental Data Processing)

## Overview

This project demonstrates **incremental data processing using Delta Lake and Apache Spark**. It simulates a real-world ETL workflow where a customer master dataset is maintained using **MERGE (UPSERT)** operations. Existing customer records are updated, while new customer records are inserted into the Delta table without rewriting the entire dataset.

This assignment showcases the use of **Delta Lake ACID transactions**, **data cleaning**, and **incremental data ingestion**, which are fundamental concepts in modern Data Engineering.

---

## Objectives

* Load customer data into a Delta Lake table.
* Perform data cleaning by handling missing values and removing duplicate records.
* Create a simulated incremental customer dataset.
* Apply the Delta Lake **MERGE** operation to update existing records and insert new ones.
* Validate the final dataset by checking row counts and duplicate records.
* Organize the project following a professional GitHub structure.

---

## Technologies Used

* Python 3
* Apache Spark (PySpark 3.5.1)
* Delta Lake
* Google Colab
* Git & GitHub

---

## Dataset

**Source:** Superstore Dataset (Kaggle)

The original Superstore dataset was used to create a customer master dataset containing customer information required for the assignment.

Customer attributes used include:

* Customer ID
* Customer Name
* Segment
* City
* State
* Country

---

## Project Structure

```text
delta-lake-assignment/
│
├── data/
|   ├── Sample-Superstore.csv
│   ├── customer_master
│   └── customer_incremental
│
├── notebooks/
│   └── delta_scd_assignment.ipynb
│
├── delta_customer/
│   ├── data_log/
│   ├── part-00000-9080ac02-27f6-4885-a959-b1ffa048ea29-c000.snappy.parquet
│   └── part-00000-f3442df6-9f32-4005-834b-e37a6f4be53d-c000.snappy.parquet
│
├── report/
│   └── assignment_summary.pdf   (Optional)
│
└── README.md
```

---

## Project Workflow

### Step 1: Environment Setup

* Installed Java
* Installed PySpark
* Installed Delta Lake
* Configured SparkSession with Delta Lake support

---

### Step 2: Data Loading

* Loaded the Superstore dataset into Apache Spark.
* Selected customer-related columns.
* Created the Customer Master dataset.

---

### Step 3: Data Cleaning

Performed the following preprocessing steps:

* Checked schema
* Identified missing values
* Filled missing values where necessary
* Removed duplicate customer records
* Validated cleaned data

---

### Step 4: Delta Table Creation

The cleaned customer dataset was stored as a Delta Lake table.

Benefits include:

* ACID Transactions
* Reliable Data Storage
* Efficient Updates
* Time Travel Support
* Schema Enforcement

---

### Step 5: Incremental Dataset Creation

A second dataset was created to simulate new daily customer data.

The incremental dataset contained:

* Existing customers with updated information
* New customers not present in the master dataset

---

### Step 6: Delta MERGE Operation

The Delta Lake **MERGE** operation was used to perform an UPSERT.

Logic:

* If `customer_id` exists → Update customer information.
* If `customer_id` does not exist → Insert a new customer record.

This avoids rewriting the entire dataset and enables efficient incremental processing.

---

### Step 7: Validation

Validation checks included:

* Row count before and after MERGE
* Verification of updated customer records
* Verification of newly inserted customer records
* Duplicate customer ID check
* Final schema validation

---

## Output

The final Delta table contains:

* Updated customer records
* Newly inserted customer records
* No duplicate customer IDs
* Clean and validated customer master data

---

## Key Concepts Demonstrated

* Apache Spark DataFrames
* Delta Lake
* Incremental ETL
* MERGE (UPSERT)
* Data Cleaning
* Duplicate Removal
* ACID Transactions
* Data Validation

---

## Learning Outcomes

After completing this project, the following concepts were implemented and understood:

* Configuring Delta Lake with Apache Spark
* Reading and writing Delta tables
* Cleaning large datasets using PySpark
* Creating incremental datasets
* Performing UPDATE and INSERT operations using MERGE
* Validating Delta Lake data pipelines
* Organizing a professional Data Engineering project for GitHub

---

## Future Enhancements

Possible improvements include:

* Implement Slowly Changing Dimension (SCD Type 2)
* Add Time Travel queries
* Enable Change Data Feed (CDF)
* Partition Delta tables for better performance
* Integrate with Azure Data Factory or Databricks
* Automate incremental data ingestion using scheduled pipelines

---

## Conclusion

This project successfully demonstrates an end-to-end Delta Lake incremental data processing pipeline using Apache Spark. Customer data was cleaned, stored as a Delta table, updated using the MERGE operation, and validated to ensure data consistency. The implementation reflects common real-world Data Engineering practices used for maintaining reliable and scalable data pipelines.

## Author

**Submitted By: Manjit Bajaj**
