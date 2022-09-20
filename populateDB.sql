INSERT INTO developers (name, age, sex)
VALUES
('John', 24, 'male'),
('Miranda', 19, 'female'),
('Jennifer', 23, 'female'),
('Sergio', 20, 'male'),
('Valerie', 19, 'unknown'),
('Viola', 20, 'female'),
('Joseph', 22, 'male'),
('Mario', 18, 'male'),
('David', 28, 'male'),
('Harold', 21, 'male');

INSERT INTO skills (language, level)
VALUES
('Java', 'Junior'),
('Java', 'Middle'),
('Java', 'Senior'),
('C++', 'Junior'),
('C++', 'Middle'),
('C++', 'Senior'),
('C#', 'Junior'),
('C#', 'Middle'),
('C#', 'Senior'),
('JS', 'Junior'),
('JS', 'Middle'),
('JS', 'Senior');

INSERT INTO companies (name, headcount)
VALUES
('XLab', 27),
('SoftSkill', 103),
('EPAM', 523),
('ValeraIT', 5),
('GoIT', 56);

INSERT INTO customers (login, email)
VALUES
('Verniel', 'cauzejuquopu-1366@yopmail.com'),
('June', '281av0@gmail.com'),
('Chardl', '8edmfh@outlook.com'),
('Irtani', 't6ro3@gmail.com'),
('Esday', 'dihf8jxk@gmail.com'),
('Gusticol', 'v9dux@gmail.com'),
('Kian', 'mek975vcx@gmail.com'),
('Onatequ', '3xkgmsd9t@gmail.com'),
('Ngiera', 'jxqme@gmail.com'),
('Liass', 'xiuq5olft@gmail.com');

INSERT INTO projects (name, github, companies_id, customers_id)
VALUES
('Project 1', 'https://github.com/', 5, 2),
('Project 2', 'https://github.com/', 1, 4),
('Project 3', 'https://github.com/', 3, 1),
('Project 4', 'https://github.com/', 2, 8),
('Project 5', 'https://github.com/', 4, 3);

INSERT INTO developers_companies (developers_id, companies_id)
VALUES
(1, 1),
(1, 3),
(2, 3),
(3, 3),
(4, 2),
(5, 1),
(6, 4),
(7, 1),
(9, 4),
(9, 5),
(9, 3),
(10, 5);

INSERT INTO developers_skills (developers_id, skills_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(3, 4),
(4, 2),
(5, 8),
(6, 9),
(7, 1),
(8, 10),
(9, 3),
(9, 9),
(10, 11);

INSERT INTO developers_projects (developers_id, projects_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 5),
(7, 4),
(8, 3),
(9, 2),
(10, 1);
