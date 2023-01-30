<?php
$hely = file_get_contents("php://input", true);
$hely = json_decode($hely, true, 512, 0);
require_once("kapcsolodas.php");
$kapcs = dbkapcs();
$query = "SELECT * FROM utak INNER JOIN szallas ON utak.szallas_id2 = szallas.szallas_id
              WHERE orszag LIKE '%$hely%' OR varos LIKE '%$hely%' OR url_kontinens LIKE '%$hely%' OR url_orszag LIKE '%$hely%' OR url_varos LIKE '%$hely%'";
$eredm = mysqli_query($kapcs, $query);
$rows = $eredm->fetch_all(MYSQLI_ASSOC);
mysqli_close($kapcs);
$rows = json_encode($rows, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES);
echo $rows;

