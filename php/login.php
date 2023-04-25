<?php
require_once('../../common/php/environment.php');

// Get arguments
$args = Util::getArgs();

// Connect to database
$db = new Database();

// Set query
$query = "SELECT * FROM `felhasznalok` WHERE `email` = :email AND BINARY `jelszo` = BINARY :jelszo;";

// Execute query
$result = $db->execute($query, $args);

// Disconnect
$db = null;

Util::setResponse($result);