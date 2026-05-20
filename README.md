# Customer Records SQL Cleaning Room

A SQLite data-cleaning project focused on turning inconsistent customer profile records into a reliable customer table for analysis and reporting.

The theme is **CRM data hygiene** — practical SQL work for teams that need clean customer records before segmentation, retention analysis, or BI reporting.

## What this project shows

- Creating raw and cleaned tables
- Using `TRIM`, `LOWER`, `CASE`, `CAST`, and date handling
- Removing duplicate rows
- Validating IDs, dates, age, and status fields
- Running data quality checks

## Run locally

```bash
pip install -r requirements.txt
python scripts/build_sqlite_database.py
```

## Files

- `data/raw/customers_dirty.csv` — messy source data
- `sql/02_clean_customers.sql` — cleaning logic
- `sql/03_quality_checks.sql` — validation queries
- `data/cleaned/customers_cleaned.csv` — cleaned output

## Portfolio summary

Used SQL to clean customer records, standardize text fields, validate dates and ages, and produce a customer table ready for BI reporting.
