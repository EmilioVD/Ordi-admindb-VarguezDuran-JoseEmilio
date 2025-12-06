USE nueva_db;

SELECT
  m.nombre AS medicamento,
  COUNT(*) AS veces_usado,
  DATE(c.fecha_consulta) AS dia
FROM consulta_medicamentos cm
JOIN medicamentos m ON m.id = cm.id_medicamento
JOIN consultas c ON c.id = cm.id_consulta
WHERE c.fecha_consulta BETWEEN '2025-06-01' AND '2025-06-30'
GROUP BY medicamento, dia
ORDER BY veces_usado DESC;
