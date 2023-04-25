<?php
require_once('../../common/php/environment.php');

// Get arguments
$args = Util::getArgs();

// Connect to database
$db = new Database();

// Set query
$query = "SELECT `utak`.*, `szallas`.*, `utak_kepek`.*  
          FROM `utak` 
          INNER JOIN `szallas` ON `utak`.`szallas_id2` = `szallas`.`szallas_id` 
          INNER JOIN `utak_kepek` ON `utak`.`ut_id` = `utak_kepek`.`ut_id3` 
          WHERE `varos` = :nyaralas";

// Execute query
$result = $db->execute($query, $args);

// Disconnect
$db = null;

Util::setResponse($result);