-- CREATE DATABASE [IF NOT EXISTS not supported by Postgres] db_name CHARACTER SET ch_set COLLATE collate_name -- creating a database
--
--
-- DROP DATABASE [IF EXISTS not supported by Postgres] db_name -- Delete a database;
-- SHOW DATABASES -- not supported by postgres ## View databases;
-- USE db_name -- not supported by Postgres ## Switch databases;
-- SHOW CREATE DATABASE db_name -- not supported by Postgres ## Get full database info;
--
--
-- CREATE TABLE tb_name [IF NOT EXISTS supported by both] (
--     cols_list,
--     CONSTRAINTS
-- ) ENGINE = engine_name -- creating a table;
-- ALTER TABLE tb_name RENAME TO new_tb_name -- rename a table;
-- DROP TABLE [IF EXISTS supported by both] tb_name -- delete a table;
--
--
-- ALTER TABLE tb_name ADD col_name col_define -- adding a column;
-- ALTER TABLE tb_name ALTER COLUMN col_name col_define -- not supported by MySQL ## SET CONSTRAiNT or DROP CONSTRAINT;
-- ALTER TABLE tb_name MODIFY COLUMN col_name col_define -- Modify column in MySQL;
-- ALTER TABLE tb_name CHANGE COLUMN `old_col_name` `new_col_name` data_type col_define -- only work in MySQL;
-- ALTER TABLE tb_name ADD PRIMARY KEY -- add primary key on existying table;
-- ALTER TABLE tb_name RENAME COLUMN col_name TO new_col_name -- change column name;
-- ALTER TABLE tb_name DROP COLUMN col_name -- delete a column;
--
--
-- CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'un-employed') -- ## for Postgres Custom type stored in database;
--
--
DROP TABLE users;
DROP TABLE conversations;
DROP TABLE employers;
CREATE TABLE users (
    -- id SERIAl PRIMARY KEY -- For all RDBMS also work in MySQL the datatype will be bigint,
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    full_name VARCHAR(401) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)),
    yearly_salary INT CHECK (yearly_salary > 0),
    current_status ENUM('employed', 'self-employed', 'un-employed') NOT NULL -- current_status employment_status NOT NULL -- for Postgre SQL Custom type
);
CREATE TABLE employers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(255) NOT NULL,
    company_address VARCHAR(350) NOT NULL,
    yearly_revenue FLOAT CHECK (yearly_revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE,
    CONSTRAINT em_unique_entry UNIQUE(company_name, company_address)
);
CREATE TABLE conversations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    employer_id INT,
    message VARCHAR(2000) NOT NULL,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)