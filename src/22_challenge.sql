SELECT ar.name AS 'Artista', COUNT(s.id) AS 'Quantidade de músicas'
FROM Trybefy.artists AS ar 
INNER JOIN Trybefy.albums AS al 
ON al.artist_id = ar.id
INNER JOIN Trybefy.songs AS s 
ON s.album_id = al.id
GROUP BY ar.id 
ORDER BY COUNT(s.id) DESC, ar.name ASC
LIMIT 3;