# Sales Database SQL Task

This project is a simple SQL practice project created to work with relational databases, tables and queries.

## Database Tables

### Products
- id
- product_name
- category
- price

### Customers
- id
- full_name
- email
- city

### Orders
- id
- customer_id
- order_date

### Order Items
- id
- order_id
- product_id
- quantity

## Database Overview

The database is built using four related tables: customers, products, orders and order_items.

Customers can create multiple orders, and each order can contain multiple products. The order_items table is used to connect orders and products.

## Database Structure

```text
Customers
    │
    │ customer_id
    ▼
Orders
    │
    │ order_id
    ▼
Order_Items
    │
    │ product_id
    ▼
Products
```

Each customer can have multiple orders and each order can contain multiple products through the `order_items` table.

## Queries

The project includes simple queries, conditional queries, aggregate functions and join queries.