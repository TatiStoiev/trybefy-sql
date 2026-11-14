SELECT ar.name AS 'Artista', COUNT(h.id) AS 'Quantidade de músicas reproduzidas'
FROM Trybefy.artists AS ar
INNER JOIN Trybefy.albums AS al 
ON al.artist_id = ar.id
INNER JOIN Trybefy.songs AS s 
ON s.album_id = al.id
INNER JOIN Trybefy.history_play_songs AS h 
ON h.song_id = s.id
GROUP BY ar.name 
HAVING COUNT(h.id) > 10
ORDER BY ar.name ASC; 