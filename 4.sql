--4. Добавить поле (cost - стоимость) в таблицу Projects.
ALTER TABLE projects
	ADD COLUMN cost INT;
	
UPDATE projects
SET cost = 10000
WHERE id = 1;

UPDATE projects
SET cost = 120000
WHERE id = 2;
	
UPDATE projects
SET cost = 22000
WHERE id = 3;
	
UPDATE projects
SET cost = 5600
WHERE id = 4;
	
UPDATE projects
SET cost = 8450
WHERE id = 5;
	