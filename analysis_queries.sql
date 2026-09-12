-- Student Mental Health & Academic Performance Analysis

-- View all students
SELECT *
FROM students;

-- Find students with high stress
SELECT *
FROM students
WHERE Stress_Level = 'High';

-- Calculate average academic score
SELECT AVG(Academic_Score) AS Average_Academic_Score
FROM students;

-- Average academic score by stress level
SELECT Stress_Level,
       AVG(Academic_Score) AS Average_Academic_Score
FROM students
GROUP BY Stress_Level;

-- Average study hours by stress level
SELECT Stress_Level,
       AVG(Study_Hours) AS Average_Study_Hours
FROM students
GROUP BY Stress_Level;

-- Count students by stress level
SELECT Stress_Level,
       COUNT(*) AS Student_Count
FROM students
GROUP BY Stress_Level;

-- Students scoring 80 or higher
SELECT Student_ID,
       Academic_Score
FROM students
WHERE Academic_Score >= 80
ORDER BY Academic_Score DESC;
