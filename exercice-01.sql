-- Exo 1
-- Requêtes simples en lecture

-- Code 1.1
-- Voici la requête qui permet de lister tous les tags
SELECT *
FROM tag;

-- Exo 1.1
-- Écrivez la requête qui permet de lister tous les students
SELECT * FROM student;

-- Exo 1.2
-- Écrivez la requête qui permet de lister tous les projects
SELECT * FROM project;

-- Exo 1.3
-- Écrivez la requête qui permet de lister le student dont l'id est `2`
SELECT * FROM student WHERE id=2;

-- Exo 1.4
-- Écrivez la requête qui permet de lister les students dont l'id n'est pas `2`
SELECT * FROM student WHERE id!=2;

-- Exo 1.5
-- Écrivez la requête qui permet de lister le project dont l'id est `3`
SELECT * FROM project WHERE id=3;

-- Exo 1.6
-- Écrivez la requête qui permet de lister les projects dont l'id n'est pas `3`
SELECT * FROM project WHERE id!=3;

-- Exo 1.7
-- Écrivez la requête qui permet de lister les students dont l'email contient la chaîne de caractères `.com`
SELECT * FROM student WHERE email LIKE '%.com';

-- Exo 1.8
-- Écrivez la requête qui permet de lister les students dont la date de création est antérieure au 10 janvier 2021 inclus
SELECT * FROM student WHERE created_at < '2021-01-10 00:00:00';

-- Exo 1.9
-- Écrivez la requête qui permet de lister les projets dont la description contient pas la chaîne de caractères `Dolores`
SELECT * FROM project WHERE client_name NOT LIKE '%Dolores%';

-- Exo 1.10
-- Écrivez la requête qui permet de lister les projets dont la date de création est postérieure au 1er juillet 2021 inclus
SELECT * FROM project WHERE start_date >= '2021-07-01 00:00:00';

-- Exo 1.11
-- Écrivez la requête qui permet de lister les students ayant un projet
SELECT * FROM student WHERE project_id IN (SELECT id FROM project); -- Si on souhaite vérifier que le projet existe bel et bien
-- Ou
SELECT * FROM student WHERE project_id IS NOT NULL; -- Si on ne souhaite pas vérifier que le project_id existe bien.

-- Exo 1.12
-- Écrivez la requête qui permet de lister les students n'ayant pas de projet
SELECT * FROM student WHERE project_id NOT IN (SELECT id FROM project) OR project_id IS NULL;
SELECT * FROM student WHERE project_id IS NULL;
