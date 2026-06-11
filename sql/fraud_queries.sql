-- Fraud Detection SQL Queries

SELECT *
FROM transactions;

SELECT COUNT(*)
FROM transactions
WHERE is_fraud = 1;