import sqlite3

conn = sqlite3.connect("students.db")
cursor = conn.cursor()

cursor.execute("""
    CREATE TABLE IF NOT EXISTS students (
        id      INTEGER PRIMARY KEY,
        name    TEXT,
        age     INTEGER,
        city    TEXT,
        marks   INTEGER
    )
""")

students = [
    (1, 'Ram',    20, 'Kathmandu', 85),
    (2, 'Shyam',  21, 'Pokhara',   92),
    (3, 'Hari',   19, 'Lalitpur',  78),
    (4, 'Sita',   22, 'Kathmandu', 95),
    (5, 'Gita',   20, 'Dharan',    88),
]

cursor.executemany("INSERT OR IGNORE INTO students VALUES (?,?,?,?,?)", students)
conn.commit()

cursor.execute("SELECT * FROM students")
for row in cursor.fetchall():
    print(row)

cursor.execute("SELECT * FROM students WHERE marks > 85")
print(cursor.fetchall())

cursor.execute("SELECT * FROM students ORDER BY marks DESC")
print(cursor.fetchall())

conn.close()