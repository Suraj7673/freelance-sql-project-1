# freelance-sql-project-1
Sales analysis using PostgreSQL - monthly, daily, customer-based metrics
# Freelance SQL Project 1 - Sales Data Analysis

📊 A real-world SQL project based on a freelance-style client request to analyze customer and sales data from a PostgreSQL database.

---

## 🚀 Project Overview

This project simulates a client request where you're asked to:
- Analyze customer signups and sales
- Calculate monthly and daily sales trends
- Identify top-performing customers
- Join and query relational tables

All SQL queries were written and executed using **PostgreSQL** and **DBeaver**.

---

## 📁 Database Structure

### 1. `customers` table
| Column       | Type         | Description           |
|--------------|--------------|-----------------------|
| customer_id  | serial (PK)  | Unique customer ID    |
| full_name    | varchar(100) | Customer's full name  |
| email        | varchar(100) | Customer email        |
| signup_date  | date         | Date of registration  |

### 2. `sales` table
| Column      | Type         | Description             |
|-------------|--------------|-------------------------|
| sale_id     | serial (PK)  | Unique sale ID          |
| customer_id | int (FK)     | Linked to customers     |
| amount      | decimal      | Sale amount             |
| sale_date   | date         | Date of the sale        |

---

## 🧠 Key SQL Concepts Used
- `JOIN`s (to combine customer and sales data)
- Aggregations (`SUM`, `COUNT`)
- `GROUP BY` and `ORDER BY`
- `date_trunc()` for monthly grouping
- Subqueries & filtering

---

## 📈 Insights Generated
- Total sales per month
- Daily revenue trends
- Top customers by revenue
- Full sales report with customer info

---

## 🛠 Tools Used
- **PostgreSQL** – as the SQL database engine
- **DBeaver** – for running and visualizing SQL queries
- **Git** – for version control

---

## 📂 How to Run
1. Clone this repo:
   ```bash
   git clone https://github.com/your-username/freelance-sql-project-1.git


