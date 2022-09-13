--2. Найти самый дорогой проект (исходя из salary всех разработчиков).
SELECT p.name, SUM (d.salary)
FROM projects p
INNER JOIN developers_companies dc ON p.id = dc.companies_id
INNER JOIN developers d ON dc.developers_id = dc.companies_id
GROUP BY p.name;
