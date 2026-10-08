-- Question: Which credit reporting issues drive complaints, and how do their relief rates compare?
SELECT Issue, COUNT(*) AS complaints, ROUND(100.0*AVG(relief),1) AS relief_rate_pct
FROM complaints_clean
WHERE Product LIKE 'Credit reporting%'
GROUP BY Issue
ORDER BY complaints DESC;
