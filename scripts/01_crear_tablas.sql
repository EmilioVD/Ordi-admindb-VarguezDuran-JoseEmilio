USE nueva_db;


CREATE TABLE IF NOT EXISTS aseguradoras (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(150) NOT NULL,
  telefono VARCHAR(20),
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN DEFAULT 1
);


CREATE TABLE IF NOT EXISTS medicos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellidos VARCHAR(150) NOT NULL,
  especialidad VARCHAR(100),
  cedula VARCHAR(50),
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN DEFAULT 1
);


CREATE TABLE IF NOT EXISTS sedes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  ciudad VARCHAR(100),
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN DEFAULT 1
);


CREATE TABLE IF NOT EXISTS pacientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellidos VARCHAR(150) NOT NULL,
  fecha_nacimiento DATE,
  telefono VARCHAR(20),
  id_aseguradora INT,
  id_medico_primario INT,
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN DEFAULT 1,
  FOREIGN KEY(id_aseguradora) REFERENCES aseguradoras(id),
  FOREIGN KEY(id_medico_primario) REFERENCES medicos(id)
);


CREATE TABLE IF NOT EXISTS ingresos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_paciente INT NOT NULL,
  id_sede INT NOT NULL,
  fecha_ingreso DATETIME NOT NULL,
  fecha_egreso DATETIME,
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN DEFAULT 1,
  FOREIGN KEY(id_paciente) REFERENCES pacientes(id),
  FOREIGN KEY(id_sede) REFERENCES sedes(id)
);

CREATE TABLE IF NOT EXISTS medicamentos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(150),
  presentacion VARCHAR(100),
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN DEFAULT 1
);


CREATE TABLE IF NOT EXISTS consultas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_paciente INT NOT NULL,
  id_medico INT NOT NULL,
  id_sede INT NOT NULL,
  fecha_consulta DATETIME,
  diagnostico VARCHAR(255),
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN DEFAULT 1,
  FOREIGN KEY(id_paciente) REFERENCES pacientes(id),
  FOREIGN KEY(id_medico) REFERENCES medicos(id),
  FOREIGN KEY(id_sede) REFERENCES sedes(id)
);


CREATE TABLE IF NOT EXISTS consulta_medicamentos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_consulta INT NOT NULL,
  id_medicamento INT NOT NULL,
  dosis VARCHAR(50),
  created_at DATETIME,
  created_by VARCHAR(50),
  updated_at DATETIME,
  updated_by VARCHAR(50),
  active BOOLEAN DEFAULT 1,
  FOREIGN KEY(id_consulta) REFERENCES consultas(id),
  FOREIGN KEY(id_medicamento) REFERENCES medicamentos(id)
);
