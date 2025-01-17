-- ------------------------------------- Total Revenue -------------------------------------
-- SELECT 
--     SUM(total_price) AS Total_Revenue
-- FROM
--     pizza_sales

-- ------------------------------------- Average Order Value -------------------------------------
-- SELECT 
--     (SUM(total_price) / COUNT(DISTINCT order_id)) AS Avg_order_Value
-- FROM
--     pizza_sales

-- ------------------------------------- Total Pizzas Sold -------------------------------------
-- SELECT 
--     SUM(quantity) AS Total_pizza_sold
-- FROM
--     pizza_sales

-- ------------------------------------- Total Orders -------------------------------------
-- SELECT 
--     COUNT(DISTINCT order_id) AS Total_Orders
-- FROM
--     pizza_sales

-- ------------------------------------- Average Pizzas Per Order -------------------------------------
-- SELECT 
--     CAST(CAST(SUM(quantity) AS DECIMAL (10 , 2 )) / CAST(COUNT(DISTINCT order_id) AS DECIMAL (10 , 2 ))
--         AS DECIMAL (10 , 2 )) AS Avg_Pizzas_per_order
-- FROM
--     pizza_sales

-- ------------------------------------- Hourly Trend for Total Pizzas Sold ------------------------------------- 
-- SELECT 
--     DATEPART(HOUR, order_time) AS order_hours,
--     SUM(quantity) AS total_pizzas_sold
-- FROM
--     pizza_sales
-- GROUP BY DATEPART(HOUR, order_time)
-- ORDER BY DATEPART(HOUR, order_time)


-- ------------------------------------- Weekly Trend for Orders ------------------------------------- 
-- SELECT 
--     DATEPART(ISO_WEEK, order_date) AS WeekNumber,
--     YEAR(order_date) AS Year,
--     COUNT(DISTINCT order_id) AS Total_orders
-- FROM 
--     pizza_sales
-- GROUP BY 
--     DATEPART(ISO_WEEK, order_date),
--     YEAR(order_date)
-- ORDER BY 
--     Year, WeekNumber;

-- ------------------------------------- % of Sales by Pizza Category ------------------------------------- 
-- SELECT 
--     pizza_category,
--     CAST(SUM(total_price) AS DECIMAL (10 , 2 )) AS total_revenue,
--     CAST(SUM(total_price) * 100 / (SELECT 
--                 SUM(total_price)
--             FROM
--                 pizza_sales)
--         AS DECIMAL (10 , 2 )) AS PCT
-- FROM
--     pizza_sales
-- GROUP BY pizza_category

-- ------------------------------------- % of Sales by Pizza Size -------------------------------------
-- SELECT 
--     pizza_size,
--     CAST(SUM(total_price) AS DECIMAL (10 , 2 )) AS total_revenue,
--     CAST(SUM(total_price) * 100 / (SELECT 
--                 SUM(total_price)
--             FROM
--                 pizza_sales)
--         AS DECIMAL (10 , 2 )) AS PCT
-- FROM
--     pizza_sales
-- GROUP BY pizza_size
-- ORDER BY pizza_size

-- ------------------------------------- Total Pizzas Sold by Pizza Category -------------------------------------
-- SELECT 
--     pizza_category, SUM(quantity) AS Total_Quantity_Sold
-- FROM
--     pizza_sales
-- WHERE
--     MONTH(order_date) = 2
-- GROUP BY pizza_category
-- ORDER BY Total_Quantity_Sold DESC

-- ------------------------------------- Top 5 Pizzas by Revenue -------------------------------------
-- SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue
-- FROM pizza_sales
-- GROUP BY pizza_name
-- ORDER BY Total_Revenue DESC

-- ------------------------------------- Bottom 5 Pizzas by Revenue ------------------------------------- 
-- SELECT Top 5 pizza_name, SUM(total_price) AS Total_Revenue
-- FROM pizza_sales
-- GROUP BY pizza_name
-- ORDER BY Total_Revenue ASC

-- ------------------------------------- Top 5 Pizzas by Quantity -------------------------------------
-- SELECT Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
-- FROM pizza_sales
-- GROUP BY pizza_name
-- ORDER BY Total_Pizza_Sold DESC

-- ------------------------------------- Bottom 5 Pizzas by Quantity -------------------------------------
-- SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
-- FROM pizza_sales
-- GROUP BY pizza_name
-- ORDER BY Total_Pizza_Sold ASC

-- ------------------------------------- Top 5 Pizzas by Total Orders -------------------------------------
-- SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
-- FROM pizza_sales
-- GROUP BY pizza_name
-- ORDER BY Total_Orders DESC

-- ------------------------------------- Borrom 5 Pizzas by Total Orders -------------------------------------
-- SELECT Top 5 pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
-- FROM pizza_sales
-- GROUP BY pizza_name
-- ORDER BY Total_Orders ASC











