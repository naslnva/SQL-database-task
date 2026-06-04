-- SIMPLE QUERIES

SELECT * FROM products;

SELECT name, price
FROM products;

SELECT * FROM customers;

SELECT DISTINCT category
FROM products;

SELECT *
FROM products
LIMIT 10;

-- CONDITIONAL QUERIES

SELECT *
FROM products
WHERE price > 50;

SELECT *
FROM customers
WHERE city = 'Baku';

SELECT *
FROM products
WHERE category = 'electronics';

SELECT *
FROM orders
WHERE order_date > '2024-01-01';

SELECT *
FROM customers
WHERE email LIKE '%@gmail.com';

SELECT *
FROM products
WHERE price BETWEEN 20 AND 80;

SELECT *
FROM products
WHERE category <> 'Clothing';

-- AGGREGATE FUNCTIONS

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

-- JOIN QUERIES

SELECT
    orders.id,
    customers.full_name
FROM orders
JOIN customers
ON orders.customer_id = customers.id;

SELECT
    products.name,
    order_items.quantity,
    orders.order_date
FROM order_items
JOIN products
ON order_items.product_id = products.id
JOIN orders
ON order_items.order_id = orders.id;

SELECT
    customers.full_name,
    SUM(order_items.quantity) AS total_items
FROM customers
JOIN orders
ON customers.id = orders.customer_id
JOIN order_items
ON orders.id = order_items.order_id
GROUP BY customers.full_name;

SELECT
    customers.full_name,
    SUM(products.price * order_items.quantity) AS total_spent
FROM customers
JOIN orders
ON customers.id = orders.customer_id
JOIN order_items
ON orders.id = order_items.order_id
JOIN products
ON order_items.product_id = products.id
GROUP BY customers.full_name;

SELECT
    products.name,
    order_items.quantity,
    orders.order_date
FROM order_items
JOIN products
ON order_items.product_id = products.id
JOIN orders
ON order_items.order_id = orders.id
WHERE YEAR(orders.order_date) = 2024;

SELECT customers.full_name
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
WHERE orders.id IS NULL;

SELECT
    customers.full_name,
    SUM(order_items.quantity) AS total_items
FROM customers
JOIN orders
ON customers.id = orders.customer_id
JOIN order_items
ON orders.id = order_items.order_id
GROUP BY customers.full_name
ORDER BY total_items DESC
LIMIT 5;