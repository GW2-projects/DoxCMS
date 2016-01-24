<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<?php
DEFINE("REGISTER_MODAL_PLUGIN", dirname(__file__));
if(SessionLive() == false) {
	include_once(REGISTER_MODAL_PLUGIN.'/offline.tpl');
}
else {
	include_once(REGISTER_MODAL_PLUGIN.'/online.tpl');
}
?>
