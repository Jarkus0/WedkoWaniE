-- STOLIKI KTORE MAJA REZERWACJE
SELECT * FROM Restaurant_Table as rt
JOIN Restaurant AS r ON r.id = rt.restaurant_id
JOIN Reservation AS rsv ON rsv.restaurant_table_id = rt.id
WHERE r.id =1;

-- WSZYSTKICH PRACOWNIKOW DANEJ RESTAURACJI
SELECT * FROM Employee AS e
JOIN Employement AS emp on emp.employee_id = e.id
JOIN Employee_Position AS emppos ON emp.employee_position_id = emppos.id
JOIN Restaurant AS r ON r.id = emp.restaurant_id
WHERE r.id =1;

-- PRACOWNIKOW NIE ZATRUDNIONYCH
SELECT * FROM Employee AS e
LEFT JOIN Employement AS emp ON emp.employee.id = e.id
LEFT JOIN Employee_Position AS emppos ON emp.employee_position_id = emppos.id
LEFT JOIN Restaurant AS r ON r.id = emp.restaurant_id
WHERE emp.id IS NULL;

-- CROSS JOIN
SELECT e.first_name, e.last_name,  r.name FROM Employee AS e
CROSS JOIN Restaurant as r;

-- STOLIKI WSZYSTKIE I REZERWACJE JESLI ISTNIEJA
SELECT * FROM Restaurant_Table AS rt
JOIN Restaurant