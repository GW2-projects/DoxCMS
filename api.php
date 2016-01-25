<?php
require_once(dirname(__file__).'/config.php');

if(isset($_GET['query'])) {
	switch($_GET['query']) {
		case "members":
		$function = new Accounts();
		$function->APIReturnMembers();
		break;
	}
}