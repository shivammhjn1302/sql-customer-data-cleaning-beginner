# SQL Customer Data Cleaning — Beginner Project

A beginner SQL project for cleaning customer profile data using SQLite.

## Skills Demonstrated

- Creating raw and cleaned tables
- Using `TRIM`, `LOWER`, `CASE`, `CAST`, `DATE`
- Removing duplicate rows
- Validating IDs, dates, age, and status fields
- Running data quality checks

## Run

```bash
pip install -r requirements.txt
python scripts/build_sqlite_database.py
```

## Files

- `data/raw/customers_dirty.csv` — messy source data
- `sql/02_clean_customers.sql` — cleaning logic
- `sql/03_quality_checks.sql` — validation queries
- `data/cleaned/customers_cleaned.csv` — cleaned output

## Portfolio Summary

Used SQL to clean customer records, standardize text fields, validate date and age values, and produce a clean customer table ready for BI reporting.
