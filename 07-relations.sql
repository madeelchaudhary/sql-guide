--
--
-- CREATE TABLE buildings (
--     id TINYINT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(255) NOT NULL
-- );
--
-- CREATE TABLE teams (
--     id TINYINT AUTO_INCREMENT,
--     name VARCHAR(255) NOT NULL,
--     building_id TINYINT REFERENCES buildings (id) ON DELETE
--     SET NULL,
--         PRIMARY KEY (id)
-- );
--
-- CREATE TABLE employees (
--     id TINYINT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(150) NOT NULL,
--     last_name VARCHAR(150) NOT NULL,
--     birth_date DATE NOT NULL,
--     email VARCHAR(255) NOT NULL UNIQUE,
--     team_id TINYINT REFERENCES teams (id) ON DELETE
--     SET NULL
-- );
--
-- CREATE TABLE intranet_accounts (
--     id TINYINT AUTO_INCREMENT PRIMARY KEY,
--     email VARCHAR(255) REFERENCES employees (email) ON DELETE CASCADE,
--     password VARCHAR(100) NOT NULL
-- );
--
-- CREATE TABLE projects (
--     id TINYINT PRIMARY KEY AUTO_INCREMENT,
--     title VARCHAR(255) NOT NULL
-- );
--
-- CREATE TABLE employees_projects (
--     id SMALLINT PRIMARY KEY AUTO_INCREMENT,
--     project_id TINYINT REFERENCES projects (id) ON DELETE CASCADE,
--     employee_id TINYINT REFERENCES employees (id) ON DELETE CASCADE
-- );
--
--
-- SELECT *
-- FROM relations.employees AS e
--     LEFT JOIN relations.employees_projects AS ep ON e.id = ep.employee_id
--     LEFT JOIN relations.projects AS p ON p.id = ep.project_id;
-- SELECT *
-- FROM relations.employees AS e
--     JOIN relations.teams AS t ON t.id = e.team_id
-- WHERE t.id = 2;
--
-- SELECT e.id,
--     e.first_name,
--     e.last_name,
--     t.name,
--     b.name
-- FROM relations.employees AS e
--     JOIN relations.teams AS t ON t.id = e.team_id
--     JOIN relations.buildings AS b ON b.id = t.building_id
-- WHERE b.id = 3;
UPDATE employees
SET email = 'max@max.com'
WHERE email = 'max@test.com'