SELECT ar.name AS 'Artista'
FROM Trybefy.artists AS ar  
INNER JOIN Trybefy.artists_followers AS af 
ON af.artist_id = ar.id 
GROUP BY ar.name 
ORDER BY COUNT(af.artist_id) DESC
LIMIT 1;
