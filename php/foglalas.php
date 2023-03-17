<?php

// Inport environment
require_once('../../common/php/environment.php');

// Get arguments
$args = Util::getArgs();

// Connect to database
$db = new Database();

// Set query
$query = "INSERT INTO `foglalas` (`nev2`, `telefonsz`, `email`, `fo`, `vegosszeg`, `kisagy`, `evszam`, `honap`, `nap`, `oda_ora`, `vissza_ora`, `ut_id2`) VALUES (:nev2, :telefonsz, :email, :fo, :vegosszeg, :kisagy, :evszam, :honap, :nap, :oda_ora, :vissza_ora, :ut_id2)";

// Execute query
$result = $db->execute($query, $args);

// Disconnect
$db = null;

Util::setResponse($result);