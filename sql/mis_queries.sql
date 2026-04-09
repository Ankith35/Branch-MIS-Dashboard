-- =============================================
-- Project 01: Branch MIS Dashboard
-- Author: Ankith K
-- =============================================

-- Query 1: Daily Transaction Summary
SELECT 
    type AS Transaction_Type,
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(amount), 2) AS Total_Amount,
    ROUND(AVG(amount), 2) AS Avg_Amount,
    SUM(isFraud) AS Fraud_Count
FROM transactions
GROUP BY type
ORDER BY Total_Amount DESC;

-- Query 2: Anomaly Detection
SELECT 
    nameOrig,
    type,
    amount,
    Risk_Flag,
    Transaction_Date
FROM transactions
WHERE amount > 500000
ORDER BY amount DESC
LIMIT 20;

-- Query 3: Branch KPI Summary
SELECT
    Risk_Flag,
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(amount)/1000000, 2) AS Total_Amount_Millions,
    ROUND(AVG(amount), 2) AS Avg_Transaction,
    SUM(isFraud) AS Total_Frauds
FROM transactions
GROUP BY Risk_Flag
ORDER BY Total_Amount_Millions DESC;
