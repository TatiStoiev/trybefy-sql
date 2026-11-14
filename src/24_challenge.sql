SELECT u.full_name AS 'Nome', COUNT(h.id) AS 'Quantidade de músicas reproduzidas'
FROM Trybefy.users AS u
INNER JOIN Trybefy.history_play_songs AS h
ON h.user_id = u.id
GROUP BY u.full_name
ORDER BY COUNT(h.id) DESC, u.full_name ASC;