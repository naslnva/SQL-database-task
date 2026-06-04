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

## Project Structure

```text
├── schema.sql
├── data.sql
├── simple_queries/
├── conditional_queries/
├── aggregate_functions/
└── join_queries/
```

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

Each customer can have multiple orders, and each order can contain multiple products through the `order_items` table.

## Queries

The project includes:

- Simple Queries
- Conditional Queries
- Aggregate Functions
- Join Queries