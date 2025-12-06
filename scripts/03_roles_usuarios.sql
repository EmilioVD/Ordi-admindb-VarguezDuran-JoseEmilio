USE mysql;

CREATE ROLE IF NOT EXISTS rol_doctor;
CREATE ROLE IF NOT EXISTS rol_enfermero;
CREATE ROLE IF NOT EXISTS rol_aux_almacen;

GRANT SELECT, INSERT ON nueva_db.* TO rol_doctor;
GRANT SELECT ON nueva_db.* TO rol_enfermero;
GRANT SELECT, INSERT, DELETE ON nueva_db.* TO rol_aux_almacen;

CREATE USER IF NOT EXISTS 'doctor_app'@'%' IDENTIFIED BY 'doctor123';
CREATE USER IF NOT EXISTS 'enfermero_app'@'%' IDENTIFIED BY 'enfer123';
CREATE USER IF NOT EXISTS 'aux_almacen_app'@'%' IDENTIFIED BY 'aux123';

GRANT rol_doctor TO 'doctor_app'@'%';
GRANT rol_enfermero TO 'enfermero_app'@'%';
GRANT rol_aux_almacen TO 'aux_almacen_app'@'%';


SET DEFAULT ROLE rol_doctor      TO 'doctor_app'@'%';
SET DEFAULT ROLE rol_enfermero   TO 'enfermero_app'@'%';
SET DEFAULT ROLE rol_aux_almacen TO 'aux_almacen_app'@'%';

FLUSH PRIVILEGES;
