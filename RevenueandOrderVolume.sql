SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(o.`Order Date`, '%d-%m-%Y')) AS order_year,
    EXTRACT(MONTH FROM STR_TO_DATE(o.`Order Date`, '%d-%m-%Y')) AS order_month,
    SUM(d.Amount) AS total_revenue,
    COUNT(DISTINCT o.`Order ID`) AS total_volume
FROM Orders o
JOIN Details d 
    ON o.`Order ID` = d.`Order ID`
GROUP BY order_year, order_month;
