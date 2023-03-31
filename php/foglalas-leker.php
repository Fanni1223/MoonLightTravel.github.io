<?php

// Inport environment
require_once('../../common/php/environment.php');

// Get arguments
$args = Util::getArgs();

// Connect to database
$db = new Database();

// Set query
$query = "SELECT *, 
          `foglalas`.teljes_nev,
          `foglalas`.teljes_nev,
          `foglalas`.teljes_nev,
          `foglalas`.teljes_nev,
          `foglalas`.teljes_nev,
          `foglalas`.teljes_nev,
          `foglalas`.teljes_nev,
          `foglalas`.teljes_nev,
          `foglalas`.teljes_nev,
          `foglalas`.teljes_nev,
          `foglalas`.teljes_nev,
          

          FROM `foglalas`
          INNER JOIN `felhasznalok` 
          ON `foglalas`.`felhasznalo_id` = `felhasznalok`.`id`
          WHERE `felhasznalo_id` = :userId";

// Execute query
$result = $db->execute($query, array('userId' => $args));

// Disconnect
$db = null;

Util::setResponse($result);