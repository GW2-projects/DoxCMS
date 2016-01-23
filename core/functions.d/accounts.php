<?php
if(file_exists("../../config.php")) {
	require_once("../../config.php");
}
else {
	echo "This will Create Issues";
}
switch($_POST['process']) {
	case "register":
	echo ROOT_PATH;
	break;
}