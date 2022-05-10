SELECT
  COUNT(hr.cancao_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_reproducao AS hr ON u.usuario_id = hr.usuario_id
WHERE u.usuario = 'Bill';
  