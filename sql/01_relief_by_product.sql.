-- Question: Which products have the most complaints, and how often do they end in relief?
SELECT
    Product,
    COUNT(*) AS complaints,
    ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM complaints_clean), 1) AS pct_of_total,
    SUM(relief) AS relief_cases,
    ROUND(100.0 * AVG(relief), 1) AS relief_rate_pct
FROM complaints_clean
GROUP BY Product
ORDER BY complaints DESC;
