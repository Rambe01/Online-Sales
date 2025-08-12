SELECT 
    o.`Order ID`,
    STR_TO_DATE(o.`Order Date`, '%d-%m-%Y') AS order_date,
    d.Amount
FROM Orders o
JOIN Details d 
    ON o.`Order ID` = d.`Order ID`;
