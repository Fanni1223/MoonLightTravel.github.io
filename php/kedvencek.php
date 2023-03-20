<?php

// Inport environment
require_once('../../common/php/environment.php');

// Get arguments
$args = Util::getArgs();

// Connect to database
$db = new Database();

// Set query
$query = "INSERT INTO `kedvencek` (`ut_id4`) VALUES (:ut_id4)";

// Execute query
$result = $db->execute($query, $args);

// Disconnect
$db = null;

Util::setResponse($result);