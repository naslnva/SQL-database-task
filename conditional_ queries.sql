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