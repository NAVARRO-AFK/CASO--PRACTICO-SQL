--base de datos
CREATE DATABASE restaurant_db;
USE restaurant_db;

--tabla menu_items
CREATE TABLE menu_items (
    menu_item_id INT PRIMARY KEY,
    item_name VARCHAR(255),
    category VARCHAR(100),
    price DECIMAL(10,2)
);

--tabla order_details
CREATE TABLE order_details (
    order_details_id INT PRIMARY KEY,
    order_id INT,
    order_date DATE,
    order_time TIME,
    item_id INT,
    FOREIGN KEY (item_id) REFERENCES menu_items(menu_item_id)
);

-- Consultas que se piden en el caso práctico

-- Número de artículos en el menú
SELECT COUNT(*) AS total_items FROM menu_items;

-- Artículo menos caro y más caro en el menú
SELECT item_name, price FROM menu_items ORDER BY price ASC LIMIT 1;
SELECT item_name, price FROM menu_items ORDER BY price DESC LIMIT 1;

-- Cantidad de platos americanos en el menú
SELECT COUNT(*) AS american_dishes FROM menu_items WHERE category = 'American';

-- Precio promedio de los platos
SELECT AVG(price) AS average_price FROM menu_items;

-- Total de pedidos únicos
SELECT COUNT(DISTINCT order_id) AS total_orders FROM order_details;

-- 5 pedidos con mayor número de artículos
SELECT order_id, COUNT(*) AS item_count FROM order_details GROUP BY order_id ORDER BY item_count DESC LIMIT 5;

-- Fecha del primer y último pedido
SELECT MIN(order_date) AS first_order, MAX(order_date) AS last_order FROM order_details;

-- Pedidos entre '2023-01-01' y '2023-01-05'
SELECT COUNT(DISTINCT order_id) AS orders_in_range FROM order_details WHERE order_date BETWEEN '2023-01-01' AND '2023-01-05';

-- Left join entre order_details y menu_items
SELECT * FROM order_details LEFT JOIN menu_items ON order_details.item_id = menu_items.menu_item_id;