SELECT 
    u.full_name AS 'Nome completo', 
    u.email AS 'E-mail', 
    p.name AS 'Plano' 
FROM Trybefy.users AS u
INNER JOIN Trybefy.plans AS p
ON u.plan_id = p.id
ORDER BY u.full_name ASC;

