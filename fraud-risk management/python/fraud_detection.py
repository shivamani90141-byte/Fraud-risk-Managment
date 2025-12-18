import pandas as pd
from db_connection import get_connection

conn = get_connection()

query = """
SELECT t.transaction_id, c.customer_name, t.transaction_amount,
       t.transaction_location, d.is_flagged
FROM transactions t
JOIN customers c ON t.customer_id = c.customer_id
JOIN devices d ON t.device_id = d.device_id
WHERE t.transaction_amount > 50000
   OR d.is_flagged = TRUE
"""

df = pd.read_sql(query, conn)
df.to_csv("../outputs/high_risk_transactions.csv", index=False)

print("High-risk transactions identified:", len(df))
