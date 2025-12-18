import pandas as pd

df = pd.read_csv("../outputs/high_risk_transactions.csv")

summary = df.groupby("transaction_location").size().reset_index(name="Fraud_Count")

with pd.ExcelWriter("../outputs/fraud_summary.xlsx", engine="xlsxwriter") as writer:
    df.to_excel(writer, sheet_name="High Risk Transactions", index=False)
    summary.to_excel(writer, sheet_name="Location Summary", index=False)

print("Excel fraud report generated successfully.")
