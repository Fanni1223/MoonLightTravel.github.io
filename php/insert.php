<?php 
$data = json_decode(file_get_contents("php://input"));
$teljesnev = mysql_real_escape_string($data->$teljesnev);
$telefonszam = mysql_real_escape_string($data->$telefonszam);
$email = mysql_real_escape_string($data->$email);
mysql_connect("localhost", "root", ""); 
mysql_select_db("moonlighttravel");
mysql_query("INSERT INTO foglalas(`nev2`, `telefonsz`, `email`) VALUES('$teljesnev', '$telefonszam', '$email')"); 
?>