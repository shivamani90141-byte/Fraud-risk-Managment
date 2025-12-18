# Fraud Risk Management System

## Overview
The Fraud Risk Management System is a database-centric analytics project designed to identify potentially fraudulent financial transactions using rule-based logic. The system focuses on transaction behavior analysis rather than machine learning, making it transparent, explainable, and suitable for real-world business use cases.

## Problem Statement
Financial institutions handle a large volume of transactions daily, making it difficult to manually identify suspicious activity. Abnormal transaction amounts, unusual locations, and repeated usage of flagged devices can indicate potential fraud and require timely detection.

## Solution Approach
- Designed a normalized MySQL relational database to store customers, transactions, devices, and fraud alerts  
- Applied SQL-based rules to identify high-risk transactions  
- Automated data extraction and analysis using Python  
- Generated structured fraud reports in CSV and Excel formats for easy review  

## Technologies Used
- **Database:** MySQL  
- **Programming:** Python  
- **Query Language:** SQL  
- **Data Analysis:** Pandas  
- **Reporting:** Excel  

## Key Features
- High-value transaction detection  
- Device-based fraud identification  
- Location-based anomaly detection  
- Automated fraud reporting  

## Outcome
The system successfully identifies suspicious transactions and provides actionable insights through clean, structured reports. This project demonstrates strong fundamentals in DBMS design, SQL querying, and Python-based data analysis for fraud risk management.

## Future Enhancements
- Integrating machine learning-based fraud scoring  
- Real-time alert dashboards using Power BI or Streamlit  
- Expanding fraud rules based on historical behavior patterns  
