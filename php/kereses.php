<?php
require_once('../../common/php/environment.php');

// Get arguments
$args = Util::getArgs();

// Connect to database
$db = new Database();

// Set query
$query = "SELECT * FROM utak 
          INNER JOIN szallas ON utak.szallas_id2 = szallas.szallas_id
          WHERE orszag LIKE '$args' OR 
                varos LIKE '$args' OR 
                url_kontinens LIKE '$args' OR 
                url_orszag LIKE '$args' OR 
                url_varos LIKE '$args'";

// Execute query
$result = $db->execute($query);

// Disconnect
$db = null;

Util::setResponse($result);