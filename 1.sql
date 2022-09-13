--1. Добавить разработчикам поле (salary - зарплата).
ALTER TABLE developers
ADD COLUMN salary INT;

UPDATE developers
	SET salary = 930
	WHERE id = 1;

UPDATE developers
	SET salary = 2415
	WHERE id = 2;

UPDATE developers
	SET salary = 1100
	WHERE id = 3;

UPDATE developers
	SET salary = 1600
	WHERE id = 4;

UPDATE developers
	SET salary = 1500
	WHERE id = 5;

UPDATE developers
	SET salary = 2400
	WHERE id = 6;

UPDATE developers
	SET salary = 2200
	WHERE id = 7;

UPDATE developers
	SET salary = 900
	WHERE id = 8;

UPDATE developers
	SET salary = 1100
	WHERE id = 9;

UPDATE developers
	SET salary = 1600
	WHERE id = 10;

--Другие запросы
--WHERE name LIKE '%a';
--WHERE salary IS NULL;
--WHERE sex = 'male';
--WHERE id BETWEEN 7 AND 9;
--WHERE sex<> 'female' AND name LIKE 'R%';
