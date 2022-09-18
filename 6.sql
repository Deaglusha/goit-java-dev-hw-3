--6. Вычислить среднюю ЗП программистов в самом дешевом проекте.
SELECT p.name, AVG(d.salary) AS avg_salary
FROM developers d
	INNER JOIN developers_companies dc ON d.id = dc.developers_id
	INNER JOIN companies c ON dc.companies_id = c.id
	INNER JOIN projects p ON c.id = p.companies_id
WHERE p.cost = (SELECT MIN(cost) FROM projects)
GROUP BY p.name, d.salary;
