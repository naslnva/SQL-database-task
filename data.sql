USE sales_db;

INSERT INTO products VALUES
(1,'Wireless Mouse','electronics',15),
(2,'Mechanical Keyboard','electronics',45),
(3,'USB-C Cable','electronics',8),
(4,'Laptop Stand','electronics',25),
(5,'Monitor 24 inch','electronics',120),
(6,'Notebook A5','stationery',3),
(7,'Ballpoint Pen','stationery',1.50),
(8,'Backpack','accessories',35),
(9,'Water Bottle','accessories',12),
(10,'Desk Lamp','home',20),
(11,'Headphones','electronics',60),
(12,'Phone Charger','electronics',18);

INSERT INTO customers VALUES
(1,'Ali Mammadov','ali@gmail.com','Baku'),
(2,'Nigar Aliyeva','nigar@gmail.com','Ganja'),
(3,'Rashad Hasanov','rashad@gmail.com','Baku'),
(4,'Aysel Karimova','aysel@yahoo.com','Sumgait'),
(5,'Murad Aliyev','murad@gmail.com','Baku');

INSERT INTO orders VALUES
(1,1,'2024-01-15'),
(2,2,'2024-02-10'),
(3,1,'2024-03-05'),
(4,3,'2024-04-20'),
(5,5,'2024-05-12');

INSERT INTO order_items VALUES
(1,1,1,2),
(2,1,3,1),
(3,2,5,1),
(4,3,11,2),
(5,4,8,1),
(6,4,9,3),
(7,5,2,1);