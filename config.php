<?php
$serverinimi = "localhost"; 
$kasutajanimi = "kvare"; 
$parool = "parool"; 
$andmebaas = "muusikapood"; 
$uhendus = new mysqli($serverinimi, $kasutajanimi, $parool, $andmebaas);
if ($uhendus-> connect_error) {
    die("Ei saanud uhendada " . $uhendus->connect_error);
}
?>
