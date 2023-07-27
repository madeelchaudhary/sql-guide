-- INSERT INTO tb_name (cols_list -- optional if not specified then need data for all columns in same order as table) VALUES (data for columsn), (multiple records are seperated by comma); 
--
--
INSERT INTO employers (
        company_name,
        company_address,
        yearly_revenue,
        is_hiring
    )
VALUES (
        'Behance Inc',
        'Central street, London',
        123.82,
        TRUE
    ),
    (
        'Github Inc',
        'Silicon Valley, Chicago',
        82.82,
        NULL
    );
-- INSERT INTO employers (
--         company_name,
--         company_address,
--         yearly_revenue
--     )
-- VALUES ('Github Inc', 'Silicon Valley, Chicago', 82.82);
INSERT INTO users (
        full_name,
        current_status,
        yearly_salary
    )
VALUES ('Mark Wood', 'self-employed', 28000);
INSERT INTO conversations (
        user_id,
        employer_id,
        message
    )
VALUES (1, 2, 'Hi Github Team, I am Mark.');