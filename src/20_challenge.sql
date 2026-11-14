SELECT ar.name AS 'Artista', al.title AS 'Álbum', s.title AS 'Música'
FROM Trybefy.artists AS ar
INNER JOIN Trybefy.albums AS al
ON al.artist_id = ar.id
INNER JOIN Trybefy.songs AS s 
ON s.album_id = al.id
WHERE ar.name != 'The Beatles'
ORDER BY ar.name ASC, al.title ASC, s.title ASC;