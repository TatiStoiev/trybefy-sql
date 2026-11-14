SELECT p.name AS 'Plano', COUNT(u.plan_id) AS 'Quantidade de usuários'
FROM Trybefy.plans AS p  
INNER JOIN Trybefy.users AS u 
ON p.id = u.plan_id
GROUP BY p.name 
ORDER BY p.name ASC;