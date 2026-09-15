<?php
// Datos de conexión a MySQL en XAMPP
$servidor = "localhost";
$usuario = "root";
$password = "";
$base_datos = "instituto";
// Crear la conexión usando PDO
try {
    $conexion = new PDO("mysql:host=$servidor;dbname=$base_datos;charset=utf8", $usuario, $password,
    [ PDO:: ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION 
    ]);
   // Activamos las excepciones para que nos avise si hay fallos
} catch (PDOException $e) {
    // Si la conexion falla, muestra el error y detiene la página
    echo "Error en la conexión: " . $e->getMessage();
    exit();
}
?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Listado de Asignaturas - Instituto</title>
        <!-- ============================================
        2. ESTILOS VISUALES (CSS)
        ============================================= -->
        <style>
            body  font-family: Arial, sans-serif; margin: 40px; background-color: #f4f4f9; 
            h1  { color: #333; text-align: center; }
            /* Damos diseño a la tabla: ancho completo, líneas y sombra */
            table  width: 100%; border-collapse: collapse; margin-top: 20px; background: #fff; box-shadow: 0 2px 5px rgba(0,0,0,0.1); 
            th, td { padding: 12px 15px; border: 1px solid #ddd; text-align: left; }
            th { background-color: #007bff; color: white; }  /* Cabecera <azul></azul>
            tr:nth-child(even) { background-color: #f9f9f9; } /* Filas alternas con color suave */
            </style>
            </head>
            <body>
                <h1>Listado de Asignaturas del Instituto</h1>
                <!-- ============================================ -->
                 3. ESTRUCTURA DE LA TABLA (HTML)
                 <table>
                    <tr>
                        <!-- Creamos las columnas fijas de la cabecera -->
                         <th>ID</th>
                         <th>Nombre de la Asignatura</th>
                         <th>Profesor</th>
                         <th>Horas</th>
                         <th>Aula</th>
</tr>
<?php
// ============================================
// 4. CONSULTA Y BUCLE PARA PINTAR DATOS (PHP)
// ============================================
// 4.1 Preparamos la consulta SQL para traernos todo de la tabla 'asignaturas'
$sql = "SELECT * FROM asignaturas";
// 4.2 Ejecutamos la consulta contra la base de datos
$resultado = $conexion->query($sql);
// 4.3 Recorremos cada fila que nos devuelve la base de datos con un bocle foreach
foreach ($resultado as $fila) {
    // Abrimos una fila de HTML por cada registro
    echo "<tr>";
    // Imprimimos cada columna de la base de datos dentro de su celda (td) correspondiente
    echo "<td>" . $fila['id'] . "</td>";
    echo "<td>" . $fila['nombre'] . "</td>";
    echo "<td>" . $fila['profesor'] . "</td>";
    echo "<td>" . $fila['horas'] . "</td>";
    echo "<td>" . $fila['aula'] . "</td>";
    echo "</tr>";    // Cerramos la fila
}
?>
</table>
<!-- ===================================================
 CHULETA DE COMANDOS PHP & MYSQL (PDO):
 =======================================================
 1. Conexión:
 new PDO("mysql:host=$servidor;dbname=$base_datos;charset=utf8", $usuario, $password)
2. Consulta y ejecución:
$resultado = $conexion->query("SELEC * FROM tabla");
3. Recorrer datos:
foreach ($resultado as $fila) { ... }
4. Depurar (ver errores o variables):
var_dump($variable);
print_r($variable);
======================================================= --> 
</body>
</html>


