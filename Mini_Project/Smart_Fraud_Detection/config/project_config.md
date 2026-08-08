# Project Configuration

## Smart Fraud Detection Pipeline

This document describes the configuration, environment, data organization, processing layers, business logic, and reporting setup used in the Smart Fraud Detection Pipeline.

---

## 1. Project Information

| Parameter | Configuration |
|---|---|
| Project Name | Smart Fraud Detection Pipeline |
| Domain | Financial Fraud Detection |
| Platform | Databricks |
| Programming Language | Python |
| Processing Framework | PySpark |
| Query Engine | Spark SQL |
| Storage Format | Delta Lake |
| Data Governance | Unity Catalog |
| Architecture | Medallion Architecture |
| Visualization | Power BI |
| Version Control | GitHub |

---

## 2. Databricks Environment

The project is developed and executed in Databricks.

Databricks provides the execution environment for:

- PySpark notebooks
- Spark SQL queries
- Delta Lake tables
- Unity Catalog objects
- Databricks Workflows
- Data validation and analytics

The project uses a Databricks compute resource to execute the pipeline notebooks.

---

## 3. Unity Catalog Configuration

The project uses Unity Catalog to organize and govern data assets.

Logical organization:

```text
Unity Catalog
│
└── fraud_detection
    │
    ├── Bronze
    ├── Silver
    └── Gold
```

The exact catalog and schema names should match the objects created in the Databricks workspace.

Unity Catalog provides:

- Centralized data organization
- Table and schema management
- Access control
- Data discovery
- Governed access to data assets

---

## 4. Source Data Configuration

The pipeline uses three CSV source datasets:

```text
accounts.csv
transactions.csv
fraud_watchlist.csv
```

The files are uploaded to a Unity Catalog Volume before processing.

Logical source structure:

```text
Unity Catalog Volume
│
├── accounts.csv
├── transactions.csv
└── fraud_watchlist.csv
```

The source files are treated as raw input and are not directly modified during ingestion.

---

## 5. Dataset Configuration

### Accounts Dataset

```text
account_id
customer_name
account_type
credit_limit
branch
```

Contains account and customer-level information used to enrich transaction records.

### Transactions Dataset

```text
txn_id
account_id
txn_date
amount
merchant
```

Contains transaction-level information used for fraud analysis.

### Fraud Watchlist

```text
account_id
fraud_type
flagged_date
```

Contains accounts identified for suspected fraudulent activity.

---

## 6. Input and Storage Formats

### Source Format

```text
CSV
```

### Processing Format

```text
Spark DataFrame
```

### Persistent Storage Format

```text
Delta Lake
```

The pipeline reads CSV files using PySpark and stores processed datasets as Delta tables.

---

## 7. Medallion Architecture Configuration

The pipeline follows a three-layer Medallion Architecture:

```text
Source CSV
    |
    v
Bronze
    |
    v
Silver
    |
    v
Gold
    |
    v
Power BI
```

Each layer has a specific responsibility.

---

## 8. Bronze Layer

### Purpose

The Bronze layer stores raw source data with minimal transformation.

### Input

```text
accounts.csv
transactions.csv
fraud_watchlist.csv
```

### Processing

CSV files are read using PySpark, converted into Spark DataFrames, and written as Delta tables.

### Responsibilities

- Raw data ingestion
- Source preservation
- Initial schema inspection
- Traceability
- Reprocessing support

### Output

```text
Bronze Delta Tables
```

The Bronze layer remains as close as possible to the original source data.

---

## 9. Silver Layer

### Purpose

The Silver layer creates clean, standardized and enriched datasets.

### Main Operations

- Null-value handling
- Duplicate handling
- Data-type casting
- Date standardization
- Schema validation
- Data cleaning
- Dataset joins
- Data enrichment

Transactions are joined with accounts using:

```text
account_id
```

Logical flow:

```text
Bronze Transactions
        |
        +----------+
        |          |
        v          v
   Clean Data   Accounts
        |          |
        +----+-----+
             |
             v
       Enriched Transactions
```

