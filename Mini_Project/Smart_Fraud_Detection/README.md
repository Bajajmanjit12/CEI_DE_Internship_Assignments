# Smart Fraud Detection Pipeline

## PySpark | Spark SQL | Databricks | Delta Lake | Power BI

An end-to-end data engineering and analytics project designed to process financial transaction data and identify potentially fraudulent transactions using a scalable Databricks pipeline.

The project follows a **Medallion Architecture** consisting of Bronze, Silver, and Gold layers. Raw CSV data is ingested into the Bronze layer, cleaned and enriched in the Silver layer, and transformed into business-ready fraud analytics in the Gold layer. The final curated data is used in Power BI for interactive fraud monitoring and investigation.

---

##  Project Overview

Financial institutions process large volumes of transactions across customers, accounts, merchants, and locations. Manually analyzing such data is inefficient and makes it difficult to consistently identify suspicious activity.

This project implements an end-to-end fraud detection pipeline that:

1. Ingests account, transaction, and fraud-watchlist data.
2. Stores raw data in the Bronze layer.
3. Cleans and enriches data in the Silver layer.
4. Applies fraud detection logic in the Gold layer.
5. Performs data-quality and business validation.
6. Generates analytical datasets and KPIs.
7. Connects curated Gold data to Power BI for visualization.

The project demonstrates practical implementation of distributed data processing, SQL analytics, Lakehouse architecture, data quality, workflow orchestration, and business intelligence.

---

#  System Architecture

```text
                         SOURCE DATA
                              |
             +----------------+----------------+
             |                |                |
         Accounts        Transactions    Fraud Watchlist
             |                |                |
             +----------------+----------------+
                              |
                              v
                    UNITY CATALOG / VOLUME
                              |
                              v
                    +-------------------+
                    |   BRONZE LAYER    |
                    |   Raw Delta Data  |
                    +-------------------+
                              |
                              v
                    +-------------------+
                    |   SILVER LAYER    |
                    | Clean + Join +    |
                    | Enrich             |
                    +-------------------+
                              |
                              v
                    +-------------------+
                    |    GOLD LAYER     |
                    | Fraud Detection + |
                    | Business Analytics|
                    +-------------------+
                              |
                    +---------+---------+
                    |                   |
                    v                   v
              Databricks SQL       Power BI
                    |                   |
                    +---------+---------+
                              |
                              v
                       FRAUD INSIGHTS
```

---

#  Medallion Architecture

| Layer      | Purpose                                                                                 |
| ---------- | --------------------------------------------------------------------------------------- |
| **Bronze** | Stores raw source data in Delta format with minimal transformation.                     |
| **Silver** | Performs cleaning, null handling, type casting, standardization, joins, and enrichment. |
| **Gold**   | Applies fraud-detection logic and produces business-ready analytical datasets.          |

The separation of these layers improves **traceability, data quality, maintainability, and reprocessing capability**.

---

#  Technology Stack

| Technology        | Purpose                                                       |
| ----------------- | ------------------------------------------------------------- |
| **Python**        | Pipeline scripting and orchestration                          |
| **PySpark**       | Distributed data processing                                   |
| **Spark SQL**     | SQL-based transformation, joins, aggregation, and validation  |
| **Databricks**    | Cloud platform for Spark development and execution            |
| **Unity Catalog** | Data organization, governance, catalogs, schemas, and volumes |
| **Delta Lake**    | Reliable storage for Bronze, Silver, and Gold datasets        |
| **Power BI**      | Interactive dashboards and business analytics                 |
| **GitHub**        | Version control and project documentation                     |

---

#  Dataset

The project uses three primary datasets.

## Accounts Dataset

Contains account-level information.

| Column          | Description                |
| --------------- | -------------------------- |
| `account_id`    | Unique account identifier  |
| `customer_name` | Name of the account holder |
| `account_type`  | Type of account            |
| `credit_limit`  | Maximum credit allowed     |
| `branch`        | Registered branch          |

---

## Transactions Dataset

Contains transaction-level information.

| Column       | Description                         |
| ------------ | ----------------------------------- |
| `txn_id`     | Unique transaction identifier       |
| `account_id` | Account associated with transaction |
| `txn_date`   | Transaction date                    |
| `amount`     | Transaction amount                  |
| `merchant`   | Merchant involved in transaction    |

