SELECT menu.id
FROM menu
WHERE NOT EXISTS (SELECT person_order.menu_id FROM person_order WHERE person_order.menu_id=menu.id)
ORDER BY menu.id ASC;
