--2. Найти самый дорогой проект (исходя из salary всех разработчиков).
SELECT p.name, SUM(d.salary) AS sum_salary
FROM projects p
	INNER JOIN developers_projects dp ON p.id = dp.projects_id
	INNER JOIN developers d ON dp.developers_id = d.id
GROUP BY p.name
ORDER BY sum_salary DESC
LIMIT 1;
