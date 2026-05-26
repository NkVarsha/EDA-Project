-- find the date of the first and the last order
select min(order_date),max(order_date) from gold.fact_sales

-- How many months of data our table contains
select 
    min(order_date) as first_order_date,
    max(order_date) as last_order_date,
    DATEDIFF(month,MIN(order_date),MAX(order_date)) as order_range_months
from gold.fact_sales

-- Find the youngest and oldest customer also retrive their ages
SELECT 
    MIN(birthdate) as oldest_customer_dob,
    MAX(birthdate) as youngest_customer_dob,
    DATEDIFF(YEAR,MIN(birthdate),GETDATE()) as oldest_cust_age,
    DATEDIFF(YEAR,MAX(birthdate),GETDATE()) as youngest_cust_age
from gold.dim_customers