--2. Найти самый дорогой проект (исходя из salary всех разработчиков).
SELECT p.id, p.name, SUM(salary)
FROM developers_companies
         inner join developers d on d.id = developers_companies.developers_id
         inner join companies p on p.id = developers_companies.companies_id
GROUP BY p.id
ORDER BY SUM(salary) DESC
LIMIT 1;
