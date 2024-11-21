-- Vincent Pol S. Agustin
SELECT course_name
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1;