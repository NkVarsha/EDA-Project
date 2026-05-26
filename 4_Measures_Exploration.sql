-- Find total Sales
select SUM(sales_amount) as total_sales from gold.fact_sales

-- Find how many items are sold
select sum(quantity) as items_sold from gold.fact_sales

-- Find the average selling price
SELECT avg(price) as avg_price from gold.fact_sales

-- Find the total number of orders
SELECT count(order_number) as total_orders, count(distinct order_number) as total_distinct_orders from gold.fact_sales

-- Find the total number of products
SELECT count(product_key) as total_products_availbale, count(distinct product_key) as total_distinct_products_available from gold.dim_products
SELECT count(product_key) as total_products_sold, count(distinct product_key) as total_distinct_products_sold from gold.fact_sales

-- Find the total number of Customers
SELECT COUNT(distinct customer_key) as total_customers from gold.dim_customers

-- Find the total number of Customers that has placed an order
SELECT COUNT(distinct customer_key) as total_customers_placed_order from gold.fact_sales

-- Get a report that shows all key metrics of the business
select 'Total Sales' as measure_name, SUM(sales_amount) as measure_value from gold.fact_sales
union ALL
select 'Items sold' as measure_name, sum(quantity) as measure_value from gold.fact_sales
union ALL
select 'Average selling price' as measure_name, avg(price) as measure_value from gold.fact_sales
union ALL
select 'Total Orders' as measure_name, count(distinct order_number) as measure_value from gold.fact_sales
union ALL
select 'Total Products Available' as measure_name, count(distinct product_key) as measure_value from gold.dim_products
union ALL
select 'Total Products Sold' as measure_name, count(distinct product_key) as measure_value from gold.fact_sales
union ALL
select 'Total Customers' as measure_name, COUNT(distinct customer_key) as measure_value from gold.dim_customers
union ALL
select 'Total Customers who placed an order' as measure_name, COUNT(distinct customer_key) as measure_value from gold.fact_sales
