CREATE MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
(SELECT pizzeria.name AS pizzeria_name
FROM person_visits
JOIN person ON person.id=person_visits.person_id
JOIN pizzeria ON pizzeria.id=person_visits.pizzeria_id
JOIN menu ON pizzeria.id=menu.pizzeria_id
WHERE person.name LIKE 'Dmitriy' 
AND person_visits.visit_date='2022-01-08' AND menu.price < 800
ORDER BY pizzeria.name);
