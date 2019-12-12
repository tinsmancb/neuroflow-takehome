WITH first_exercise AS (
	SELECT
		min(e.exercise_completion_date) AS first_date,
		u.user_id AS user_id
	FROM users u
	LEFT JOIN exercises e /* include rows for users who have not done any exercises */
	ON u.user_id = e.user_id 
	GROUP BY u.user_id
)

SELECT
	datetime(u.created_at, 'start of month') AS month,
	1.0*sum(CASE WHEN e.first_date BETWEEN u.created_at AND datetime(u.created_at, '+1 month')
		THEN 1 ELSE 0 END)/count(*) AS perc_completed
FROM users AS u
JOIN first_exercise AS e
ON e.user_id = u.user_id
GROUP BY month
ORDER BY month
