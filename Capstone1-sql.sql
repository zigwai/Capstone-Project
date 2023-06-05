SELECT count(*) FROM "customers";


SELECT o.shipping_city as city, SUM(od.order_profits) as profit
FROM orders o
INNER JOIN order_details od
ON o.order_id = od.order_id
WHERE date_part('year', o.order_date) = 2015
GROUP BY 1
ORDER BY 2 DESC;


SELECT COUNT( DISTINCT shipping_city ) as num_city
FROM orders;


SELECT o.customer_id as id, SUM(od.order_sales) as total_ptofit
FROM orders o
INNER JOIN order_details od
ON o.order_id = od.order_id
GROUP BY 1
ORDER BY 2

SELECT AVG(order_profits) as avg_profit
FROM orders o
INNER JOIN order_details od
ON o.order_id = od.order_id
WHERE o.shipping_city = 'Lebanon';


SELECT customer_segment, count(*)
FROM customers
GROUP BY 1
ORDER BY 2


SELECT product_category, AVG(order_profits)
FROM product p
INNER JOIN order_details od
ON p.product_id = od.product_id
INNER JOIN orders o
ON o.order_id = od.order_id
WHERE o.shipping_state = 'Iowa'
GROUP BY 1
ORDER BY 2 DESC;

SELECT product_name, SUM(quantity)
FROM product p
INNER JOIN order_details od
ON p.product_id = od.product_id
INNER JOIN orders o
ON o.order_id = od.order_id
WHERE date_part('year', o.shipping_date) = 2016
AND product_category = 'Furniture'
GROUP BY 1
ORDER BY 2 DESC;

SELECT c.customer_id, ((od.order_sales / (1 - od.order_discount)) - od.order_sales) as discount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN order_details od
ON o.order_id = od.order_id
ORDER BY 2 DESC;

SELECT od.order_id, order_sales
FROM order_details od
INNER JOIN orders o
ON o.order_id = od.order_id
WHERE date_part('year', o.order_date) = 2015
AND od.order_id = 'CA-2015-145541' OR od.order_id = 'CA-2015-145317' OR od.order_id = 'CA-2015-139892' OR od.order_id = 'CA-2015-116904'
ORDER BY 2 DESC;

-- Example query (PostgreSQL)
SELECT o.shipping_city, SUM(od.quantity)
FROM orders o
INNER JOIN order_details od
ON o.order_id = od.order_id
WHERE date_part('year', o.order_date) = 2015
AND o.shipping_region = 'East'
GROUP BY 1
ORDER BY 2 DESC;

SELECT customer_name
FROM customers c
WHERE customer_segment = 'Consumer' OR customer_segment = 'Corporate'

SELECT (MAX(quantity) - MIN(quantity)) as numm
FROM order_details 
WHERE product_id = 100

SELECT product_subcategory, COUNT(*)
FROM product
GROUP BY 1
ORDER BY 2 DESC, 1

SELECT product_id, SUM(quantity) as summ
FROM order_details
GROUP BY 1
ORDER BY 2 DESC



