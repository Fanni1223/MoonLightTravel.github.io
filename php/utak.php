<?php
require_once('../../common/php/environment.php');

// Get arguments
$args = Util::getArgs();

// Connect to database
$db = new Database();

// Set query
$query = "SELECT `utak`.*, `szallas`.* 
          FROM `utak` 
          INNER JOIN `szallas` ON `utak`.`szallas_id2` = `szallas`.`szallas_id` 
          WHERE `kontinens` = :ut";

// Execute query
$result = $db->execute($query, $args);

// Disconnect
$db = null;

Util::setResponse($result);