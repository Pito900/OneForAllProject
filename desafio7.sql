SELECT
  ar.artista AS artista,
  al.album AS album,
  COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS s ON  s.artista_id = ar.artista_id
GROUP BY
  artista,
  album
ORDER BY 
  seguidores DESC, 
  artista ASC, 
  album ASC;