DROP TABLE IF EXISTS raw_customers;
CREATE TABLE raw_customers (
  customer_id TEXT,
  full_name TEXT,
  email TEXT,
  phone TEXT,
  signup_date TEXT,
  city TEXT,
  age INTEGER,
  status TEXT
);
