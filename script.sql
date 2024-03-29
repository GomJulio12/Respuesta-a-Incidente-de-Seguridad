CREATE DATABASE UNIVERSIDAD;
USE UNIVERSIDAD

CREATE TABLE UNI_DEPENDENCIAS (
    Clave_Dependencia VARCHAR(20) NOT NULL PRIMARY KEY,
    Nombre_Dependencia VARCHAR(60) NOT NULL,
    Direccion VARCHAR(100) NOT NULL
);

INSERT INTO UNI_DEPENDENCIAS (Clave_Dependencia, Nombre_Dependencia, Direccion) 
VALUES ('FCA-CI', 'Facultad de Contaduría y Administración Campus I', 'Blvd. Belisario Domínguez, Km. 1081, Terán, Tuxtla Gutiérrez, Chiapas, México, 29050'),
	   ('FA-CI', 'Facultad de Arquitectura Campus I', 'Blvd. Belisario Domínguez, Km. 1081, Terán, Tuxtla Gutiérrez, Chiapas, México, 29050'),
		('FI-CI', 'Facultad de Ingeniería Campus I', 'Blvd. Belisario Domínguez, Km. 1081, Terán, Tuxtla Gutiérrez, Chiapas, México, 29050'),
		('FH-CII', 'Facultad de Humanidades Campus II', '-----------');

CREATE TABLE UNI_CARRERAS (
    Clave_Carrera VARCHAR(20) NOT NULL PRIMARY KEY,
    Nombre_Carrera VARCHAR(60) NOT NULL
);

INSERT INTO uni_carreras (Clave_Carrera, Nombre_Carrera) VALUES
(1, 'Licenciatura en Contaduria'),
(2, 'Licenciatura en Administración'),
(3, 'Licenciatura en Gestión Turística'),
(4, 'Licenciatura en Sistemas Computacionales'),
(5, 'Licenciatura en Ingeniería en Desarrollo y Tecnologías de Software'),
(6, 'Ciencias de la Salud'),
(7, 'Enseñanza de Lenguas'),
(8, 'Ciencias del Diseño y de la Construcción'),
(9, 'Ciencias Sociales y Humanidades'),
(10, 'Ciencias Administrativas y Contables'),
(11, 'Sociedad e Interculturalidad'),
(12, 'Educación a Distancia'),
(13, 'Red de Centro Universitarios');

		Select * from UNI_MATERIAS

CREATE TABLE UNI_MATERIAS (
    Clave_Materia VARCHAR(10) NOT NULL PRIMARY KEY,
    Descripcion VARCHAR(100) NOT NULL
);

INSERT INTO uni_materias (Clave_Materia, Descripcion) VALUES
('1', 'Conmutadores y Redes Inalámbricas'),
('2', 'Desarrollo de Aplicaciones Web y Móviles'),
('3', 'Inteligencia Artificial'),
('4', 'Seguridad en Computo - Optativa 1'),
('5', 'Análisis de Vulnerabilidades - Optativa 2'),
('6', 'Sistemas Operativos'),
('7', 'Administracion de Sistemas Operativos'),
('8', 'Computo Distribuido'),
('9', 'Graficacion'),
('10', 'Opt. 3 - Respuesta a Incidentes de Seguridad'),
('11', 'Opt. 4 - Computo Forense'),
('12', 'Opt. 5 - Startup Tecnologicas'),
('13', 'Taller de Investigacion en las Ciencias Computacionales');

CREATE TABLE UNI_ALUMNOS (
    Matricula VARCHAR(7) NOT NULL PRIMARY KEY,
    Primer_Apellido VARCHAR(50) NOT NULL,
    Segundo_Apellido VARCHAR(50) NOT NULL,
    Nombre VARCHAR(60) NOT NULL,
    CURP VARCHAR(24) NOT NULL,
    Genero INT NOT NULL,
    Estado_Civil VARCHAR(20) NULL,
    Estado VARCHAR(50) NOT NULL,
    Municipio VARCHAR(50) NOT NULL,
    Colonia VARCHAR(50) NOT NULL,
    Calle VARCHAR(60) NOT NULL,
    Telefono VARCHAR(10) NOT NULL,
    Celular VARCHAR(10) NOT NULL,
    Email VARCHAR(40) NULL,
    F_Nacimiento DATE NOT NULL,
    Clave_Dependencia VARCHAR(20) NOT NULL,
    Clave_Carrera VARCHAR(20) NOT NULL,
    FOREIGN KEY (Clave_Dependencia) REFERENCES UNI_DEPENDENCIAS(Clave_Dependencia),
    FOREIGN KEY (Clave_Carrera) REFERENCES UNI_CARRERAS(Clave_Carrera)
);

