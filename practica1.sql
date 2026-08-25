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


