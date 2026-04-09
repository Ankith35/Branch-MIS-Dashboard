# Branch MIS Dashboard — Bank Transaction Monitor

## Project Overview
Built a daily branch MIS dashboard simulating banking operations 
at a retail bank branch. Inspired by real MIS reporting work 
done at Axis Bank.

## Business Problem
Manual MIS reporting in bank branches is time-consuming and 
error-prone. This project automates the entire workflow — from 
raw transaction data to an interactive Power BI dashboard.

## Dataset
- Source: PaySim1 — Synthetic Financial Dataset (Kaggle)
- Size: 50,000 transactions
- Type: PAYMENT, TRANSFER, CASH_OUT, CASH_IN, DEBIT

## Tools Used
| Tool | Purpose |
|------|---------|
| Microsoft Excel | Data cleaning, pivot tables, calculated columns |
| MySQL | Data storage, MIS queries, anomaly detection |
| Power BI | Interactive dashboard, KPI cards, visualizations |

## Key Findings
- Total transactions processed: 50,000
- Highest risk category: TRANSFER (avg ₹7.58 lakh per txn)
- Fraud detected: 100 transactions worth ₹356 Crore
- CASH_OUT flagged: 13,756 medium-risk transactions

## SQL Queries Built
1. Daily transaction summary by type
2. Anomaly detection — transactions above ₹5 lakh
3. Branch KPI summary by risk flag

## Dashboard Preview
![Dashboard](screenshots/dashboard.png)

## How to Use
1. Download `data/sample_data_500rows.csv`
2. Import into MySQL using `sql/mis_queries.sql`
3. Open `Branch_MIS_Dashboard.pbix` in Power BI Desktop

## Author
**Ankith K** — Data Analyst | BFSI Domain Expert  
[LinkedIn](https://linkedin.com/in/ankith-k-367462219)
