# Celebal Summer Internship 2026 – Week 6 Spark ETL Pipeline using Apache Spark

## Project Overview

This repository contains the solution for **Week 6** of the **Celebal Summer Internship 2026**. The assignment focuses on understanding **Apache Spark Architecture** and implementing a complete **ETL (Extract, Transform, Load) pipeline** using **PySpark DataFrames**.

The project demonstrates how Spark processes large-scale data efficiently through lazy evaluation, DAG execution, schema handling, transformations, filtering, and optimized storage formats such as Parquet. It also includes practical implementation of data cleaning, feature engineering, filtering, and saving the processed dataset in multiple formats.

---

# Objective

The objective of this assignment is to:

- Understand Apache Spark Architecture (Driver, Cluster Manager, and Executors).
- Learn Spark execution modes and Lazy Evaluation.
- Understand DAG (Directed Acyclic Graph) and Lineage Graph.
- Read CSV datasets with proper schema handling.
- Perform data cleaning and handle null values.
- Rename columns and modify DataFrame schema.
- Cast data types appropriately.
- Create new columns using DataFrame transformations.
- Filter and select required data efficiently.
- Understand Transformations and Actions.
- Learn Shuffle operations and Predicate Pushdown.
- Compare CSV and Parquet storage formats.
- Build a complete ETL pipeline using PySpark.
- Save processed data in CSV and Parquet formats.
- Follow Spark performance best practices for large datasets.

---

# Technologies Used

- Apache Spark
- PySpark
- Python
- Google Colab
- CSV Dataset (Sample Superstore)
- Parquet File Format

---

# Repository Structure

```text
Week_6_Spark_ETL_Pipeline/
│
├── data/
│   └── Superstore.csv
│
├── output/
│   ├── csv/
│   │   ├── part-00000-xxxxxxxx.csv
│   │   └── _SUCCESS
│   │
│   └── parquet/
│       ├── part-00000-xxxxxxxx.snappy.parquet
│       └── _SUCCESS
│
├── Week_6_Spark_ETL_Pipeline.ipynb
├── Week_6_Spark_Assignment_Answers.md
└── README.md
```

---

# Project Description

The project consists of two parts:

## 1. Spark ETL Pipeline

This notebook demonstrates an end-to-end ETL workflow using Apache Spark.

### Step 1 – Data Extraction

- Created Spark Session.
- Loaded the Superstore CSV dataset.
- Inferred schema automatically.
- Explored the dataset using DataFrame operations.

### Step 2 – Data Transformation

- Renamed columns.
- Handled missing values.
- Removed duplicate records.
- Modified data types.
- Created new calculated columns.
- Filtered required records.
- Selected relevant columns.
- Applied DataFrame transformations.
- Performed aggregation using `groupBy()`.

### Step 3 – Data Loading

- Saved processed dataset as CSV.
- Saved processed dataset as Parquet.
- Verified saved output files.

---

## 2. Spark Theory Assignment

The assignment also includes theoretical concepts covering:

- Spark Architecture
- Driver, Cluster Manager, and Executors
- Lazy Evaluation
- DAG and Lineage Graph
- Transformations vs Actions
- Predicate Pushdown
- Shuffle Operations
- CSV vs Parquet
- Client Mode vs Cluster Mode
- Spark Performance Best Practices

---

# ETL Pipeline Workflow

```text
            Superstore.csv
                  │
                  ▼
          Extract (Read CSV)
                  │
                  ▼
      Schema Handling & Validation
                  │
                  ▼
          Data Cleaning
   (Null Handling & Duplicates)
                  │
                  ▼
      Data Transformation
(Rename Columns, Cast Types,
 Add New Columns)
                  │
                  ▼
      Filtering & Selection
                  │
                  ▼
      Aggregation & Analysis
                  │
                  ▼
      Load Processed Dataset
       (CSV & Parquet)
```

---


# Expected Output

- Superstore dataset successfully loaded into Spark.
- Dataset cleaned and transformed.
- New calculated columns generated.
- Required records filtered successfully.
- Processed dataset saved as CSV.
- Processed dataset saved as Parquet.
- ETL pipeline executed successfully.
- Spark concepts demonstrated through practical implementation.

---

# Learning Outcomes

Through this assignment, I gained hands-on experience in:

- Apache Spark Architecture
- Spark DataFrames
- Lazy Evaluation
- DAG execution model
- Schema inference and management
- Data cleaning techniques
- Data transformation using PySpark
- Data filtering and aggregation
- CSV and Parquet file formats
- Predicate Pushdown optimization
- Spark performance best practices
- Building an end-to-end ETL pipeline using Apache Spark

---

# How to Run the Project

1. Open the notebook in Google Colab or Jupyter Notebook.
2. Install PySpark (if not already installed).

```python
!pip install pyspark
```

3. Create a Spark Session.
4. Upload the `Superstore.csv` dataset into the `data` folder.
5. Execute all notebook cells sequentially.
6. Perform data extraction, transformation, and filtering.
7. Save the processed dataset as CSV and Parquet.
8. Verify the generated output files in the `output` directory.
9. Review the assignment answers for Spark concepts and architecture.

---

# Conclusion

This assignment provided practical experience in implementing an end-to-end ETL pipeline using Apache Spark and PySpark DataFrames. It strengthened my understanding of Spark architecture, lazy evaluation, DAG execution, data transformations, and performance optimization techniques, while demonstrating efficient processing and storage of large-scale datasets.

---

# Author

**Manjit Bajaj**

Computer Engineering Undergraduate

**Celebal Technologies Data Engineering Internship Program – 2026**

Maharashtra, India

**GitHub:** https://github.com/Bajajmanjit12

**LinkedIn:** https://www.linkedin.com/in/manjit-bajaj-1839a0281/
