USE nueva_db;

START TRANSACTION;

INSERT INTO pacientes(nombre,apellidos,fecha_nacimiento,telefono,id_aseguradora,id_medico_primario,created_at,created_by,active)
VALUES
('Pac1','Commit','1990-01-01','9992001',1,1,NOW(),'trx',1),
('Pac2','Commit','1990-01-01','9992002',2,2,NOW(),'trx',1),
('Pac3','Commit','1990-01-01','9992003',3,3,NOW(),'trx',1),
('Pac4','Commit','1990-01-01','9992004',4,4,NOW(),'trx',1),
('Pac5','Commit','1990-01-01','9992005',5,5,NOW(),'trx',1);

COMMIT;
