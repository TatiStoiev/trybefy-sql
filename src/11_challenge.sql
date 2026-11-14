SELECT
    al.title AS 'Album', 
    al.release_year AS 'Ano de lançamento',
    ar.name AS 'Artista'
 FROM Trybefy.albums AS al
 INNER JOIN Trybefy.artists AS ar
 ON al.artist_id = ar.id 
 WHERE al.title LIKE '%you%'
 ORDER BY YEAR(al.release_year) ASC;