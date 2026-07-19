# Celebal Summer Internship 2026 – Week 5 Spark Assignment

## Project Overview

This repository contains the solution for **Week 5** of the **Celebal Summer Internship 2026**.

The assignment focuses on understanding **Apache Spark fundamentals and PySpark DataFrame operations**. A dirty café sales dataset is used to perform data cleaning, filtering, transformation, aggregation, and grouping operations.

The project demonstrates how Spark DataFrames can be used to process inconsistent and missing data efficiently. It also covers important Spark concepts such as **immutability, in-memory processing, shuffle, and wide transformations**.

---

# Objective

The objective of this assignment is to:

* Understand the limitations of traditional MapReduce.
* Learn the advantages of Apache Spark.
* Understand Spark DataFrames and DataFrame immutability.
* Load and inspect a CSV dataset using PySpark.
* Perform data cleaning operations.
* Handle NULL and inconsistent values.
* Remove duplicate records.
* Apply filtering conditions.
* Perform data transformations and type casting.
* Use aggregation functions such as `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`.
* Group data using `groupBy()`.
* Understand shuffle operations and wide transformations.
* Build a complete Spark data processing pipeline.
* Save the cleaned dataset as a CSV file.
* Answer Spark-related theoretical and coding questions.

---

# Technologies Used

* Python
* Apache Spark
* PySpark
* Spark DataFrames
* Jupyter Notebook
* Visual Studio Code
* CSV Dataset

---

# Project Structure

```text
spark_assignment/
│
├── data/
│   └── dirty_cafe_sales.csv
│
├── notebook/
│   └── spark_basics.ipynb
│
├── output/
│   └── clean_cafe_sales.csv
│
├── week_5_spark_questions.pdf
│
└── README.md
```

---

# File Description

### `dirty_cafe_sales.csv`

Contains the original dirty café sales dataset used for Spark data processing.

The dataset contains transaction-related information including:

* Transaction ID
* Item
* Quantity
* Price Per Unit
* Total Spent
* Payment Method
* Location
* Transaction Date

The dataset contains inconsistent values such as:

* `NULL`
* `UNKNOWN`
* `ERROR`
* Empty values

These values were used to demonstrate data cleaning and data validation using PySpark.

---

### `spark_basics.ipynb`

Contains the complete PySpark implementation of the assignment.

The notebook demonstrates:

* Spark Session creation
* CSV data loading
* DataFrame inspection
* Data cleaning
* Data filtering
* Column transformations
* Data type conversion
* Aggregation
* `groupBy()` operations
* Spark pipeline implementation
* Clean CSV output generation

---

### `clean_cafe_sales.csv`

Contains the cleaned output generated after applying Spark data processing operations.

The cleaned dataset is stored in the `output` folder.

---

### `week_5_spark_questions.pdf`

Contains the answers and code snippets for the **15 Week-5 Apache Spark questions**.

The questions covers all concepts related to MapReduce and Spark.

---


# Data Processing Performed

## 1. Spark Session Creation

A Spark session was created using `SparkSession` to perform distributed data processing using PySpark.

---

## 2. Data Loading

The dirty café sales CSV file was loaded into a Spark DataFrame using the Spark CSV reader.

The schema and sample records were inspected using DataFrame operations.

---

## 3. Data Cleaning

The dataset was cleaned by:

* Removing duplicate rows.
* Handling NULL values.
* Identifying inconsistent values.
* Handling values such as `ERROR` and `UNKNOWN`.
* Converting columns to appropriate data types.

---

## 4. Data Filtering

Filtering operations were performed using Spark DataFrame conditions.

Examples include filtering transactions based on:

* Location
* Item
* Transaction information

---

## 5. Data Transformation

Data transformations were performed using Spark functions.

The notebook demonstrates:

* Column renaming
* Data type casting
* Numeric conversion
* Handling malformed values using safe conversion techniques

---

## 6. Aggregation

The following aggregation functions were used:

* `count()`
* `sum()`
* `avg()`
* `min()`
* `max()`

These functions were used to calculate useful statistics from the café sales dataset.

---

## 7. Grouping

The `groupBy()` operation was used to group data based on columns such as `item` and `location`.

Grouped aggregations were used to calculate:

* Record counts
* Average spending
* Total revenue

---

## 8. Shuffle and Wide Transformation

The notebook also explains the concept of **shuffle** during grouping operations.

When Spark performs a `groupBy()` operation, data may be moved between partitions so that records with the same grouping key are placed together.

This makes `groupBy()` a **wide transformation**.

---

## 9. Complete Spark Pipeline

The complete processing pipeline combines multiple Spark operations:

```text
Load Dataset
     ↓
Inspect Data
     ↓
Clean Data
     ↓
Remove Duplicates
     ↓
Handle NULL and Inconsistent Values
     ↓
Filter Data
     ↓
Transform Columns
     ↓
Perform Aggregations
     ↓
Group Data
     ↓
Save Cleaned CSV
```

---

# Key Insights

The following insights were observed during the data processing:

* Spark DataFrames provide a simple and structured way to process large datasets.
* Spark uses in-memory processing to reduce repeated disk I/O.
* DataFrames are immutable, so transformations create new DataFrames.
* NULL and inconsistent values should be handled before performing reliable analysis.
* Invalid values such as `ERROR` can cause type casting and aggregation errors.
* Safe type conversion is useful when working with dirty datasets.
* `groupBy()` operations can cause shuffle between Spark partitions.
* Shuffle makes grouping operations wide transformations.
* Aggregation functions help summarize and analyze data efficiently.

---

# How to Run the Project

1. Clone or download this repository.

2. Open the project in **Visual Studio Code**.

3. Install PySpark if it is not already installed:

```bash
pip install pyspark
```

4. Open the notebook:

```text
notebook/spark_basics.ipynb
```

5. Run the notebook cells sequentially from top to bottom.

6. The cleaned dataset will be generated in:

```text
output/clean_cafe_sales.csv
```

7. The Week-5 Spark questions and answers are available in:

```text
week_5_spark_questions.pdf
```

---

# Learning Outcomes

Through this assignment, the following concepts were practiced:

* Understanding MapReduce limitations.
* Understanding Spark in-memory processing and Working with Spark DataFrames.
* Understanding DataFrame immutability.
* Performing data cleaning operations and Handling NULL and inconsistent data.
* Applying filters and transformations.
* Performing mathematical aggregations.
* Using `groupBy()` for data analysis.
* Understanding shuffle and wide transformations.
* Building complete Spark data processing pipelines.
* Saving processed data as CSV output.

---

# Conclusion

This assignment provided practical experience with **Apache Spark and PySpark DataFrames**. It demonstrated how Spark can be used to clean, transform, filter, and analyze dirty data efficiently.

The project also strengthened the understanding of important Spark concepts such as **in-memory processing, DataFrame immutability, aggregation, grouping, shuffle, and wide transformations**. The accompanying Week-5 question document further reinforced the theoretical and practical concepts of Spark data processing.

---

# Author

**Manjit Bajaj**

Computer Science Undergraduate

**Celebal Summer Internship 2026**

Maharashtra, India

**GitHub:** https://github.com/Bajajmanjit12 

**LinkedIn:** https://www.linkedin.com/in/manjit-bajaj-1839a0281/
