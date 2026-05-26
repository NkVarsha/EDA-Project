-- Which 5 products generate the highest revenue
select top 5
    p.product_key,
    p.product_name,
    sum(s.sales_amount) as total_revenue
from gold.fact_sales s
left join gold.dim_products p
on s.product_key=p.product_key
group by p.product_key, p.product_name
ORDER by total_revenue DESC

-- Using window functions
select * from (
select
    p.product_key,
    p.product_name,
    sum(s.sales_amount) as total_revenue,
    row_number() over(order by sum(s.sales_amount) desc) as rank
from gold.fact_sales s
left join gold.dim_products p
on s.product_key=p.product_key
group by p.product_key, p.product_name
) T 
where rank<=5


-- What are the 5 worst performing products in terms of sales
select top 5
    p.product_key,
    p.product_name,
    sum(s.sales_amount) as revenue
from gold.fact_sales s
left join gold.dim_products p
on s.product_key=p.product_key
group by p.product_key, p.product_name
ORDER by revenue ASC

-- using window functions
SELECT * from (
select 
    p.product_key,
    p.product_name,
    sum(s.sales_amount) as revenue,
    row_number() over(order by sum(s.sales_amount) asc) as rank
from gold.fact_sales s
left join gold.dim_products p
on s.product_key=p.product_key
group by p.product_key, p.product_name
) t 
where rank<=5