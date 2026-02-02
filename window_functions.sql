-- 3. Рейтинг товаров в каждой категории (оконные функции)
SELECT 
    "Category",
    "Product Name",
    SUM("Profit") as product_profit,
    RANK() OVER(PARTITION BY "Category" ORDER BY SUM("Profit") DESC) as rank_in_category
FROM sales
GROUP BY "Category", "Product Name"
HAVING SUM("Profit") > 0
ORDER BY "Category", rank_in_category;
