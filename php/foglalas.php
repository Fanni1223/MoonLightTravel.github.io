<?php


$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "moonlighttravel";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Get the form data
$nev2 = $_POST['nev2'];
$telefonsz = $_POST['telefonsz'];
$email = $_POST['email'];
$evszam = $_POST['evszam'];
$honap = $_POST['honap'];
$nap = $_POST['nap'];
$oda_ora = $_POST['oda_ora'];
$vissza_ora = $_POST['vissza_ora'];
$fo = $_POST['fo'];
$kisagy = $_POST['kisagy'];


// Calculate the total price
$ut_ar = 10000;
$szallas_ar = $foszam * 5000;
$total_ar = $ut_ar + $szallas_ar;

// Insert the data into the database

$sql = "INSERT INTO foglalas (nev2, telefonsz, email, evszam, honap, nap, oda_ora, vissza_ora, fo, kisagy) VALUES ('$nev2', '$telefonsz', '$email', '$evszam', '$honap', '$nap', '$oda_ora', '$vissza_ora', '$fo', '$kisagy')";

if ($conn->query($sql) === TRUE) {
  $last_id = $conn->insert_id;
  $result = $conn->query("SELECT * FROM foglalas WHERE id = $last_id");
  $data = mysqli_fetch_all($result, MYSQLI_ASSOC);
  echo json_encode($data);
} else {
  echo "Error: " .
  $conn->error;
}

$conn->close();






?>