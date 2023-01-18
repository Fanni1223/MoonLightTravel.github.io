<!DOCTYPE html>
<html lang="hu">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/app.css">
    <title>Keresés</title>
</head>
<body>
<div ng-include src="'../MoonLightTravel/html/navigate.html'"></div>


<?php
if (isset($_POST["mod"])) 
{
  require("kapcsolodas.php");
  $kapcs = dbkapcs();


    

  echo"<div class='container'>";
  echo"<div class='row mt-2'>";
  echo "Találat(ok) a(z) '<b> ".$_POST['keresendo']."'
  keresőfelületére! <br><br>";

  $query = "SELECT * FROM utak
              WHERE orszag LIKE '%$_POST[keresendo]%' OR varos LIKE '%$_POST[keresendo]%' OR url_kontinens LIKE '%$_POST[keresendo]%' OR url_orszag LIKE '%$_POST[keresendo]%' OR url_varos LIKE '%$_POST[keresendo]%'";

  $eredm = mysqli_query($kapcs, $query);
    while ($sor = mysqli_fetch_array($eredm)) 
    {
      echo "<div class='col-md-4'>
      <div class='card my-3'>
      <img src='../img/".$sor['img']."' class='card-img-top' alt='".$sor['nev']."' title='".$sor['nev']."'>
      <div class='card-body'>
        <h5 class='card-title'>".$sor['nev']."</h5>";

      echo"<a href='".$sor['ut_id'].".php'>";
        echo"<button type='submit' class='btn'>Tovább>></button>
      </a>
    </div>
  </div>";
  echo"</div>";   
    }  
    echo"</div>";    
    mysqli_close($kapcs);
}


echo "</div>";   


?>


<!-- Footer -->
<footer id="availability"
 class="container-fluid bg-light text-muted"
 ng-include src="'../MoonLightTravel/html/footer.html'"></footer>

</body>
</html>