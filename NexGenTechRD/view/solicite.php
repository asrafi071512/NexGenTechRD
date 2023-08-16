<?php
require_once "../model/config.php";

 if(isset( $_REQUEST['create'])){
    // Validate Data
$fullname = $_POST["fullname"];
$phone = $_POST["phone"];
$address = $_POST["address"];
$application_date = $_POST["application_date"];
$solicited_service = $_POST["solicited_service"];

// Verificar la conexión
if ($link->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Crear el comando INSERT SQL
$sql = "INSERT INTO client (fullname, phone, address, application_date, solicited_service)
        VALUES ('$fullname', '$phone', '$address', '$application_date', '$solicited_service')";

// Ejecutar el comando INSERT
if ($link->query($sql) === TRUE) {
    echo ("<script>
                alert('Solicitud realizada con exito');
            </script> ");
     $link->close();
    header('location:../');
} else {
    echo "Error al insertar el registro: " . $link->error;
}
// Cerrar la conexión a la base de datos
$link->close();
 }




?>