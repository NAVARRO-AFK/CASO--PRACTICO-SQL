#Análisis de Ventas del Restaurante "Sabores del Mundo"

Contexto

El restaurante "Sabores del Mundo" es conocido por su auténtica cocina y su ambiente acogedor. A principios de año, lanzaron un nuevo menú y han estado recopilando información detallada sobre las transacciones de los clientes para optimizar sus ventas y mejorar su oferta gastronómica.

#Objetivo

El propósito de este análisis es identificar los productos más y menos exitosos del menú, para ayudar a los dueños del restaurante en la toma de decisiones estratégicas.

#Pasos para el análisis

1. Creación de la base de datos

Se proporciona el archivo create_restaurant_db.sql, que contiene la estructura de las tablas:

menu_items: Contiene los detalles de los productos del menú.

order_details: Almacena información sobre los pedidos realizados por los clientes.

2. Exploración de la tabla menu_items

#Consultas realizadas:

Número total de artículos en el menú.

Identificación del artículo más caro y el menos caro.

Cantidad de platos americanos en el menú.

Precio promedio de los platillos.

3. Exploración de la tabla order_details

#Consultas realizadas:

Cantidad total de pedidos únicos.

Identificación de los 5 pedidos con mayor número de artículos.

Fecha del primer y último pedido registrado.

Cantidad de pedidos realizados en un período específico (2023-01-01 a 2023-01-05).

4. Análisis combinado usando LEFT JOIN

Se realizó un LEFT JOIN entre order_details y menu_items para obtener información detallada de los pedidos y sus productos.

5. Conclusiones clave

A partir del análisis, se identificaron 5 puntos clave que pueden ayudar en la optimización del menú. Algunas posibles observaciones incluyen:

Productos con alta demanda y baja demanda.

Relación entre precios y popularidad de los platillos.

Tendencias en los pedidos según fechas u horarios.

Preferencias de los clientes en cuanto a categorías de comida.

Potenciales ajustes en la estrategia de precios o promociones.

Cómo ejecutar el análisis

Crear la base de datos ejecutando el archivo create_restaurant_db.sql en MySQL.

Insertar datos de prueba en las tablas (si es necesario).

Ejecutar las consultas en un entorno SQL para obtener los insights requeridos.

Tecnologías utilizadas

MySQL

SQL para consultas y análisis de datos

Este repositorio proporciona las herramientas necesarias para comprender mejor las preferencias de los clientes y mejorar las estrategias del restaurante "Sabores del Mundo".
