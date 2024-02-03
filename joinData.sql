-- (SECTION E)
-- JOINING TABLES ----
-- JOINING class_one AND class_two together...
SELECT c1.id, c1.last_name, c1.first_name, c1.total_score AS Class_one_total_score, 
 c2.id, c2.last_name, c2.first_name, c2.total_score AS Class_two_total_score
FROM class_one AS c1
JOIN class_two AS c2 
ON c1.id = c2.id
LIMIT 7;