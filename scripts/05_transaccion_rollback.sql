USE nueva_db;

START TRANSACTION;

INSERT INTO pacientes(nombre,apellidos,fecha_nacimiento,telefono,id_aseguradora,id_medico_primario,created_at,created_by,active)
VALUES ('TestRollback','Error','1990-01-01','9993001',1,1,NOW(),'trx',1);

-- Aqui esta mi error 
INSERT INTO pacientes(id,nombre,apellidos) VALUES (1,'ErrorDuplicado','Rollback');

ROLLBACK;

