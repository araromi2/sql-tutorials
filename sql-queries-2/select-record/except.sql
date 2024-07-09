SELECT id, name, textbook, credits, is_active, department_id
FROM Course
EXCEPT
SELECT c.id, c.name, c.textbook, c.credits, c.is_active, c.department_id
FROM Course c
JOIN Registration r ON c.id = r.course_id;
