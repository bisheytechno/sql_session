DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;

CREATE TABLE students (
    id      INTEGER PRIMARY KEY,
    name    TEXT,
    age     INTEGER,
    city    TEXT,
    marks   INTEGER
);

CREATE TABLE courses (
    id         INTEGER PRIMARY KEY,
    student_id INTEGER,
    course     TEXT,
    grade      TEXT
);

INSERT INTO students VALUES (1, 'Ram',    20, 'Kathmandu', 85);
INSERT INTO students VALUES (2, 'Shyam',  21, 'Pokhara',   92);
INSERT INTO students VALUES (3, 'Hari',   19, 'Lalitpur',  78);
INSERT INTO students VALUES (4, 'Sita',   22, 'Kathmandu', 95);
INSERT INTO students VALUES (5, 'Gita',   20, 'Dharan',    88);

INSERT INTO courses VALUES (1, 1, 'Python',          'A');
INSERT INTO courses VALUES (2, 1, 'SQL',             'B');
INSERT INTO courses VALUES (3, 2, 'Python',          'A+');
INSERT INTO courses VALUES (4, 3, 'JavaScript',      'B+');
INSERT INTO courses VALUES (5, 4, 'Python',          'A+');
INSERT INTO courses VALUES (6, 5, 'SQL',             'A');
INSERT INTO courses VALUES (7, 6, 'Machine Learning','B');

-- INNER JOIN
SELECT students.name, courses.course, courses.grade
FROM students
INNER JOIN courses
ON students.id = courses.student_id;

-- LEFT JOIN
SELECT students.name, courses.course, courses.grade
FROM students
LEFT JOIN courses
ON students.id = courses.student_id;

-- Alias
SELECT s.name, c.course, c.grade
FROM students s
JOIN courses c
ON s.id = c.student_id;

-- JOIN + WHERE
SELECT s.name, c.course, c.grade
FROM students s
JOIN courses c
ON s.id = c.student_id
WHERE c.course = 'Python';

-- JOIN + ORDER BY
SELECT s.name, s.marks, c.course
FROM students s
JOIN courses c
ON s.id = c.student_id
ORDER BY s.marks DESC;

-- JOIN + GROUP BY
SELECT c.course, COUNT(*) as total_students
FROM students s
JOIN courses c
ON s.id = c.student_id
GROUP BY c.course;