-- SECTION D

-- Selecting all record from class_one table
SELECT * from class_one;

-- Updating the class_one table TotalScore column
UPDATE class_one
SET Total_score = Assignment_score + Test_score + Exam_score
WHERE id > 0;
    
-- Updating the class_two table TotalScore column
UPDATE class_two
SET Total_score = Assignment_score + Test_score + Exam_score
WHERE id > 0;

-- Selecting the first FIVE(5) rows from class_two...
SELECT * from class_two
LIMIT 5;

-- Updating the class_three table TotalScore column
UPDATE class_three
SET Total_score = Assignment_score + Test_score + Exam_score
WHERE id > 0;

-- Selecting the first FIVE(5) Rows of class_three..
SELECT * from class_three
LIMIT 5;

-- Selecting Maximum total_score from class_one..
SELECT max(total_score) as Maximum_score
FROM class_one;

-- Selecting Minimum totaL_score from class_one..
SELECT min(total_score) as Minimum_score
FROM class_one;

-- Slicing and Selecting Minimum TotalScore from class_one using SUBQUERIES..
SELECT Last_name, First_name, Gender, Total_score 
FROM class_one
WHERE total_score = (SELECT min(total_score) as Minimum_score
FROM class_one);

-- Slicing and Selecting Maximum TotalScore from class_one using SUBQUERIES..
SELECT Last_name, First_name, Gender, Total_score 
FROM class_one
WHERE total_score = (SELECT max(total_score) as Maximum_score
FROM class_one);

-- Using SQL Case Statement to Grade Score..
SELECT last_name, first_name, total_Score,
CASE
WHEN total_score <= 50 THEN 'D'
WHEN total_score BETWEEN 50 AND 59 THEN 'C'
WHEN total_score BETWEEN 60 AND 69 THEN 'B'
WHEN total_score BETWEEN 70 AND 75 THEN 'A'
ELSE 'A+'
END Grade
FROM class_one;

-- Counting the Total Occurrence of each Grade from "class_one" table
SELECT count(*) as Grade_count,
CASE
WHEN total_score <= 50 THEN 'D'
WHEN total_score BETWEEN 50 AND 59 THEN 'C'
WHEN total_score BETWEEN 60 AND 69 THEN 'B'
WHEN total_score BETWEEN 70 AND 75 THEN 'A'
ELSE 'A+'
END Grade
FROM class_one
GROUP BY CASE
WHEN total_score <= 50 THEN 'D'
WHEN total_score BETWEEN 50 AND 59 THEN 'C'
WHEN total_score BETWEEN 60 AND 69 THEN 'B'
WHEN total_score BETWEEN 70 AND 75 THEN 'A'
ELSE 'A+'
END;
