--2. Найти самый дорогой проект (исходя из salary всех разработчиков).
SELECT p.name, SUM(d.salary) AS sum_salary
FROM developers d
	INNER JOIN developers_companies dc ON d.id = dc.developers_id
	INNER JOIN companies c ON dc.companies_id = c.id
	INNER JOIN projects p ON c.id = p.companies_id
GROUP BY p.name, d.salary
ORDER BY sum_salary DESC
LIMIT 1;
