USE nueva_db;

SET @now = NOW();

INSERT INTO aseguradoras(nombre,telefono,created_at,created_by,active) VALUES
('SeguroPlus','9991000001',@now,'seed',1),
('VidaMax','9991000002',@now,'seed',1),
('ProtecSalud','9991000003',@now,'seed',1),
('TotalCare','9991000004',@now,'seed',1),
('MediSafe','9991000005',@now,'seed',1);

INSERT INTO medicos(nombre,apellidos,especialidad,cedula,created_at,created_by,active) VALUES
('Luis','Hernandez','Cardiología','CED001',@now,'seed',1),
('Ana','Martinez','Pediatría','CED002',@now,'seed',1),
('Carlos','Ramirez','Urgencias','CED003',@now,'seed',1),
('Elena','Gomez','Medicina Interna','CED004',@now,'seed',1),
('Jorge','Santos','Traumatología','CED005',@now,'seed',1);

INSERT INTO sedes(nombre,ciudad,created_at,created_by,active) VALUES
('Norte','Mérida',@now,'seed',1),
('Centro','Mérida',@now,'seed',1),
('Sur','Mérida',@now,'seed',1),
('Norte','Cancún',@now,'seed',1),
('Centro','Campeche',@now,'seed',1);

INSERT INTO pacientes(nombre,apellidos,fecha_nacimiento,telefono,id_aseguradora,id_medico_primario,created_at,created_by,active) VALUES
('Juan','Perez','1985-05-10','9991110001',1,1,@now,'seed',1),
('Maria','Lopez','1990-02-14','9991110002',2,2,@now,'seed',1),
('Carlos','Mendez','1978-09-30','9991110003',3,3,@now,'seed',1),
('Lucia','Diaz','2001-12-01','9991110004',4,4,@now,'seed',1),
('Fernando','Solis','1969-07-22','9991110005',5,5,@now,'seed',1);

INSERT INTO ingresos(id_paciente,id_sede,fecha_ingreso,fecha_egreso,created_at,created_by,active) VALUES
(1,1,'2025-01-05 08:00:00','2025-01-15 10:00:00',@now,'seed',1),
(2,2,'2025-02-10 09:00:00','2025-02-12 12:00:00',@now,'seed',1),
(3,1,'2025-03-01 14:00:00','2025-03-20 09:00:00',@now,'seed',1),
(4,3,'2025-04-05 11:00:00','2025-04-18 08:00:00',@now,'seed',1),
(5,2,'2025-05-01 07:00:00','2025-05-30 16:00:00',@now,'seed',1);

INSERT INTO medicamentos(nombre,presentacion,created_at,created_by,active) VALUES
('Paracetamol','500mg tabletas',@now,'seed',1),
('Ibuprofeno','400mg tabletas',@now,'seed',1),
('Omeprazol','20mg cápsulas',@now,'seed',1),
('Amoxicilina','500mg cápsulas',@now,'seed',1),
('Enoxaparina','40mg inyectable',@now,'seed',1);

INSERT INTO consultas(id_paciente,id_medico,id_sede,fecha_consulta,diagnostico,created_at,created_by,active) VALUES
(1,1,1,'2025-06-01 10:00:00','Fiebre',@now,'seed',1),
(2,2,2,'2025-06-05 09:30:00','Dolor',@now,'seed',1),
(3,3,2,'2025-06-10 11:15:00','Gastritis',@now,'seed',1),
(4,4,3,'2025-06-10 12:00:00','Infección',@now,'seed',1),
(5,5,1,'2025-06-20 08:45:00','Post-operatorio',@now,'seed',1),
(1,1,1,'2025-06-20 18:00:00','Dolor muscular',@now,'seed',1);

INSERT INTO consulta_medicamentos(id_consulta,id_medicamento,dosis,created_at,created_by,active)
VALUES
(1,1,'1 c/8h',@now,'seed',1),
(2,1,'1 c/8h',@now,'seed',1),
(3,3,'1 c/24h',@now,'seed',1),
(4,2,'1 c/12h',@now,'seed',1),
(5,5,'40mg/día',@now,'seed',1),
(6,1,'1 c/8h',@now,'seed',1);
