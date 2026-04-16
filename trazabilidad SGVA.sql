CREATE DATABASE Trazabilidad_SGVA;
USE Trazabilidad_SGVA;
CREATE TABLE trazabilidad(
	id_trazabilidad INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre_empresa VARCHAR(45) NOT NULL,
    encargado VARCHAR(50) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    fecha_cierre DATE NOT NULL,
    telefono int not null,
    correo VARCHAR (60) not null,
    estado VARCHAR (60) not null
    );
CREATE TABLE Empresa(
	id_empresa INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    codigo_empresa VARCHAR(80) NOT NULL,
    nombre_empresa VARCHAR(70) NOT NULL
    );
DESCRIBE Empresa;

INSERT INTO Empresa (codigo_empresa, nombre_empresa)
VALUES ('COD1','VC@SOFT S A S');

INSERT INTO Empresa (codigo_empresa, nombre_empresa)
VALUES ('COD2','ENERGITEL S.A.S');

INSERT INTO Empresa (nombre_empresa, codigo_empresa)
VALUES ('GENSER POWER COLOMBIA', 'COD3');

INSERT INTO Empresa (nombre_empresa, codigo_empresa)
VALUES ('JAZZPLAT COLOMBIA S A S', 'COD4');

INSERT INTO Empresa (codigo_empresa, nombre_empresa)
VALUES ('COD5', 'ADO TECHNOLOGIES COLOMBIA SAS');

INSERT INTO Empresa
VALUES ('COD6', 'CONTINENTAL ASSIST COLOMBIA S A S - CONTINENTAL ASSIST');

INSERT INTO Empresa
VALUES ('COD7', 'IDENTIDAD TELECOM SAS');

INSERT INTO Empresa
VALUES ('COD8', 'UNIVERSIDAD ANTONIO NARIÑO');

INSERT INTO Empresa
VALUES ('COD9', 'SQDM S A S');

INSERT INTO Empresa
VALUES ('COD10', 'SIMIL TECH SAS');

INSERT INTO Empresa (codigo_empresa, nombre_empresa)
VALUES ('COD11','SATELCO INTERACTIVO S.A.S.'),
('COD12','YES CONTACT & BPO S.A.S. - YES BPO S.A.S.'),
('COD13', 'HIKVISION COLOMBIA S.A.S.'),
('COD14', 'MULLEN LOWE SSP3 S.A.S'),
('COD15', 'WORLD VISION INTERNATIONAL VISION MUNDIAL INTERNACIONAL');
/*Eliminar columnas del id empresas*/
ALTER TABLE Empresa
DROP COLUMN idempresa;
/*segunda forma de elimnar*/
ALTER TABLE Empresa
DROP id_empresa;
/*Añadir llave primaria*/
ALTER TABLE Empresa
ADD PRIMARY KEY(codigo_empresa);
DESCRIBE Empresa;
/*Cambiar nombre empresa*/
ALTER TABLE trazabilidad
CHANGE nombre_empresa COD_EMPRESA VARCHAR (100) NOT NULL;



