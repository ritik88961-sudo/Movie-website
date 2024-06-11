<?php
	session_start();
	session_destroy();
	header("Location: http://localhost/Movie/index.php");
	exit();
?>
