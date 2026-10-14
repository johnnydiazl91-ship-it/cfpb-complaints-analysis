-- Question: Does the Experian gap hold within each issue type, or does complaint mix explain it?
SELECT Company, Issue,
       COUNT(*) AS complaints,
       ROUND(100.0 * AVG(relief), 1) AS relief_rate_pct
FROM complaints_clean
WHERE Company IN ('EQUIFAX, INC.',
                  'TRANSUNION INTERMEDIATE HOLDINGS, INC.',
                  'Experian Information Solutions Inc.')
  AND Issue IN ('Incorrect information on your report',
                'Improper use of your report',
                'Problem with a company''s investigation into an existing problem')
GROUP BY Company, Issue
ORDER BY Issue, Company;
