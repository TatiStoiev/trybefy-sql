SELECT u.full_name AS 'Pessoa usuária', COUNT(af.artist_id) AS 'Artistas que segue'
FROM Trybefy.users AS u 
INNER JOIN Trybefy.artists_followers AS af 
ON af.user_id = u.id 
GROUP BY u.full_name
ORDER BY u.full_name ASC; 