---

## Fraud Watchlist

Contains accounts flagged for suspected fraudulent activity.

| Column         | Description                  |
| -------------- | ---------------------------- |
| `account_id`   | Flagged account identifier   |
| `fraud_type`   | Type/category of fraud       |
| `flagged_date` | Date the account was flagged |

---

#  End-to-End Workflow

## 1. Source Data Preparation

The account, transaction, and fraud-watchlist CSV files are uploaded to a **Unity Catalog Volume**.

The source files remain separate from the processed Delta tables.

This provides a controlled location for raw input data.

---

## 2. Bronze Layer — Raw Ingestion

PySpark reads the source CSV files into Spark DataFrames.

The raw datasets are then stored as **Delta tables** in the Bronze layer.

### Purpose

The Bronze layer preserves the source representation and provides:

* Traceability
* Reprocessing capability
* Raw data preservation
* Separation between source and transformed data

---

## 3. Silver Layer — Cleaning and Enrichment

The Silver layer creates a trusted version of the data.

The following operations are performed:

* Schema validation
* Null/missing-value handling
* Duplicate handling
* Data-type casting
* Date standardization
* Data-format standardization
* Data validation

The transactions dataset is then joined with the accounts dataset using:

```text
account_id
```

This creates an enriched transaction dataset containing both transaction and account information.

---

## 4. Gold Layer — Fraud Detection

The enriched transaction data is matched with the fraud watchlist using:

```text
account_id
```

If an account exists in the fraud watchlist, the associated transaction is classified as fraudulent.

Otherwise, it is classified as normal.

Example:

```text
IF account_id exists in fraud_watchlist
        ↓
     FRAUD
ELSE
     NORMAL
```

The Gold layer contains business-ready fraud information for analytics and reporting.

---

## 5. Validation and Analytics

Before reporting, the Gold datasets are validated using:

* Record-count checks
* Null checks
* Duplicate checks
* Join validation
* Fraud/normal classification validation
* Aggregation validation

A key business validation is:

```text
Fraud Transactions + Normal Transactions
=
Total Transactions
```

The fraud rate is calculated as:

```text
Fraud Rate =
(Fraud Transactions / Total Transactions) × 100
```

For account-level financial exposure, fraudulent transaction amounts are aggregated using:

```text
SUM(fraudulent transaction amount)
```

rather than simply counting records.

---

#  Databricks Workflow

The Databricks pipeline is organized into sequential notebook tasks.

```text
01_Bronze_Ingestion
        |
        v
02_Silver_Transformation
        |
        v
03_Gold_Fraud_Detection
        |
        v
04_Final_Validation_Analytics
        |
        v
05_Performance_Optimization
        |
        v
06_Dashboard_Data
```

The actual dependencies are configured through the Databricks Workflow/Job.

---

#  Repository Structure

```text
Smart-Fraud-Detection/
│
├── README.md
├── requirements.txt
│
├── notebooks/
│   ├── Bronze_Ingestion.ipynb
│   ├── Silver_Transformation.ipynb
│   ├── Gold_Fraud_Detection.ipynb
│   ├── Final_Validation_Analytics.ipynb
│   ├── Performance_Optimization.ipynb
│   └── Dashboard_Data.ipynb
│
├── data/
│   ├── accounts.csv
│   ├── known_fraud_accounts.csv
│   └── transaction.csv
│
├── databricks/
│   ├── catalog/
│   │   └── catalog_structure.md
│   └── workflow/
│       └── pipeline_workflow.md
│
├── dashboard/
│   ├── dashboard_screenshot.png
│   ├── dashboard_insights.md
│   └── README.md
│
├── docs/
│   ├── project-report/
│   │   └── Smart_Fraud_Detection_Project_Report.docx
│   │
│   └── screenshots/
│       ├── bronze_layer.png
│       ├── silver_layer.png
│       ├── gold_layer.png
│       ├── workflow.png
│       ├── Pipeline_successful.png
│       └── validation.png
│
└── config/
    └── project_config.md
```

