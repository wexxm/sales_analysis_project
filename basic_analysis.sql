-- 1. Самые прибыльные товары
SELECT 
    "Product Name",
    SUM("Profit") as total_profit,
    SUM("Sales") as total_sales
FROM sales
GROUP BY "Product Name"
ORDER BY total_profit DESC
LIMIT 10;

-- 2. Конверсия по регионам (заказов на клиента)
SELECT 
    "Region",
    COUNT(DISTINCT "Order ID") as orders_count,
    COUNT(DISTINCT "Customer ID") as customers_count,
    ROUND(COUNT(DISTINCT "Order ID") * 1.0 / COUNT(DISTINCT "Customer ID"), 2) as orders_per_customer
FROM sales
GROUP BY "Region";
