<?php
require_once('../../common/php/environment.php');

// Get arguments
$args = Util::getArgs();

// Connect to database
$db = new Database();

// Set query
$query = "SELECT * FROM `felhasznalok` WHERE `email` = :email;";

// Execute query
$result = $db->execute($query, array('email' => $args['email']));

if (!is_null($result)) {

	// Disconnect
	$db = null;

	Util::setError('Email már létezik!');
}

// Set query
$query = "INSERT INTO `felhasznalok` (`nev`,`email`,`jelszo`) VALUES (:nev, :email, :jelszo);";

// Execute query
$result = $db->execute($query, $args);

// Disconnect
$db = null;

Util::setResponse($result);