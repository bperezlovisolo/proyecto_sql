USE ed_chile;

SELECT *
FROM asistencia;

SELECT *
FROM localidad;

SELECT 
año
FROM asistencia;

SELECT 
DISTINCT dias_asistidos
FROM asistencia;

ALTER TABLE localidad
RENAME COLUMN rbd TO colegio_id;

ALTER TABLE localidad
MODIFY COLUMN colegio_id INT AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE asistencia
ADD COLUMN asistencia_id INT AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE asistencia
ADD COLUMN colegio_id INT;

ALTER TABLE asistencia
ADD CONSTRAINT fk_asistencia_colegio
FOREIGN KEY (colegio_id)
REFERENCES localidad(colegio_id);

SHOW CREATE TABLE asistencia;

SET SQL_SAFE_UPDATES = 0;

SELECT 
asistencia_id,
nom_deprov_rbd,
gen_alu,
dias_asistidos
FROM asistencia AS a
LEFT JOIN localidad AS l 
ON a.nom_com_rbd = l.nom_com_rbd;

SELECT 
AVG(dias_asistidos)
FROM asistencia;


SELECT 
DISTINCT nom_deprov_rbd
FROM asistencia;

SELECT 
AVG(dias_asistidos) AS avg_magallanes,
nom_deprov_rbd
FROM asistencia
GROUP BY nom_deprov_rbd
HAVING nom_deprov_rbd LIKE "%MAGALLANES%";

SELECT 
AVG(dias_asistidos) AS avg_antofagasta,
nom_deprov_rbd
FROM asistencia
GROUP BY nom_deprov_rbd
HAVING nom_deprov_rbd LIKE "%ANTOFAGASTA - TOCOPILLA%";

SELECT 
nom_deprov_rbd,
ROUND(SUM(dias_asistidos) * 100 / SUM(dias_trabajados), 2) AS pct_asistencia
FROM asistencia
GROUP BY nom_deprov_rbd
HAVING nom_deprov_rbd LIKE "%ANTOFAGASTA - TOCOPILLA%";

SELECT 
nom_deprov_rbd,
ROUND(SUM(dias_asistidos) * 100 / SUM(dias_trabajados), 2) AS pct_asistencia
FROM asistencia
GROUP BY nom_deprov_rbd
HAVING nom_deprov_rbd LIKE "%MAGALLANES%" OR nom_deprov_rbd LIKE "%ANTOFAGASTA - TOCOPILLA%";

SELECT 
DISTINCT (gen_alu),
nom_deprov_rbd,
ROUND(SUM(dias_asistidos) * 100 / SUM(dias_trabajados), 2) AS pct_asistencia
FROM asistencia
GROUP BY 
nom_deprov_rbd,
gen_alu
HAVING nom_deprov_rbd LIKE "%MAGALLANES%";

SELECT 
DISTINCT (gen_alu),
nom_deprov_rbd,
ROUND(SUM(dias_asistidos) * 100 / SUM(dias_trabajados), 2) AS pct_asistencia
FROM asistencia
GROUP BY 
nom_deprov_rbd,
gen_alu
HAVING nom_deprov_rbd LIKE "%ANTOFAGASTA - TOCOPILLA%";


