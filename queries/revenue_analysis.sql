-- Revenue Analysis Queries
SELECT DATE_TRUNC('month', d.datekey) AS month, SUM(s.quantity * s.netprice * ce.exchangerate) AS monthly_revenue FROM sales s JOIN date d ON s.datekey = d.datekey JOIN currencyexchange ce ON s.currencykey = ce.currencykey GROUP BY DATE_TRUNC('month', d.datekey) ORDER BY month;
