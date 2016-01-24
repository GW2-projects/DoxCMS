<?php
DEFINE("REGISTER_MODAL_MODULE", dirname(__file__));
if(SessionLive() == false) {
	include_once(REGISTER_MODAL_MODULE.'/offline.tpl');
}
else {
	include_once(REGISTER_MODAL_MODULE.'/online.tpl');
}
?>
