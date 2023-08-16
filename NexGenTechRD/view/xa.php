
<?php
// Datos a insertar en la base de datos
$fullname = "Juan Pérez";
$phone = "555-1234";
$address = "Calle Principal, Ciudad";
$application_date = "2023-08-02"; // Fecha en formato 'YYYY-MM-DD'
$solicited_service = "Diseño de sitio web";

// Conexión a la base de datos (reemplaza con tus propios datos de conexión)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "demo";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Crear el comando INSERT SQL
$sql = "INSERT INTO client (fullname, phone, address, application_date, solicited_service)
        VALUES ('$fullname', '$phone', '$address', '$application_date', '$solicited_service')";

// Ejecutar el comando INSERT
if ($conn->query($sql) === TRUE) {
    echo "Nuevo registro insertado correctamente.";
} else {
    echo "Error al insertar el registro: " . $conn->error;
}

// Cerrar la conexión a la base de datos
$conn->close();
?>
