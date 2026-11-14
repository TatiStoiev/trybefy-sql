SELECT s.title AS 'Título', s.duration_in_seconds AS 'Duração', a.title AS 'Álbum'
FROM Trybefy.songs AS s 
INNER JOIN Trybefy.albums AS a  
ON s.album_id = a.id
WHERE s.duration_in_seconds BETWEEN 300 AND 480
ORDER BY s.duration_in_seconds ASC
