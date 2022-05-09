SELECT
  c.cancao AS cancao,
  COUNT(h.data_reproducao) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_reproducao AS h ON c.cancao_id = h.cancao_id
GROUP BY
  cancao
ORDER BY 
  reproducoes DESC,
  c.cancao ASC
LIMIT 2;