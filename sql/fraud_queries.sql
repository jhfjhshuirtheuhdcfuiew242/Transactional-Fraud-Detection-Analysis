SELECT COUNT(*) AS fraud_transactions
FROM transactions
WHERE Class = 1;

SELECT COUNT(*) AS legitimate_transactions
FROM transactions
WHERE Class = 0;

SELECT AVG(Amount) AS avg_amount
FROM transactions;

SELECT Risk_Level,
       COUNT(*) AS total_transactions
FROM transactions
GROUP BY Risk_Level;

SELECT Transaction_Type,
       COUNT(*) AS total_transactions
FROM transactions
GROUP BY Transaction_Type;

SELECT Hour,
       COUNT(*) AS total_transactions
FROM transactions
GROUP BY Hour
ORDER BY Hour;


SELECT *
FROM transactions
ORDER BY Amount DESC
LIMIT 10;