### Output

```text
Silver Delta Tables
```

---

## 10. Gold Layer

### Purpose

The Gold layer contains business-ready datasets created from validated Silver data.

### Main Operations

- Fraud watchlist matching
- Fraud classification
- Fraud aggregation
- Account-level analysis
- Fraud-type analysis
- KPI generation
- Dashboard preparation

### Fraud Detection Logic

```text
Transaction.account_id
          |
          v
Fraud Watchlist.account_id
          |
     +----+----+
     |         |
   Match    No Match
     |         |
     v         v
  FRAUD      NORMAL
```

### Output

```text
Gold Delta Tables
```

---

## 11. Data Processing Configuration

```text
Read CSV
   |
   v
Create Spark DataFrame
   |
   v
Bronze Delta Table
   |
   v
Clean and Validate
   |
   v
Silver Delta Table
   |
   v
Join and Enrich
   |
   v
Apply Fraud Logic
   |
   v
Gold Delta Table
   |
   v
Validation and Aggregation
   |
   v
Power BI
```

---

## 12. Data Quality Configuration

Data quality checks are performed before data reaches the reporting layer.

The project considers:

- Null checks
- Duplicate checks
- Data-type validation
- Date validation
- Join validation
- Record-count validation
- Fraud/normal classification validation
- Aggregate metric validation

---

## 13. Key Business Metrics

### Total Transactions

```text
COUNT(txn_id)
```

### Fraud Transactions

```text
COUNT(txn_id)
WHERE fraud_status = 'fraud'
```

### Normal Transactions

```text
COUNT(txn_id)
WHERE fraud_status = 'normal'
```

### Fraud Rate

```text
(Fraud Transactions / Total Transactions) × 100
```

### Fraud Amount

```text
SUM(fraud_amount)
```

### Account-Level Fraud Exposure

```text
GROUP BY account_id
SUM(fraud_amount)
```

---

## 14. Data Validation Rules

Primary consistency check:

```text
Total Transactions
=
Fraud Transactions + Normal Transactions
```

Record counts are reviewed across the pipeline:

```text
Source Count
      ↓
Bronze Count
      ↓
Silver Count
      ↓
Gold Count
```

Unexpected differences are investigated before reporting.

---

## 15. Databricks Notebook Configuration

```text
notebooks/
│
├── 01_Bronze_Ingestion.py
├── 02_Silver_Transformation.py
├── 03_Gold_Fraud_Detection.py
├── 04_Final_Validation_Analytics.py
├── 05_Performance_Optimization.py
└── 06_Dashboard_Data.py
```

### Notebook Responsibilities

**01_Bronze_Ingestion.py**

- Read source CSV files
- Inspect schemas
- Create Bronze DataFrames
- Write Bronze Delta tables

**02_Silver_Transformation.py**

- Clean data
- Handle missing values
- Cast data types
- Standardize dates
- Handle duplicates
- Join account and transaction data
- Create Silver datasets

**03_Gold_Fraud_Detection.py**

- Match transactions with fraud watchlist
- Create fraud classification
- Generate Gold datasets

**04_Final_Validation_Analytics.py**

- Validate record counts
- Validate fraud/normal classification
- Calculate KPIs
- Perform account-level analysis
- Perform fraud-type analysis

**05_Performance_Optimization.py**

- Document applicable Spark optimization techniques
- Evaluate efficient joins
- Evaluate filtering and column pruning
- Review repartitioning and caching where appropriate
- Avoid unnecessary shuffles

**06_Dashboard_Data.py**

- Prepare or expose curated datasets required by Power BI.

---

## 16. Databricks Workflow Configuration

The logical workflow is:

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

The actual Databricks Job dependencies should match the workflow configured in the workspace.

---

## 17. Power BI Configuration

Power BI acts as the business-intelligence layer.

```text
Databricks Gold
       |
       v
Power BI
       |
       +── KPI Cards
       +── Fraud Trends
       +── Fraud Types
       +── Account Analysis
       └── Transaction Details
```

