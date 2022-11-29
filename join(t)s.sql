SELECT * FROM Restaurant_Table AS rt
JOIN Restaurant AS r ON r.id = rt.restaurant_id
LEFT JOIN Reservation AS rsv ON rsv.restaurant_table_id = rt.id;

SELECT * FROM Restaurant_Table AS rt
JOIN Restaurant AS r ON r.id = rt.restaurant_id
LEFT JOIN Reservation AS rsv ON rsv.restaurant_table_id = rt.id;
WHERE rsv.restaurant_table_id IS NULL;

SELECT * FROM Restaurant_Table AS rt
JOIN Restaurant AS r ON r.id = rt.restaurant_id
JOIN Reservation AS res ON res.restaurant_table_id = rt.id
WHERE r.id = 1;

SELECT * FROM Employee AS e
JOIN Employment AS emp ON emp.employee_id = e.id
JOIN Employee_Position AS ep ON ep.id = emp.employee_position_id
JOIN Restaurant AS r ON r.id = emp.restaurant_id;

SELECT * FROM Employee AS e
LEFT JOIN Employment AS emp ON emp.employee_id = e.id
LEFT JOIN Employee_Position AS ep ON emp.employee_position_id = ep.id
LEFT JOIN Restaurant AS r ON r.id = emp.restaurant_id
WHERE emp.id IS NULL;

SELECT * FROM Employee AS e
JOIN Employment AS emp ON emp.employee_id = e.id
GROUP BY e.id
HAVING COUNT(emp.id) >= 2;

SELECT * FROM Restaurant AS r
CROSS JOIN Employee AS e;