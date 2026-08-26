# Z_SIMPLE_RAP_UNMANAGED_SALES_ORDER

## 📌 Project Overview

A **Sales Order Management Application** developed using the **SAP ABAP RESTful Application Programming Model (RAP)** with the **Unmanaged Scenario** in **SAP ABAP Cloud** using **Eclipse ADT**.

This project demonstrates how to build a complete RAP application for managing **Sales Order Header and Item data**, from the database layer to a **Fiori Elements user interface**.

---

## 🛠️ Technologies Used

| Technology | Description |
|---|---|
| SAP ABAP Cloud | Cloud-based ABAP development platform |
| ABAP RAP | RESTful Application Programming Model |
| RAP Scenario | Unmanaged |
| ABAP CDS | Data modeling using CDS View Entities |
| Eclipse ADT | ABAP development environment |
| Fiori Elements | User interface |
| OData V4 | Service exposure |
| abapGit | ABAP Git integration |
| GitHub | Version control and repository hosting |

---

## 🏗️ Application Architecture

```text
                    Sales Order Management Application
                                  │
                                  ▼
                          Database Tables
                           ┌──────┴──────┐
                           ▼             ▼
                     Sales Header    Sales Item
                           │             │
                           └──────┬──────┘
                                  ▼
                         Interface CDS Views
                                  │
                                  ▼
                        Projection CDS Views
                                  │
                                  ▼
                         Behavior Definition
                                  │
                                  ▼
                    Unmanaged Behavior Implementation
                           ┌──────┴──────┐
                           ▼             ▼
                   Behavior Handler   Saver Class
                           │             │
                           └──────┬──────┘
                                  ▼
                      Transactional Buffer Utility
                                  │
                                  ▼
                        Metadata Extensions
                                  │
                                  ▼
                         Service Definition
                                  │
                                  ▼
                          Service Binding
                                  │
                                  ▼
                         Fiori Elements UI

✨ Features
Create Sales Order
Display Sales Orders
Update Sales Order
Delete Sales Order
Create Sales Order Items
Display Sales Order Items
Update Sales Order Items
Delete Sales Order Items
Header and Item composition
Duplicate Sales Order validation
Duplicate Sales Item validation
Unmanaged RAP behavior
Custom transactional buffer
Custom saver implementation
CDS-based data modeling
Fiori Elements user interface
OData V4 service exposure
Git version control using abapGit
📂 RAP Project Structure
ZSALES_ORDER_RAP_01
│
├── Sales Order Header Database Table
├── Sales Order Item Database Table
│
├── Header Interface CDS View
├── Item Interface CDS View
│
├── Header Projection CDS View
├── Item Projection CDS View
│
├── Header Metadata Extension
├── Item Metadata Extension
│
├── Unmanaged Behavior Definition
├── Behavior Handler Classes
├── Saver Class
├── Transactional Buffer Utility Class
│
├── Projection Behavior Definition
├── Service Definition
└── Service Binding
🔎 Business Validation

The application contains duplicate validation for Sales Orders and Sales Order Items.

Sales Order Duplicate Validation

When creating a Sales Order, the application checks whether the Sales Document already exists.

Sales Document
      │
      ▼
Check Existing Sales Order
      │
      ▼
Already Exists?
   ┌──┴──┐
   │     │
  Yes    No
   │     │
   ▼     ▼
Error   Create
Message Sales Order
   │
   ▼
"Duplicate Sales Order"
Sales Item Duplicate Validation

Sales Order Items are checked using the combination of:

Sales Document
       +
Sales Item Number

If the combination already exists, the application rejects the creation with a duplicate item error.

⚙️ Unmanaged RAP Implementation

Unlike the Managed RAP scenario, database operations are manually implemented in this project.

The application uses:

Behavior Handler Classes
Custom Transactional Buffer
Saver Class
Manual MODIFY and DELETE database operations
Transaction Flow
Fiori Elements
      │
      ▼
Behavior Handler
      │
      ▼
Transactional Buffer
      │
      ▼
Saver Class
      │
      ▼
Database Tables

The transactional buffer temporarily stores changes during the RAP transaction, while the Saver Class performs the final database operations during save processing.

📸 Screenshots
Sales Order Unmanaged RAP Application

Sales Order Header

Sales Order Items

Sales Order Creation

RAP Application in Eclipse ADT

Sales Order Project

🚀 Development Environment
Component	Technology
IDE	Eclipse with ABAP Development Tools
Platform	SAP ABAP Cloud
Application Model	Unmanaged RAP
Data Modeling	ABAP CDS
UI	Fiori Elements
Service	OData V4
Version Control	Git / abapGit
Repository	GitHub
Package	ZSALES_ORDER_RAP_01
📚 Key Concepts Practiced

Through this project, I practiced:

Modern ABAP
ABAP Cloud
CDS View Entities
RAP Architecture
Unmanaged RAP
Root and Child Entities
Composition and Association
Behavior Definitions
Behavior Handler Classes
CRUD Operations
Transactional Buffer
Saver Class
Database Operations
Business Validations
Metadata Extensions
Service Definition
Service Binding
OData V4
Fiori Elements
abapGit
GitHub Version Control
🎯 Learning Objective

The main objective of this project was to gain practical hands-on experience in developing a Sales Order Management Application using the SAP ABAP RESTful Application Programming Model with the Unmanaged Scenario.

The project demonstrates how custom business logic, database operations, validations, transactional buffering, behavior implementation, service exposure, and Fiori Elements UI can be integrated into a complete RAP application.

🔄 Git & Version Control

The RAP development objects were version-controlled using abapGit and pushed from Eclipse ADT to GitHub.

Eclipse ADT
    │
    ▼
SAP ABAP Cloud
    │
    ▼
Unmanaged RAP Application
    │
    ▼
abapGit
    │
    ▼
Git Repository
    │
    ▼
GitHub
📁 Repository Structure
Sales-Order-Unmanaged-RAP
│
├── sales-order-unmanaged-rap/
│   │
│   ├── RAP / ABAP Development Objects
│   │
│   ├── Screenshot 2026-08-26 135234.png
│   ├── Screenshot 2026-08-26 135445.png
│   ├── Screenshot 2026-08-26 135532.png
│   ├── Screenshot 2026-08-26 135602.png
│   ├── Screenshot 2026-08-26 202357.png
│   └── Screenshot 2026-08-26 203439.png
│
├── .abapgit.xml
└── README.md
🔗 Repository

GitHub:
https://github.com/chandrasekhar1712/Sales-Order-Unmanaged-RAP

👨‍💻 Author

Thappita Chandrasekhar

B.Tech – Computer Science and Engineering
