<?php
if(file_exists("../../config.php")) {
	require_once("../../config.php");
}
else {
	echo "This will Create Issues";
}
switch($_POST['process']) {
	case "register":
	echo Register($_POST['username'],$_POST['password'],$_POST['email']);
	break;
	case "login":
	echo Login($_POST['username'], $_POST['password']);
	break;
	case "logout":
	session_start();
	session_destroy();
	break;
}