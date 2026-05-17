-- Beginner SQL data quality checks
SELECT COUNT(*) AS total_clean_rows FROM clean_customers;

SELECT status, COUNT(*) AS customers
FROM clean_customers
GROUP BY status
ORDER BY customers DESC;

SELECT city, COUNT(*) AS customers
FROM clean_customers
GROUP BY city
ORDER BY customers DESC;

SELECT COUNT(*) AS missing_age_count
FROM clean_customers
WHERE age IS NULL;
