<?php

// Inport environment
require_once('../../common/php/environment.php');

// Get arguments
$args = Util::getArgs();

// Connect to database
$db = new Database();

// Set query
$query = "SELECT *, 
          `felhasznalok`.nev ,
          `felhasznalok`.email
          FROM `foglalas`
          INNER JOIN `felhasznalok` 
          ON `foglalas`.`felhasznalo_id` = `felhasznalok`.`id`
          WHERE `felhasznalo_id` = :userId";

// Execute query
$result = $db->execute($query, array('userId' => $args));

// Disconnect
$db = null;

Util::setResponse($result);