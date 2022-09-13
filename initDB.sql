CREATE SCHEMA IF NOT EXISTS PUBLIC;

CREATE DATABASE goit_java_dev_hw_3 WITH owner postgres;

COMMENT ON SCHEMA PUBLIC IS 'standard public schema';

ALTER SCHEMA PUBLIC owner TO postgres;

-- developers (хранит данные о разработчиках(имя, возраст, пол и прочее))
CREATE TYPE sex AS ENUM ('male', 'female', 'unknown');

CREATE TABLE developers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	age INT NOT NULL,
	sex sex
);

-- skills (отрасль – Java, C++, C#, JS; уровень навыков - Junior, Middle, Senior)
CREATE TYPE language AS ENUM ('Java', 'C++', 'C#', 'JS');
CREATE TYPE level AS ENUM ('Junior', 'Middle', 'Senior');

CREATE TABLE skills (
	id SERIAL PRIMARY KEY,
	language language,
	level level
);

-- companies (IT компании, в которых работают разработчики
CREATE TABLE companies (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	headcount INT NOT NULL
);

-- customers (клиенты, которые являются заказчиками проектов в IT компаниях)
CREATE TABLE customers (
	id SERIAL PRIMARY KEY,
	login VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL
);

-- projects (проекты, на которых работают разработчики)
CREATE TABLE projects (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	github VARCHAR(100) NOT NULL,
	companies_id INT NOT NULL,
	customers_id INT NOT NULL,
	FOREIGN KEY (companies_id) REFERENCES companies(id),
	FOREIGN KEY (customers_id) REFERENCES customers(id)
);

-- связь между таблицами
CREATE TABLE developers_companies (
	developers_id INT NOT NULL,
	companies_id INT NOT NULL,
	FOREIGN KEY (developers_id) REFERENCES developers(id),
	FOREIGN KEY (companies_id) REFERENCES companies(id),
	UNIQUE (developers_id, companies_id)
);

CREATE TABLE developers_skills (
	developers_id INT NOT NULL,
	skills_id INT NOT NULL,
	FOREIGN KEY (developers_id) REFERENCES developers(id),
	FOREIGN KEY (skills_id) REFERENCES skills(id),
	UNIQUE (developers_id, skills_id)
);
