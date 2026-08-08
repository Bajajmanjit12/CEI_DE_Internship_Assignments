# Databricks Catalog Structure

## Overview

The Smart Fraud Detection Pipeline uses Databricks Unity Catalog to organize the data into structured schemas following the Medallion Architecture.

The catalog separates raw, cleaned, and business-ready data into Bronze, Silver, and Gold layers.

---

## Catalog

```text
fraud_detection
```

The `fraud_detection` catalog contains all data assets used by the fraud detection pipeline.

---

## Schema Structure

```text
fraud_detection
│
├── source
│   └── Raw source files stored in Unity Catalog Volume
│
├── bronze
│   ├── accounts
│   ├── transactions
│   └── known_fraud_accounts
│
├── silver
│   ├── accounts
│   ├── transactions
│   ├── known_fraud_accounts
│   └── enriched_transactions
│
└── gold
    ├── fraud_transactions
    ├── fraud_summary
    ├── account_fraud_analysis
    ├── fraud_type_analysis
    ├── executive_kpis
    ├── dashboard_transactions
    ├── daily_fraud_trend
    └── international_fraud_analysis
```

---

## Source Layer

The source data consists of the original CSV files uploaded to a Unity Catalog Volume.

### Source Files

- Accounts
- Transactions
- Fraud Watchlist

The source files are retained separately from the processed Delta tables to preserve the original input data.

---

## Bronze Layer

The Bronze layer stores the ingested source data in Delta format.

### Tables

#### `accounts`

Contains raw account information.

#### `transactions`

Contains raw transaction records.

#### `known_fraud_accounts`

Contains accounts identified in the fraud watchlist.

### Purpose

The Bronze layer provides:

- Raw data preservation
- Traceability
- Reprocessing capability
- Initial ingestion into Delta Lake

---

## Silver Layer

The Silver layer contains cleaned and enriched datasets.

### Tables

#### `accounts`

Cleaned account information with standardized data types.

#### `transactions`

Cleaned transaction records with validated data types and formats.

#### `known_fraud_accounts`

Cleaned fraud watchlist data.

#### `enriched_transactions`

Transactions enriched with account information through joins.

### Processing

The Silver layer performs:

- Null handling
- Duplicate handling
- Data type casting
- Date standardization
- Data validation
- Dataset joins
- Data enrichment

---

## Gold Layer

The Gold layer contains business-ready datasets used for fraud detection, analytics, validation, and visualization.

### `fraud_transactions`

Final transaction-level dataset containing fraud classification.

### `fraud_summary`

Overall fraud and transaction KPIs.

### `account_fraud_analysis`

Account-level fraud analysis.

### `fraud_type_analysis`

Fraud analysis grouped by fraud type.

### `executive_kpis`

High-level metrics for reporting and dashboarding.

### `dashboard_transactions`

Business-ready transaction-level dataset for Power BI.

### `daily_fraud_trend`

Daily fraud activity and fraud-rate analysis.

### `international_fraud_analysis`

Comparison of international and domestic transaction fraud.

---

## Data Flow

```text
Source CSV Files
       │
       ▼
Unity Catalog Volume
       │
       ▼
Bronze Delta Tables
       │
       ▼
Silver Delta Tables
       │
       ▼
Gold Delta Tables
       │
       ├── Analytics
       ├── Validation
       └── Power BI
```

---

## Storage Technology

| Component | Technology |
|---|---|
| Catalog Management | Unity Catalog |
| Storage Format | Delta Lake |
| Processing | PySpark |
| Query Engine | Spark SQL |
| Platform | Databricks |
| Visualization | Power BI |

---

## Design Principle

The catalog structure follows the Medallion Architecture so that raw, cleaned, and business-level data remain logically separated.

This improves data governance, traceability, maintainability, and reusability of the pipeline.
