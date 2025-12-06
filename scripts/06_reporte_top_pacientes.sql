USE nueva_db;

SELECT
  p.id,
  CONCAT(p.nombre,' ',p.apellidos) AS paciente,
  SUM(DATEDIFF(fecha_egreso, fecha_ingreso)) AS dias
FROM ingresos i
JOIN pacientes p ON p.id = i.id_paciente
WHERE YEAR(fecha_ingreso)=2025
GROUP BY p.id, paciente
ORDER BY dias DESC
LIMIT 5;
