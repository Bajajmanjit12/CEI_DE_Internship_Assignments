# Databricks Workflow

## Overview

The Smart Fraud Detection Pipeline is orchestrated using a Databricks Workflow.

The workflow executes the data pipeline in a controlled sequence where each stage depends on the successful completion of the previous stage.

---

## Job Name

```text
Smart_Fraud_Detection_Pipeline
```

---

## Workflow Structure

```text
01_Bronze_Ingestion
        │
        ▼
02_Silver_Transformation
        │
        ▼
03_Gold_Fraud_Detection
        │
        ▼
04_Final_Validation_Analytics
```

---

## Task 1 — Bronze Ingestion

### Task Name

```text
Bronze_Ingestion
```

### Notebook

```text
01_Bronze_Ingestion
```

### Responsibility

* Read source CSV files
* Load data into Spark DataFrames
* Preserve raw source data
* Write Delta tables to the Bronze layer

### Output

```text
fraud_detection.bronze.accounts
fraud_detection.bronze.transactions
fraud_detection.bronze.known_fraud_accounts
```

---

## Task 2 — Silver Transformation

### Task Name

```text
Silver_Transformation
```

### Notebook

```text
02_Silver_Transformation
```

### Dependency

```text
Bronze_Ingestion
```

### Responsibility

* Handle missing values
* Remove duplicates where required
* Cast data types
* Standardize dates
* Clean source datasets
* Join transactions with accounts
* Enrich transaction information

### Output

```text
fraud_detection.silver.accounts
fraud_detection.silver.transactions
fraud_detection.silver.known_fraud_accounts
fraud_detection.silver.enriched_transactions
```

---

## Task 3 — Gold Fraud Detection

### Task Name

```text
Gold_Fraud_Detection
```

### Notebook

```text
03_Gold_Fraud_Detection
```

### Dependency

```text
Silver_Transformation
```

### Responsibility

* Match transactions against the fraud watchlist
* Generate fraud classification
* Generate fraud flags
* Calculate fraud-related metrics
* Generate business-level analytical tables

### Output

```text
fraud_detection.gold.fraud_transactions
fraud_detection.gold.fraud_summary
fraud_detection.gold.account_fraud_analysis
fraud_detection.gold.fraud_type_analysis
```

---

## Task 4 — Final Validation and Analytics

### Task Name

```text
Final_Validation_Analytics
```

### Notebook

```text
04_Final_Validation_Analytics
```

### Dependency

```text
Gold_Fraud_Detection
```

### Responsibility

* Validate record counts
* Validate fraud classification
* Validate KPI consistency
* Calculate fraud rate
* Analyze fraud amount
* Identify high-risk accounts
* Analyze fraud types
* Analyze merchants and locations
* Validate international fraud activity

### Output

```text
fraud_detection.gold.executive_kpis
```

---

## Complete Dependency Graph

```text
┌─────────────────────────┐
│   Bronze_Ingestion      │
│                         │
│  Read + Store Raw Data  │
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│ Silver_Transformation   │
│                         │
│ Clean + Join + Enrich   │
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│ Gold_Fraud_Detection    │
│                         │
│ Detect + Aggregate      │
└────────────┬────────────┘
             │
             ▼
┌─────────────────────────┐
│ Final_Validation        │
│                         │
│ Validate + Analyze      │
└─────────────────────────┘
```

---

## Execution Strategy

The workflow is currently designed as a sequential pipeline.

A downstream task starts only after its upstream dependency completes successfully.

This prevents incomplete or invalid data from propagating to the next layer.

---

## Failure Handling

If a task fails:

```text
Failed Task
     │
     ▼
Downstream Tasks
     │
     ▼
Not Executed
```

The failed notebook can be investigated and rerun before continuing with downstream processing.

---

## Workflow Benefits

Using Databricks Workflows provides:

* Automated notebook execution
* Task dependency management
* Centralized monitoring
* Failure visibility
* Reproducible pipeline execution
* Production-style orchestration

---

## Future Scheduling

The workflow can be scheduled for periodic execution when the pipeline is connected to a continuously updated transaction source.

For the current internship evaluation, manual execution is sufficient to demonstrate the complete workflow.
