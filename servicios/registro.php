<?php

$codusu=null;
$nomusu=$_POST['nomusu'];
$apeusu=$_POST['apeusu'];
$emausu=$_POST['emausu'];
$pasusu=$_POST['pasusu'];
$estado=1;

$servidor="localhost";
$usuario="root";
$contraseña="usbw";
$bd="test";

$con=mysqli_connect($servidor,$usuario,$contraseña,$bd);
if(!$con)
{
	die("Con se ha podido realizar la conexión: ". mysqli_connect_error() . "<br>");
}
else
{
	mysqli_set_charset($con,"utf8");
	$_SESSION["con"]=$con;
}

$tabla= "CREATE TABLE IF NOT EXISTS pedido$nomusu(
	codpro int(11) NOT NULL AUTO_INCREMENT,
	nompro varchar(50) DEFAULT NULL,
	despro varchar(100) DEFAULT NULL,
	prepro int(6) DEFAULT NULL,
	estado int(11) DEFAULT NULL,
	rutimapro varchar(100) DEFAULT NULL,
	PRIMARY KEY (codpro))";

$consulta="insert into usuario values ('$codusu','$nomusu','$apeusu','$emausu','$pasusu','$estado')";

if($con->query($tabla) === TRUE){

	if ($con->query($consulta) === TRUE) {
		header("Location: ./login.php");
		echo "El usuario ha sido creado";
	}
	else {
		echo "Hubo un error al crear el usuario: " . $con->error;
	}
}
else{
	echo "Ha habido un error: ".$con->error;
}
?>