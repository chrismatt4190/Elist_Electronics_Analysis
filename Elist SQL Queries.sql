

-- 1. What is the date of the earliest and latest order?

SELECT
  MIN(purchase_ts) AS earliest_order,
  MAX(purchase_ts) AS latest_order
FROM core.orders;

-- 2. What is the average order value for purchases made in USD? What about average order value for purchases made in USD in 2019?
-- select USD average usd_price from orders table nd filter ot where currecny = usd, and filter to where purchase_ts is in the yaer 2019

SELECT
  AVG(usd_price)
FROM core.orders
WHERE currency = 'USD'
AND EXTRACT(year FROM purchase_ts) = 2019;


-- 3. Return the id, loyalty program status, and account creation date for customers who made an account on desktop or mobile. Rename the columns to more descriptive names.
-- select these columsn from customers table where account_creation_method = desktop or mobile - rename columns

SELECT
  id,
  loyalty_program AS is_loyalty_customer,
  created_on AS account_created_on
FROM core.customers
WHERE account_creation_method = 'desktop' OR account_creation_method = 'mobile';

-- 4. What are all the unique products that were sold in AUD on website, sorted alphabetically?
-- select product name from orders table and filter to where currency = aud, order by ask

SELECT DISTINCT
  product_name
FROM core.orders
WHERE currency = 'AUD'
AND purchase_platform = 'mobile app'
ORDER BY 1 ASC;

-- 5. What are the first 10 countries in the North American region, sorted in descending alphabetical order?
-- select country from geo-lookup where regio = NA order by desc, limit 10

SELECT *
FROM core.geo_lookup
WHERE region = 'NA'
ORDER BY 1 DESC
LIMIT 10;

-- 6. What is the total number of orders by shipping month, sorted from most recent to oldest?

SELECT DATE_TRUNC(ship_ts, month) AS month,
  COUNT(DISTINCT order_id) as order_count
FROM core.order_status
GROUP BY 1
ORDER BY 1 DESC;


-- 7. What is the average order value by year? Can you round the results to 2 decimals?

SELECT
EXTRACT(year FROM purchase_ts) AS year, 
  ROUND(AVG(usd_price),2) AS aov
FROM core.orders
GROUP BY 1
ORDER BY 1;


-- 8. Create a helper column `is_refund`  in the `order_status`  table that returns 1 if there is a refund, 0 if not. Return the first 20 records.

SELECT *, 
  CASE
   WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END AS is_refund
FROM core.order_status
LIMIT 20;


-- 9. Return the product IDs and product names of all Apple products.

SELECT
  DISTINCT product_id,
  product_name
FROM core.orders
WHERE product_name LIKE '%Apple%'
OR product_name = 'Macbook Air Laptop';


-- 10. Calculate the time to ship in days for each order and return all original columns from the table.

SELECT *, 
DATE_DIFF(ship_ts,purchase_ts, day) AS days_to_ship
FROM core.order_status;

-- 11. What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years? 

SELECT 
  DATE_TRUNC(orders.purchase_ts, quarter) AS purchase_quarter,
  COUNT(DISTINCT orders.id) AS order_count,
  ROUND(SUM(orders.usd_price),2) AS total_sales,
  ROUND(AVG(orders.usd_price),2) AS aov
FROM core.orders
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup 
  ON customers.country_code = geo_lookup.country
WHERE LOWER(orders.product_name) LIKE '%macbook%'
AND region = 'NA'
GROUP BY 1
ORDER BY 1 DESC;

-- 12. For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver? 

SELECT 
  geo_lookup.region, 
  AVG(DATE_DIFF(order_status.delivery_ts, order_status.purchase_ts, day)) AS time_to_deliver
FROM core.order_status
LEFT JOIN core.orders
  ON order_status.order_id = orders.id
LEFT JOIN core.customers
  ON customers.id = orders.customer_id
LEFT JOIN core.geo_lookup
  ON geo_lookup.country = customers.country_code
WHERE (EXTRACT(year FROM orders.purchase_ts) = 2022 
AND purchase_platform = 'website')
OR purchase_platform = 'mobile app'
GROUP BY 1
ORDER BY 2 DESC;

-- 13. What was the refund rate and refund count for each product overall? 

SELECT 
  CASE 
  WHEN product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor' ELSE product_name END AS product_clean,
  SUM(CASE 
        WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refunds,
  AVG(CASE
        WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refund_rate
FROM core.orders 
LEFT JOIN core.order_status 
ON orders.id = order_status.order_id
GROUP BY 1
ORDER BY 3 DESC;

-- 14. Within each region, what is the most popular product? 


WITH sales_by_product AS (
  SELECT region,
    CASE
      WHEN product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor' ELSE product_name END AS product_clean,
    COUNT(DISTINCT orders.id) AS total_orders
  FROM core.orders
  LEFT JOIN core.customers
  ON orders.customer_id = customers.id
  LEFT JOIN core.geo_lookup
  ON geo_lookup.country = customers.country_code
  GROUP BY 1,2
  ),

ranked_orders AS (
  SELECT *,
    ROW_NUMBER() OVER (PARTITION BY region ORDER BY total_orders DESC) AS order_ranking
  FROM sales_by_product
  ORDER BY 4 ASC)

SELECT *
FROM ranked_orders 
WHERE order_ranking = 1;

-- 15. How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers? 

SELECT
 customers.loyalty_program, 
  ROUND(AVG(DATE_DIFF(orders.purchase_ts, customers.created_on, day)),1) AS days_to_purchase,
  ROUND(AVG(DATE_DIFF(orders.purchase_ts, customers.created_on, month)),1) AS months_to_purchase
FROM core.customers
LEFT JOIN core.orders
ON customers.id = orders.customer_id
GROUP BY 1;

