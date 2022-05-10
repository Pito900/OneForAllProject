SELECT
  c.cancao AS nome,
  COUNT(dr.usuario_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducao AS dr ON c.cancao_id = dr.cancao_id
INNER JOIN SpotifyClone.usuarios AS us ON us.usuario_id = dr.usuario_id
WHERE us.plano_id = 4 OR us.plano_id = 1
GROUP BY 
	cancao
ORDER BY
	nome ASC,
    reproducoes ASC;

