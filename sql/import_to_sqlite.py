import pandas as pd
import sqlite3

# Load CSV
df = pd.read_csv(r"C:\Users\knaaz\OneDrive\Documents\Transactional-Fraud-Detection-Analysis\notebooks\fraud_detection_dashboard_data.csv")

# Create SQLite DB
conn = sqlite3.connect("fraud.db")

# Import data into table
df.to_sql("transactions", conn, if_exists="replace", index=False)

conn.close()

print("Data imported successfully!")
SELECT COUNT(*) AS fraud_transactions
FROM transactions
WHERE Class = 1;