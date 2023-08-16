<?php
// Include config file
require_once "../view/header.php";
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
                alert('Datos guadados con exito');
            </script> ");
    header('location:user.php');
} else {
    echo "Error al insertar el registro: " . $link->error;
}
// Cerrar la conexión a la base de datos
$link->close();
 }

?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Record</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .wrapper{
            width: 600px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="mt-5">Create Record</h2>
                    <p>Please fill this form and submit to add client record to the database.</p>
                    <form action="#" method="post">
                        <div class="form-group">
                            <label>fullname</label>
                            <input type="text" name="fullname" class="form-control <?php echo (!empty($fullname_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $fullname; ?>">
                            <span class="invalid-feedback"><?php echo $fullname_err;?></span>
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <textarea name="address" class="form-control <?php echo (!empty($address_err)) ? 'is-invalid' : ''; ?>"><?php echo $address; ?></textarea>
                            <span class="invalid-feedback"><?php echo $address_err;?></span>
                        </div>
                        <div class="form-group">
                            <label>phone</label>
                            <input type="text" name="phone" class="form-control <?php echo (!empty($phone_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $phone; ?>">
                            <span class="invalid-feedback"><?php echo $phone_err;?></span>
                        </div>

                         <div class="form-group">
                            <label>Date</label>
                            <input type="date" name="application_date" class="form-control">
                            
                        </div>

                         <div class="form-group">
                            <label>Service</label>
                            <input type="text" name="solicited_service" class="form-control">
                            
                        </div>
                        <input  name="create" type="submit" class="btn btn-primary" value="Submit">
                        <a href="user.php" class="btn btn-secondary ml-2">Cancel</a>
                    </form>
                </div>
            </div>       
        </div>
    </div>
</body>
</html>