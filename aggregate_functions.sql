SELECT COUNT(*) AS total_products
FROM products;

SELECT AVG(price) AS average_price
FROM products;

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT SUM(quantity) AS total_items_sold
FROM order_items;

SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;

SELECT *
FROM products
ORDER BY price DESC
LIMIT 1;

SELECT category, COUNT(*) AS total_products
FROM products
GROUP BY category;