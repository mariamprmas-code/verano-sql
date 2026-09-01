-- 1. Creamos la base de datos para las prácticas 
CREATE DATABASE instituto;
-- 2. Le decimos a MySQL que use esta base de datos
USE instituto;
-- 3. Creamos nuestra primera tabla de asignaturas
CREATE TABLE asignaturas (
id INT AUTO_INCREMENT PRIMARY KEY ,
nombre VARCHAR(50) ,
profesor VARCHAR(50) ,
horas INT
) ;
-- 4. Insertamos nuestros primeros datos
INSERT INTO asignaturas (nombre, profesor, horas)
VALUES ('Lenguajes de Marcas', 'Sonia', 96);
INSERT INTO asignaturas (nombre, profesor, horas)
VALUES ('Bases de Datos' , 'Rafa' , 160);
-- 5. Consultamos los datos que acabamos de guardar
SELECT * FROM asignaturas;
SELECT * FROM asignaturas WHERE horas > 100;
-- Añadir una nueva columna llamada 'aula'
ALTER TABLE asignaturas ADD COLUMN aula VARCHAR(20);
-- Insertar nuevos datos con la nueva columna
INSERT INTO asignaturas  (nombre, profesor, horas, aula)
VALUES ('Programación', 'Carlos', 180, 'Lab 1');
-- Consultar toda la tabla actualizada para comprobarlo
SELECT * FROM asignaturas; 

-- 1. Consulta básica para ver todo

SELECT * FROM asignaturas;

-- 2. Consulta con filtro de numeros,  por ej. ver solo las asignaturas que superan las 100 horas

SELECT * FROM asignaturas WHERE horas > 100;

-- 3. Consulta especifica : ver solo el nombre y profesor de las asignaturas largas

SELECT nombre, profesor FROM asignaturas WHERE horas > 100;


