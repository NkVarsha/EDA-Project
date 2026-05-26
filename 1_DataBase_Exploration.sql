-- Explore what are all the tables present in the DB
select * from INFORMATION_SCHEMA.TABLES

-- Explore all the columns of all the tables in the DB
select * from INFORMATION_SCHEMA.COLUMNS

-- Explore all the columns in Customers
SELECT * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'dim_customers'