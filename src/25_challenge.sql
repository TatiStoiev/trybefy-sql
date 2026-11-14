SELECT a.title AS 'Álbum', COUNT(h.id) AS 'Quantidade de músicas reproduzidas'
FROM Trybefy.albums AS a
INNER JOIN Trybefy.songs AS s  
ON s.album_id = a.id
INNER JOIN Trybefy.history_play_songs AS h  
ON h.song_id = s.id
GROUP BY a.title
ORDER BY COUNT(h.id) DESC, a.title ASC 
LIMIT 5; 