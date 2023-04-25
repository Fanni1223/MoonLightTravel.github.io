<?php

// Require file
require_once('../../../common/php/Database.php');

// Set result
$result = null;

// Get arguments
$args = Util::getArgs();

// Connect to MySQL server
$db = new Database('moonlighttravel');

$query = "SELECT * FROM `felhasznalok` WHERE `email` = :email;";

$db->execute($query, array('email'=>$args['email']));

if (!$db->is_error()) {
  
  $result = $db->get_data();

  if (count($result) === 0) {

    $query = "INSERT INTO `felhasznalok` (`nev`,`email`,`jelszo`) VALUES (:nev, :email, :jelszo);";

    $db->execute($query, $args);

    if (!$db->is_error()) {

            $result = $db->get_data();
          

    } else  Util::setError($db->get_error(), false);
  } else  Util::setError('Email már létezik!', false);
} else  Util::setError($db->get_error(), false);

// Disconect
$db = null;

// Set response
Util::setResponse($result);
