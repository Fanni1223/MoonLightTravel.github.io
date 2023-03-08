<?php
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "database";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Get the form data
$teljesnev = $_POST['teljesnev'];
$telefonszam = $_POST['telefonszam'];
$email = $_POST['email'];
$evszam = $_POST['evszam'];
$honap = $_POST['honap'];
$nap = $_POST['nap'];
$induloido = $_POST['induloido'];
$erkezoido = $_POST['erkezoido'];
$fogyszam = $_POST['fogyszam'];
$kisagy = $_POST['kisagy'];

// Calculate the total price
$ut_ar = 10000;
$szallas_ar = $fogyszam * 5000;
$total_ar = $ut_ar + $szallas_ar;

// Insert the data into the database
$sql = "INSERT INTO foglalas (teljesnev, telefonszam, email, evszam, honap, nap, induloido, erkezoido, fogyszam, kisagy, total_ar) VALUES ('$teljesnev', '$telefonszam', '$email', '$evszam', '$honap', '$nap', '$induloido', '$erkezoido', '$fogyszam', '$kisagy', '$total_ar')";

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