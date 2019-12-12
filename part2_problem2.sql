SELECT
	avg(s.score) AS mean_score,
	p.organization_name AS org_name
FROM Phq9 AS s
JOIN Providers AS p
ON s.provider_id = p.provider_id
GROUP BY org_name
ORDER BY mean_score DESC
LIMIT 5

