SELECT a.title AS 'Álbum', SUM(s.duration_in_seconds) AS 'Duração'
FROM Trybefy.albums AS a 
INNER JOIN Trybefy.songs AS s 
ON s.album_id = a.id
GROUP BY a.id
ORDER BY SUM(duration_in_seconds) DESC;
