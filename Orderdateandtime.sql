SELECT 
    `Order ID`, 
    STR_TO_DATE(`Order Date`, '%d-%m-%Y') AS order_date,
    EXTRACT(YEAR FROM STR_TO_DATE(`Order Date`, '%d-%m-%Y')) AS order_year,
    EXTRACT(MONTH FROM STR_TO_DATE(`Order Date`, '%d-%m-%Y')) AS order_month
FROM orders;
