SELECT s.title AS 'Título'
FROM Trybefy.songs AS s  
INNER JOIN Trybefy.albums AS a  
ON s.album_id = a.id  
WHERE a.title = 'Thriller'
GROUP BY s.title 
ORDER BY s.title ASC;