> **Note:** Large or sensitive source datasets should not be committed directly to GitHub. The `data/README.md` file documents the expected source files and schema.

---

#  Databricks Organization

The project is organized using **Unity Catalog**.

```text
Unity Catalog
│
└── fraud_detection
    │
    ├── Bronze
    │   ├── accounts
    │   ├── transactions
    │   └── fraud_watchlist
    │
    ├── Silver
    │   ├── accounts_clean
    │   ├── transactions_clean
    │   └── enriched_transactions
    │
    └── Gold
        ├── fraud_transactions
        ├── fraud_summary
        ├── account_fraud_analysis
        └── fraud_type_analysis
```

> The exact table and schema names should match the objects created in the Databricks environment.

---

#  Data Quality

Data quality is considered throughout the pipeline rather than only at the final stage.

The project includes:

* Schema validation
* Null-value checks
* Duplicate detection
* Data-type validation
* Date validation
* Join validation
* Record-count validation
* Fraud classification validation
* Aggregate metric validation

This prevents poor-quality data from directly reaching the reporting layer.

---

#  Power BI Dashboard

The Power BI dashboard acts as the presentation and business-intelligence layer.

It consumes curated Gold-layer data from Databricks.

## Dashboard Components

### Executive KPIs

* Total Transactions
* Fraud Transactions
* Fraud Rate
* Total Fraud Amount

### Fraud Analysis

* Fraud transactions over time
* Fraud by type
* International vs Domestic fraud
* Daily fraud rate

### Account Risk

* Top accounts by fraudulent amount
* Account-level fraud analysis

### Investigation

* Transaction ID
* Account ID
* Customer
* Transaction Date
* Transaction Amount
* Merchant
* Fraud Type
* Fraud Status
* Other relevant transaction attributes

The dashboard allows users to move from **high-level fraud monitoring to transaction-level investigation**.

---

#  Key Benefits

## Scalability

PySpark distributes data processing across Spark resources, making the solution suitable for larger transaction volumes.

## Reliability

Delta Lake provides reliable structured storage for the pipeline layers.

## Traceability

The Bronze layer preserves raw data and allows downstream transformations to be reprocessed.

## Data Quality

The Silver layer ensures that data is cleaned and standardized before business logic is applied.

## Maintainability

The separation of Bronze, Silver, and Gold responsibilities makes the pipeline easier to understand, test, and modify.

## Business Value

Gold-layer datasets provide meaningful fraud metrics that can directly support monitoring and investigation.

## Interactive Analytics

Power BI enables stakeholders to filter, analyze, and investigate fraud patterns interactively.

## Extensibility

The architecture provides a foundation for future machine-learning, streaming, alerting, and anomaly-detection capabilities.

---

#  Future Enhancements

The current rule-based solution can be extended with:

* **Spark Structured Streaming** for real-time transaction processing
* **Machine Learning** for fraud-risk scoring
* **Anomaly Detection** for unusual transaction behavior
* **Automated Alerts** for high-risk transactions
* **Incremental Processing** for new or changed records
* **Automated Data Quality Monitoring**
* **Customer Risk Profiling**
* **Real-Time Fraud Monitoring**
* **Enterprise BI and Monitoring Integration**

---

#  Project Documentation

Additional documentation is available in the `docs/` directory.

It contains:

* System architecture
* Data-flow diagram
* Databricks implementation screenshots
* Workflow evidence
* Validation evidence
* Final project report

Power BI-specific documentation is maintained separately in the `dashboard/` directory.

---

#  GitHub Repository

**Repository:**

```text
https://github.com/Bajajmanjit12/CEI_DE_Internship_Assignments/edit/main/Mini_Project/Smart_Fraud_Detection
```

---

#  Author

**Manjit Bajaj**

B.Tech Computer Engineering
Sanjivani College of Engineering, Kopargaon

**Celebal Summer Internship 2026**
**Data Engineering Intern**

---

#  Disclaimer

This project is developed for educational and internship evaluation purposes.

The fraud-detection mechanism demonstrated in this project is primarily **rule-based**, using fraud-watchlist matching. It should not be considered a production financial fraud-detection system without additional domain validation, security controls, monitoring, compliance requirements, and advanced fraud-analysis techniques.

```
```
