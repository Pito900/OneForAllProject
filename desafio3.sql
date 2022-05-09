SELECT 
  us.usuario AS usuario,
  COUNT(hrep.cancao_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(c.duracao_segundos)/60, 2) AS total_minutos
FROM SpotifyClone.usuarios AS us
INNER JOIN SpotifyClone.historico_reproducao AS hrep ON us.usuario_id = hrep.usuario_id
INNER JOIN SpotifyClone.cancoes AS c ON hrep.cancao_id = c.cancao_id
GROUP BY
  usuario
ORDER BY
  usuario;