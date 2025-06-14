-- Daily Performance Analysis with Window Functions
SELECT d.datekey, SUM(s.quantity * s.netprice * ce.exchangerate) AS daily_revenue, SUM(SUM(s.quantity * s.netprice * ce.exchangerate)) OVER (ORDER BY d.datekey) AS running_total FROM sales s JOIN date d ON s.datekey = d.datekey JOIN currencyexchange ce ON s.currencykey = ce.currencykey GROUP BY d.datekey ORDER BY d.datekey;
