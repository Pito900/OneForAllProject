SELECT
  u.usuario AS usuario,
  IF(MAX(YEAR(h.data_reproducao)) >= 2021, 'usuario ativo', 'usuario inativo') AS condicao_usuario
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_reproducao AS h ON u.usuario_id = h.usuario_id
GROUP BY
  usuario
ORDER BY
  usuario;
  