-- Exo 5
-- Requêtes avec jointure « many to many »

-- Exo 5.1
-- Listez tous les students avec leurs tags
SELECT student.id, student.firstname, UPPER(student.lastname) AS lastname, tag.id AS tag_id, tag.name
FROM student
INNER JOIN student_tag ON student.id = student_tag.student_id
INNER JOIN tag ON student_tag.tag_id = tag.id
ORDER BY student.id, tag_id ASC;

-- Exo 5.2
-- Listez tous les tags avec leurs students
SELECT tag.id, tag.name, student.id AS student_id, student.firstname, UPPER(student.lastname) AS lastname
FROM tag
INNER JOIN student_tag ON tag.id = student_tag.tag_id
INNER JOIN student ON student_tag.student_id = student.id
ORDER BY tag.id, student_id ASC;

-- Exo 5.3
-- Listez le student dont l'id est `2` avec ses tags
SELECT student.id, student.firstname, UPPER(student.lastname) AS lastname, tag.id AS tag_id, tag.name
FROM student
INNER JOIN student_tag ON student.id = student_tag.student_id
INNER JOIN tag ON student_tag.tag_id = tag.id
WHERE student.id = 2;

-- Exo 5.4
-- Listez le tag dont l'id est `2` avec ses students
SELECT tag.id, tag.name, student.id AS student_id, student.firstname, UPPER(student.lastname) AS lastname
FROM tag
INNER JOIN student_tag ON tag.id = student_tag.tag_id
INNER JOIN student ON student_tag.student_id = student.id
WHERE tag.id = 2;

