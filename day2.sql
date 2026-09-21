DROP TABLE IF EXISTS students;

CREATE TABLE students (
    id      INTEGER PRIMARY KEY,
    name    TEXT,
    age     INTEGER,
    city    TEXT,
    marks   INTEGER
);

INSERT INTO students VALUES (1, 'Ram',    20, 'Kathmandu', 85);
INSERT INTO students VALUES (2, 'Shyam',  21, 'Pokhara',   92);
INSERT INTO students VALUES (3, 'Hari',   19, 'Lalitpur',  78);
INSERT INTO students VALUES (4, 'Sita',   22, 'Kathmandu', 95);
INSERT INTO students VALUES (5, 'Gita',   20, 'Dharan',    88);
INSERT INTO students VALUES (6, 'Rama',   23, 'Pokhara',   72);
INSERT INTO students VALUES (7, 'Bikash', 21, 'Kathmandu', 91);
INSERT INTO students VALUES (8, 'Anita',  19, 'Lalitpur',  65);

-- LIMIT
SELECT * FROM students LIMIT 3;
SELECT * FROM students ORDER BY marks DESC LIMIT 3;

-- LIKE
SELECT * FROM students WHERE name LIKE 'S%';
SELECT * FROM students WHERE name LIKE '%a';
SELECT * FROM students WHERE name LIKE '%i%';

-- IN
SELECT * FROM students WHERE city IN ('Kathmandu', 'Pokhara');
SELECT * FROM students WHERE marks IN (85, 92, 95);

-- BETWEEN
SELECT * FROM students WHERE marks BETWEEN 80 AND 95;
SELECT * FROM students WHERE age BETWEEN 19 AND 21;

-- GROUP BY
SELECT city, COUNT(*) FROM students GROUP BY city;
SELECT city, AVG(marks) FROM students GROUP BY city;
SELECT city, MAX(marks) FROM students GROUP BY city;

-- HAVING
SELECT city, COUNT(*) FROM students GROUP BY city HAVING COUNT(*) > 1;
SELECT city, AVG(marks) FROM students GROUP BY city HAVING AVG(marks) > 80;