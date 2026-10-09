CREATE TABLE job_applied (
    job_id INT
    applied_sent_date DATE,
    custom_resume BOOLEAN,
    resume_file_name VARCHAR(255),
    cover_letter_sent BOOLEAN,
    cover_letter_file_name VARCHAR(255),
    STATUS VARCHAR(50),
);

SELECT * 
FROM job_applied;