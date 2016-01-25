<?php
require_once(dirname(__file__).'/config.php');
if(isset($_GET['query'])) {
	echo "Return Details";
	switch($_GET['query']) {
		case "members":
		$function = new Accounts();
		$function->APIReturnMembers();
		break;
	}
}