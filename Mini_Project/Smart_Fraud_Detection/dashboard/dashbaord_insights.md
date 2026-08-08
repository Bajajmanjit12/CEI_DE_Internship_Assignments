# Smart Fraud Detection Dashboard - Insights

## 1. Dashboard Overview

The Smart Fraud Detection Dashboard provides a business-oriented view
of transaction activity and identified fraudulent transactions.

The dashboard consumes curated Gold-layer datasets generated through
the Databricks PySpark and Spark SQL pipeline.

It enables users to monitor transaction volume, fraud activity,
financial exposure, fraud patterns, high-risk accounts, and
international transaction behavior.

---

## 2. Key Performance Indicators

The dashboard provides the following primary KPIs:

- Total Transactions
- Fraud Transactions
- Fraud Rate
- Total Fraud Amount

The fraud rate is calculated using:

Fraud Rate =
(Fraud Transactions / Total Transactions) × 100

These KPIs provide an overall view of the scale and financial impact
of fraudulent activity.

---

## 3. Fraud Activity Over Time

The fraud trend visual shows how fraudulent transactions change over
the selected transaction period.

This helps identify:

- Periods with increased fraud activity
- Potential fraud spikes
- Changes in fraud frequency over time
- Time periods requiring further investigation

The trend can be filtered using the transaction-date slicer.

---

## 4. Fraud by Type

The dashboard categorizes fraudulent transactions into different
fraud types, including:

- Money Laundering
- Card Cloning
- Phishing
- Account Takeover
- Identity Theft

The fraud-type analysis helps identify which categories contribute
most to the overall number of fraudulent transactions.

The dominant fraud categories can be prioritized for additional
monitoring and investigation.

---

## 5. International vs Domestic Fraud

The dashboard compares fraudulent transactions associated with
international and domestic activity.

This analysis helps determine whether international transactions
represent a significant proportion of detected fraudulent activity.

A higher fraud concentration in international transactions may
indicate the need for additional transaction monitoring or
risk-based controls.

---

## 6. High-Risk Accounts

The account-level analysis identifies accounts with the highest
financial exposure from fraudulent transactions.

The analysis is based on the aggregated fraudulent transaction
amount rather than simply counting transactions.

High-value accounts can therefore be prioritized for:

- Investigation
- Account monitoring
- Risk assessment
- Additional verification

---

## 7. Transaction-Level Investigation

The transaction details table provides transaction-level visibility.

Important attributes include:

- Transaction ID
- Account ID
- Customer
- Transaction date
- Transaction amount
- Merchant
- City
- International transaction indicator
- Fraud type
- Fraud status
- Fraud amount

This allows analysts to move from high-level KPIs to individual
transactions requiring investigation.

---

## 8. Business Value

The dashboard converts the processed Gold-layer data into actionable
business information.

It enables stakeholders to:

1. Monitor overall transaction activity.
2. Track fraudulent transaction volume.
3. Measure financial exposure.
4. Identify dominant fraud categories.
5. Identify high-risk accounts.
6. Compare international and domestic fraud.
7. Investigate individual suspicious transactions.

---

## 9. Key Findings

The following findings are derived from the current dashboard after
validation of the underlying Gold-layer metrics:

### Transaction Volume

The pipeline processes a large transaction volume, demonstrating the
need for distributed processing using PySpark and Spark SQL.

### Fraud Activity

A subset of transactions is identified as fraudulent through matching
against the fraud watchlist.

### Fraud Categories

Money laundering, card cloning, phishing, account takeover, and
identity theft are represented in the detected fraud population.

### Account Risk

Account-level aggregation allows the business to identify accounts
with comparatively higher fraudulent financial exposure.

### Geographic/International Risk

The international-versus-domestic analysis provides an additional
dimension for identifying potentially higher-risk transaction
patterns.

---

## 10. Important Metric Validation

Dashboard KPIs were validated against the Gold-layer datasets to
ensure consistency.

The fraud rate is calculated from transaction and fraud counts rather
than summing daily percentage values.

Similarly, account-level fraud exposure uses the SUM of fraudulent
transaction amounts rather than COUNT of amount records.

This prevents misleading dashboard metrics and ensures that the
visualizations represent the underlying business logic correctly.

---

## 11. Conclusion

The dashboard provides an interactive analytical layer on top of the
Databricks fraud detection pipeline.

The combination of PySpark, Spark SQL, Delta Lake, Medallion
Architecture, Databricks, and Power BI creates an end-to-end solution
from raw transaction ingestion to business-level fraud intelligence.
