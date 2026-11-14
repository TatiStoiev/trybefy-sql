SELECT title AS 'Título', duration_in_seconds AS 'Duração'
FROM Trybefy.songs  
WHERE duration_in_seconds <= 240
ORDER BY duration_in_seconds ASC;
