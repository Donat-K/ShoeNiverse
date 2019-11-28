<?php
	$dsn = 'mysql:host=localhost;dbname=ShoeDatabase';
	$username = 'user';
	$password = 'password';
	
	try {
		$db = new PDO($dsn, $username, $password);
	} catch (PDOException $e) {
		$error_message = $e->getMessage();
		exit();
	}
?>