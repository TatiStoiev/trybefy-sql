SELECT 
    ar.name AS 'Artista',
    COUNT(al.id) AS 'Quantidade de álbuns'
FROM Trybefy.artists AS ar
INNER JOIN Trybefy.albums AS al
ON ar.id = al.artist_id
GROUP BY ar.name
ORDER BY COUNT(al.id) DESC, ar.name;

