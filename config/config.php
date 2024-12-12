

<?php
$usuario = "root"; 
$password = "123"; 
$servidor = "localhost";
$basededatos = "tienda";


$con = mysqli_connect($servidor, $usuario, $password, $basededatos);


if (!$con) {
    die("Error al conectar a la Base de Datos: " . mysqli_connect_error());
}


