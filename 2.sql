--2. Найти самый дорогой проект (исходя из salary всех разработчиков).
SELECT SUM(d.salary) AS sum_salary
FROM projects p
	INNER JOIN companies c ON p.id = c.id
	INNER JOIN developers_companies dc ON c.id = dc.companies_id
	INNER JOIN developers d ON dc.developers_id = d.id;
