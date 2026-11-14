SELECT ar.name AS 'Artista'
FROM Trybefy.artists AS ar  
INNER JOIN Trybefy.albums AS al   
ON ar.id = al.artist_id
GROUP BY ar.name
HAVING COUNT(al.id) >= 3
ORDER BY ar.name ASC;
