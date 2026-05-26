-- Explore all countries our Customers come from.

select distinct country from gold.dim_customers

-- Explore all categories "the major divisions"

SELECT distinct category,subcategory,product_name from gold.dim_products

-- Explore what values does product_line contains

SELECT distinct product_line from gold.dim_products