# Celebal Summer Internship 2026 – Week 4 Azure Cloud Fundamentals and Data Pipeline using Azure Data Factory

## Project Overview

This repository contains the solution for **Week 4** of the **Celebal Summer Internship 2026**. The assignment focuses on understanding Microsoft Azure cloud services and implementing an end-to-end data pipeline using **Azure Blob Storage** and **Azure Data Factory (ADF)**.

The project demonstrates the fundamentals of Azure cloud computing by creating cloud resources, configuring Azure Storage, building data pipelines, validating file metadata, transferring data between Blob containers, assigning IAM roles, and monitoring pipeline execution. It also includes a mini project that integrates all the concepts into a complete cloud-based data engineering workflow.

---

# Objective

The objective of this assignment is to:

- Understand the basics of Microsoft Azure Cloud.
- Create and manage Azure Resource Groups.
- Create and configure Azure Storage Accounts.
- Store datasets in Azure Blob Storage.
- Create and configure Azure Data Factory.
- Establish connections using Linked Services.
- Create source and destination datasets.
- Validate file metadata using the Get Metadata activity.
- Build and execute a data pipeline using the Copy Data activity.
- Monitor pipeline execution and validate successful data transfer.
- Configure Azure IAM roles for secure access between Azure Data Factory and Azure Storage.
- Gain practical experience in designing an end-to-end cloud data pipeline.

---

# Technologies Used

- Microsoft Azure Portal
- Azure Resource Group
- Azure Storage Account
- Azure Blob Storage
- Azure Data Factory (ADF)
- Azure IAM (Role-Based Access Control)
- CSV Dataset (Superstore)

---

# Repository Structure

```text
CEI_DE_Internship_Assignments/
│
├── Week-4-Azure-Cloud/
│   ├── Task_Result_Screenshots.pdf
│   ├── Mini_Project.pdf
│   └── README.md
│
└── README.md
```

---

# Project Description

The project consists of two parts:

## 1. Azure Cloud Assignment

The assignment introduces the core services of Microsoft Azure and Azure Data Factory through a series of hands-on tasks.

### Task 1 – Resource Group

- Created an Azure Resource Group.
- Organized Azure resources under a single logical container.

### Task 2 – Storage Setup

- Created an Azure Storage Account.
- Created Blob Storage containers.
- Uploaded the Superstore CSV dataset.

### Task 3 – Azure Data Factory Basics

- Created Azure Data Factory.
- Explored ADF Studio.
- Configured Linked Service.
- Created Source Dataset.
- Created Destination Dataset.
- Implemented Get Metadata activity.

### Task 4 – Pipeline Development

- Created an Azure Data Factory pipeline.
- Configured the Copy Data activity.
- Connected Get Metadata with Copy Data.
- Configured source and destination datasets.

### Task 5 – Pipeline Execution

- Executed the pipeline using Debug/Trigger.
- Monitored successful execution.
- Verified copied data in the destination container.

### Task 6 – IAM Role Assignment

- Assigned Reader role.
- Assigned Contributor role.
- Granted Azure Data Factory access to Azure Storage.

---

# Mini Project

## Title

**Azure Cloud Fundamentals and Data Pipeline Implementation using Azure Data Factory**

### Problem Statement

Build a complete data pipeline that reads a CSV file from Azure Blob Storage, validates the metadata, and copies the file to another Blob Storage location using Azure Data Factory.

---

# Mini Project Workflow

```text
Azure Blob Storage
        │
        ▼
Linked Service
        │
        ▼
Source Dataset
        │
        ▼
Get Metadata
        │
        ▼
Copy Data Activity
        │
        ▼
Destination Dataset
        │
        ▼
Destination Blob Storage
```

---

# Features Implemented

- Azure Resource Group creation
- Azure Storage Account configuration
- Blob Storage container management
- CSV dataset upload
- Azure Data Factory creation
- Linked Service configuration
- Source and Destination datasets
- Metadata validation using Get Metadata
- Data movement using Copy Data
- Pipeline monitoring
- IAM role assignment
- End-to-end cloud data pipeline implementation

---

# Expected Output

- Pipeline executed successfully.
- Source CSV file copied to the destination container.
- File metadata validated successfully.
- Pipeline monitored through Azure Data Factory.
- Secure communication established using Azure IAM roles.

---

# Learning Outcomes

Through this assignment and mini project, I gained hands-on experience in:

- Microsoft Azure Cloud fundamentals.
- Azure Resource Group management.
- Azure Storage Account and Blob Storage.
- Azure Data Factory (ADF).
- Linked Services and Datasets.
- Metadata validation using Get Metadata.
- Data movement using Copy Data activity.
- Pipeline execution and monitoring.
- Azure IAM Role-Based Access Control (RBAC).
- Designing and implementing an end-to-end cloud data pipeline.

---

# How to Run the Project

1. Sign in to the Azure Portal.
2. Create a Resource Group.
3. Create an Azure Storage Account.
4. Create Blob Storage containers (`source-data` and `destination-data`).
5. Upload the Superstore CSV dataset to the source container.
6. Create Azure Data Factory.
7. Configure the Linked Service for Azure Blob Storage.
8. Create Source and Destination datasets.
9. Build a pipeline using Get Metadata and Copy Data activities.
10. Execute the pipeline using **Debug** or **Trigger Now**.
11. Monitor the pipeline execution in Azure Data Factory.
12. Verify the copied file in the destination Blob container.
13. Assign Reader and Contributor roles to Azure Data Factory for secure access.

---

# Results

- Successfully created Azure cloud resources.
- Successfully configured Azure Blob Storage.
- Successfully built Azure Data Factory pipeline.
- Successfully validated source file metadata.
- Successfully copied the CSV dataset to the destination container.
- Successfully monitored pipeline execution.
- Successfully configured Azure IAM roles.
- Successfully implemented an end-to-end Azure Data Factory pipeline.

---

# Conclusion

This assignment provided practical experience with Microsoft Azure Cloud and Azure Data Factory by implementing a complete cloud-based data integration pipeline. It strengthened my understanding of Azure Storage, Linked Services, Datasets, Metadata validation, Copy Data activities, pipeline monitoring, and IAM role management. The mini project demonstrated how Azure Data Factory can be used to automate data movement and build scalable cloud data engineering solutions.

---

# Author

**Manjit Bajaj**

Computer Engineering Undergraduate

**Celebal Technologies Data Engineering Internship Program – 2026**

Maharashtra, India

**GitHub:** https://github.com/Bajajmanjit12

**LinkedIn:** https://www.linkedin.com/in/manjit-bajaj-1839a0281/
