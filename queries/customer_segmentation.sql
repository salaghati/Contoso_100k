-- Customer Segmentation Analysis
WITH customer_revenue AS (SELECT c.customerkey, SUM(s.quantity * s.netprice * ce.exchangerate) AS total_revenue FROM sales s JOIN customer c ON s.customerkey = c.customerkey JOIN currencyexchange ce ON s.currencykey = ce.currencykey GROUP BY c.customerkey)