INSERT INTO UNI_ALUMNOS (Matricula, Primer_Apellido, Segundo_Apellido, Nombre, CURP, Genero, Estado_Civil, Estado, Municipio, Colonia, Calle, Telefono, Celular, Email, F_Nacimiento, Clave_Dependencia, Clave_Carrera) VALUES
('A200350', 'Gómez', 'Hernández', 'Julio Manuel', 'GOHJ020412HCSMRLB1', 1, 'Soltero', 'Chiapas', ' Tuxtla Gutierrez', 'Juy Juy', 'Canteras 820', 'S/N', '9672433985', 'julio.gomez99@unach.mx', '2002-04-12', 'FCA-CI', '5'),
('A201085', 'Martinez', 'Burciaga', 'Jonathan Isaac', 'MABJ010725HMCRRNA5', 1, 'Soltero', 'Chiapas', 'Tuxtla Gutierrez', '----', '-----', 'S/N', '9611518547', 'jonathan.martinez88@unach.mx', '2001-07-25', 'FCA-CI', '5'),
('A200369', 'Alvarez', 'Gomez', 'Tomas', 'CURP', 1, 'Soltero', 'Chiapas', ' Bochil', '=======', '========', 'S/N', '=======', '', '2001-03-23', 'FCA-CI', '5'),
('A200727', 'Zea', 'Hernández', 'Nestor Horacio', 'CURP', 1, 'Soltero', 'Chiapas', 'Pueblo Nuevo de Solistihuacan', '=====', '=====', 'S/N', '', '', '2002-07-15', 'FCA-CI', '5'),
('A200004', 'Mendoza', 'Gomez', 'Luis Gerardo', 'CURP', 1, 'Soltero', 'Chiapas', '========', '======', '=======', 'S/N', '=======', '=========', '2001-03-11', 'FCA-CI', '5');

SELECT * FROM UNI_ALUMNOS;

CREATE TABLE UNI_PROFESOR (
    Clave_Profesor VARCHAR(10) NOT NULL PRIMARY KEY,
    Primer_Apellido VARCHAR(50) NOT NULL,
    Segundo_Apellido VARCHAR(50) NOT NULL,
    Nombre VARCHAR(50) NOT NULL,
    Email VARCHAR(40) NOT NULL,
    Telefono VARCHAR(10) NOT NULL,
    Clave_Dependencia VARCHAR(20) NOT NULL,
    FOREIGN KEY (Clave_Dependencia) REFERENCES UNI_DEPENDENCIAS(Clave_Dependencia)
);

INSERT INTO uni_profesor (Clave_Profesor, Primer_Apellido, Segundo_Apellido, Nombre, Email, Telefono, Clave_Dependencia) VALUES
(01, 'SANDOVAL', 'ZUÑIGA', 'LUIS MANUEL', 'manuel.sandoval@unach.mx', '123456789', 'FCA-CI'),
(02, 'LOPEZ', 'IBAÑEZ', 'GERARDO', 'glopez@unach.com', '-----', 'FCA-CI'),
(03, 'REGALADO', 'MORENO', 'OBETH', 'obeth.regalado@unach.mx', '----', 'FCA-CI'),
(04, 'NAÑEZ', 'COUTIÑO', 'ADAN', '--------', '-----', 'FCA-CI'),
(05, 'LOPEZ', 'MALDONADO', 'BERNARDO', '----------', '-----', 'FCA-CI'),
(06, 'ROMAN', 'JULIAN', 'REBECA', 'rroman@unach.mx', '--------', 'FCA-CI'),
(07, 'GUTIERREZ', 'ALFARO', 'LUIS', '---------', '----', 'FCA-CI'),
(08, 'RUIZ', 'OVALLE', 'JORGE HUMBERTO', '----------', '------', 'FCA-CI'),
(09, 'GONZALEZ', 'SCARPULLI', 'DANIEL', 'Correo@correo.com', '------', 'FCA-CI'),
(10, 'GONZALEZ', 'SORIA', 'MARIANA PAOLA', 'mgonzalez@universidad.com', '-------', 'FCA-CI'),
(11, 'GUTIERREZ', 'ALFARO', 'LUIS', 'lgutierrez@unach.com', '-------', 'FCA-CI'),
(12, 'TEVERA', 'MANDUJANO', 'JUAN JOSE', 'null', '-----', 'FCA-CI');

SELECT * FROM UNI_GRUPOS;

CREATE TABLE UNI_GRUPOS (
    Clave_Grupo INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Clave_Materia VARCHAR(10) NOT NULL,
    Clave_Carrera VARCHAR(50) NOT NULL,
    Clave_Dependencia VARCHAR(20) NOT NULL,
    Clave_Profesor VARCHAR(10) NOT NULL
);

INSERT INTO UNI_GRUPOS (Clave_Materia,Clave_Carrera,Clave_Dependencia,Clave_Profesor) VALUES
(7,'5','FCA-CI','1'),
(8,'5','FCA-CI','2'),
(9,'5','FCA-CI','1'),
(10,'5','FCA-CI','3'),
(11,'5','FCA-CI','4'),
(12,'5','FCA-CI','5'),
(13,'5','FCA-CI','6');

CREATE TABLE UNI_KARDEX (
    Clave_Kardex INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    Clave_Grupo INT NOT NULL,
    Matricula VARCHAR(7) NOT NULL,
    Semestre INT NOT NULL,
    Calificacion DECIMAL(18, 0) NOT NULL,
    FOREIGN KEY (Clave_Grupo) REFERENCES UNI_GRUPOS(Clave_Grupo),
    FOREIGN KEY (Matricula) REFERENCES UNI_ALUMNOS(Matricula)
);

INSERT INTO UNI_KARDEX (Clave_Grupo, Matricula, Semestre, Calificacion) VALUES
(5, 'A200350', 7,8.33),
(5, 'A201085', 7, 9.14);

SELECT * FROM UNI_KARDEX
