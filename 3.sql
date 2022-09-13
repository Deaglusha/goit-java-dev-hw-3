--3. Вычислить общую ЗП только Java разработчиков.
SELECT SUM(salary)
FROM developers d
    INNER JOIN developers_skills ds ON d.id = ds.developers_id
	INNER JOIN skills s ON ds.developers_id = s.id
WHERE s.language = 'Java';
