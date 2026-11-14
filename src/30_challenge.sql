SELECT ar.name AS 'Artista', COUNT(af.artist_id) AS 'Total de seguidores'
FROM Trybefy.artists AS ar 
INNER JOIN Trybefy.artists_followers AS af  
ON af.artist_id = ar.id
GROUP BY ar.name  
HAVING COUNT(af.artist_id) < 5;