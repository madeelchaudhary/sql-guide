-- Primary keys can span multiple columns
-- Primary keys containing  multiple columns called composite key
-- The unique identification cirteria of each row is the combination of these columns
-- Surrogate key acts as a unique primary identifier but it isn't the real unique identification criteria
--
-- Syntax
CREATE TABLE tb_name (
    -- cols_list ...,
    PRIMARY KEY (col_1, col_1)
);
--
-- Foreign Key Syntax
CREATE TABLE tb_name (
    -- cols_list ...,
    FOREIGN KEY (this_col_1, this_col_2) REFERENCES reference_tab (refer_col_1, refer_col_2) -- Events and Actions
);