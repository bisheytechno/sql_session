-- Day 1: SELECT, WHERE, ORDER BY

-- Table create
DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id      INTEGER PRIMARY KEY,
    name    TEXT,
    age     INTEGER,
    city    TEXT,
    marks   INTEGER
);

-- Insert data
INSERT INTO students VALUES (1, 'Ram',   20, 'Kathmandu', 85);
INSERT INTO students VALUES (2, 'Shyam', 21, 'Pokhara',   92);
INSERT INTO students VALUES (3, 'Hari',  19, 'Lalitpur',  78);
INSERT INTO students VALUES (4, 'Sita',  22, 'Kathmandu', 95);
INSERT INTO students VALUES (5, 'Gita',  20, 'Dharan',    88);

-- SELECT
SELECT * FROM students;
SELECT name, city FROM students;

-- WHERE
SELECT * FROM students WHERE marks > 85;
SELECT * FROM students WHERE city = 'Kathmandu';
SELECT * FROM students WHERE age = 20 AND city = 'Kathmandu';

-- ORDER BY
SELECT * FROM students ORDER BY marks ASC;
SELECT * FROM students ORDER BY marks DESC;

-- Aggregate
SELECT COUNT(*) FROM students;
SELECT AVG(marks) FROM students;
SELECT MAX(marks) FROM students;
SELECT MIN(marks) FROM students;

-- UPDATE
UPDATE students SET marks = 99 WHERE name = 'Shyam';

-- DELETE
DELETE FROM students WHERE name = 'Gita';