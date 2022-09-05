-- developers (хранит данные о разработчиках(имя, возраст, пол и прочее))
CREATE TABLE developers (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
age INT NOT NULL,
sex ENUM ('male', 'female', 'unknown')
);

-- skills (отрасль – Java, C++, C#, JS; уровень навыков - Junior, Middle, Senior)
CREATE TABLE skills (
developers_id INT PRIMARY KEY,
language ENUM ('Java', 'C++', 'C#', 'JS'),
level ENUM ('Junior', 'Middle', 'Senior'),
FOREIGN KEY (developers_id) REFERENCES developers(id)
);

-- companies (IT компании, в которых работают разработчики
CREATE TABLE companies (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
headcount INT NOT NULL
);

-- customers (клиенты, которые являются заказчиками проектов в IT компаниях)
CREATE TABLE customers (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
login VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL
);

-- projects (проекты, на которых работают разработчики)
CREATE TABLE projects (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
github VARCHAR(100) NOT NULL,
companies_id INT,
customers_id INT,
FOREIGN KEY (companies_id) REFERENCES companies(id),
FOREIGN KEY (customers_id) REFERENCES customers(id)
);

-- связь между таблицами
CREATE TABLE developers_companies (
developers_id INT NOT NULL,
companies_id INT NOT NULL,
PRIMARY KEY (developers_id, companies_id),
FOREIGN KEY (developers_id) REFERENCES developers(id),
FOREIGN KEY (companies_id) REFERENCES companies(id)
);