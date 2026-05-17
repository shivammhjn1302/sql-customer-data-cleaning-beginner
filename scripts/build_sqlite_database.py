import sqlite3
import pandas as pd
from pathlib import Path

DB = Path('customer_cleaning.db')
RAW = Path('data/raw/customers_dirty.csv')

conn = sqlite3.connect(DB)
raw = pd.read_csv(RAW, dtype=str)
raw.to_sql('raw_customers', conn, if_exists='replace', index=False)

for file in ['sql/02_clean_customers.sql']:
    conn.executescript(Path(file).read_text())

clean = pd.read_sql_query('SELECT * FROM clean_customers', conn)
Path('data/cleaned').mkdir(parents=True, exist_ok=True)
clean.to_csv('data/cleaned/customers_cleaned.csv', index=False)
Path('reports').mkdir(exist_ok=True)
Path('reports/sql_quality_output.txt').write_text('\n'.join(
    str(pd.read_sql_query(query, conn)) for query in Path('sql/03_quality_checks.sql').read_text().split(';') if query.strip()
))
conn.close()
print(f'Built {DB} and exported data/cleaned/customers_cleaned.csv')