The dashboard uses validated Gold-layer fields and defined business measures.

---

## 18. Power BI Dashboard Metrics

The dashboard contains:

```text
Total Transactions
Fraud Transactions
Fraud Rate
Fraud Amount
```

Additional visualizations include:

```text
Fraud Trend
Fraud by Type
International vs Domestic Fraud
Daily Fraud Rate
Top Accounts by Fraud Amount
Transaction Details
```

---

## 19. Security Configuration

No credentials or sensitive authentication information should be stored in this repository.

Never commit:

```text
Passwords
API Keys
Access Tokens
Client Secrets
Connection Strings
Private Keys
```

Sensitive configuration should be maintained using appropriate platform mechanisms such as Databricks secret management, environment variables, Unity Catalog permissions, and secure Power BI connection configuration.

---

## 20. Environment-Specific Configuration

The following values may vary between environments:

```text
Databricks Workspace
Catalog Name
Schema Names
Volume Path
Compute Configuration
Workflow/Job Configuration
Power BI Workspace
Connection Details
```

These values should be documented only when necessary and should not contain secrets.

---

## 21. Compute Configuration

The pipeline is executed using Databricks compute.

Document the actual environment values here after final deployment:

```text
Databricks Runtime:
<ACTUAL RUNTIME USED>

Python Version:
<ACTUAL VERSION>

Apache Spark Version:
<ACTUAL VERSION>

Compute Type:
<ACTUAL COMPUTE TYPE>

Autoscaling:
<ACTUAL SETTING>
```

Do not replace these placeholders with guessed values.

---

## 22. Storage Configuration

The project uses Delta Lake as the persistent storage format.

```text
CSV
 |
 v
Spark DataFrame
 |
 v
Delta
 |
 +---- Bronze
 |
 +---- Silver
 |
 └---- Gold
```

---

## 23. GitHub Configuration

The project source code and documentation are maintained in GitHub.

```text
README.md
requirements.txt
.gitignore
notebooks/
sql/
data/
databricks/
dashboard/
docs/
config/
```

The repository contains source code, SQL, documentation, diagrams, screenshots, and configuration documentation.

Large source datasets and sensitive information should not be committed unnecessarily.

---

## 24. Configuration Principle

The project follows a clear separation between:

```text
SOURCE
   ↓
BRONZE
   ↓
SILVER
   ↓
GOLD
   ↓
REPORTING
```

Each stage has a defined responsibility.

This prevents raw ingestion, data cleaning, business logic, and visualization logic from becoming tightly coupled.

---

## 25. Final Project Flow

```text
                   CSV SOURCE FILES
                          |
                          v
                UNITY CATALOG VOLUME
                          |
                          v
                  BRONZE INGESTION
                          |
                          v
                SILVER TRANSFORMATION
                          |
                 +--------+--------+
                 |                 |
                 v                 v
              CLEANING          JOINING
                 |                 |
                 +--------+--------+
                          |
                          v
                  GOLD PROCESSING
                          |
                          v
                  FRAUD DETECTION
                          |
                          v
                 DATA VALIDATION
                          |
                          v
                  GOLD ANALYTICS
                          |
                    +-----+-----+
                    |           |
                    v           v
              Spark SQL     Power BI
                    |           |
                    +-----+-----+
                          |
                          v
                    FRAUD INSIGHTS
```

---

## 26. Configuration Summary

The project configuration follows these principles:

- **PySpark** is used for scalable distributed data processing.
- **Spark SQL** is used for SQL-based transformations and analytics.
- **Databricks** provides the execution and orchestration environment.
- **Unity Catalog** provides data organization and governance.
- **Delta Lake** provides reliable storage for Bronze, Silver, and Gold layers.
- **Medallion Architecture** separates raw, trusted, and business-ready data.
- **Power BI** provides the final analytical and visualization layer.
- **GitHub** provides version control and project documentation.
- **Secrets are never stored in source control.**
