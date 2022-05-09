SELECT
  MIN(v.valor_plano) AS faturamento_minimo,
  MAX(v.valor_plano) AS faturamento_maximo,
  ROUND(AVG(v.valor_plano), 2) AS faturamento_medio,
  SUM(v.valor_plano) AS faturamento_total
FROM SpotifyClone.usuarios AS us
INNER JOIN SpotifyClone.planos AS v ON us.plano_id = v.plano_id;