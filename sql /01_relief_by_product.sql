-- Question: Which companies have the most complaints, and how do their relief rates compare?
SELECT Company,
       COUNT(*) AS complaints,
       ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM complaints_clean), 1) AS pct_of_total,
       ROUND(100.0 * AVG(relief), 1) AS relief_rate_pct
FROM complaints_clean
GROUP BY Company
HAVING COUNT(*) >= 1000
ORDER BY complaints DESC
LIMIT 20;
