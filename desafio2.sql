SELECT 
  COUNT(DISTINCT sca.cancao_id) AS cancoes,
  COUNT(DISTINCT sar.artista_id) AS artistas,
  COUNT(DISTINCT sal.album_id) AS albuns
FROM SpotifyClone.cancoes AS sca
INNER JOIN SpotifyClone.albuns AS sal ON sal.album_id = sca.album_id
INNER JOIN SpotifyClone.artistas AS sar ON sal.artista_id = sar.artista_id