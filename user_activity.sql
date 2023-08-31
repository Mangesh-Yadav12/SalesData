SELECT activity_date, ROUND(COUNT(DISTINCT user_id) * 100.0 / (SELECT COUNT(DISTINCT user_id) FROM user_activity WHERE activity_date = ua.activity_date), 2) AS engagement_rate
FROM user_activity ua
GROUP BY activity_date;