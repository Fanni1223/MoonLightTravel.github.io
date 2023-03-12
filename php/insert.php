<?php
$connect = mysqli_connect("localhost", "root", "", "testing");
$data = json_decode(file_get_contents("php://input"));
if(count($data) > 0){
  $teljes_nev = mysqli_real_escape_string($connect, $data->teljesnev);
  $query = "INSERT INTO foglalas(teljes_nev) VALUES('$teljes_nev')";
  if(mysqli_query($connection, $query)){
    echo"Sikerült";
  }else{
    echo"Hiba";
  }
}

?>