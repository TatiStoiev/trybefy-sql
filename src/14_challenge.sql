SELECT 
    art.name AS 'Artista',
    GROUP_CONCAT(a.title SEPARATOR ',' ) AS 'Álbuns'
FROM Trybefy.artists AS art  
    INNER JOIN Trybefy.albums AS a ON art.id = a.artist_id
GROUP BY art.name
ORDER BY art.name ASC;

