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