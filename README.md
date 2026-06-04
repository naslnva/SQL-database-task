# Sales Database SQL Task

This project was created for practicing SQL and relational databases.

## Database Tables

### products
Stores product information:
- id
- name
- category
- price

### customers
Stores customer information:
- id
- full_name
- email
- city

### orders
Stores customer orders:
- id
- customer_id
- order_date

### order_items
Stores products included in each order:
- id
- order_id
- product_id
- quantity

## Project Files

- schema.sql
- data.sql
- queries.sql

## Topics Used

- SELECT
- WHERE
- LIKE
- BETWEEN
- COUNT
- AVG
- SUM
- GROUP BY
- INNER JOIN
- LEFT JOIN

## Database Structure

customers
↓
orders
↓
order_items
↓
products

## Queries

The project includes:

- Simple Queries
- Conditional Queries
- Aggregate Functions
- Join Queries