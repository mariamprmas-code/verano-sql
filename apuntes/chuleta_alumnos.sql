SELECT * FROM `alumnos` ORDER BY nota DESC 
SELECT * FROM `alumnos`
INSERT INTO alumnos (nombre, modulo) VALUES ('Carlos' , 'Lenguajes de Marcas'), ('Laura' , 'Sistemas Informáticos');
SELECT * FROM `alumnos`
SELECT * FROM alumnos WHERE modulo = 'Bases de Datos';
UPDATE alumnos SET modulo = 'Bases de Datos' WHERE nombre = 'Carlos';
SELECT * FROM `alumnos`
ALTER TABLE alumnos ADD edad INT, ADD nota DECIMAL(4,2), ADD ciudad VARCHAR(50);
SELECT * FROM `alumnos`
UPDATE alumnos SET edad = 19, nota =9.0, ciudad = 'Almería' WHERE nombre = 'Laura';
SELECT * FROM `alumnos`
SELECT * FROM alumnos ORDER BY nota DESC;
SELECT * FROM alumnos WHERE ciudad = 'Almería' AND edad > 19;
SELECT * FROM `alumnos`
SELECT * FROM alumnos WHERE ciudad = 'Almería' AND edad > 19;
SELECT * FROM alumnos WHERE ciudad = 'Almería' AND edad > 19;
SELECT * FROM alumnos WHERE nota >= 5;
SELECT * FROM alumnos WHERE nota >= 5;
SELECT * FROM alumnos WHERE nota >= 5;
-- Esta sentencia es para hacer una búsqueda de los alumnos aprobados;
-- Para buscar mayores de 19 en Almería SELECT * FROM alumnos WHERE ciudad = 'Almería' AND edad > 19;
-- Para buscar mayores de 19 en Almería SELECT * FROM alumnos WHERE ciudad = 'Almería' AND edad > 19;
SELECT * FROM `alumnos`
/* WHERE: sirve para filtrar (ej. nota>=5) -AND: exige que se cumplan las condiciones - ORDER BY: Ordena resultados (DESC mayor a menor, ASC menor a mayor) */ SELECT * FROM alumnos ORDER BY nota DESC;
SELECT * FROM `alumnos`
SELECT * FROM `alumnos` ORDER BY nota DESC
-- Esta sentencia es para hacer una búsqueda de los alumnos aprobados;
UPDATE alumnos SET email = 'Laura@email.com' WHERE nombre = 'Laura';
SELECT * FROM `alumnos`
SELECT * FROM `alumnos`
SELECT * FROM `alumnos`
-- Para buscar texto parcial, como alumnos cuya ciudad empiece por la letra "A" (el % actúa como comodín) SELECT * FROM alumnos WHERE ciudad LIKE 'A%';
-- Para buscar texto parcial, como alumnos cuya ciudad empiece por la letra "A" (el % actúa como comodín) SELECT * FROM alumnos WHERE ciudad LIKE 'A%';
-- Contar cuántos alumnos hay en total SELECT COUNT(*) AS total_alumnos FROM alumnos;
-- Contar cuántos alumnos hay en total SELECT COUNT(*) AS total_alumnos FROM alumnos;
UPDATE alumnos SET email = 'carlos@email.com' WHERE nombre = 'Carlos';
SELECT * FROM `alumnos`
SELECT * FROM `alumnos`
SELECT ciudad, COUNT(*) AS total_alumnos FROM alumnos GROUP BY ciudad;
SELECT * FROM `alumnos`
-- Calcular la media SELECT AVG(nota) AS nota_media FROM alumnos;
SELECT MAX(nota) AS nota_maxima, MIN(nota) AS nota_minima FROM alumnos;
SELECT * FROM `alumnos`
-- Al ejecutar la búsquedada un resultado único de toda la clase al haber añadido AS;
SELECT modulo, AVG(nota) AS media_modulo FROM alumnos GROUP BY modulo;
