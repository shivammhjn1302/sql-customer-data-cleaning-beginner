DROP TABLE IF EXISTS clean_customers;

CREATE TABLE clean_customers AS
WITH standardized AS (
  SELECT DISTINCT
    CAST(NULLIF(TRIM(customer_id), '') AS INTEGER) AS customer_id,
    CASE WHEN TRIM(COALESCE(full_name, '')) = '' THEN 'Unknown Customer'
         ELSE TRIM(full_name) END AS full_name,
    LOWER(TRIM(COALESCE(email, 'unknown@email.com'))) AS email,
    NULLIF(TRIM(phone), '') AS phone,
    DATE(signup_date) AS signup_date,
    CASE WHEN TRIM(COALESCE(city, '')) = '' THEN 'Unknown'
         ELSE UPPER(SUBSTR(TRIM(city),1,1)) || LOWER(SUBSTR(TRIM(city),2)) END AS city,
    CASE WHEN age BETWEEN 13 AND 100 THEN age ELSE NULL END AS age,
    CASE WHEN LOWER(TRIM(status)) IN ('active','inactive') THEN LOWER(TRIM(status)) ELSE 'unknown' END AS status
  FROM raw_customers
)
SELECT *
FROM standardized
WHERE customer_id IS NOT NULL
  AND signup_date IS NOT NULL;
