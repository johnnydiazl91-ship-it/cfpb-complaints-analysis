-- Question: How do the three credit bureaus' relief rates change month by month?
SELECT Company, month,
       COUNT(*) AS complaints,
       ROUND(100.0 * AVG(relief), 1) AS relief_rate_pct,
       ROUND(100.0 * AVG("Company response to consumer" = 'Closed with explanation'), 1) AS explanation_pct
FROM complaints_clean
WHERE Company IN ('EQUIFAX, INC.',
                  'TRANSUNION INTERMEDIATE HOLDINGS, INC.',
                  'Experian Information Solutions Inc.')
GROUP BY Company, month
ORDER BY Company, month;
