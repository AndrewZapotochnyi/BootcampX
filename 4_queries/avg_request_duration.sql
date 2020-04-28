SELECT AVG(assistance_requests.completed_at - assistance_requests.created_at) AS duration_avg
FROM assistance_requests;